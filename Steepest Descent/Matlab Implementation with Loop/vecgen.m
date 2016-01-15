function rndvecgen = vecgen(Size, Min, Max)

%This function generates a vector of random values between 
%two given integers and is of the size provided.

rndvecgen = (zeros(1,Size))';
for i = 1:Size
    rndvecgen(i) = numgen(Min, Max);
end

end