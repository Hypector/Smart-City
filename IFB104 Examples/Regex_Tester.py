#-----Description----------------------------------------------------#
#
#  REGULAR EXPRESSION TESTER
#
#  This program provides a simple Graphical User Interface that
#  helps you develop regular expressions.  It allows you to enter a
#  block of text and a regular expression and see what matches
#  are found.  (Similar web browser-based tools can be found online,
#  but the advantage of this one is that it's written in Python, so
#  we know for certain that it obeys Python's regular expression
#  syntax.)
#
#--------------------------------------------------------------------#


#-----Useful constants-----------------------------------------------#
#
#  These constants control the text widgets in the GUI.  Change them
#  if you want to modify the widgets in which text is displayed.

FontSize = 14 # Size of the font used for all widgets
InputWidgetWidth = 60 # Width of the search text and regex widgets (chars)
SearchTextDepth = 15 # Depth of the search text widget (lines)
MatchesWidth = 25 # Width of the matches found widget (chars)
MatchesDepth = 20 # Depth of the matches found widget (lines)

#
#--------------------------------------------------------------------#


#-----Main program---------------------------------------------------#
#
#

# Import the necessary regular expression function
from re import findall, MULTILINE

# Import the Tkinter functions
from Tkinter import *

# Create a window
regex_window = Tk()

# Give the window a title
regex_window.title('Regular Expression Tester')

# Create some instructions
search_text_instruction = "Enter the text you want to search here"
regex_instruction = "Enter your regular expression here"
results_instruction = '''Instructions:

All matches found are displayed here.

Quotation marks are used to mark the beginning and end of each match - they are not part of the string returned.

Matches are displayed in the order found.

Newline or tab characters in the match are shown as \\n and \\t.

Carriage returns (\\r) are deleted from the search text before searching.

If 'multiline' is enabled the beginning and end of individual lines can be matched as ^ and $, respectively, otherwise the entire text is treated as a single line.

If the pattern contains more than one group, each match shows all groups.

Note that you may not be able to directly copy-and-paste your regex into a Python script if it contains quote marks or other characters that are meaningful to Python - in this case you need to "escape" the special characters.'''
                      

# Define the fonts we want to use, including a
# fixed-width one which makes all characters easy to see
fixed_font = ('Courier', FontSize)
label_font = ('Calisto', FontSize, 'bold')

# Create a text editing widget for the text to be searched
search_text = Text(regex_window, width = InputWidgetWidth,
                   height = SearchTextDepth, wrap = WORD,
                   bg = 'light grey', font = fixed_font,
                   borderwidth = 2, relief = 'groove',
                   takefocus = False)
search_text.insert(END, search_text_instruction)
search_text.grid(row = 1, column = 0, padx = 5)

# Create label widgets to describe the boxes
matches_found = Label(regex_window, text = 'Matches found:',
                      font = label_font)
matches_found.grid(row = 0, column = 1, sticky = W, padx = 5)

enter_regex = Label(regex_window, text = 'Regular expression:',
                    font = label_font)
enter_regex.grid(row = 2, column = 0, sticky = W, padx = 5)

text_to_search = Label(regex_window, text = 'Text to be searched:',
                       font = label_font)
text_to_search.grid(row = 0, column = 0, sticky = W, padx = 5)

# Create a text widget to display the matches found
results_text = Text(regex_window, font = fixed_font,
                    width = MatchesWidth, height = MatchesDepth,
                    wrap = WORD, bg = 'light green', 
                    borderwidth = 2, relief = 'groove',
                    takefocus = False)
results_text.insert(END, results_instruction)
results_text.grid(row = 1, column = 1, rowspan = 4, padx = 5, sticky = N)

# Create a frame to hold the controls
controls = Frame(regex_window)
controls.grid(row = 4, column = 0, padx = 5, pady = 5)

# Create a checkbutton to allow the user to enable multiline mode
multiline_on = BooleanVar()
multi_button = Checkbutton(controls, text = "Multiline", font = label_font,
                           variable = multiline_on, takefocus = False)
multi_button.grid(row = 0, column = 1, padx = 5)

# Create a text editing widget for the regular expression
reg_exp = Entry(regex_window, font = fixed_font,
                width = InputWidgetWidth, bg = 'light yellow')
reg_exp.insert(END, regex_instruction)
reg_exp.grid(row = 3, column = 0, sticky = E, padx = 5)
reg_exp.selection_range(0, END) # select all text if we "tab" into the widget

# Function to format a single match.  This is made more complicated
# than we'd like because Python's findall function usually returns a list
# of matching strings, but if the regular expression contains more than
# one group then it returns a list of tuples where each tuple contains
# the individual matches for each group.
def format_match(result):
    if type(result) is tuple:
        formatted = ()
        for match in result:
            # make the match a "normal" string (not unicode)
            match = match.encode('utf8')
            # make newline and tab characters in the match visible
            match = match.replace('\n', '\\n')
            match = match.replace('\t', '\\t')
            # put it in the resulting tuple
            formatted = formatted + (match,)
    else:
        # get rid of any unicode characters in the result
        result = result.encode('utf8')
        # make newline and tab characters in the result visible
        formatted = result.replace('\n', '\\n')
        formatted = formatted.replace('\t', '\\t')
        # put quotess around the result, to help us see empty
        # results or results containing spaces at either end
        formatted = "'" + formatted + "'"
    # return either form as a printable string
    return str(formatted)
         
# Function to find and display results.  This version has
# been made robust to user error, through the use of
# exception handling (a topic we'll cover later).
# The optional 'event' parameter allows this function to be
# the target of a key binding.
def find_matches(event = None):
    # Clear the results box
    results_text.delete(0.0, END)
    # Delete any carriage returns (\r) in the search text,
    # leaving just newlines (\n), to allow for text pasted from
    # an environment with different end-of-line conventions
    text_to_search = search_text.get(0.0, END)
    text_to_search = text_to_search.replace('\r', '')
    search_text.delete(0.0, END)
    search_text.insert(0.0, text_to_search)
    # Attempt to find the pattern and display the results
    try:
        # Do a single string or multiline search,
        # depending on whether or not the user has
        # enabled multiline mode
        if multiline_on.get():
            results = findall(reg_exp.get(), text_to_search,
                              flags = MULTILINE)
        else:
            results = findall(reg_exp.get(), text_to_search)
        # Display the outcome
        if len(results) == 0:
            results_text['bg'] = 'khaki'
            results_text.insert(END, 'No matches found\n')
        else:
            results_text['bg'] = 'light green'
            for result in results:
                results_text.insert(END, format_match(result) + '\n')
    except: # assume the failure was due to a malformed regular expression
        results_text['bg'] = 'coral'
        results_text.insert(END, 'Invalid regular expression\n')  

# Create a button widget to start the search
search_button = Button(controls, text = 'Show matches',
                       takefocus = False, command = find_matches,
                       font = label_font)
search_button.grid(row = 0, column = 0)

# Also allow users to start the search by typing a carriage return
# in the regular expression field
reg_exp.bind('<Return>', find_matches)

# Start the event loop
regex_window.mainloop()

#
#--------------------------------------------------------------------#

