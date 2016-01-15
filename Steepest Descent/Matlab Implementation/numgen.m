function rndnumgen = numgen(Min, Max)

%This function takes two integer inputs, Min and Max
%then returns a random number between them.

rndnumgen = round(rand*(Max-Min) + Min);

end