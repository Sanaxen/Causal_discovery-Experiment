# Causal_discovery-Experiment

The idea is to use deep learning to directly estimate g and f in the post-nonlinear model in an attempt to perform nonlinear causal search. However, we impose a constraint to maximize the independence between residuals.  
The calculation assumes the existence of an unobserved common cause $`\mu`$.
This is not practical at all because the computation time exceeds the acceptable limit.

 **post-nonlinear model**  
 $` y=g^{-1} (f(x) + \epsilon ) `$
  
We are experimenting with a similar model of post-nonlinear model.  
 $` y=g^{-1} (f(x, \mu) + \epsilon ) `$  
$` \mu `$ is a generalized Gaussian distribution $`\,`$
 $` \mu(x) = \frac{\beta^{1/2}}{2\Gamma(1+1/\rho)} exp(-\beta^{1/2}|x-\tilde{x}|^{\rho})`$

$`\beta`$ and $`\rho`$ are parameters to be determined and estimated by optimization.  

 $` loss = max(w1 \,max(e_{i}), w2\,max(MI(e_{i},e_{j})))+\epsilon\,(w1 \,max(e_{i}), w2\,max(MI(e_{i},e_{j})))`$

MI is an independent variable if it is zero in the mutual information content.   
In other words, $`\mu`$ is obtained so that both the residuals and
 the mutual information content between residuals are minimized.   
 Loss loss is an expanded Tchebyshev scalarization function.  

- $`\epsilon`$=0.0001
- $`w1`$=0.7
- $`w2`$=0.4

---
## Experiment
- Causal structure compared  
<img src="./images/image5.png"  width="50%">  
reference https://proceedings.mlr.press/v177/uemura22a/uemura22a.pdf   

Solid and dashed lines are estimated edges and ground truths, respectively.

- ICA-LiNGAM  
<img src="./images/image4.png" width="65%">   

  The numbers mean the correlation coefficient in parentheses and the linear coefficient outside the parentheses.
- Experiment  
<img src="./images/Digraph.png" width="65%">   

The values in parentheses indicate the correlation coefficient, the values outside the parentheses indicate the feature importance, and the percentage values indicate the confidence level.
Feature Importance is a relative value when the maximum is 1.0.

- Causal structure compared  
<img src="./images/image7.png" width="50%">  
reference https://proceedings.mlr.press/v177/uemura22a/uemura22a.pdf   

Solid and dashed lines are estimated edges and ground truths, respectively.  


- Experiment  
<img src="./images/Digraph_2.png" width="50%">   

---
## Probability of possible causality from each variable  
<img src="./images/b_probability.png" width="20%">  

## Examples of output other than causal structure  
<img src="./images/Causal_effect.png" width="20%">  

## Error for each variable in the causal structure model  
<img src="./images/causal_multi_histgram.png" width="40%">  

---
## Estimate contributions from unobserved variables  
<img src="./images/Digraph_0.png" width="50%">  

---
## Note  
This is still an experimental implementation.
Therefore, the optimization is close to a parameter brute force approach,   
where randomly generated parameters are set and computed, and the optimal solution is updated as the LOSS becomes smaller.   
Therefore, it is very difficult to determine at what point to stop the calculation.  
<img src="./images/Digraph_2.png" width="20%">
<img src="./images/loss.png" width="50%">  
In this example, it took 59 iterations to obtain the correct result, which I believe is very rare.
This is a very fortunate case.
In other experiments, it has often occurred that 20,000 calculations are required.  

The causal structure is correct when the LOSS drops the most, even though it may change only slightly.  

- loss  
<img src="./images/loss2.png" width="30%">  
- 1  
<img src="./images/Digraph1.png" width="30%">  
- 2  
<img src="./images/Digraph2.png" width="30%">  
- 3  
<img src="./images/Digraph3.png" width="30%">  
- 4   
<img src="./images/Digraph.png" width="30%">  

Roughly speaking, ICA-LiNGAM is used. However, LiNGAM is used to obtain the B matrix, so it does not have to be LiNGAM.  
The B matrix is used as a causal (parent-child) structure and ignored for their linear relationship.  
Adding fluctuations to the input data changes the causal structure (B matrix) that is computed and calculated.  
In other words, different causal (parent-child) structures are obtained.
Based on the causal relationship (parent-child relationship) based on the structure of this B matrix
$`x \rightarrow y`$ relationship can be obtained. This gives us $`y=g^{-1}f(x, \mu)`$
and $`h=g^{-1}f`$ is estimated by deep learning.
In other words, the optimization is performed so that $`\|(y_pred - y_obs)\|`$ is minimized, but $`\|g(y_pred) - y_obs\|`$ must also be minimized. 
In addition, adjust the undetermined parameters so that the loss is minimized.
$` loss = max(w1 \,max(e_{i}), w2\,max(MI(e_{i},e_{j})))+\epsilon\,(w1 \,max(e_{i}), w2\,max(MI(e_{i},e_{j})))`$

## reference document
- https://www.ds.shiga-u.ac.jp/inga/
- https://www.jst.go.jp/kisoken/aip/result/event/jst-riken_sympo2021/pdf/shimizu.pdf
- https://www.socialpsychology.jp/seminar/pdf/2016SS_SShimizu.pdf
- S. Shimizu, P. O. Hoyer, A. Hyv舐inen, and A. Kerminen. A linear non-gaussian acyclic model for causal discovery. Journal of Machine Learning Research, 7: 2003--2030, 2006. [PDF]
- S. Shimizu, T. Inazumi, Y. Sogawa, A. Hyv舐inen, Y. Kawahara, T. Washio, P. O. Hoyer and K. Bollen. DirectLiNGAM: A direct method for learning a linear non-Gaussian structural equation model. Journal of Machine Learning Research, 12(Apr): 1225--1248, 2011.
- Y. Zeng, S. Shimizu, H. Matsui, F. Sun. Causal discovery for linear mixed data. In Proc. First Conference on Causal Learning and Reasoning (CLeaR2022). PMLR 177, pp. 994-1009, 2022. 
- T. N. Maeda and S. Shimizu. RCD: Repetitive causal discovery of linear non-Gaussian acyclic models with latent confounders. In Proc. 23rd International Conference on Artificial Intelligence and Statistics (AISTATS2020), Palermo, Sicily, Italy. PMLR 108:735-745, 2020. 
- T. N. Maeda and S. Shimizu. Causal additive models with unobserved variables. In Proc. 37th Conference on Uncertainty in Artificial Intelligence (UAI). PMLR 161:97-106, 2021.
- Diviyan Kalainathan et.al., Structural Agnostic Modeling: Adversarial Learning of Causal Graphs
- A Multivariate Causal Discovery based on Post-Nonlinear Model, CLeaR 2022
- Estimation Of Post-Nonlinear Causal Models Using Autoencoding Structure, ICASSP 2020


