### Introduction

This R script is created as part of R programming assignment.
It gives function to create matrix with special set of subfunctions.
It also helps to find and cache Inverse of matrix created using first function.

### Caching the Inverse of a Matrix

Function, "makeCacheMatrix" creates a special "Matrix", which is really a list containing a function to

1. set the value of the vector
2. get the value of the vector
3. set the value of the mean
4. get the value of the mean

#Function "cachesolve" returns Invesre of Matrix supplied as argument.
#It first tries to retrive inverse from cache if available.
#If not, we calculate inverse matrix and store it in cache.

#This functions assumes that matrix supplied is always invertible.

### Sample 

```
>a<-makeCacheMatrix(matrix(c(23,56,23323,787,21:24,1:4),3,3))
> a$get()
      [,1] [,2] [,3]
[1,]    23  787   23
[2,]    56   21   24
[3,] 23323   22    1
> cacheSolve(a)
No cache entry! creating one now...
              [,1]          [,2]          [,3]
[1,] -1.181178e-06 -6.546570e-07  4.287887e-05
[2,]  1.303946e-03 -1.249687e-03  1.714689e-06
[3,] -1.138197e-03  4.276167e-02 -1.015510e-04
> cacheSolve(a)
Getting Cached Inverse Matrix!
              [,1]          [,2]          [,3]
[1,] -1.181178e-06 -6.546570e-07  4.287887e-05
[2,]  1.303946e-03 -1.249687e-03  1.714689e-06
[3,] -1.138197e-03  4.276167e-02 -1.015510e-04
> 
```
