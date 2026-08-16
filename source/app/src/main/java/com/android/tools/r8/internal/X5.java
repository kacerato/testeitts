package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.Predicate;

public final class X5 {

    public static final boolean f45608c = true;

    public final C4798y f45609a;

    public final com.android.tools.r8.graph.H5 f45610b;

    public X5(C4798y c4798y, C7215fB c7215fB) {
        this.f45609a = c4798y;
        this.f45610b = c7215fB.j();
    }

    public static boolean a(AbstractC10561zE abstractC10561zE, C10340xw0 c10340xw0) {
        if (abstractC10561zE instanceof C4) {
            return false;
        }
        ArrayList arrayList = abstractC10561zE.f54321f;
        int size = arrayList.size();
        int i10 = 0;
        C6286Yx0 c6286Yx0 = null;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C10340xw0 c10340xw02 = (C10340xw0) obj;
            C4 B10 = c10340xw02.j() ? null : c10340xw02.r().B();
            if (B10 != null) {
                if (c6286Yx0 == null) {
                    c6286Yx0 = new C6286Yx0(2);
                }
                c6286Yx0.b((C6286Yx0) B10);
            }
        }
        if (c6286Yx0 != null) {
            C10340xw0 c10340xw03 = c10340xw0.d(new C6722cD0()) ? (C10340xw0) c10340xw0.r().Y().f54321f.get(0) : null;
            while (c6286Yx0.b()) {
                ArrayList arrayList2 = ((C4) c6286Yx0.c()).f54321f;
                int size2 = arrayList2.size();
                int i11 = 0;
                while (i11 < size2) {
                    Object obj2 = arrayList2.get(i11);
                    i11++;
                    C10340xw0 c10340xw04 = (C10340xw0) obj2;
                    if (c10340xw04 == c10340xw0 || c10340xw04 == c10340xw03) {
                        return true;
                    }
                    C4 B11 = c10340xw04.j() ? null : c10340xw04.r().B();
                    if (B11 != null) {
                        c6286Yx0.b((C6286Yx0) B11);
                    }
                }
            }
        }
        return false;
    }

    public final boolean b(AbstractC10561zE abstractC10561zE) {
        if (abstractC10561zE.e1()) {
            C10340xw0 d10 = abstractC10561zE.d();
            if (d10.B()) {
                return true;
            }
            Iterator<AbstractC10561zE> it = d10.b0().iterator();
            while (it.hasNext()) {
                if (it.next().b() != abstractC10561zE.b()) {
                    return true;
                }
            }
        }
        return a(abstractC10561zE);
    }

    public final AbstractC10561zE a(AE ae2, final C10340xw0 c10340xw0, final B60 b60, Predicate predicate) {
        return (AbstractC10561zE) ae2.a(predicate.or(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return X5.this.a(b60, c10340xw0, (AbstractC10561zE) obj);
            }
        }));
    }

    public final boolean a(B60 b60, C10340xw0 c10340xw0, AbstractC10561zE abstractC10561zE) {
        if (abstractC10561zE.U1()) {
            return true;
        }
        if (abstractC10561zE instanceof C7631hj) {
            B60 position = abstractC10561zE.getPosition();
            position.getClass();
            if (!InterfaceC7166ev.a(position, b60)) {
                return true;
            }
        }
        return a(abstractC10561zE, c10340xw0);
    }

    public final boolean a(C10340xw0 c10340xw0, B60 b60, AE ae2, AE ae3, Set set) {
        com.android.tools.r8.graph.H0 e10;
        AE ae4;
        Set set2;
        AbstractC10561zE a10 = a(ae2, c10340xw0, b60, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return X5.this.b((AbstractC10561zE) obj);
            }
        });
        if (a10.e1()) {
            C10340xw0 d10 = a10.d();
            if (!d10.B()) {
                Iterator<AbstractC10561zE> it = d10.b0().iterator();
                while (it.hasNext()) {
                    if (it.next().b() != a10.b()) {
                    }
                }
            }
            return false;
        }
        AE ae5 = ae3;
        AbstractC10561zE a11 = a(ae5, c10340xw0, b60, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return X5.this.a((AbstractC10561zE) obj);
            }
        });
        if (!f45608c && a11 == null) {
            throw new AssertionError();
        }
        if (a10.G1()) {
            W5 v22 = a10.U().v2();
            if (a11.G1()) {
                W5 v23 = a11.U().v2();
                if (v22 == v23) {
                    W5 b10 = a10.b();
                    W5 b11 = a11.b();
                    if (b10 == b11) {
                        return true;
                    }
                    List<W5> u10 = v22.u();
                    int i10 = -1;
                    int i11 = -1;
                    for (int i12 = 0; i12 < u10.size(); i12++) {
                        W5 w52 = u10.get(i12);
                        if (w52 == b10) {
                            i11 = i12;
                            if (i10 >= 0) {
                                break;
                            }
                        } else {
                            if (w52 == b11) {
                                i10 = i12;
                                if (i11 >= 0) {
                                    break;
                                }
                            } else {
                                continue;
                            }
                        }
                    }
                    boolean z10 = f45608c;
                    if (!z10 && i11 < 0) {
                        throw new AssertionError();
                    }
                    if (!z10 && i10 < 0) {
                        throw new AssertionError();
                    }
                    for (C7201f60 c7201f60 : v22.s()) {
                        if (!a((C10340xw0) c7201f60.f47863q.get(i11), (C10340xw0) c7201f60.f47863q.get(i10))) {
                            return false;
                        }
                    }
                    return true;
                }
                if (v23.A()) {
                    return false;
                }
                ae4 = v23.H();
            } else {
                if (v22.A()) {
                    return false;
                }
                ae3.previous();
                ae4 = ae5;
            }
            if (set == null) {
                W5 b12 = a10.b();
                set2 = AbstractC5513Ll0.c();
                set2.add(b12);
            } else {
                set2 = set;
            }
            if (set2.add(v22)) {
                return a(c10340xw0, b60, v22.H(), ae4, set2);
            }
            return false;
        }
        Set set3 = null;
        while (a11.G1()) {
            W5 b13 = a11.b();
            if (set3 != null && !set3.add(b13)) {
                return false;
            }
            W5 v24 = a11.U().v2();
            if (v24.A()) {
                return false;
            }
            AE H10 = v24.H();
            AbstractC10561zE a12 = a(H10, c10340xw0, b60, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return X5.this.a((AbstractC10561zE) obj);
                }
            });
            if (a12.G1() && set3 == null) {
                set3 = AbstractC5513Ll0.c();
                set3.add(b13);
            }
            ae5 = H10;
            a11 = a12;
        }
        if (a10.a(this.f45609a.b())) {
            QJ c02 = a10.c0();
            if (a11.a(this.f45609a.b())) {
                QJ c03 = a11.c0();
                com.android.tools.r8.graph.H0 e11 = c02.e(this.f45609a, this.f45610b);
                if (e11 != null) {
                    C4516j1 d11 = e11.d();
                    d11.L0();
                    if (!d11.f37320m.C() && (e10 = c03.e(this.f45609a, this.f45610b)) != null) {
                        C4516j1 d12 = e10.d();
                        d12.L0();
                        if (!d12.f37320m.C()) {
                            return a(c10340xw0, b60, ae2, ae5, set);
                        }
                    }
                }
            }
            return false;
        }
        if (a10.g2()) {
            C10471yk0 G02 = a10.G0();
            if (a11.g2()) {
                C10471yk0 G03 = a11.G0();
                if (G02.v2()) {
                    if (f45608c || G03.v2()) {
                        return true;
                    }
                    throw new AssertionError();
                }
                return a(G03.w2(), G02.w2());
            }
        }
        return false;
    }

    public final boolean a(AbstractC10561zE abstractC10561zE) {
        if (abstractC10561zE.a(this.f45609a.b())) {
            return true;
        }
        C4798y c4798y = this.f45609a;
        com.android.tools.r8.graph.H5 h52 = this.f45610b;
        return abstractC10561zE.b(c4798y, h52, M1.a(c4798y, h52), C10394yE.f53978a);
    }

    public static boolean a(C10340xw0 c10340xw0, C10340xw0 c10340xw02) {
        if (c10340xw0 == c10340xw02) {
            return true;
        }
        if (!c10340xw0.j() && !c10340xw02.j()) {
            AbstractC10561zE abstractC10561zE = c10340xw0.f53886c;
            AbstractC10561zE abstractC10561zE2 = c10340xw02.f53886c;
            boolean z10 = f45608c;
            if (!z10 && !abstractC10561zE.e1()) {
                throw new AssertionError();
            }
            if (!z10 && !abstractC10561zE2.e1()) {
                throw new AssertionError();
            }
            if (!abstractC10561zE.d().u().equals(abstractC10561zE2.d().u())) {
                return false;
            }
            if (abstractC10561zE instanceof C7957jh) {
                if (abstractC10561zE2 instanceof C7957jh) {
                    return abstractC10561zE.F().f49303l == abstractC10561zE2.F().f49303l;
                }
                return false;
            }
            if (abstractC10561zE.w1()) {
                if (abstractC10561zE2.w1()) {
                    return abstractC10561zE.J().w2() == abstractC10561zE2.J().w2();
                }
                return false;
            }
            if (abstractC10561zE.x1()) {
                if (abstractC10561zE2.x1()) {
                    return abstractC10561zE.K().u2() == abstractC10561zE2.K().u2();
                }
                return false;
            }
            if (!(abstractC10561zE instanceof C9820uq) || !(abstractC10561zE2 instanceof C9820uq)) {
                return false;
            }
            if (abstractC10561zE.O().f52961l == abstractC10561zE2.O().f52961l) {
                return true;
            }
        }
        return false;
    }
}
