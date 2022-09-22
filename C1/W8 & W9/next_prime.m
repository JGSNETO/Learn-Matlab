function k=next_prime(n)
if (~isscalar(n)||(n<0))
    fprintf('error\n');
    return
end
   n=n+1;
   while true
       if isprime(n)
           k=n;
           break;
       else
           n=n+1;
       end
   end