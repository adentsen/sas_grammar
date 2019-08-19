# sas_grammar

I am trying my best to follow PEP 8 -- Style Guide for Python Code.
They have lots of good stuff in there.
https://www.python.org/dev/peps/

Repo Naming Convention

Class names should normally use the CapWords convention.


Modules should have short, all-lowercase names. Underscores can be used in the module name if it improves readability. Python packages should also have short, all-lowercase names, although the use of underscores is discouraged.
grammar common_grammar

Names of type variables introduced in PEP 484 should normally use CapWords preferring short names: T, AnyStr, Num

Function,variable,global variable names should be lowercase, with words separated by underscores as necessary to improve readability.

constants are usually defined on a module level and written in all capital letters with underscores separating words. Examples include MAX_OVERFLOW and TOTAL

To do 
1. Cover DATA steps
2. 



Data Step options
http://support.sas.com/documentation/cdl/en/lrdict/64316/HTML/default/viewer.htm#a000104210.htm

*ignore the libref naming rule, assume the code works



Log
8/19/2019
- Need to make "Variable" in common grammar more rigorious.
- Need to create a variable to take care the opts, else it will take forever to code the stuff
Expression = Expression?
Under options Variable = Variable | Variable??