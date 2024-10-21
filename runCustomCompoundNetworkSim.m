%%Function runCustomCompoundNetworkSim
%   Params:
%       K - the number of packets in a message
%       p1 - chance of failure for node 1
%       p2 - chance of failure for node 2
%       p3 - chance of failure for node 3
%       N - number of simulations to run
%   Return: The total median value across all attempts

function results = runCustomCompoundNetworkSim(K, p1, p2, p3, N)
    simResults = ones(1, N); %allocates an array

    for i = 1:N %itterates through each simulation
        pktAttemptCount = 0; %amount of attempts it takes per packet
        pktSuccessCount = 0; %amount of packets that made it across
        

        while pktSuccessCount < K %ittereates until all pkts are sent
            pr1 = rand; % assigns a random value to pr1 for the first parallel node
            pr2 = rand; % assigns a random value to pr2 for the second parallel node
            sr3 = rand; % assigns a random value to sr3 for the third series node
            failedAttempt = false; %Bool to say when the pkt failed

            %First section tests the parallel part
            if pr1 < p1 %if the first node fails
                if pr2 < p2 %if the second node fails
                    failedAttempt = true;
                end
            end
           
            %To get here, the pkt must have made it pass at least one of
            %the parallel nodes
            if sr3 < p3 %If the series link failed but the parallel succeded
                failedAttempt = true;
            end
        
            if failedAttempt == true %If it failed it will just increment attempt
                pktAttemptCount = pktAttemptCount + 1;
            else %If successed it will go to the next pkt
                pktAttemptCount = pktAttemptCount + 1; %If it made it thru all of them, it will increment 
                pktSuccessCount = pktSuccessCount + 1; %And then increment success
            end
            
        end

        simResults(i) = pktAttemptCount;
        %record total number of attempted transmittions
        %before entire application msg transmitted
    end

    results = mean(simResults); %returns the mean of all the simResults

end



