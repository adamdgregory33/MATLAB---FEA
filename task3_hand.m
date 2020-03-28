E = 1*10^9
l=2
areas = [0.916943276,		0.768965121,		0.644867979,		0.540797884,		0.453522831]
stiffness = (E.*areas)./l

p = [0,0,0,0,0,0,0,0,1,0]
kReq = 10^9 .*[
0.843	0	-0.3845	0	0	0	0	0	0	0;
0	0	0	0	0	0	0	0	0	0;
0.3845	0	0.7069	0	-0.3224	0	0	0	0	0;
0	0	0	0	0	0	0	0	0	0;
0	0	-0.3224	0	0.5928	0	-0.2704	0	0	0;
0	0	0	0	0	0	0	0	0	0;
0	0	0	0	-0.2704	0	0.4972	0	-0.2268	0;
0	0	0	0	0	0	0	0	0	0;
0	0	0	0	0	0	-0.2268	0	0.2268	0;
0	0	0	0	0	0	0	0	0	0
]

u = p*pinv(kReq)

