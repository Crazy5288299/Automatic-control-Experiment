num=4*conv([1,2],conv([1,6,6],[1,6,6]));
den=conv([1,0],conv([1,1],conv([1,1],conv([1,1],[1,3,2,5]))));

%�㼫������ģ��
num=[1,11,30,0];     %���ݺ�������ϵ��
den=[1,9,45,87,50];  %���ݺ�����ĸϵ��
disp(roots(den));    %������
disp(roots(num));    %�������
zplane(num,den);     %����ϵͳ�������㼫��ͼ
[z,p,k]=tf2zp(num,den); %��������ʽ��ʽ���㼫��,pΪ��㣬kΪ����
s1=zpk(z,p,k,-1);  %�õ�ģ��

sys=tf(num,den);
sys1=zpk(sys);
[z,p,k]=tf2zp(num,den);  %���ݺ�����ʽת��Ϊ�㼫����ʽ
[num,den]=zp2tf(z,p,k)   %�㼫����ʽת��Ϊ���ݺ�����ʽ

[r,p,k]=residue(num,den) %������ݺ������ַ�ʽչ��ʽ�е����������������
%s2=rpk(r,p,k)