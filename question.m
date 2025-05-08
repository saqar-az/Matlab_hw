clc
clear

% without using loop:
column_1 = input('enter grades for first course using []: ');
column_2 = input('enter grades for second course using []: ');
column_3 = input('enter grades third course using []: ');

table = [column_1' column_2' column_3'];

% using loop:
index = 1;
table = [];

while true
    answer = input('Do you want to enter data? (y/n): ','s');
    if lower(answer) ~= 'y'
        break;
    end
    fprintf('enter the value for student %d.\n', index);
    grade1 = input('1st course grade: ');
    grade2 = input('2nd course grade: ');
    grade3 = input('3rd course grade: ');
    
    table(index, :) = [grade1, grade2, grade3];
    index = index + 1; 
end

weight = [3 2 1];

%table = [20 4 5
%        11 6 12
%        3 20 20
%        10 15 17];


% number of students
students_number = size(table,1);

% student avg
student_avg = (table(:, 1)*3 + table(:, 2)*2 + table(:, 3)*1) / 6;

% course avg
column_sums = sum(table,1);
course_avg = column_sums/students_number;

% avg grades below 10 ignoring weight
below_10 = table<10;
no_weight = table(table<10);
no_weight_avg = sum(no_weight(:))/size(no_weight,1);

% avg grades below 10 considering weight
weighted = table.*(table<10);
weighted_matrix = weight.*(weighted);
number_below_10 = weight.*below_10;
weight_avg = sum(weighted_matrix(:))/sum(number_below_10(:));

% total avg
total_matrix = weight.*table;
total_avg = sum(total_matrix(:))/(6*students_number);

