#metacharacters like $,^,. are used for searching literals/words in text.
## ^word finds the lines which start with word.
## word$ finds the lines ending with word..
## [Bb][Uu][Ss][Hh] finds any lines with bush in it regardless of upper/lower case
## [a-z] searches letters a to z and [0-9]searches numbers.
## ^[0-9][a-z] would search lines starting with number and letter. like 1st, 9am,etc
## [^?.]$ searches for lines ending with something otherthan ? or .
## "." metacharacter searches for any character.
## therefore 9.11 is gonna search for lines with any character b/w 9 and 11. eg: 9:11,9-11,9/11 etc
## | is used for "or". eg fire|flood searches for lines with fire or flood in them.
## ^[Gg]ood|[Bb]ad searches for a line starting with Good/good or containing Bad/bad anywhere in it.
## brackets are imp. ^([Gg]ood|[Bb]ad) searches for strings stargin with Good/good/Bad/bad. not just anywhere.
## ? metacharachter is for options. for eg: george([Ww]\.)? bush searches for george bush or something in b/w george and bush.
##\ is used for escaping character i.e. making a metacharcter into literal. like in above example. otherwise it might treat . as metacharacter.
## + is used to denote atleast one charcter repetetion, (.*) means any no. of reps including none.
## {1,5} means atleast match and max 5 matches. eg.
## bush( +[^ ]+ +){1,5} debate. looks for lines starting ending with bush and that has 1 to 5 words in b/w them.
## escape numbers like \1 \2,etc can be used to remember exp in parenthesis (). eg:
## +([a-zA-Z]+) +\1 +  this searches for lines with space word exact word space. eg: night night, blah blah blah, etc.
## (.*) is greedy. it looks for longeest match. the greediness can be turned off using (.*?)
## literals and metachars are best used with grep,gsub,sub to manipulate text.
grep("a+", c("abc", "def", "cba a", "aa"), perl=TRUE, value=TRUE)

