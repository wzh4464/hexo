---
title: Cocluster
---
# Cocluster

## Cocluster History

1. 首次出现: 运用于基因表达数据的聚类算法，Cheng & Church (2000) [^cheng2000BiclusteringExpressionData], 使用方均 residuals 作为度量，找到所有 mannually selected 的 thereshold 以下的子矩阵.

2. Spectral Co-clustering: 该算法使用了一种基于谱聚类的方法，SCC [^dhillon2001CoclusteringDocumentsWordsa]. 该算法 coclusters on word-document matrix, 使用了一个基于谱聚类的方法，它将数据矩阵转换为一个二分图, 最小化边权重来 partition.

于是有了三种：

- Graph theory [^kluger2003SpectralBiclusteringMicroarray][^sun2014BiforceLargescaleBicluster]
- Statistical model [^dhillon2003InformationtheoreticCoclustering][^govaert2003ClusteringBlockMixturea][^govaert2005EMAlgorithmBlock][^govaert2008BlockClusteringBernoullia][^shan2008BayesianCoclusteringd]
- Matrix factorization [^gu2009CoclusteringManifoldsc] [^labiod2015UnifiedFrameworkDatac] [^liu2014NetworkassistedCoclusteringAlgorithmc][^madeira2004BiclusteringAlgorithmsBiological] [^salah2018WordCooccurrenceRegularizeda][^wang2011FastNonnegativeMatrix] [^wang2017PenalizedNonnegativeMatrixc] [^yu2017NetworkaidedBiClusteringDiscovering]

另一种分类方法是：

- optimization-based models [^whang2017NonExhaustiveOverlappingCoClustering]
  - graph-based models [^dhillon2001CoclusteringDocumentsWordsa] [^NIPS2017_00a03ec6]
  - NFM [^junweihan2017BilateralKMeansAlgorithm] [^ding2006OrthogonalNonnegativeMatrix] [^long2005CoclusteringBlockValue]
- information-theoretic models [^role2019CoClustPythonPackage]
- neural network models [^dongkuanxu2019DeepCoClustering]

应用有：

- Text mining
- Bioinformatics
- Recommendation system [^vizinepereira2015SimultaneousCoclusteringLearninga]

## 优点

<!-- often clusters are embedded in subspaces comprised of a subset of features, and different features may be relevant for different clusters. Algorithms that operate globally in the feature space fail to discover such local patterns -->

- 与传统聚类算法相比，coclustering 能够发现数据中的子空间，即子矩阵，这些子矩阵可能在不同的特征子集中嵌入，不同的特征可能对不同的聚类有意义。在特征空间中全局操作的算法无法发现这种局部模式。

## Evaluation Score

- variance
- maximum interaction criterion [^bock2016ProbabilisticTwowayClustering]
- mean-square residue [^cheng2000BiclusteringExpressionData]
- scaling mean-square residue [^mukhopadhyay2009NovelCoherenceMeasurec]
- average correlation value [^teng2008DiscoveringBiclustersIterativelyc]

