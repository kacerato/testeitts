package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import com.android.tools.r8.shaking.C11245i;
import java.util.Iterator;

public final class C6108Vu extends AbstractC9617te {

    public static final boolean f45204e = true;

    public C6108Vu(C4798y c4798y) {
        super(c4798y);
    }

    @Override
    public final String a() {
        return "EnumValueOptimizer";
    }

    @Override
    public final InterfaceC10118we b(C7215fB c7215fB) {
        C5576Mo0 K02;
        if (!f45204e && !this.f52646a.m()) {
            throw new AssertionError();
        }
        C10696a c10696a = new C10696a();
        C7549hB p10 = c7215fB.p();
        boolean z10 = false;
        while (p10.hasNext()) {
            AbstractC10561zE next = p10.next();
            if (next.Q1()) {
                WJ f02 = next.f0();
                C10340xw0 i10 = f02.C2().i();
                if (i10.u().s() && ((C11245i) this.f52646a.f()).c(i10.u().b().E(), this.f52647b.f38108n2)) {
                    com.android.tools.r8.graph.A2 B22 = f02.B2();
                    boolean c10 = B22.c(this.f52647b.f37943R4.f36485d);
                    boolean c11 = B22.c(this.f52647b.f37943R4.f36486e);
                    boolean c12 = B22.c(this.f52647b.f37943R4.f36487f);
                    if (c10 || c11 || c12) {
                        if (!i10.j() && (K02 = i10.r().K0()) != null) {
                            C4554l1 field = K02.getField();
                            C4798y c4798y = this.f52646a;
                            c4798y.getClass();
                            C4460g1 b10 = field.b(c4798y.g(field.f38297f));
                            if (b10 == null) {
                                continue;
                            } else {
                                AbstractC10005vw abstractC10005vw = b10.f37207l;
                                F1 f10 = abstractC10005vw.f();
                                if (f02.f1()) {
                                    C10340xw0 d10 = f02.d();
                                    if (c10) {
                                        F1 a10 = a(c7215fB, f10, this.f52647b.f37943R4.f36483b, f02.C2().O());
                                        C5341Im0 m10 = a10 == null ? null : a10.m();
                                        if (m10 != null) {
                                            p10.a(new C9126qh(d10, m10.f41207c), (C10696a) null);
                                            z10 = true;
                                        }
                                    } else {
                                        F1 a11 = a(c7215fB, f10, this.f52647b.f37943R4.f36482a, f02.C2().O());
                                        C5688Om0 P10 = a11 == null ? null : a11.P();
                                        if (P10 != null) {
                                            if (c11) {
                                                C10340xw0 a12 = c7215fB.a(AbstractC8999pu0.a((C4798y<?>) this.f52646a, C8854p10.b()), (C4515j0) null);
                                                p10.a(new C9960vh(a12, P10.j0()), (C10696a) null);
                                                a12.a(c10696a);
                                            } else {
                                                boolean z11 = f45204e;
                                                if (!z11 && !c12) {
                                                    throw new AssertionError();
                                                }
                                                if (!this.f52646a.f().g(field.f37449i).p1()) {
                                                    continue;
                                                } else {
                                                    if (!z11 && !f10.f0()) {
                                                        throw new AssertionError();
                                                    }
                                                    C6949de c13 = abstractC10005vw.g().a(this.f52646a, field.getType()).c();
                                                    if (c13 != null) {
                                                        C4516j1 s10 = ((C11245i) this.f52646a.f()).a(c13.E(), this.f52647b.f37859F4.f38230h).s();
                                                        if (s10 == null || s10.getReference() == this.f52647b.f37943R4.f36487f) {
                                                            C10340xw0 a13 = c7215fB.a(AbstractC8999pu0.a((C4798y<?>) this.f52646a, C8854p10.b()), (C4515j0) null);
                                                            p10.a(new C9960vh(a13, P10.j0()), (C10696a) null);
                                                            a13.a(c10696a);
                                                        }
                                                    } else if (!z11) {
                                                        throw new AssertionError((Object) "Expected to have an exact dynamic type for enum instance");
                                                    }
                                                }
                                            }
                                            z10 = true;
                                        } else {
                                            continue;
                                        }
                                    }
                                } else if (f02.C2().u().t() && !c12) {
                                    if (!f45204e && !c11 && !c10) {
                                        throw new AssertionError();
                                    }
                                    p10.i();
                                    z10 = true;
                                }
                            }
                        }
                    }
                }
            }
        }
        c10696a.a(this.f52646a, c7215fB, C6628bi.b());
        return z10 ? InterfaceC10118we.f53548b : InterfaceC10118we.f53547a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x024b, code lost:
    
        if (r8 != null) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x024e, code lost:
    
        r3 = r7.f46640m;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0256, code lost:
    
        if (r8.f42243e >= r7.v2()) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0262, code lost:
    
        if (r6.M() == (r7.v2() + 1)) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0269, code lost:
    
        r5 = r7.v2() + 1;
        r9 = r6.L();
        r11 = new com.android.tools.r8.internal.FH(r8.f42242d, r8.f42243e);
        r12 = new com.android.tools.r8.internal.LH(r11);
        r10 = new com.android.tools.r8.internal.C6901dI(r11.f40170c);
        r10.a(r12);
        r11 = new com.android.tools.r8.internal.MZ0(r9, r10, r7);
        r10 = com.android.tools.r8.internal.X3.f45604a;
        r10 = new int[r5];
        r12 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0294, code lost:
    
        if (r12 >= r5) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0296, code lost:
    
        r10[r12] = com.android.tools.r8.internal.C8704o7.a(r11.test(r12));
        r12 = r12 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x02a3, code lost:
    
        r11 = new com.android.tools.r8.internal.CH(r5);
        r12 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x02a9, code lost:
    
        if (r12 >= r5) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x02ae, code lost:
    
        if (r10[r12] != 1) goto L189;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x02b0, code lost:
    
        r13 = r6.v().get(r12 + r9);
        r13.getClass();
        r13.a(r6, r2, com.android.tools.r8.internal.C6628bi.b(), com.android.tools.r8.internal.EnumC6871d70.f47287c);
        r11.add(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x02cb, code lost:
    
        r12 = r12 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x02ce, code lost:
    
        r6.a(r11);
        r11 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x02d2, code lost:
    
        if (r11 >= r5) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x02d4, code lost:
    
        r10[r11] = r10[r11] + r10[r11 - 1];
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x02e0, code lost:
    
        r6 = new com.android.tools.r8.internal.KE(new com.android.tools.r8.internal.LE(r8));
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x02ee, code lost:
    
        if (r6.hasNext() == false) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x02f0, code lost:
    
        r5 = (com.android.tools.r8.internal.XE) r6.next();
        r8.b(r5.a(), r5.getIntValue() - r10[r5.getIntValue()]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0309, code lost:
    
        r3 = r3 - r10[r3];
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0264, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0311, code lost:
    
        if (r8.isEmpty() == false) goto L143;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0313, code lost:
    
        r7.d(new com.android.tools.r8.internal.C4960Bz());
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x034d, code lost:
    
        r3 = r4.f44895c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0357, code lost:
    
        if (r3.d().D() != false) goto L151;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0359, code lost:
    
        r3.f54321f.forEach(new com.android.tools.r8.internal.NZ0(r3));
        r3.b().f45293f.b(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x036c, code lost:
    
        r3 = r4.f44896d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0376, code lost:
    
        if (r3.d().D() != false) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x037a, code lost:
    
        if (com.android.tools.r8.internal.C6108Vu.f45204e != false) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0382, code lost:
    
        if (r3.f54321f.isEmpty() == false) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x038a, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x038b, code lost:
    
        r3.b().f45293f.b(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0264, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x031c, code lost:
    
        r6 = new com.android.tools.r8.internal.FH(r8.f42241c, r8.f42243e).a((int[]) null);
        java.util.Arrays.sort(r6);
        r9 = new int[r6.length];
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0332, code lost:
    
        if (r10 >= r6.length) goto L192;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0334, code lost:
    
        r9[r10] = r8.get(r6[r10]);
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x033f, code lost:
    
        r7.d(new com.android.tools.r8.internal.C9569tI(r4.f44894b.d(), r6, r9, r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0264, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0124  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c(C7215fB c7215fB) {
        C6051Uu c6051Uu;
        Iterator<W5> it;
        C5403Jo0 c5403Jo0;
        AbstractC10561zE abstractC10561zE;
        if (this.f52648c.f50669c0 && this.f52646a.f().i()) {
            if (!f45204e && !this.f52646a.m()) {
                throw new AssertionError();
            }
            C10696a c10696a = new C10696a();
            Iterator<W5> it2 = c7215fB.f47897d.iterator();
            int i10 = 0;
            boolean z10 = false;
            while (it2.hasNext()) {
                W5 next = it2.next();
                final C9569tI Z10 = next.i().Z();
                if (Z10 != null) {
                    AbstractC10561zE abstractC10561zE2 = ((C10340xw0) Z10.f54321f.get(i10)).f53886c;
                    boolean z11 = true;
                    if (abstractC10561zE2 != null && abstractC10561zE2.n1()) {
                        N3 y10 = abstractC10561zE2.y();
                        AbstractC10561zE abstractC10561zE3 = ((C10340xw0) y10.f54321f.get(1)).f53886c;
                        if (abstractC10561zE3 != null && abstractC10561zE3.T1()) {
                            C8405mK k02 = abstractC10561zE3.k0();
                            com.android.tools.r8.graph.A2 B22 = k02.B2();
                            com.android.tools.r8.graph.E0 g10 = this.f52646a.g(B22.f38297f);
                            C4724u1 b10 = this.f52646a.b();
                            if (g10 != null && ((g10.f36246f.I() || g10.f36245e == b10.f38108n2) && B22.f38298g == b10.f38170v0)) {
                                com.android.tools.r8.graph.I2 i22 = B22.f36127i;
                                if (i22.f36440e == b10.f37884J1 && i22.f36441f.isEmpty() && (abstractC10561zE = y10.u2().f53886c) != null && (abstractC10561zE instanceof C5576Mo0)) {
                                    C5576Mo0 K02 = abstractC10561zE.K0();
                                    C11245i c11245i = (C11245i) this.f52646a.f();
                                    C4554l1 field = K02.getField();
                                    if (!C11245i.f57385J) {
                                        c11245i.c();
                                    }
                                    SG sg2 = (SG) c11245i.f57392G.get(field);
                                    if (sg2 != null && !sg2.isEmpty()) {
                                        int[] x22 = Z10.x2();
                                        int length = x22.length;
                                        for (int i11 = i10; i11 < length; i11++) {
                                            if (sg2.a(x22[i11])) {
                                            }
                                        }
                                        c6051Uu = new C6051Uu(((C4554l1) sg2.values().iterator().next()).f38297f, k02, y10, K02, sg2);
                                        if (c6051Uu != null) {
                                            ME me2 = new ME(Z10.v2());
                                            int i12 = 0;
                                            while (true) {
                                                if (i12 >= Z10.v2()) {
                                                    it = it2;
                                                    break;
                                                }
                                                if (!f45204e && Z10.f46639l[i12] == Z10.f46640m) {
                                                    throw new AssertionError();
                                                }
                                                C4554l1 c4554l1 = (C4554l1) c6051Uu.f44897e.get(Z10.f52578o[i12]);
                                                C4477h f10 = this.f52646a.f();
                                                com.android.tools.r8.graph.H5 j10 = c7215fB.j();
                                                f10.getClass();
                                                C4460g1 q10 = f10.a(c4554l1.f38297f, c4554l1, j10).q();
                                                if (q10 == null) {
                                                    it = it2;
                                                } else {
                                                    F1 a10 = a(c7215fB, q10.f37207l.f(), this.f52647b.f37943R4.f36483b, z11);
                                                    C5341Im0 m10 = a10 == null ? null : a10.m();
                                                    if (m10 == null && this.f52646a.E().a0().a()) {
                                                        C4798y c4798y = this.f52646a;
                                                        C8438ma0 c8438ma0 = c4798y.f38388C.f42928g;
                                                        com.android.tools.r8.graph.H2 a11 = com.android.tools.r8.graph.H2.a(c4798y.a(c7215fB.j().getHolder(), c6051Uu.f44893a));
                                                        C4477h f11 = this.f52646a.f();
                                                        C4554l1 c4554l12 = this.f52647b.f37943R4.f36483b;
                                                        com.android.tools.r8.graph.H5 j11 = c7215fB.j();
                                                        f11.getClass();
                                                        it = it2;
                                                        C4460g1 q11 = f11.a(c4554l12.f38297f, c4554l12, j11).q();
                                                        if (a11 != null) {
                                                            c8438ma0.getClass();
                                                            if (!C8438ma0.f50332d && !a11.o1()) {
                                                                throw new AssertionError();
                                                            }
                                                            if ((a11.f36245e == c8438ma0.f50333a.f42003o ? true : a11.R0().a(c8438ma0.f50333a.f41991c)) && (c5403Jo0 = (C5403Jo0) c8438ma0.f50334b.get(a11.f36245e)) != null) {
                                                                Q30 q30 = (Q30) c5403Jo0.f41504a.get(q10.getReference());
                                                                if (q30 != null) {
                                                                    m10 = q30.a(q11.getReference()).m();
                                                                }
                                                            }
                                                        } else {
                                                            c8438ma0.getClass();
                                                        }
                                                        m10 = null;
                                                    } else {
                                                        it = it2;
                                                    }
                                                    if (m10 == null) {
                                                        me2 = null;
                                                        break;
                                                    }
                                                    me2.b((int) m10.f41207c, Z10.f46639l[i12]);
                                                }
                                                i12++;
                                                it2 = it;
                                                z11 = true;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    c6051Uu = null;
                    if (c6051Uu != null) {
                    }
                }
                it = it2;
                it2 = it;
                i10 = 0;
            }
            if (z10) {
                C10696a c10696a2 = new C10696a();
                c7215fB.a(c10696a2, C6628bi.b());
                c10696a.f54829b.addAll(c10696a2);
            }
            c10696a.a(this.f52646a, c7215fB, C6628bi.b());
            if (!f45204e && !c7215fB.b(this.f52646a)) {
                throw new AssertionError();
            }
        }
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        return this.f52646a.f().i() && this.f52648c.f50669c0 && c7215fB.f47902i.d();
    }

    public static boolean a(int i10, InterfaceC8568nI interfaceC8568nI, C9569tI c9569tI, int i11) {
        int i12 = i11 + i10;
        return (interfaceC8568nI.h(i12) || i12 == c9569tI.f46640m) ? false : true;
    }

    public final F1 a(C7215fB c7215fB, F1 f12, C4554l1 c4554l1, boolean z10) {
        if (z10) {
            f12.getClass();
            if (f12 instanceof C8520n10) {
                f12 = f12.I().f50486b;
            }
        }
        if (!f12.f0()) {
            return null;
        }
        C4477h f10 = this.f52646a.f();
        com.android.tools.r8.graph.H5 j10 = c7215fB.j();
        f10.getClass();
        C4460g1 q10 = f10.a(c4554l1.f38297f, c4554l1, j10).q();
        if (q10 == null) {
            return null;
        }
        Q30 U10 = f12.N().U();
        U10.getClass();
        return U10.a(q10.getReference());
    }

    public static void a(AbstractC10561zE abstractC10561zE, C10340xw0 c10340xw0) {
        c10340xw0.f53887d.remove(abstractC10561zE);
        c10340xw0.f53888e = null;
    }
}
