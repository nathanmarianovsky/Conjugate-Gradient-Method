%This function generates a vector of random values between two given integers and is of the size provided.

function rndvecgen = vecgen(Size, Min, Max)
rndvecgen = zeros(Size,1);

for i = 1:Size
    rndvecgen(i) = numgen(Min, Max);
end

end