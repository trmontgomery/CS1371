function [hippogriff] = hippogriffCase(str)
%remove all numbers and puncuation
%%check nums
%%check puncuation
%% 
mask = ((str > 0 & str < 9) | ~((str >= 'a' & str <= 'z') | (str >= 'A' & str <= 'Z')) ) & str ~= ' ';
str(mask) = [];
%capitalize the first letter of each word
%cap = [1, (find(str == ' ') + 1) ]
%str(cap) = str(cap) + 'A' - 'a'
sp = [str(1) ~= ' ', str == ' '];
str(sp) = lower(str(sp));
str(sp) = str(sp) + 'A' - 'a'

hippos = strfind(str, 'Hippogriff')
%b(hippos)
c = hippos
%str(hippos(end):end) = [] %get rid of the last instance of 'Hippogriff'
%double(str)
spaces = double(str) == 32 | double(str) == 0
sum_spaces = sum(spaces)
%str(spaces) + 1 ~= ' '
%str(sp(end))
%str = [b()]
%str = [str(spaces(%two spaces in front of the word containing Hippo):str(spaces(2)+10)) 'Hippogriff' str(spaces(3):end)]
%place any leading spaces at the end of the sentence

hippogriff = NaN;

end