[^cheng2000BiclusteringExpressionData]: Cheng, Y., & Church, G. (2000). Biclustering of Expression Data. Proceedings. International Conference on Intelligent Systems for Molecular Biology. <https://www.cs.princeton.edu/courses/archive/fall03/cs597F/Articles/biclustering_of_expression_data.pdf>
[^dhillon2001CoclusteringDocumentsWordsa]: Dhillon, I. S. (2001). Co-clustering documents and words using bipartite spectral graph partitioning. ACM SIGKDD International Conference on Knowledge Discovery and Data Mining, 269–274. <https://doi.org/10.1145/502512.502550>
[^vizinepereira2015SimultaneousCoclusteringLearninga]: Vizine Pereira, A. L., & Hruschka, E. R. (2015). Simultaneous co-clustering and learning to address the cold start problem in recommender systems. Knowledge-Based Systems, 82, 11–19. <https://doi.org/10.1016/j.knosys.2015.02.016>
[^bock2016ProbabilisticTwowayClustering]: Bock, H.-H. (2016). Probabilistic two-way clustering approaches with emphasis on the maximum interaction criterion. <https://doi.org/10.5445/KSP/1000058747/01>
[^mukhopadhyay2009NovelCoherenceMeasurec]: Mukhopadhyay, A., Maulik, U., & Bandyopadhyay, S. (2009). A novel coherence measure for discovering scaling biclusters from gene expression data. Journal of Bioinformatics and Computational Biology, 07(05), 853–868. <https://doi.org/10.1142/S0219720009004370>
[^teng2008DiscoveringBiclustersIterativelyc]: Teng, L., & Chan, L. (2008). Discovering biclusters by iteratively sorting with weighted correlation coefficient in gene expression data. Journal of Signal Processing Systems, 50(3), 267–280. <https://doi.org/10.1007/s11265-007-0121-2>
[^kluger2003SpectralBiclusteringMicroarray]: Kluger, Y., Basri, R., Chang, J. T., & Gerstein, M. (2003). Spectral Biclustering of Microarray Data: Coclustering Genes and Conditions. Genome Research, 13(4), 703–716. <https://doi.org/10.1101/gr.648603>
[^sun2014BiforceLargescaleBicluster]: Sun, P., Speicher, N. K., Röttger, R., Guo, J., & Baumbach, J. (2014). Bi-force: Large-scale bicluster editing and its application to gene expression data biclustering. Nucleic Acids Research, 42(9), e78–e78. <https://doi.org/10.1093/nar/gku201>
[^dhillon2003InformationtheoreticCoclustering]: Dhillon, I. S., Mallela, S., & Modha, D. S. (2003). Information-theoretic co-clustering. Proceedings of the Ninth ACM SIGKDD International Conference on Knowledge Discovery and Data Mining  - KDD ’03, 89–98. <https://doi.org/10.1145/956750.956764>
[^govaert2003ClusteringBlockMixturea]: Govaert, G., & Nadif, M. (2003). Clustering with block mixture models. Pattern Recognition, 36(2), 463–473. <https://doi.org/10.1016/S0031-3203(02)00074-2>
[^govaert2008BlockClusteringBernoullia]: Govaert, G., & Nadif, M. (2008). Block clustering with bernoulli mixture models: Comparison of different approaches. Computational Statistics & Data Analysis, 52(6), 3233–3245. <https://doi.org/10.1016/j.csda.2007.09.007>
[^shan2008BayesianCoclusteringd]: Shan, H., & Banerjee, A. (2008). Bayesian co-clustering. 2008 Eighth IEEE International Conference on Data Mining, 530–539. <https://doi.org/10.1109/ICDM.2008.91>
[^govaert2005EMAlgorithmBlock]: Govaert, G., & Nadif, M. (2005). An EM algorithm for the block mixture model. IEEE Transactions on Pattern Analysis and Machine Intelligence, 27(4), 643–647. <https://doi.org/10.1109/TPAMI.2005.69>
[^madeira2004BiclusteringAlgorithmsBiological]: Madeira, S. C., & Oliveira, A. L. (2004). Biclustering algorithms for biological data analysis: A survey. IEEE/ACM Transactions on Computational Biology and Bioinformatics. <https://doi.org/10.1109/tcbb.2004.2>
[^salah2018WordCooccurrenceRegularizeda]: Salah, A., Ailem, M., & Nadif, M. (2018). Word co-occurrence regularized non-negative matrix tri-factorization for text data co-clustering. Proceedings of the AAAI Conference on Artificial Intelligence, 32(1), Article 1. <https://doi.org/10.1609/aaai.v32i1.11659>
[^wang2011FastNonnegativeMatrix]: Wang, H., Wang, H., Nie, F., Huang, H., & Makedon, F. (2011). Fast nonnegative matrix tri-factorization for large-scale data co-clustering. Null. <https://doi.org/10.5591/978-1-57735-516-8/ijcai11-261>
[^yu2017NetworkaidedBiClusteringDiscovering]: Yu, G., Yu, X., & Wang, J. (2017). Network-aided Bi-Clustering for discovering cancer subtypes. Scientific Reports, 7(1), 1046. <https://doi.org/10.1038/s41598-017-01064-0>
[^wang2017PenalizedNonnegativeMatrixc]: Wang, S., & Huang, A. (2017). Penalized nonnegative matrix tri-factorization for co-clustering. Expert Systems with Applications, 78, 64–73. <https://doi.org/10.1016/j.eswa.2017.01.019>
<!-- [1] Q. Gu and J. Zhou, “Co-clustering on manifolds,” in Proceedings of the 15th ACM SIGKDD international conference on Knowledge discovery and data mining, Paris France: ACM, Jun. 2009, pp. 359–368. doi: 10.1145/1557019.1557063. -->
[^gu2009CoclusteringManifoldsc]: Gu, Q., & Zhou, J. (2009). Co-clustering on manifolds. Proceedings of the ACM SIGKDD International Conference on Knowledge Discovery and Data Mining, 359–368. <https://doi.org/10.1145/1557019.1557063>
<!-- [1] L. Labiod and M. Nadif, “A unified framework for data visualization and coclustering,” IEEE Trans. Neural Netw. Learn. Syst., vol. 26, no. 9, pp. 2194–2199, Sep. 2015, doi: 10.1109/TNNLS.2014.2359918. -->
[^labiod2015UnifiedFrameworkDatac]: Labiod, H., & Nadif, M. (2015). A unified framework for data visualization and coclustering. IEEE Transactions on Neural Networks and Learning Systems, 26(9), 2194–2199. <https://doi.org/10.1109/TNNLS.2014.2359918>
<!-- [1] Y. Liu, Q. Gu, J. P. Hou, J. Han, and J. Ma, “A network-assisted co-clustering algorithm to discover cancer subtypes based on gene expression,” BMC Bioinf., vol. 15, no. 1, p. 37, Dec. 2014, doi: 10.1186/1471-2105-15-37. -->
[^liu2014NetworkassistedCoclusteringAlgorithmc]: Liu, Y., Gu, Q., Hou, J. P., Han, J., & Ma, J. (2014). A network-assisted co-clustering algorithm to discover cancer subtypes based on gene expression. BMC Bioinformatics, 15(1), 37. <https://doi.org/10.1186/1471-2105-15-37>
[^whang2017NonExhaustiveOverlappingCoClustering]: Whang, J. J., & Dhillon, I. S. (2017). Non-exhaustive, overlapping co-clustering. Proceedings of the 2017 ACM on Conference on Information and Knowledge Management, 2367–2370. <https://doi.org/10.1145/3132847.3133078>
[^role2019CoClustPythonPackage]: Role, F., Morbieu, S., & Nadif, M. (2019). CoClust: A Python Package for Co-Clustering. Journal of Statistical Software, 88(7). <https://doi.org/10.18637/jss.v088.i07>
[^dongkuanxu2019DeepCoClustering]: Dongkuan Xu, Wei Cheng, Bo Zong, Ni Jingchao, Jingchao Ni, Jingchao Ni, Song Dongjin, Song Dongjin, Dongjin Song, Wenchao Yu, Haifeng Chen, Yuncong Chen, Chen Haifeng, Chen Haifeng, Chen Haifeng, Chen Haifeng, Haifeng Chen, Haifeng Chen, Xiang Zhang, & Xiang Zhang. (2019). Deep Co-Clustering.
[^junweihan2017BilateralKMeansAlgorithm]: Junwei Han, Kun Song, Feiping Nie, & Xuelong Li. (2017). Bilateral k-Means Algorithm for Fast Co-Clustering.
[^NIPS2017_00a03ec6]: Nie, F., Wang, X., Deng, C., & Huang, H. (2017). Learning a structured optimal bipartite graph for co-clustering. In I. Guyon, U. V. Luxburg, S. Bengio, H. Wallach, R. Fergus, S. Vishwanathan, & R. Garnett (Eds.), Advances in neural information processing systems (Vol. 30). Curran Associates, Inc. <https://proceedings.neurips.cc/paper_files/paper/2017/file/00a03ec6533ca7f5c644d198d815329c-Paper.pdf>
[^ding2006OrthogonalNonnegativeMatrix]: Ding, C., Li, T., Peng, W., & Park, H. (2006). Orthogonal nonnegative matrix t-factorizations for clustering. Proceedings of the 12th ACM SIGKDD International Conference on Knowledge Discovery and Data Mining, 126–135. https://doi.org/10.1145/1150402.1150420
[^long2005CoclusteringBlockValue]: Long, B., Zhang, Z. (Mark), & Yu, P. S. (2005). Co-clustering by block value decomposition. Knowledge Discovery and Data Mining, 635–640. https://doi.org/10.1145/1081870.1081949
