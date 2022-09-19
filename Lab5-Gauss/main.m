A11 = [0.4096 0.1234 0.3678 0.2943;     % @param A ϵ������
       0.2246 0.3872 0.4015 0.1129;
       0.3645 0.1920 0.3781 0.0643;
       0.1784 0.4002 0.2786 0.3927];
b11 = [1.1951;1.1262;0.9989;1.2499];    % @param b �Ҷ�����
n11 = 4;                                % @param n ϵ������ά��


A12 = [136.01 90.860  0      0;
       90.860 98.810 -67.590 0;
       0     -67.590 132.01  46.260;
       0      0      46.260  177.17];
b12 = [226.87; 122.08; 110.68; 223.43];
n12 = 4;
A13 = [  1 1/2 1/3 1/4;
       1/2 1/3 1/4 1/5;
       1/3 1/4 1/5 1/6;
       1/4 1/5 1/6 1/7];
b13 = [25/12; 77/60; 57/60; 319/420];
n13 = 4;
A14 = [10 7 8 7;
        7 5 6 5;
        8 6 10 9;
        7 5 9 10];
b14 = [32; 23; 33; 31];
n14 = 4;
A21 = [197  305  -206  -804;
       46.8 71.3 -47.4 52.0;
       88.6 76.4 -10.8  802;
       1.45 5.90  6.13 36.5];
b21 = [136; 11.7; 25.1; 6.60];
n21 = 4;
A22 = [0.5398  0.7161 -0.5554 -0.2982;
       0.5257  0.6924  0.3565 -0.6255;
       0.6465 -0.8187 -0.1872  0.1291;
       0.5814  0.9400 -0.7779 -0.4042];
b22 = [0.2058; -0.0503; 0.1070; 0.1859];
n22 = 4;
A23 = [10 1  2;
        1 10 2;
        1 1  5];
b23 = [13; 13; 7];
n23 = 3;
A24 = [4 -2 -4;
      -2 17 10;
      -4 10  9];
b24 = [-2; 25; 15];
n24 = 3;

disp("����1��1��")
gauss(n11, A11, b11);
disp("����1��2��")
gauss(n12, A12, b12);
disp("����1��3��")
gauss(n13, A13, b13);
disp("����1��4��")
gauss(n14, A14, b14);
disp("����2��1��")
gauss(n21, A21, b21);
disp("����2��2��")
gauss(n22, A22, b22);
disp("����2��3��")
gauss(n23, A23, b23);
disp("����2��4��")
gauss(n24, A24, b24);