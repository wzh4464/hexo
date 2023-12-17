---
title: DeltaGrad - Rapid Re-Training of Machine Learning Models
---
# DeltaGrad: Rapid Re-Training of Machine Learning Models

有很多关于模型重新训练和更新的工作。最近，由于人本主义AI、数据机密性和隐私的全球努力（例如欧洲联盟的《通用数据保护条例》），这方面引起了关注（European Union, 2016）。该条例规定，用户可以要求从当前AI系统的分析中删除其数据。所需的保证要求比差分隐私提供的要强（差分隐私可能会在模型中保留数据点的一定贡献，Dwork等人，2014），或者针对数据中毒攻击的防御（仅要求在攻击之后模型的性能不降低，Steinhardt等人，2017）。对于许多其他应用，例如模型解释性和模型调试，高效的数据删除也至关重要。例如，许多现有数据系统（Doshi-Velez和Kim，2017；Krishnan和Wu，2017）必须通过每次删除不同的训练数据子集进行重复训练，以了解这些删除的数据对模型行为的影响。这也接近于删除诊断，通过删除训练集中的数据点，针对ML模型确定最有影响力的数据点，可以追溯到（Cook, 1977）。一些最近的工作（Koh和Liang, 2017）针对通用的机器学习模型，但需要显式维护Hessian矩阵，只能处理一个样本的删除，因此对于许多大规模应用不适用。对于线性模型，基于矩阵逆的有效的rank one更新方法是可行的（例如，Birattari等人，1999；Horn和Johnson，2012；Cao和Yang，2015等）。如果使用线性特征嵌入，无论是随机的还是通过预训练学习的线性特征嵌入，都可以扩展线性方法的范围。已经提出了支持向量机（Syed等人，1999；Cauwenberghs和Poggio，2001）和最近邻（Schelter, 2019）的更新方法。Ginart等人（2019）提出了数据擦除完整性的定义，并提出了一种基于量化的k-means聚类算法来实现。他们还提出了几个能够实现高效模型更新的原则。Guo等人（2019）提出了一种保证随机化算法可以从机器学习模型中删除数据的一般性理论条件。他们的随机化方法需要对标准算法（例如逻辑回归）进行修改才能应用。（Bourtoule等人，2019）提出了用于“取消学习”的SISA（或分片、隔离、切片、汇总）训练框架，其依赖于类似分布式训练的思想。该方法要求将训练数据分成多个分片，以使训练点仅包含在少量分片中。我们的方法依赖于大规模优化，这有着庞大的文献基础。随机梯度方法可以追溯到Robbins和Monro（1951）。最近，许多工作（例如Bottou, 1998；2003；Zhang, 2004；Bousquet和Bottou, 2008；Bottou, 2010；Bottou等人, 2018）专注于经验风险最小化。SGD的收敛证明是基于期望残差的收缩。它们基于一些假设，如方差有界、强或弱增长、平滑性、凸性（或Polyak-Lojasiewicz）、单个和整体损失函数的等等。例如，参见（Gladyshev, 1965；Amari, 1967；Kul’chitskiy和Mozgovoy, 1992；Bertsekas和Tsitsiklis, 1996；Moulines和Bach, 2011；Karimi等人, 2016；Bottou等人, 2018；Gorbunov等人, 2019；Gower等人, 2019）等及其引用。我们的方法类似，但技术细节非常不同，并与拟牛顿方法（如L-BFGS，Zhu等人，1997）更为相关。 🔤1.1.相关工作🔤

