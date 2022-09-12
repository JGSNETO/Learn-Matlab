%Extra
function T = trio (n, m) 
T = randi (10, (3 * n) , m);
T ( 1:n , :) = 1;
T ( (n+1):(2*n) , :) = 2;
T ( ((2*n)+1):end, :) = 3;
end

% IF statements
function out=picker(condition,in1,in2)
if condition==1
    out=in1;
else
    out=in2;
end

% Elegible
function admit = eligible(v,q);
avg = mean([v,q]); % (v+q)/2
if avg>= 92 && v>88 && q>88
    admit = true;
else admit = false;
end

%Different numbers of input
function too_young = under_age(age,limit)
if nargin < 2
    limit = 21;
    if  age <= limit
        too_young = true;
    elseif age >= limit
        too_young = false;
    end
end

if nargin == 2
    if age < limit
        too_young = true;
    else
        too_young = false;
    end
end

%valid date
function valid=valid_date(y,m,d)
valid = false;
if(((isscalar(y) && y>=1 && y==fix(y))&& (isscalar(m) && m>=1 && m==fix(m) && m<=12)...
        && (isscalar(d) && d>=1 && d==fix(d) && d<=31))==1)
    c1= (ismember(m,[4,6,9,11]) && ismember(d,[1:30]));
    c2=(ismember(m,[1,3,5,7,8,10,12]) && ismember(d,[1:31]));
    if ((c1==1 || c2==1)==1)
        valid = true;
    else
            if ((mod(y,4)==0&&mod(y,100)~=0 || mod(y,400)==0&&mod(y,100)==0)==1)
                if (ismember(d,[1:29])==1)
                    valid = true;
                end
                return;
            else
                if (ismember(d,[1:28])==1)
                    valid = true;
                end
                return;
            end
    end
end

function isvalid = valid_date(y, m, d)
   % Check if the inputs are valid 
   % Check that they are scalars
   if ~(isscalar(y) && isscalar(m) && isscalar(d))
       isvalid = false;
   % Check that inputs are positive
   elseif ~all([y, m, d] > 0)
       isvalid = false;
   % Check that inputs are integers (not the data type)    
   elseif any(rem([y, m, d], 1))
       isvalid = false;
   % Check that m and d are below the max possible
   elseif (m > 12) || (d > 31)
       isvalid = false;
   % The inputs could be a valid date, let's see if they actually are
   else
       % Vector of the number of days for each month
       daysInMonth = [31 28 31 30 31 30 31 31 30 31 30 31];
       % If leap year, change days in Feb
       if isequal(rem(y, 4), 0) && (~isequal(rem(y, 100), 0) || isequal(rem(y, 400), 0))
            daysInMonth(2) = 29;
       end
       maxDay = daysInMonth(m);
       if d > maxDay
           isvalid = false;
       else
           isvalid = true;
       end
       
   end
end