layout(matrix(1:4, nr=2,nc=2))

layout.show(4)

curve(dnorm(x, mean=10,sd=4),xlim=c(-10,30))

curve(dnorm(x, mean=10,sd=8),xlim=c(-10,30))

curve(dnorm(x, mean=5,sd=4),xlim=c(-10,30))

curve(dnorm(x, mean=10,sd=2),xlim=c(-10,30))


### Draw a normal curve
curve(dnorm(x, mean=10,sd=4),xlim=c(-10,30))

# Find the area between x=10 and 25

# x values corresponding to the x - cords of points on the curve
xcurve=seq(10,25,length=1000)

# Y values corresponding t0 the x values
ycurve=dnorm(xcurve,mean=10,sd=4)

# Fill in the polygon with the given vertices
polygon(c(10,xcurve,25),c(0,ycurve,0),col="Red")

# Put in the text with the appropriate area

# Area
prob=pnorm(25,mean=10,sd=4)-pnorm(10,mean=10,sd=4)
prob=round(prob,4)


prob = P(x < 5)
prob