“1.1. Related work” ([Wu et al., 2020, p. 2](zotero://select/library/items/FQJ8L2YD)) ([pdf](zotero://open-pdf/library/items/Q4M4SVEL?page=2&annotation=Y8IPEG9L))

---

机器学习模型并非静态的，可能需要在稍微改变的数据集上进行重新训练，例如添加或删除一组数据点。这有许多应用，包括隐私保护、鲁棒性、偏差降低和不确定性量化。然而，从头开始重新训练模型是昂贵的。为了解决这个问题，我们提出了一种名为DeltaGrad的算法，通过在训练阶段缓存的信息来快速重新训练机器学习模型。我们提供了理论和实证支持，表明DeltaGrad的有效性，并且与现有技术相比具有优势。

“Machine learning models are not static and may need to be retrained on slightly changed datasets, for instance, with the addition or deletion of a set of datapoints. This has many applications, including privacy, robustness, bias reduction, and uncertainty quantification. However, it is expensive to retrain models from scratch. To address this problem, we propose the DeltaGrad algorithm for rapid retraining machine learning models based on information cached during the training phase. We provide both theoretical and empirical support for the effectiveness of DeltaGrad, and show that it compares favorably to the state of the art.” ([Wu et al., 2020, p. 1](zotero://select/library/items/FQJ8L2YD)) ([pdf](zotero://open-pdf/library/items/Q4M4SVEL?page=1&annotation=N4FY2XF4))

---

机器学习模型的使用越来越普遍，而且很少是静态的。当数据集发生轻微变化时，可能需要在稍微改变的数据集上重新训练模型，例如添加或删除一些数据点。这在许多应用中都有很多用途，包括隐私保护、鲁棒性、偏差降低和不确定性量化。例如，出于隐私和鲁棒性的原因，可能需要从训练数据中删除某些数据点。构建一些删除了某些数据点的模型也可用于构建校正偏差的模型，例如使用jackknife重采样（Quenouille, 1956），需要在所有的留一法数据集上重新训练模型。此外，通过在数据子集上重新训练模型可以用于不确定性量化，例如通过符合预测（conformal prediction）构建统计上有效的预测区间，例如Shafer和Vovk（2008）。然而，从头开始重新训练模型是昂贵的。大规模模型最常用的训练机制是基于（随机）梯度下降（SGD）及其变体。在稍微不同的数据集上重新训练模型将涉及重新计算整个优化路径。当添加或删除少量数据点时，这可能与原始训练过程的复杂性相同。然而，我们期望两个相似的数据集上的模型是相似的。如果我们在许多不同的新数据集上重新训练模型，通过缓存有关原始数据的训练过程的一些信息并计算“更新”可能更有效。最近已经有一些相关的工作，例如Ginart等人（2019）、Guo等人（2019）和Wu等人（2020）。然而，现有方法存在各种限制：它们只适用于特定的问题，如k-means（Ginart等人，2019）或逻辑回归（Wu等人，2020），或者需要额外的随机化导致非标准的训练算法（Guo等人，2019）。为了解决这个问题，我们提出了DeltaGrad算法，用于在训练数据集发生轻微变化时（例如删除或添加样本）快速重新训练机器学习模型，该算法基于训练期间缓存的信息。DeltaGrad解决了先前工作的几个限制：它适用于使用SGD进行经验风险最小化定义的通用机器学习模型，并且不需要额外的随机化。它基于“通过数据微分优化路径”的思想，受到拟牛顿方法的启发。我们在理论和实证上都对DeltaGrad的有效性提供了支持。我们证明它在强凸目标上以快速速度逼近真实的优化路径。我们通过实验证明它在一些中等规模的标准数据集上的准确性和速度，包括两层神经网络。加速比可以高达6.5倍，准确性损失可以忽略不计（见图1）。这为大规模、高效、通用的数据删除/添加机器学习系统铺平了道路。我们还说明了它在上述几个应用中的用途。

“1. Introduction” ([Wu et al., 2020, p. 1](zotero://select/library/items/FQJ8L2YD)) ([pdf](zotero://open-pdf/library/items/Q4M4SVEL?page=1&annotation=WC6JIREL))

---

贡献我们的贡献包括：DeltaGrad：我们提出了DeltaGrad算法，用于在数据发生轻微变化（添加或删除少量点）时快速重新训练（随机）梯度下降方法的机器学习模型。理论支持：我们提供了理论结果，展示了DeltaGrad的准确性。无论是对于GD还是SGD，我们都证明了误差比删除的点的分数的次序小。实证结果：我们提供了对DeltaGrad的速度和准确性的实证结果，包括添加、删除和连续更新的几个标准数据集。应用：我们描述了DeltaGrad在机器学习中的几个问题中的应用，包括隐私、鲁棒性、去偏和统计推断。

“Contributions” ([Wu et al., 2020, p. 2](zotero://select/library/items/FQJ8L2YD)) ([pdf](zotero://open-pdf/library/items/Q4M4SVEL?page=2&annotation=M7PD5L8R))
