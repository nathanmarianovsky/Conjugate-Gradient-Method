%This function takes two integer inputs, Min and Max then returns a random number between them.

function rndnumgen = numgen(Min, Max)

rndnumgen = round(rand*(Max-Min) + Min);

end