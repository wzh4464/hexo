---
title: CFA Rates and Return
---
# CFA Rates and Return

## INTEREST RATES, PRESENT VALUE, AND FUTURE VALUE

1. interpret interest rates as required rates of return, discount rates, or opportunity costs
解释利率为所需的回报率，折现率或机会成本
1. interest rate = real risk-free rate + premium
利率=实际无风险利率+溢价
1. calculate and interpret the future value (FV) and present value (PV) of a single sum of money, an ordinary annuity, an annuity due, a perpetuity (PV only), and a series of unequal cash flows
计算和解释单笔资金，普通年金，年金，永续年金（仅PV）和不等现金流的未来价值（FV）和现值（PV）
1. time line
1. different frequency of compounding
不同的复利频率
1. calculate and interpret the effective annual rate (EAR) and annual interest rate (APR)
计算和解释有效年利率（EAR）和年利率（APR）

## Note

### Interest Rates

- Real Risk-free rate: the time preferences of individuals for current versus future real consumption.
不考虑通货膨胀的情况下的无风险利率, 通常是美国国债利率。代表个人对现在和未来消费的偏好
- Inflation premium: The inflation premium compensates investors for the expected erosion of purchasing power of a bond’s future cash flows due to inflation.
通货膨胀溢价补偿投资者对债券未来现金流由于通货膨胀而购买力的预期侵蚀。
- Nominal risk-free rate = real risk-free rate + inflation premium
名义无风险利率 = 实际无风险利率 + 通货膨胀溢价
governmental short-term debt (T-bills) is often used as a proxy for the nominal risk-free rate
政府短期债务（T票）通常用作名义无风险利率的替代品
- Default risk premium: the difference between the interest rate on a U.S. Treasury bond and a corporate bond of equal maturity and marketability
违约风险溢价：美国国债利率与同等期限和市场性的公司债券利率之间的差异
- Liquidity premium:
小公司债券的流动性溢价高于大公司债券
小公司债券不易买卖，因此需要更高的利率来补偿，在出售头寸(position)时，可能会损失更多
美国T票的流动性溢价为零
- Maturity risk premium: The maturity premium compensates investors for the increased sensitivity of the market value of debt to a change in market interest rates as maturity is extended, in general (holding all else equal). The difference between the interest rate on longer-maturity, liquid Treasury debt and that on short-term Treasury debt reflects a positive maturity premium for the longer-term debt (and possibly different inflation premiums as well).
到期风险溢价：到期风险溢价补偿投资者对债务市场价值对市场利率变化的敏感性，因为到期日延长，一般来说（其他条件不变）。较长期限的流动性美国国债利率与短期美国国债利率之间的差异反映了较长期债务的正到期溢价（以及可能的不同通货膨胀溢价）。

### FUTURE VALUE OF A SINGLE CASH FLOW

- Future value (FV)
- Present value (PV)
- Number of periods (n)
- Stated annual interest rate 是年利率，不是实际利率

lump sum (一次性支付): 仍然是 $FV = PV(1+r)^n$
Pension fund: 养老金

$$
FV = PV(1+r)^n
$$

### NON-ANNUAL COMPOUNDING (FUTURE VALUE)

LO: calculate the solution for time value of money problems with different frequencies of compounding

### Annuity (年金)

- Ordinary annuity (普通年金): payments occur at the end of each period
- Annuity due (年金): payments occur at the beginning of each period
- Perpetuity (永续年金): an annuity with an infinite life

### Mortgage (抵押贷款)

- Down payment (首付)
- We use the equation from annuity to calculate the monthly payment

<!-- TODO: Need Review -->

<div style="border: 1px solid red; padding: 10px;">

e.g. 30-year mortgage, 8% interest rate, \$100,000 loan, monthly payment = \$733.76
$$
\begin{align*}
FV &= 100,000 * (1+0.08/12)^{30*12} \\
&=  1.903 * 10^6 \\
A &= FV / \left(\frac{(1+0.08/12)^{30*12}-1}{0.08/12}\right) \\
&= 733.7646
\end{align*}
$$
</div>

### Compound Continuous

