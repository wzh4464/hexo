> Assume the compatibility matrix is $A_{ij}$.
> 
>   
> 
> Step 1: Compute horizontal projection $P_i(i) = \sum_{j} A_{ij}$
> 
>   
> 
> Step 2: Find $i_{max}$ for which $P_i(i_{max})$ is maximum among all i values
> 
>   
> 
> Step 3: Form $A_1(i, j) = |A_{ij} - A_{i_{max}j}|$
> 
>   
> 
> Step 4: Compute horizontal projection P_{1i}(i) = Sum_{all j} A1(i, j)
> 
>   
> 
> Step 5: Find i values for which P_{1i}(i) is significantly smaller than P_i(i)
> 
>   
> 
> Step 6: Form A2(i, j) with only i values from Step 5
> 
>   
> 
> Step 7: Compute vertical projection P_j(j) = Sum_{all i} A2(i, j)
> 
>   
> 
> Step 8: Find j values for which P_j(j) is large
> 
>   
> 
> Step 9: {i values from Step 5} x { j values from Step 8} forms a co-cluster
> 
>   
> 
> Step 10: Remove rows and columns from Step 9, and repeat Steps 1 - 9 for more co-clusters