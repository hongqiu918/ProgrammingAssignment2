## The following two functions was to create a matrix and solve its inverse.

## The makeCacheMatrix function was to create a matrix. It aims to 1)set the value of the matrix, 2)get the value of the matrix, 3)set the value of the inverse, and 4)get the value of the inverse.

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


## The following function caculates the inverse of a special matrix.
But before it caculates the inverse, it will first check to see whether the inverse was already caculated. If so, it will get the inverse and skip the computation. Otherwise, it will caculate the inverse using the setinverse function.

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
