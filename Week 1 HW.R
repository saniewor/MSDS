#Question 1 - Write a loop that calculates 12-factorial
for (x in 1:12){print(factorial (x))}
#[1] 1
#[1] 2
#[1] 6
#[1] 24
#[1] 120
#[1] 720
#[1] 5040
#[1] 40320
#[1] 362880
#[1] 3628800
#[1] 39916800

#Question 2 - Show how to create a numeric vector that contains the sequence from 20 to 50 by 5.
x<-seq(from = 20, to =50, by =5)
x
#[1] 20 25 30 35 40 45 50

#Question 3 - Create the function “quadratic” that takes a trio of input numbers a, b, and c and solve the quadratic
# equation. The function should print as output the two solutions.
  quad <- function(a, b, c)
  {
    a <- as.complex(a)
    answer <- c((-b + sqrt(b^2 - 4 * a * c)) / (2 * a),
                (-b - sqrt(b^2 - 4 * a * c)) / (2 * a))
    if(all(Im(answer) == 0)) answer <- Re(answer)
    if(answer[1] == answer[2]) return(answer[1])
    answer
  }
  quad(a = 1, b = -8, c = 12)
  #6,2