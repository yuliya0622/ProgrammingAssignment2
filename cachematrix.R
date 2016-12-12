## function makeCachematrix creates and stores a matrix 'm' that can cache its universe
##  parameters of the matrix are passed to m
##

## 
makeCacheMatrix <- function(m = matrix()) 
{   inv <- NULL
    set <- function(n)     
    {   m <<- n
        inv <<- NULL}
 get <- function()m
 setinvs <- function(inverse) inv <<- inverse           
 getinvs <- function() inv 
 list(set=set, get=get, setinvs=setinvs, getinvs=getinvs) }
        
}


## function cacheSolve is used to inverse the values of matrix 'm':
## to calculate the inverse numbers for 'm' or to retrieve these numbers if there are already cached:          

 

cacheSolve <- function(m, ...) 
{ inv <- m$getinvs()
  if(!is.null(inv))       
  {message(“data is cached.")
  return(inv)}
  data <- m$get() 
  inv <- solve(data) 
   m$setinvs(inv)
inv}





