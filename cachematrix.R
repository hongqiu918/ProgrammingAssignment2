## The following two functions was to create a matrix and solve its inverse.

## The makeCacheMatrix function was to create a matrix that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
	inv<-NULL
	set<-function(y){
		x<<-y
		inv<<-NULL
	}
	get<-function()x
	setinverse<-function(inverse) inv<<-inverse
	getinverse<-function()inv
	list(set = set, get = get,
	setinverse = setinverse,
	getinverse = getinverse)

}


## Caculates the inverse of a special matrix.If the inverse has been caculated, the function will return the value of the inverse.

cacheSolve <- function(x, ...) {
	inv<-x$getinverse()
	if(!is.null(inv)){
		message("getting cached data")
		return(inv)
	}
	data<-x$get()
	inv<solve(data,...)
	x$setinverse(inv)
    inv  ## Return a matrix that is the inverse of 'x'
}
