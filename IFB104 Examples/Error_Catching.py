#---------------------------------------------------------
#
# Robust increment function
#
# The function defined below takes a number and returns it
# incremented by one.
#
# However, this function crashes when given a parameter
# which is not a number.  Your task is to add exception
# handling code to print an appropriate message when an
# input of the wrong type is supplied.
#
# NB: The Python interpreter will throw a "TypeError" exception
# if it is asked to perform arithmetic using a non-numeric
# value, so this is the exception you must "catch".
#


#---------------------------------------------------------
# These are the tests your function must pass.
#
""" 
---------- Normal cases, with expected inputs ----------

Normal case
>>> increment(0) # Test 1
1

Normal case - negative number 
>>> increment(-99) # Test 2
-98

Normal case - a "long" integer
>>> increment(199999999999999999L) # Test 3
200000000000000000L

Normal case - floating point number
>>> increment(199.5) # Test 4
200.5

-------- Invalid cases, with unexpected inputs ---------

Invalid case - string instead of number
>>> increment('1') # Test 5
Error: Argument must be a number

Invalid case - list instead of number
>>> increment([0, 1, 2]) # Test 6
Error: Argument must be a number

"""



#---------------------------------------------------------
#
# Make the following function robust against invalid
# inputs by catching TypeError exceptions and printing
# the error message shown above
#

# A function to return the increment of a given number
#
def increment(number):
    try:
        return number + 1
    except TypeError:
        print "Error: Argument must be a number"

#---------------------------------------------------------
# This function executes the unit tests above when called.
# To see if your solution passes all the tests, just call
# the function below.
#
def test():
    from doctest import testmod, REPORT_ONLY_FIRST_FAILURE
    print testmod(verbose = False,
                  optionflags = REPORT_ONLY_FIRST_FAILURE)


test()
