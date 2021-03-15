%%QUADRATIC FORMULA%%

%  A(x^2)+B(x)+C=0
begin_prompt = 'Quadratic Formaula (Yes/No)(1/0)';
d = input(begin_prompt)
if d  == 1    
prompt = 'Ax^2+Bx+C=0...A=';
A = input(prompt)

prompt2 = 'Ax^2+Bx+C=0...B=';
B = input(prompt2)

prompt3 = 'Ax^2+Bx+C=0...C=';
C = input(prompt3)
Answer1= ((-B)+((B^2-4*A*C))^0.5)/(2*A)
Answer2= ((-B)-((B^2-4*A*C))^0.5)/(2*A)
disp(Answer1)
%disp(Answer2)
else 
disp( 'Error in Start Prompt Input, Please Pick Yes (1) or this code will not work');

end