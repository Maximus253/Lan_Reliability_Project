%%Function runTwoSeriesLinkSim
%   Params:
%       K - the number of packets in a message
%       p - chance of failure
%       N - number of simulations to run
%   Return: The total median value across all attempts

function results = runTwoSeriesLinkSim(K, p, N)
    simResults = ones(1, N); %allocates an array

    for i = 1:N %itterates through each simulation
        txAttemptCount = 0; %amount of attempts it takes per packet
        pktSuccessCount = 0; %amount of packets that made it across'

        while pktSuccessCount < K %ittereates until all pkts are sent
            r1 = rand; % assigns a random value to r1
            r2 = rand; % assigns a random value to r2
            txAttemptCount = txAttemptCount + 1; %count additional attempts

            while r1 < p && r2 < p %tests first and second node
                r1 = rand; %Both random values are assigned a new random number
                r2 = rand; 
                txAttemptCount = txAttemptCount + 1; %increments when one fails failed
            end

            pktSuccessCount = pktSuccessCount + 1; %pkt has crossed both nodes and succeded
        end

        simResults(i) = txAttemptCount;
        %record total number of attempted transmittions
        %before entire application msg transmitted
    end

    results = mean(simResults); %returns the mean of all the simResults

end

