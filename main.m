
N = 1000;   %Number of iterations

calculated1 = ones(1, 100);
calculated2 = ones(1, 100);
calculated3 = ones(1, 100);
calculated4 = ones(1, 100);
calculated5 = ones(1, 100);
result1 = ones(1, 100);
result2 = ones(1, 100);
result3 = ones(1, 100);
result4 = ones(1, 100);
result5 = ones(1, 100);

%Runs sample function and stores it into an array
% titleText = "Single Link Sum";
% for p = 1:100
%     calculated1(p) = 1 / (1 - (p/100));
%     calculated2(p) = 5 / (1 - (p/100));
%     calculated3(p) = 15 / (1 - (p/100));
%     calculated4(p) = 50 / (1 - (p/100));
%     calculated5(p) = 100 / (1 - (p/100));
% 
%     result1(p) = runSingleLinkSim(1, ((p - 1) / 100), N);
%     result2(p) = runSingleLinkSim(5, ((p - 1) / 100), N);
%     result3(p) = runSingleLinkSim(15, ((p - 1) / 100), N);
%     result4(p) = runSingleLinkSim(50, ((p - 1) / 100), N);
%     result5(p) = runSingleLinkSim(100, ((p - 1) / 100), N);
% end

%Runs the fucntion runTwoSeriesLinkSim with different number of packets
% titleText = "Two Series Link Sim";
% for p = 1:100
%     calculated1(p) = 1 / ((1 - ((p - 1) / 100) ^ 2));
%     calculated2(p) = 5 / ((1 - ((p - 1) / 100) ^ 2));
%     calculated3(p) = 15 / ((1 - ((p - 1) / 100) ^ 2));
%     calculated4(p) = 50 / ((1 - ((p - 1) / 100) ^ 2));
%     calculated5(p) = 100 / ((1 - ((p - 1) / 100) ^ 2));
% 
%     result1(p) = runTwoSeriesLinkSim(1, ((p - 1) / 100), N);
%     result2(p) = runTwoSeriesLinkSim(5, ((p - 1) / 100), N);
%     result3(p) = runTwoSeriesLinkSim(15, ((p - 1) / 100), N);
%     result4(p) = runTwoSeriesLinkSim(50, ((p - 1) / 100), N);
%     result5(p) = runTwoSeriesLinkSim(100, ((p - 1) / 100), N);
% end

% Runs the fucntion runTwoParallelLinkSim with different number of packets
% titleText = "Two Parallel Link Sim";
% for p = 1:100
%     result1(p) = runTwoParallelLinkSim(1, ((p - 1) / 100), N);
%     result2(p) = runTwoParallelLinkSim(5, ((p - 1) / 100), N);
%     result3(p) = runTwoParallelLinkSim(15, ((p - 1) / 100), N);
%     result4(p) = runTwoParallelLinkSim(50, ((p - 1) / 100), N);
%     result5(p) = runTwoParallelLinkSim(100, ((p - 1) / 100), N);
% end

%Runs the fucntion runCompoundNetworkSim with different number of packets
titleText = "Compound Network Sim";
for p = 1:100
    result1(p) = runCompoundNetworkSim(1, ((p - 1) / 100), N);
    result2(p) = runCompoundNetworkSim(5, ((p - 1) / 100), N);
    result3(p) = runCompoundNetworkSim(15, ((p - 1) / 100), N);
    result4(p) = runCompoundNetworkSim(50, ((p - 1) / 100), N);
    result5(p) = runCompoundNetworkSim(100, ((p - 1) / 100), N);
end


%Plots all the arrays together
ax = axes;
hold on
plot(calculated1, "Color", "black");
plot(calculated2, "Color", "green");
plot(calculated3, "Color", "cyan");
plot(calculated4, "Color", "blue");
plot(calculated5, "Color", "magenta");
plot(result1, "LineStyle", "none", "marker", "o", "Color", "black");
plot(result2, "LineStyle", "none", "marker", "o", "Color", "green");
plot(result3, "LineStyle", "none", "marker", "o", "Color", "cyan");
plot(result4, "LineStyle", "none", "marker", "o", "Color", "blue");
plot(result5, "LineStyle", "none", "marker", "o", "Color", "magenta");
ax.YScale = "log";
ax.YLabel = ylabel("Number of Attempted Transmissions");
ax.XLabel = xlabel("Chance of Failure");
ax.Title = title(titleText);
ax.Legend = legend("K = 1", "K = 5", "K = 15", "K = 50", "K = 100");
hold off
