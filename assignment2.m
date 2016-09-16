
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 2: Chapters 1-3
%
% Submitted by: Mark Wright
%
% Due: September 15, 2016
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Chapter 1
%1) 
CuAtomicweight=63.55
%2) 
myage=26
myage=myage-2
myage=myage+1
%3)
63
%4)
clear
pounds=100
ounces=64
who
whose
clear pounds
who
whose
%5) 
    intmin('uint32')
    ans=0
    intmax('unint32')
    ans=4294967295 
    intmin('uint64')
    ans=0
    intmax('uint64')
    ans=18446744073709551615
%6)
val=12.34
val=int32(val)
val=12
%11)
pounds=165
kilos=convmass([165],'lbm','kg')
%12)
ftemp=100
C=convtemp([100],'F','C')
%13)
feet=3
Inches=convlength([3],'ft','in')
%14)
y=sind(90)
y=sin(1.5708)
%15)
R1=3
R2=4 
R3=5 
RT=1/((1/R1)+(1/R2)+(1/R3))
%22)
lowercase
%24)
true
true 
true
false
%25)
x=4
y=3
x>5||y<10
%26)
3*10^5==3e5
%27)
log10(10000)==4

%Chapter 2
%1)vec=2:7
nv=1.1000:0.2000:1.7000
8:-2:2
%2)
vec=linspace(0,2*pi,50)
%3)
ls=linspace(2,3,6)
%4)
ls=linspace(-5,-1,5)
ls=linspace(5,9,3)
ls=linspace(8,4,3)
%6)
r=-1:0.5:1;
c=r'
%7)
%8)
mat=[7:10; 12:-2:6]
mat(1,3)
mat(2,:)
mat(:,1:2)
%9)
%10)
mat(1,:)=1:4
mat(:,3)=[7,8]'
%12)
randi([1,5], 1,4)
randi([1,5], 4,1)
zeros(3,4)
%23)
sum(3+5+7+9)
%26)
vecnum=[3,5,7,9]
vecden=1:4
sum(vecnum ./vecden)
%30)
randivec=randi([-10,10],1,5)
randivec-3
find(randivec>0)
abs(randivec)
max(randivec)
%31)
mat=randi([4,14],5,7)
max(mat)
max(mat')
max(max(mat))

%Chapter 3
%1) Assign 6 to r0, assign 3 to r1, use the correct order of operations to
%produce an answer to the formula. Assign the answer to vol. Enter the script into fprintf('',vol) 
r0=6 r1=3 vol=((4*pi)/3)*((ro^3)-(rl^3))
fprintf('The volume for the hollow sphere is %d/n',vol)

%4)vec=input('Enter a vector:')
Enter a vector:[4,8;12,34;23,1]

%6)
fprintf('12345.6789')
fprintf('%10.4f/n',12345.6789)
fprintf('%10.2f/n',12345.6789)
fprintf('%6.4f/n',12345.6789)
fprintf('%2.4f/n',12345.6789)
%13)
x=input('enter a value for x:');
y=input('enter a value for y:');
z=input('enter a value for z:');
unitvec=(x*y*z)/(sprt((x^2)+(y^2)+(z^2)));
fprintf('unit vector is %.6f\n',unitvec)