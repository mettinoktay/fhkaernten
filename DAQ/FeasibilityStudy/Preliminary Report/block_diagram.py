import bdp

t1 = bdp.block('T1')
t2 = bdp.block('T2').below(t1)
t3 = bdp.block('T3').left(t2)
t4 = bdp.block('T4').align(t1.e(0.2), bdp.prev().w(1))

bdp.fig << t1 << t2 << t3 << t4