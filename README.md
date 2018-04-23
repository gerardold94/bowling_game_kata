# The Bowling Game Kata
Ruby implementation of Uncle Bob's bowling game kata.

# Description
A game of tenpins bowling lasts ten frames, in each of which the bowler makes one or two
attempts to knock down ten pins arranged in a triangle. If the bowler knocks down all ten pins
on the first attempt (that’s called a “strike”), he scores ten pins plus the number of pins knocked
down on his next two rolls. If the bowler knocks down all ten pins after two attempts
(that’s called a “spare”), he scores ten pins plus the number of pins knocked down on
his next roll. If the bowler fails to knock down all ten pins (that’s called an “open frame”),
he scores the number of pins he knocked down. The scores accumulate through all ten frames.
At the last frame, if necessary, the pins are reset for one or two additional rolls to count the final bonus.
The sample scoresheet below shows how the calculations work:

![scoresheet](https://programmingpraxis.files.wordpress.com/2009/08/tenpins.jpg?w=460)

For instance, the score in the second frame is 9, the sum of the two balls in the open frame.
The score in the third frame is 15, which is 10 for the spare plus 5 on the next ball.
The score in the ninth frame is 20, which is 10 for the strike plus 10 for the spare
on the first two balls of the tenth frame. The score in the tenth frame is 16, which is 10
for the spare plus 6 for the extra ball, which is a bonus ball not really part of any frame
(the two balls of the tenth frame have already been rolled).

# Requirements
Your task is to write a function that calculates the score of a tenpins bowling game.
