N = 1000; %Number of simulations per result

%Makes an array for all results
result1 = ones(1, 100);
result2 = ones(1, 100);
result3 = ones(1, 100);

% Runs the fucntion runCustomCompoundNetwrokSim with different number of packets
% titleText = "Custom Compound Network Sim Figure 1";
% for p = 1:100
%     result1(p) = runCustomCompoundNetworkSim(1, .10, .60, ((p - 1) / 100), N);
%     result2(p) = runCustomCompoundNetworkSim(5, .10, .60, ((p - 1) / 100), N);
%     result3(p) = runCustomCompoundNetworkSim(15, .10, .60, ((p - 1) / 100), N);
% end

% Runs the fucntion runCustomCompoundNetwrokSim with different number of packets
% titleText = "Custom Compound Network Sim Figure 2";
% for p = 1:100
%     result1(p) = runCustomCompoundNetworkSim(1, .60, .10, ((p - 1) / 100), N);
%     result2(p) = runCustomCompoundNetworkSim(5, .60, .10, ((p - 1) / 100), N);
%     result3(p) = runCustomCompoundNetworkSim(15, .60, .10, ((p - 1) / 100), N);
% end

% Runs the fucntion runCustomCompoundNetwrokSim with different number of packets
% titleText = "Custom Compound Network Sim Figure 3";
% for p = 1:100
%     result1(p) = runCustomCompoundNetworkSim(1, .10, ((p - 1) / 100), .60, N);
%     result2(p) = runCustomCompoundNetworkSim(5, .10, ((p - 1) / 100), .60, N);
%     result3(p) = runCustomCompoundNetworkSim(15, .10, ((p - 1) / 100), .60, N);
% end

% Runs the fucntion runCustomCompoundNetwrokSim with different number of packets
% titleText = "Custom Compound Network Sim Figure 4";
% for p = 1:100
%     result1(p) = runCustomCompoundNetworkSim(1, .60, ((p - 1) / 100), .10, N);
%     result2(p) = runCustomCompoundNetworkSim(5, .60, ((p - 1) / 100), .10, N);
%     result3(p) = runCustomCompoundNetworkSim(15, .60, ((p - 1) / 100), .10, N);
% end

% Runs the fucntion runCustomCompoundNetwrokSim with different number of packets
% titleText = "Custom Compound Network Sim Figure 5";
% for p = 1:100
%     result1(p) = runCustomCompoundNetworkSim(1, ((p - 1) / 100), .10, .60, N);
%     result2(p) = runCustomCompoundNetworkSim(5, ((p - 1) / 100), .10, .60, N);
%     result3(p) = runCustomCompoundNetworkSim(15, ((p - 1) / 100), .10, .60, N);
% end

% Runs the fucntion runCustomCompoundNetwrokSim with different number of packets
% titleText = "Custom Compound Network Sim Figure 6";
% for p = 1:100
%     result1(p) = runCustomCompoundNetworkSim(1, ((p - 1) / 100), .60, .10, N);
%     result2(p) = runCustomCompoundNetworkSim(5, ((p - 1) / 100), .60, .10, N);
%     result3(p) = runCustomCompoundNetworkSim(15, ((p - 1) / 100), .60, .10, N);
% end



%Plots all the arrays together
ax = axes;
hold on
plot(calculated1, "Color", "black");
plot(calculated2, "Color", "green");
plot(calculated3, "Color", "cyan");

plot(result1, "LineStyle", "none", "marker", "o", "Color", "black");
plot(result2, "LineStyle", "none", "marker", "o", "Color", "green");
plot(result3, "LineStyle", "none", "marker", "o", "Color", "cyan");

ax.YScale = "log";
ax.YLabel = ylabel("Number of Attempted Transmissions");
ax.XLabel = xlabel("Chance of Failure");
ax.Title = title(titleText);
ax.Legend = legend("K = 1", "K = 5", "K = 15");
hold off