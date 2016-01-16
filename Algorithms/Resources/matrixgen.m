%This function generates a matrix of random values between two given integers and is of the size provided.

function rndmatrixgen = matrixgen(Size, Min, Max)
rndmatrixgen = zeros(Size);

for i = 1:Size
    rndmatrixgen(i,:) = vecgen(Size, Min, Max);
end
end