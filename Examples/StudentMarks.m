clear all
clc
student_marks = [80 70 80 60 30 80 0 70];
a = student_marks(1);
b = student_marks(2);
student_marks(5) = 80;
student_marks(7) = 80;
% replaces the 5th element with 80
student_marks;
mean(student_marks)