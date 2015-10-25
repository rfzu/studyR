f <- function(a, b = 1, c = 2, d = NULL) {

}

f <- function(a, b) {
    print(a)
    print(b)
}

myplot <- function(x,y,type = 'l', ...) {
    plot(x,y,type = type, ...)  
}

# metaprogramming stuff!

make.power <- function(n) {
    pow <- function(x) {
        x^n
    }
}

cube <- make.power(3)
make.power(2) -> square

# lexical scoping - is a strange thing

y <- 10

f <- function(x) {
    y <- 2
    y^2 + g(x)
}

g <- function(x) {
    x*y
}

f(1)