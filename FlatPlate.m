x = linspace(.4,.8,10000);  %subdivide the plate section into 10000 points
re = (20/(20.9*10^-6)) .* x; %calculate re (making note it doesn't start at zero)
nu = zeros(10000,1);
pr = .7;
kf = .03;
dt = 134-20; %ts - t_inf
for i = 1:10000
    if re(i) < 5*10^5 %checks if the re is past the critical value
        nu(i) = .332*sqrt(re(i))*pr^(1/3); %use relations from flow chart
    else
        nu(i) = .0296 * re(i)^(4/5) * pr ^(1/3);
    end
end
h = zeros(10000,1);
for i = 1:10000
    h(i) = (nu(i) * kf)/x(i); %calculate h at every point
end
q_l = h.*dt; %this is heat transfer per unit length
q = trapz(q_l,x) * .5; %intergrate with respect to length then multiply by width 
%for heat transfer of the section
figure
plot(x,re);
title("re");
figure
plot(x,nu);
title("nu");
figure
plot(x,h);
title("h");
figure
plot(x,q_l);
title("q per unit length");
disp(q);
    