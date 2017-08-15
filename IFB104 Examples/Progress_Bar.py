#----------------------------------------------------------------
#
# PUMP ME UP
#
# In this exercise you must create a Graphical User
# Interface using Tkinter.  The program should create
# a window containing a progress bar and a button.  When
# pressed, the button must advance the progress bar by
# a small, fixed amount.  (The progress bar will 'wrap
# around' to zero when it reaches its maximum value.
# By default progress bars show values from 0 to 99.)
#
# Hint: The Progressbar widget has a method called "step"
# that advances the bar by a given amount.
#
# WARNING: This exercise relies on the "ttk" package
# which offers some extra widgets beyond those provided
# by Tkinter, including the Progressbar widget needed
# here.  It's possible that the ttk module may not be
# installed in some older Python installations.  If you
# get an error when trying to import from ttk you will
# not be able to complete this exercise.
#

# Import the necessary Tkinter functions
from Tkinter import Tk, Button, VERTICAL
from ttk import Progressbar

# Create a window
the_window = Tk()

# Give the window a title
the_window.title('Pump me up!')


###### PUT YOUR CODE HERE

# 1. Define a function which will be called each
#    time the button is pressed to "step" the
#    progress bar up
value = 0
def step_up():
##    global value
##    value += 10
##    if value >= 100:
##        value = 0
##        bar.step(amount = value)
##    else:
    bar.step(10)

# 2. Create the Button widget and pack it into
#    the main window
btn_push = Button(the_window, text = "Press",\
font = ("Arial", 20), command = step_up)
btn_push.pack()

# 3. Create the Progressbar widget and pack it into
#    the main window
bar = Progressbar(the_window, orient = "vertical",\
maximum = 100.001)
bar.pack()


# Start the event loop to react to user inputs
the_window.mainloop()
