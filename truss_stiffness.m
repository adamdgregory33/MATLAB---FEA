k = 18.56
a = 135
E = 70

l1= 500
l2 = 565.7
l3 = 565.7

k2 = k*[
    cosd(a)^2, cosd(a)*sind(a), -1*cosd(a)^2, -1 * cosd(a) * sind(a);
    cosd(a)*sind(a), sind(a)^2, -1 * cosd(a) * sind(a), -1 * sind(a)^2;
    -1*cosd(a)^2, -1 * cosd(a) * sind(a),cosd(a)^2,cosd(a) * sind(a);
    -1 * cosd(a) * sind(a), -1 * sind(a)^2,cosd(a)*sind(a),sind(a)^2
    ]

t2 = [cosd(a),sind(a),0,0;
    -sind(a),cosd(a),0,0;
    0,0,cosd(a),sind(a);
    0,0,-sind(a),cosd(a);]

t2
    

a = 45
k3 = k*[
    cosd(a)^2, cosd(a)*sind(a), -1*cosd(a)^2, -1 * cosd(a) * sind(a);
    cosd(a)*sind(a), sind(a)^2, -1 * cosd(a) * sind(a), -1 * sind(a)^2;
    -1*cosd(a)^2, -1 * cosd(a) * sind(a),cosd(a)^2,cosd(a) * sind(a);
    -1 * cosd(a) * sind(a), -1 * sind(a)^2,cosd(a)*sind(a),sind(a)^2
    ]
t3 = [cosd(a),sind(a),0,0;
    -sind(a),cosd(a),0,0;
    0,0,cosd(a),sind(a);
    0,0,-sind(a),cosd(a);]

t3

kfinal = [(42 + 2 * 9.28),0;
    0,(2*9.28)]
p = [2.54,-9.65]

u2v2 = p*inv(kfinal)

u2 = t2 * [u2v2(1);u2v2(2);0;0]
u3 = t3 * [u2v2(1);u2v2(2);0;0]
u1 = [0;0;u2v2(1);u2v2(2)]

DB1 = [(-E)/l1,0,E/l1,0]
DB2 = [(-E)/l2,0,E/l2,0]
DB3 = [(-E)/l3,0,E/l3,0]

DB1 * u1
DB2 * u2
DB3 * u3
