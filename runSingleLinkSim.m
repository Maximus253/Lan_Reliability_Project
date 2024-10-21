%%Function runSingleLinkSim()
%   Params:
%       K - the number of packets in the application message
%       p - the probability of failure
%       N - the number of simulations to run
%
%   Returns: The average numberic result accross the total sims

function result = runSingleLinkSim(K, p, N)
    simResults = ones(1, N); %A place to store the result of each sim

    for i=1: N
        txAttemptCount = 0; %transmission cost
        pktSuccessCount = 0; %number of packets that have made it accross

        while pktSuccessCount < K

            r = rand; %Gen random num to determine if packet is successful (r > p)
            txAttemptCount = txAttemptCount + 1; %count additional attempts
            
            %while packet transmissions is not successful (r < p)
            while r < p
                r = rand; %transit again, gen new success check value r
                txAttemptCount = txAttemptCount + 1; %count additional attempts

            end

            pktSuccessCount = pktSuccessCount + 1; %increase success count after success (r > p)

        end

        simResults(i) = txAttemptCount;
        %record total number of attempted transmittions
        %before entire application msg transmitted

    end
    result = mean(simResults);

end