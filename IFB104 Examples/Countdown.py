#----------------------------------------------------------------
#
# COUNTDOWN
#
# In this exercise you must create a Graphical User
# Interface using Tkinter.  The program should create
# a window containing a label and a button.  The label
# displays a number and each time the button is pressed
# the number in the label should decrease by 1 until
# it reaches zero, at which some other value can be
# displayed.  This will give you practice at both
# creating widgets and getting them to interact.
#

# Import the necessary Tkinter functions
from Tkinter import Tk, Button, Label

# Create a window
countdown_window = Tk()

# Give the window a title
countdown_window.title('Countdown')


##### PUT YOUR CODE HERE

# 1. Define a function to be called when the button is
#    pressed which will change the label's value

value = 10

def btn_press():
    global value
    value -= 1
    if value >= 0:
        label["text"] = str(value)
    else:
        label["text"] = "Done"
    
label = Label(countdown_window, text = str(value), font = ("Arial", 30))
label.pack()
btn_push = Button(countdown_window, text = "Press", font = ("Arial", 30), command = btn_press)
btn_push.pack()


# 2. Define the Button widget and pack it into the
#    main window

# 3. Define the Label widget and pack it into the main
#    window


# Start the event loop to react to user inputs
countdown_window.mainloop()
