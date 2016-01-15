function rndmatrixgen = matrixgen(Size, Min, Max)

%This function generates a matrix of random values between
%two given integers and is of the size provided.

%Your documentation that explains the purpose of this function should not
%contain anything about the user at all. It may sound stupid, but there is
%a reason to it. This function is independent of your script. The script is
%the part that interacts with the user and calls on this function to
%generate some result, a matrix of random numbers in this case. 

% rndmatrixgen = [];

%For the above, if you define the matrix as just an array, it will complain
%in the for loop that the size is changing every iteration, thus causing
%some performance loss. It is better to preallocate the whole matrix such
%as below. We literally define it to be the matrix of zeros which you had
%before, but I do not know why you changed it.

rndmatrixgen = zeros(Size);

for i = 1:Size
%     rndvec = vecgen(Size, Min, Max);
%     rndmatrixgen(i,:) = rndvec;

    %Notice here that we can avoid writing two lines into a single line,
    %which you also had before, but changed for some reason.

    rndmatrixgen(i,:) = vecgen(Size, Min, Max);
    
    %Also in my revision I did: "rndmatrix(:,i)" which grabbed all of the
    %elements in column i. Do you know what you are doing by reversing the
    %order of the parameters?
end

% fprintf('The Matrix of Random numbers is:\n');
% disp(rndmatrixgen);

%So about the display stuff, did you read my comments in the script file?
%The purpose of this function is to strictly return a matrix, nothing more.
%The script is the one that interacts with the user and so should be the
%one to handle the display of the result to the user.

end