连续复利

$$
FV = PV e^{r n}
$$

## Return

### Holding Period Return (HPR)

$$
R = \frac{P_1 - P_0 + I_1}{P_0}
$$

- $P_0$ is the initial price
- $P_1$ is the final price
- $I_1$ is the income received during the period

### Arithmetic or Mean Return

$$
\bar{R_i} = \frac{1}{n} \sum_{t=1}^n R_{it}
$$

### Geometric Mean Return

$$
\bar{R_i} = \sqrt[n]{\prod_{t=1}^n (1 + R_{it})} - 1
$$

A geometric mean return provides a more accurate representation of the growth in portfolio value over a given time period than the arithmetic mean return.

### The Harmomic Mean

Used in cost averaging (The periodic investment of a fixed amount of money.)

### Trimmed Mean

A trimmed mean is the mean calculated after removing a certain percentage of the highest and lowest values.

### Winsorized Mean

A winsorized mean is the mean calculated after replacing a certain percentage of the highest and lowest values with the highest and lowest values.

## Money-Weighted and Time-Weighted Rate of Return

### Money-Weighted Rate of Return

$$
\sum_{t=1}^n \frac{CF_t}{(1 + r)^t} = 0
$$

> Steps:
>
> 1. Suppose the return $r$ (see it as interest rate) is unknown.
> 2. Calculate the present value of all cash flows using the unknown return $r$.
> 3. Solve for $r$.

#### Time-Weighted Rate of Return

$$
\prod_{t=1}^n (1 + r_t) = \frac{P_n}{P_0}
$$

> Steps:
>
> 1. Everytime there is a cash flow, normalize the portfolio value to the previous period.
> 2. Calculate the geometric mean return. (Compound return)

#### Money-Weighted vs. Time-Weighted

<span style="color:red;">Money-weighted rate reveals the ability of the investor. Time-weighted rate reveals the market performance.</span>

## CFA OTHER MAJOR RETURN MEASURES AND THEIR APPLICATIONS

<!-- tag cfa -->

### Learning Outcome

计算并解释其他主要回报率的含义和应用。

- Fee (gross / net return)
- taxes (pre-tax / after-tax return)
- inflation (nominal / real return)
- leverage (杠杆)
- management fee (管理费)

### Gross and Net Return

#### Gross Return

- 不扣除:
  - management fees (管理费)
  - custodian fees (托管费)
  - taxes (税费)
  - 与收益生成不直接相关但与投资的管理和行政工作相关的费用
  - 因为会随着投资管理的数量和投资人的税收状况而变化
- Deduct:
  - trading expenses (交易费用)
    - Commissions (佣金)
  - 交易费用直接贡献于管理者所赚取的收益

因此, **毛收益是评估和比较资产管理者投资技能的适当指标，因为它不包括任何与投资的管理和行政相关的费用.**

#### Net Return

- Deduct everything

### Pre-tax and After-tax Return

- 除非明确说明, 否则回报率都是税前的
- selecting appropriate securities (选择合适的证券)
- reducing trading turnover (降低交易频率)
-

### Real and Nominal Return

$$
(1 + r_{\text{nominal risk-free}}) = (1 + r_{\text{real risk-free}}) \times (1 + \text{inflation premium})
$$

$$
(1 + \text{return}_{\text{real}}) = \frac{1 + r_{\text{nominal risk-free}}(1 + \text{risk premium})}{1 + \text{inflation premium}}
$$

From example:

$$
\frac{1 + \text{after taxed net return}}{1 + \text{inflation}} - 1 = \text{after taxed real return}
$$

### Leverage return

$$
R_L = \frac{\text{Portfolio Return}}{\text{Investor's Equity}} = \frac{R_P(V_E + V_B)-V_B r_D}{V_E} = R_P + \frac{V_B}{V_E}(R_P - r_D)
$$

- $R_L$: leverage return
- $R_P$: portfolio return 投资组合回报率
- $V_E$: investor's equity 投资者的股权
- $V_B$: borrowed funds 借来的资金
- $r_D$: cost of borrowed funds 借来的资金的成本
