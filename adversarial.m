# The Linear Explanation of Adversarial Examples
# Suppose a cost function optimized the parameters to
W = [1 2 0.5 0.3 3 1]
b = 0

# and one of the data points is
x = [3;4;2;0.1;1;3]

# then the estimation for the label of this sample is
y = dot(W,x) + b
disp(y) # 18.030

# Now we will attack
E = 0.2 # a small perturbation

# W' = derivative of y w.r.t. x
x_adv = x + E*W'
y_adv = dot(W,x_adv) + b
disp(y_adv) # 21.098

# Larger the W, less the similarity between x and x_adv
# If we take sign(W) instead of W, we can make many infinitesimal changes to the
# input that add up to one large change to the output; this method simulatenously
# keep x similar to x_adv and radically change y 
