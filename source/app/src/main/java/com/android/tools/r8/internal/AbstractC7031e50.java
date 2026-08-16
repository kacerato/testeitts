package com.android.tools.r8.internal;

import com.android.tools.r8.ClassFileConsumer;
import java.util.ArrayList;
import java.util.List;

public abstract class AbstractC7031e50 {

    public static final boolean f47588o = true;

    public final com.android.tools.r8.graph.H5 f47589a;

    public final List f47590b;

    public int f47591c;

    public int f47592d;

    public int f47593e;

    public ArrayList f47594f;

    public ArrayList f47595g;

    public ArrayList f47596h;

    public int f47597i;

    public com.android.tools.r8.graph.M2 f47598j;

    public C10340xw0 f47599k;

    public int f47600l;

    public int f47601m = -1;

    public final C7198f50 f47602n;

    public AbstractC7031e50(C7198f50 c7198f50, com.android.tools.r8.graph.H5 h52, List list) {
        this.f47602n = c7198f50;
        this.f47589a = h52;
        this.f47590b = list;
        a(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x028c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0036 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a() {
        boolean a10;
        int i10;
        while (this.f47592d < this.f47590b.size()) {
            AbstractC10561zE abstractC10561zE = (AbstractC10561zE) this.f47590b.get(this.f47592d);
            if (abstractC10561zE.v1()) {
                int i11 = this.f47592d;
                if (i11 == this.f47591c) {
                    a(i11 + 1);
                }
            } else if (!(abstractC10561zE instanceof C4)) {
                a10 = a(abstractC10561zE);
                i10 = 1;
                if (!a10) {
                    this.f47593e += i10;
                    if (abstractC10561zE instanceof C4) {
                        C4 B10 = abstractC10561zE.B();
                        if (this.f47599k != null && B10.v2().i() == this.f47599k) {
                            int U10 = this.f47600l + (B10.d().U() - 1);
                            this.f47600l = U10;
                            if (!f47588o && U10 < 0) {
                                throw new AssertionError();
                            }
                            if (U10 == 0) {
                                this.f47599k = null;
                                this.f47598j = this.f47602n.f47857e.f37905M1;
                            }
                        }
                    } else {
                        C10340xw0 c10340xw0 = this.f47599k;
                        ArrayList arrayList = abstractC10561zE.f54321f;
                        if (abstractC10561zE.s1() && abstractC10561zE.C().v2() && arrayList.get(1) == c10340xw0) {
                            C10340xw0 c10340xw02 = (C10340xw0) arrayList.get(0);
                            arrayList.set(0, (C10340xw0) arrayList.get(1));
                            arrayList.set(1, c10340xw02);
                        }
                        C10340xw0 c10340xw03 = this.f47599k;
                        if (c10340xw03 != null) {
                            int size = arrayList.size();
                            int i12 = 0;
                            while (i12 < size) {
                                Object obj = arrayList.get(i12);
                                i12++;
                                if (((C10340xw0) obj).i() == this.f47599k) {
                                    int i13 = this.f47600l - 1;
                                    this.f47600l = i13;
                                    if (!f47588o && i13 < 0) {
                                        throw new AssertionError();
                                    }
                                    if (i13 == 0) {
                                        this.f47599k = null;
                                        this.f47598j = this.f47602n.f47857e.f37905M1;
                                    }
                                }
                            }
                        }
                        if (abstractC10561zE.c2()) {
                            if (!f47588o && this.f47599k != null) {
                                throw new AssertionError();
                            }
                            C10340xw0 d10 = abstractC10561zE.d();
                            com.android.tools.r8.graph.M2 m22 = abstractC10561zE.w0().f52627k;
                            int U11 = d10.U();
                            this.f47600l = U11;
                            if (U11 == 0) {
                                this.f47599k = null;
                                this.f47598j = this.f47602n.f47857e.f37905M1;
                            } else {
                                this.f47599k = d10;
                                this.f47598j = m22;
                            }
                        } else {
                            if (!f47588o && !abstractC10561zE.N1() && !abstractC10561zE.v1() && !abstractC10561zE.l1()) {
                                throw new AssertionError();
                            }
                            if (arrayList.size() > 0) {
                                for (int i14 = 0; i14 < arrayList.size(); i14++) {
                                    C10340xw0 i15 = ((C10340xw0) arrayList.get(i14)).i();
                                    if (i15 == c10340xw03) {
                                        this.f47596h.add(-1);
                                    } else if (!abstractC10561zE.Q1() && !(abstractC10561zE instanceof YJ)) {
                                        this.f47594f.add(i15);
                                        this.f47597i = i15.f53896m.C() + this.f47597i;
                                        if (abstractC10561zE.P1()) {
                                            this.f47595g.add(a(i15, abstractC10561zE.e0(), i14));
                                        } else {
                                            this.f47595g.add(abstractC10561zE.C().u2().a(this.f47602n.f47857e));
                                        }
                                        this.f47596h.add(Integer.valueOf(this.f47595g.size() - 1));
                                    } else {
                                        int indexOf = this.f47594f.indexOf(i15);
                                        if (i14 == 0 && indexOf != -1) {
                                            this.f47596h.add(Integer.valueOf(indexOf));
                                        } else {
                                            this.f47594f.add(i15);
                                            this.f47597i = i15.f53896m.C() + this.f47597i;
                                            this.f47595g.add(a(i15, abstractC10561zE.e0(), i14));
                                            this.f47596h.add(Integer.valueOf(this.f47595g.size() - 1));
                                        }
                                    }
                                }
                            }
                            if (!abstractC10561zE.v1() && abstractC10561zE.d() != null) {
                                if (!f47588o && this.f47599k != null) {
                                    throw new AssertionError();
                                }
                                if (abstractC10561zE.P1()) {
                                    C10340xw0 d11 = abstractC10561zE.d();
                                    com.android.tools.r8.graph.M2 m23 = abstractC10561zE.e0().B2().f36127i.f36440e;
                                    int U12 = d11.U();
                                    this.f47600l = U12;
                                    if (U12 == 0) {
                                        this.f47599k = null;
                                        this.f47598j = this.f47602n.f47857e.f37905M1;
                                    } else {
                                        this.f47599k = d11;
                                        this.f47598j = m23;
                                    }
                                } else {
                                    C10340xw0 d12 = abstractC10561zE.d();
                                    com.android.tools.r8.graph.M2 a11 = abstractC10561zE.C().u2().a(this.f47602n.f47857e);
                                    int U13 = d12.U();
                                    this.f47600l = U13;
                                    if (U13 == 0) {
                                        this.f47599k = null;
                                        this.f47598j = this.f47602n.f47857e.f37905M1;
                                    } else {
                                        this.f47599k = d12;
                                        this.f47598j = a11;
                                    }
                                }
                            }
                        }
                    }
                    if (this.f47593e >= this.f47602n.f47856d.E().f50677e0.f50791c) {
                        a(this.f47591c, this.f47592d + 1);
                    } else {
                        this.f47592d++;
                    }
                } else {
                    int i16 = this.f47592d;
                    int i17 = this.f47591c;
                    if (i16 > i17) {
                        a(i17, i16);
                    } else {
                        a(i16 + 1);
                    }
                }
            }
            i10 = 0;
            a10 = true;
            if (!a10) {
            }
        }
        if (this.f47593e > 0) {
            a(this.f47591c, this.f47592d);
        }
    }

    public abstract void a(int i10, int i11, W40 w40);

    /* JADX WARN: Type inference failed for: r3v7, types: [java.util.Map, com.android.tools.r8.internal.u1] */
    public final boolean b(C10340xw0 c10340xw0) {
        if (!c10340xw0.u().r()) {
            return true;
        }
        if (this.f47602n.f47856d.E().f50599F1.f50853X0 && (this.f47602n.f47856d.E().f50697l instanceof ClassFileConsumer)) {
            return true;
        }
        AbstractC8999pu0 E10 = c10340xw0.u().a().E();
        if (E10.x()) {
            return true;
        }
        if (E10.s()) {
            return E10.b().F().f53468a.isEmpty();
        }
        return false;
    }

    public final boolean a(AbstractC10561zE abstractC10561zE) {
        AbstractC10561zE abstractC10561zE2;
        int C10;
        int i10 = this.f47600l;
        if (this.f47599k != null && AbstractC9907vK.b(abstractC10561zE.f54321f, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return AbstractC7031e50.this.a((C10340xw0) obj);
            }
        })) {
            i10--;
        }
        if (abstractC10561zE.d() != null && i10 > 0) {
            return false;
        }
        if (abstractC10561zE.c2()) {
            if (abstractC10561zE.d().P()) {
                this.f47601m = this.f47592d;
            }
            return true;
        }
        if (abstractC10561zE.l1()) {
            return true;
        }
        if (!abstractC10561zE.P1()) {
            return false;
        }
        VJ e02 = abstractC10561zE.e0();
        boolean a10 = this.f47602n.f47857e.a(e02.B2());
        if (e02.a(this.f47602n.f47858f, this.f47589a) != com.android.tools.r8.ir.optimize.O.f54787d) {
            return false;
        }
        int i11 = this.f47597i;
        if (!e02.f54321f.isEmpty()) {
            for (int i12 = 0; i12 < e02.f54321f.size(); i12++) {
                C10340xw0 i13 = e02.b(i12).i();
                if (i13 != this.f47599k) {
                    if (!b(i13)) {
                        return false;
                    }
                    if (e02.R1()) {
                        C10 = i13.f53896m.C();
                    } else if (i13 != e02.f0().C2().i() || !this.f47594f.contains(i13)) {
                        C10 = i13.f53896m.C();
                    }
                    i11 = C10 + i11;
                }
            }
        }
        if (i11 > 5) {
            return false;
        }
        if (a10) {
            int i14 = this.f47591c;
            int i15 = this.f47592d;
            if (i14 == i15) {
                return false;
            }
            if (!f47588o && i15 <= 0) {
                throw new AssertionError();
            }
            int i16 = 0;
            do {
                i16++;
                abstractC10561zE2 = (AbstractC10561zE) this.f47590b.get(this.f47592d - i16);
            } while (abstractC10561zE2.v1());
            if (abstractC10561zE2.c2()) {
                if (e02 == AbstractC7716iB.a(this.f47602n.f47857e, abstractC10561zE2.w0().d())) {
                    C10340xw0 c10340xw0 = this.f47599k;
                    if (c10340xw0 != null && c10340xw0 == abstractC10561zE2.d()) {
                        this.f47601m = -1;
                    } else {
                        if (f47588o) {
                            return false;
                        }
                        throw new AssertionError();
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final boolean a(C10340xw0 c10340xw0) {
        return c10340xw0.i() == this.f47599k;
    }

    public static com.android.tools.r8.graph.M2 a(VJ vj2, int i10) {
        com.android.tools.r8.graph.I2 i22;
        int i11 = (vj2.Q1() || (vj2 instanceof YJ)) ? 1 : 0;
        if (i11 != 0 && i10 == 0) {
            return vj2.B2().f38297f;
        }
        if (vj2 instanceof YJ) {
            i22 = vj2.h0().f45971n;
        } else {
            i22 = vj2.B2().f36127i;
        }
        return i22.f36441f.f36675b[i10 - i11];
    }

    public final com.android.tools.r8.graph.M2 a(C10340xw0 c10340xw0, VJ vj2, int i10) {
        boolean z10 = f47588o;
        if (!z10 && !b(c10340xw0)) {
            throw new AssertionError();
        }
        AbstractC8999pu0 u10 = c10340xw0.u();
        if (!u10.r() && !u10.s()) {
            if (u10 instanceof C6301Zd0) {
                return a(vj2, i10);
            }
            if (!z10 && !u10.x()) {
                throw new AssertionError();
            }
            if (!z10) {
                D70 c10 = u10.c();
                c10.getClass();
                if (!(c10 instanceof C8537n7) && !(c10 instanceof C8540n8) && !(c10 instanceof C5860Rl0) && !(c10 instanceof C6610bc) && !(c10 instanceof C9736uI) && !(c10 instanceof C5188Fx) && !(c10 instanceof C9593tU) && !(c10 instanceof C8160kt)) {
                    throw new AssertionError();
                }
            }
            com.android.tools.r8.graph.M2 a10 = u10.c().a(this.f47602n.f47857e);
            if (u10 instanceof C9736uI) {
                if (z10 || a10 == this.f47602n.f47857e.f37884J1) {
                    return a(vj2, i10);
                }
                throw new AssertionError();
            }
            if (z10 || a10 == a(vj2, i10)) {
                return a10;
            }
            throw new AssertionError();
        }
        return c10340xw0.u().d().a(this.f47602n.f47857e);
    }

    public final void a(int i10, int i11) {
        if (!f47588o && ((AbstractC10561zE) this.f47590b.get(i10)).v1()) {
            throw new AssertionError();
        }
        int i12 = this.f47601m;
        if (i12 != -1) {
            if (i12 == i10) {
                a(i11);
                return;
            } else {
                a(i12);
                return;
            }
        }
        int i13 = i11;
        while (((AbstractC10561zE) this.f47590b.get(i13 - 1)).v1()) {
            i13--;
        }
        if (this.f47593e < this.f47602n.f47856d.E().f50677e0.f50790b) {
            a(i10 + 1);
        } else {
            a(i10, i13, new W40(this.f47602n, this.f47590b, this.f47595g, this.f47596h, this.f47598j, i10, i13));
            a(i11);
        }
    }

    public final void a(int i10) {
        this.f47591c = i10;
        this.f47592d = i10;
        this.f47593e = 0;
        this.f47594f = new ArrayList(5);
        this.f47595g = new ArrayList(5);
        this.f47596h = new ArrayList(5);
        this.f47597i = 0;
        this.f47598j = this.f47602n.f47857e.f37905M1;
        this.f47599k = null;
        this.f47600l = 0;
        this.f47601m = -1;
    }
}
