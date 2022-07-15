import turtle
import winsound
win = turtle.Screen()
win.title("Pong")
win.bgcolor("black")
win.setup(width=800,height=600)
win.tracer(0)


#Score
score_a=0
score_b=0


#Paddle A
left_paddle=turtle.Turtle()
left_paddle.speed(0)
left_paddle.shape("square")
left_paddle.color("red")
left_paddle.shapesize(stretch_wid=5,stretch_len=1)
left_paddle.penup()
left_paddle.goto(-350,0)





#Paddle B
right_paddle=turtle.Turtle() #turtle is the module and Turtle is the command.
right_paddle.speed(0) #0 is the fastest speed
right_paddle.shape("square")
right_paddle.color("blue")
right_paddle.shapesize(stretch_wid=5,stretch_len=1) #by default the square is 20x20 so it is being stretched by 5 in length making it 100x20
right_paddle.penup() #penup command stops the turtle from making a line
right_paddle.goto(350,0)






#Ball

ball=turtle.Turtle()
ball.speed(0)
ball.shape("circle")
ball.color("white")
ball.penup()
ball.goto(0,0)
ball.dx = 0.2
ball.dy = -0.2 #everytime the ball moves it moves by 2 pixels


#Pen - Actually just a turtle
pen = turtle.Turtle()
pen.speed(0)
pen.color("red")
pen.penup()
pen.hideturtle()
pen.goto(0,240)
pen.write("0                                  0", align="center",font=("Times New Roman",32,"normal"))





#Function
def left_paddle_up():
    y = left_paddle.ycor() # returns the y coordinate
    y +=20
    left_paddle.sety(y)

def left_paddle_down():
    y = left_paddle.ycor() # returns the y coordinate
    y -=20
    left_paddle.sety(y)

def right_paddle_up():
    y=right_paddle.ycor()
    y+=20
    right_paddle.sety(y)

def right_paddle_down():
    y = right_paddle.ycor() # returns the y coordinate
    y -=20
    right_paddle.sety(y)


#Keyboard binding
win.listen() #tells the program to listen for program input
win.onkeypress(left_paddle_up,"w") #upon pressing 'w' call left_paddle_up
win.onkeypress(right_paddle_up,"Up")
win.onkeypress(left_paddle_down,"s")
win.onkeypress(right_paddle_down,"Down")



#Main game loop
while True:
    win.update()

    #ball movement
    ball.setx(ball.xcor()+ball.dx)
    ball.sety(ball.ycor()+ball.dy)


    #border check
    if ball.ycor()>290:
        ball.sety(290) #top border
        ball.dy*=-1 #reverses the direction. if dy=2, then dy will be -2
        winsound.PlaySound("bounce.wav",winsound.SND_ASYNC) #stops delay

    if ball.ycor()<-290:
        ball.sety(-290) #down border
        ball.dy*=-1
        winsound.PlaySound("bounce.wav",winsound.SND_ASYNC) #stops delay

    if ball.xcor()>390:
        ball.goto(0,0) #right border
        ball.dx*=-1
        score_a+=1
        pen.clear()
        pen.write("{}                                  {}".format(score_a,score_b), align="center",font=("Times New Roman",32,"normal"))
    
    if ball.xcor()<-390:    #left border
        ball.goto(0,0)
        ball.dx*=-1
        score_b+=1
        pen.clear()
        pen.write("{}                                  {}".format(score_a,score_b), align="center",font=("Times New Roman",32,"normal"))

    #Paddle and ball collision
    if (ball.xcor()>340 and ball.xcor()<350) and (ball.ycor()<right_paddle.ycor()+40 and ball.ycor()>right_paddle.ycor()-40):
        ball.setx(340)
        ball.dx*=-1
        winsound.PlaySound("bounce.wav",winsound.SND_ASYNC) #stops delay
    if (ball.xcor()<-340 and ball.xcor()>-350) and (ball.ycor()<left_paddle.ycor()+40 and ball.ycor()>left_paddle.ycor()-40):
        ball.setx(-340)
        ball.dx*=-1
        winsound.PlaySound("bounce.wav",winsound.SND_ASYNC) #stops delay
