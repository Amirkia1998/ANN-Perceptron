clear;
clc;
load("data.mat")
% TEAM_0 - an example
%%
% presentation of the problem - considering the possibility of finding a
% solution
figure
plot(TEAM_0(1,1:5),TEAM_0(2,1:5),'or')
hold on
plot(TEAM_0(1,6:11),TEAM_0(2,6:11),'*g')
legend("points from class ""-1""", "points from class ""1""",'Location','southoutside')
%%
% deletion from the data set of a point considered to be incorrect - point
% no "6" - in case of "TEAM_0" data set!
tard_TEAM_0 = [TEAM_0(:,1:5) TEAM_0(:,7:11)]; % The All Right Data
%%
% presentation of the problem - final version
figure
plot(tard_TEAM_0(1,1:5),tard_TEAM_0(2,1:5),'or')
hold on
plot(tard_TEAM_0(1,6:10),tard_TEAM_0(2,6:10),'*g')
legend("points from class ""-1""", "points from class ""1""",'Location','southoutside')
%%
% preparation of data for feeding to the artificial neural network -
% the perceptron
IN_tard_TEAM_0 = tard_TEAM_0(1:2,:)
TARGET_tard_TEAM_0 = tard_TEAM_0(3,:)
%%
%% OPTIONAL! in "Command Window" --> nntool
%%
%%
% creating the network - perceptron
net_tard_TEAM_0 = newp(IN_tard_TEAM_0,TARGET_tard_TEAM_0,['hardlims'])
% checking the correctness of operation
out_net_tard_TEAM_0 = sim(net_tard_TEAM_0,IN_tard_TEAM_0); % network simulation
error_net_tard_TEAM_0 = TARGET_tard_TEAM_0 - out_net_tard_TEAM_0 % error calculation
%%
% network training
net_tard_TEAM_0 = train(net_tard_TEAM_0, IN_tard_TEAM_0, TARGET_tard_TEAM_0) % the same structure (name) before and after training process
out_net_tard_TEAM_0 = sim(net_tard_TEAM_0,IN_tard_TEAM_0); % network simulation
error_net_tard_TEAM_0 = TARGET_tard_TEAM_0 - out_net_tard_TEAM_0 % error calculation
%%
% assigning weights and bias values
w1_net_tard_TEAM_0 = net_tard_TEAM_0.IW{1}(1)
w2_net_tard_TEAM_0 = net_tard_TEAM_0.IW{1}(2)
b_net_tard_TEAM_0 = net_tard_TEAM_0.b{1}(1)
%%
% determining the equation of a straight line - decision border --> 
% determining the coordinates of two points to draw this straight line
% y(x) = - w1/w2 * x - b/w2
plot([-5 3],[-w1_net_tard_TEAM_0/w2_net_tard_TEAM_0*(-5)- b_net_tard_TEAM_0/w2_net_tard_TEAM_0 -w1_net_tard_TEAM_0/w2_net_tard_TEAM_0*3- b_net_tard_TEAM_0/w2_net_tard_TEAM_0],"b")
legend("points from class ""-1""", "points from class ""1""","border line",'Location','southoutside');
%%
% minimizing the number of points used to train the network
% for "TEAM_0" eliminated points: no 10, 7 - class "1" and 4, 5 - class "-1"
tsrp_TEAM_0 = [tard_TEAM_0(:,1:3), tard_TEAM_0(:,6), tard_TEAM_0(:,8:9)]; % The Selected Right Points
%%
% presentation of the "modyfied" problem
figure
plot(tard_TEAM_0(1,1:5),tard_TEAM_0(2,1:5),'or')
hold on
plot(tsrp_TEAM_0(1,1:3),tsrp_TEAM_0(2,1:3),'*r')
plot(tard_TEAM_0(1,6:10),tard_TEAM_0(2,6:10),'*g')
plot(tsrp_TEAM_0(1,4:6),tsrp_TEAM_0(2,4:6),'og')
legend("points from class ""-1""", "chosen points from class ""-1""","points from class ""1""", "chosen points from class ""1""",'Location','southoutside');
%%
% assigning weights and bias values
IN_tsrp_TEAM_0 = tsrp_TEAM_0(1:2,:)
TARGET_tsrp_TEAM_0 = tsrp_TEAM_0(3,:)
%%
% creating the network - perceptron
net_tsrp_TEAM_0 = newp(IN_tsrp_TEAM_0,TARGET_tsrp_TEAM_0,['hardlims'])
% checking the correctness of operation
out_net_tsrp_TEAM_0 = sim(net_tsrp_TEAM_0,IN_tsrp_TEAM_0); % network simulation
error_net_tsrp_TEAM_0 = TARGET_tsrp_TEAM_0 - out_net_tsrp_TEAM_0 % error calculation
%%
% network training
net_tsrp_TEAM_0 = train(net_tsrp_TEAM_0, IN_tsrp_TEAM_0, TARGET_tsrp_TEAM_0) % the same structure (name) before and after training process
out_net_tsrp_TEAM_0 = sim(net_tsrp_TEAM_0,IN_tsrp_TEAM_0); % network simulation
error_net_tsrp_TEAM_0 = TARGET - out_net_tsrp_TEAM_0 % error calculation
%%
% assigning weights and bias values
w1_net_tsrp_TEAM_0 = net_tsrp_TEAM_0.IW{1}(1)
w2_net_tsrp_TEAM_0 = net_tsrp_TEAM_0.IW{1}(2)
b_net_tsrp_TEAM_0 = net_tsrp_TEAM_0.b{1}(1)
%%
% y(x) = - w1/w2 * x - b/w2
plot([-5 3],[-w1_net_tsrp_TEAM_0/w2_net_tsrp_TEAM_0*(-5)- b_net_tsrp_TEAM_0/w2_net_tsrp_TEAM_0 -w1_net_tsrp_TEAM_0/w2_net_tsrp_TEAM_0*3- b_net_tsrp_TEAM_0/w2_net_tsrp_TEAM_0],"b")
legend("points from class ""-1""", "points from class ""1""","border line",'Location','southoutside');
%%
figure
% all data class "-1"
plot(TEAM_0(1,1:5),TEAM_0(2,1:5),'or') 
hold on
% all data class "1"
plot(TEAM_0(1,6:11),TEAM_0(2,6:11),'*g') 
% removed point
plot(TEAM_0(1,6),TEAM_0(2,6),'db') 
% chosen points from class "-1"
plot(tsrp_TEAM_0(1,1:3),tsrp_TEAM_0(2,1:3),'*r')
% chosen points from class "1"
plot(tsrp_TEAM_0(1,4:6),tsrp_TEAM_0(2,4:6),'og')
% the border line for all data
plot([-5 3],[-w1_net_tard_TEAM_0/w2_net_tard_TEAM_0*(-5)- b_net_tard_TEAM_0/w2_net_tard_TEAM_0 -w1_net_tard_TEAM_0/w2_net_tard_TEAM_0*3- b_net_tard_TEAM_0/w2_net_tard_TEAM_0],"b:",'LineWidth',1)
% the border line for selected points
plot([-5 3],[-w1_net_tsrp_TEAM_0/w2_net_tsrp_TEAM_0*(-5)- b_net_tsrp_TEAM_0/w2_net_tsrp_TEAM_0 -w1_net_tsrp_TEAM_0/w2_net_tsrp_TEAM_0*3- b_net_tsrp_TEAM_0/w2_net_tsrp_TEAM_0],"c-")
legend("points from class ""-1""", "points from class ""1""","removed point","chosen points from class ""-1""", "chosen points from class ""1""","border line - all data","border line - selected points",'Location','southoutside');

