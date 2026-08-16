package com.android.tools.r8.internal;

import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.ArrayList;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.UnaryOperator;

public final class C6283Yw {

    public static final boolean f46116d = true;

    public boolean f46117a = false;

    public Set f46118b = C6340Zw.f46378f;

    public final C6340Zw f46119c;

    public C6283Yw(C6340Zw c6340Zw) {
        this.f46119c = c6340Zw;
    }

    public static boolean c(C9103qZ c9103qZ) {
        ArrayList arrayList = c9103qZ.f54321f;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C10340xw0 c10340xw0 = (C10340xw0) obj;
            if (!c10340xw0.K() && !c10340xw0.L() && !c10340xw0.I()) {
                return false;
            }
        }
        return true;
    }

    public final C9951ve a(C7215fB c7215fB) {
        short[] sArr;
        boolean z10 = f46116d;
        if (!z10 && this.f46117a) {
            throw new AssertionError();
        }
        if (!z10 && this.f46118b != C6340Zw.f46378f) {
            throw new AssertionError();
        }
        this.f46119c.getClass();
        C9951ve c9951ve = InterfaceC10118we.f53547a;
        int i10 = 1;
        U6 u62 = new U6(true);
        while (u62.a()) {
            int i11 = 0;
            u62.c(false);
            Z5 u10 = c7215fB.u();
            while (u10.f46159b.hasNext()) {
                W5 w52 = (W5) u10.f46159b.next();
                u10.f46160c = w52;
                Y5 I10 = w52.I();
                while (I10.hasNext()) {
                    AbstractC10561zE next = I10.next();
                    if (next.a2()) {
                        C9103qZ u02 = next.u0();
                        if (a(u02)) {
                            continue;
                        } else {
                            if (!u02.f1()) {
                                I10.f45925e.c(I10.b());
                            } else if (b(u02)) {
                                C8769oZ a10 = a(c7215fB, I10, u02);
                                int u03 = u02.f51805l.u0();
                                int size = u02.f54321f.size();
                                if (u03 == i10) {
                                    short[] sArr2 = new short[(size + 1) / 2];
                                    for (int i12 = i11; i12 < size; i12 += 2) {
                                        short u22 = (short) (u02.a(i12).n().J().u2() & 255);
                                        int i13 = i12 + 1;
                                        if (i13 < size) {
                                            u22 = (short) (u22 | ((short) ((u02.a(i13).n().J().u2() & 255) << 8)));
                                        }
                                        sArr2[i12 / 2] = u22;
                                    }
                                    sArr = sArr2;
                                } else {
                                    if (!f46116d && u03 != 2 && u03 != 4 && u03 != 8) {
                                        throw new AssertionError();
                                    }
                                    int i14 = u03 / 2;
                                    short[] sArr3 = new short[size * i14];
                                    int i15 = i11;
                                    while (i15 < size) {
                                        C9126qh J10 = u02.a(i15).n().J();
                                        for (int i16 = i11; i16 < i14; i16++) {
                                            sArr3[(i15 * i14) + i16] = (short) ((J10.w2() >> (i16 * 16)) & Sg.b.f23266s);
                                        }
                                        i15++;
                                        i11 = 0;
                                    }
                                    sArr = sArr3;
                                }
                                C9269rZ c9269rZ = new C9269rZ(u02.d(), u02.f51805l.u0(), u02.f54321f.size(), sArr);
                                c9269rZ.b(u02.getPosition());
                                if (a10.b().z()) {
                                    I10.a(c7215fB, u10, this.f46119c.f52648c, (UnaryOperator<W5>) null).I().add(c9269rZ);
                                } else {
                                    I10.add(c9269rZ);
                                }
                            } else if (u02.d().C() && u02.d().Z().a2() && c(u02)) {
                                if (a(u02.d().Z().u0())) {
                                    a(c7215fB, u10, I10, u02);
                                } else {
                                    u62.c(true);
                                }
                            } else {
                                a(c7215fB, u10, I10, u02);
                            }
                            c9951ve = InterfaceC10118we.f53548b;
                        }
                    }
                    i10 = 1;
                    i11 = 0;
                }
            }
            if (!this.f46118b.isEmpty()) {
                final Set b10 = C4875Al0.b(new AbstractC10561zE[0]);
                C7549hB p10 = c7215fB.p();
                while (p10.hasNext()) {
                    AbstractC10561zE next2 = p10.next();
                    if (this.f46118b.contains(next2)) {
                        if (next2.a2()) {
                            next2.f54321f.forEach(new Consumer() {
                                @Override
                                public final void accept(Object obj) {
                                    C6283Yw.a(Set.this, (C10340xw0) obj);
                                }
                            });
                        }
                        p10.remove();
                        this.f46117a = true;
                    }
                }
                if (!b10.isEmpty()) {
                    C7549hB p11 = c7215fB.p();
                    while (p11.hasNext()) {
                        if (b10.contains(p11.next())) {
                            p11.remove();
                            this.f46117a = true;
                        }
                    }
                }
            }
            this.f46118b = C6340Zw.f46378f;
            if (this.f46117a) {
                c7215fB.x();
            }
            i10 = 1;
        }
        return c9951ve;
    }

    public final boolean b(C9103qZ c9103qZ) {
        if (!this.f46119c.f52646a.E().P()) {
            return false;
        }
        int size = c9103qZ.f54321f.size();
        this.f46119c.f46379e.getClass();
        if (size >= 2) {
            this.f46119c.f46379e.getClass();
            if (size <= 8192 && c9103qZ.f51805l.O0()) {
                return AbstractC9907vK.a(c9103qZ.f54321f, new V60() {
                    @Override
                    public final boolean apply(Object obj) {
                        return ((C10340xw0) obj).M();
                    }
                });
            }
            return false;
        }
        return false;
    }

    public static void a(Set set, C10340xw0 c10340xw0) {
        if (!c10340xw0.C() || c10340xw0.B()) {
            return;
        }
        set.add(c10340xw0.r());
    }

    public static boolean a(C10340xw0 c10340xw0) {
        if (c10340xw0.d(new C8251lQ0())) {
            return c(c10340xw0.f53886c.u0());
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x01a6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:108:? A[LOOP:0: B:67:0x010d->B:108:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(C9103qZ c9103qZ) {
        boolean z10;
        com.android.tools.r8.graph.M2 m22;
        if (!this.f46119c.f52648c.P()) {
            return false;
        }
        int size = c9103qZ.f54321f.size();
        this.f46119c.f46379e.getClass();
        if (size < 1) {
            return false;
        }
        com.android.tools.r8.graph.M2 m23 = c9103qZ.f51805l;
        if (m23.a(this.f46119c.f52647b.f37947S1)) {
            this.f46119c.f46379e.getClass();
            if (size > 200) {
                return false;
            }
            if (b(c9103qZ)) {
                this.f46119c.f46379e.getClass();
                if (size > 5) {
                    return false;
                }
            }
            return true;
        }
        if (m23.O0()) {
            return false;
        }
        this.f46119c.f46379e.getClass();
        if (size > 200) {
            return false;
        }
        if (m23.a(this.f46119c.f52647b.f38060h2)) {
            C8570nJ.o oVar = this.f46119c.f46379e;
            if (C8570nJ.o.f50802c || C8570nJ.this.P()) {
                return C8570nJ.this.c(C2.K);
            }
            throw new AssertionError();
        }
        C8570nJ.o oVar2 = this.f46119c.f46379e;
        boolean z11 = C8570nJ.o.f50802c;
        if (!z11 && !C8570nJ.this.P()) {
            throw new AssertionError();
        }
        if (!C8570nJ.this.c(C2.N)) {
            return false;
        }
        C8570nJ.o oVar3 = this.f46119c.f46379e;
        if (!z11 && !C8570nJ.this.P()) {
            throw new AssertionError();
        }
        if (!C8570nJ.this.c(C2.L) && m23.y0() > 1) {
            return false;
        }
        C8570nJ.o oVar4 = this.f46119c.f46379e;
        if (!z11 && !C8570nJ.this.P()) {
            throw new AssertionError();
        }
        if (C8570nJ.this.b(C2.U) && !m23.a(this.f46119c.f52647b.f38092l2) && !m23.O0()) {
            com.android.tools.r8.graph.M2 a10 = m23.a(1, this.f46119c.f52647b);
            ArrayList arrayList = c9103qZ.f54321f;
            int size2 = arrayList.size();
            int i10 = 0;
            while (i10 < size2) {
                Object obj = arrayList.get(i10);
                i10++;
                AbstractC8999pu0 u10 = ((C10340xw0) obj).u();
                if (!a10.a(this.f46119c.f52647b.f38068i2)) {
                    u10.getClass();
                    boolean z12 = u10 instanceof C6301Zd0;
                    if (!z12 || a10.P0()) {
                        if (!a10.E0()) {
                            m22 = a10;
                        } else if (!z12) {
                            W3 a11 = u10.a();
                            if (a11 != null && a11.H() == a10.y0()) {
                                u10 = a11.E();
                                m22 = a10.a(this.f46119c.f52647b);
                            }
                            z10 = false;
                            if (z10) {
                                return false;
                            }
                        }
                        boolean z13 = f46116d;
                        if (!z13 && u10.r()) {
                            throw new AssertionError();
                        }
                        if (!z13 && m22.E0()) {
                            throw new AssertionError();
                        }
                        if (!u10.x() || m22.P0()) {
                            if (!u10.x()) {
                                if (this.f46119c.f52646a.g(m22) != null) {
                                    z10 = u10.a(m22);
                                    if (z10) {
                                    }
                                }
                            }
                        }
                        z10 = false;
                        if (z10) {
                        }
                    }
                }
                z10 = true;
                if (z10) {
                }
            }
        }
        return true;
    }

    public final C8769oZ a(C7215fB c7215fB, Y5 y52, C9103qZ c9103qZ) {
        boolean z10 = C9126qh.f51850m;
        C8959ph c8959ph = (C8959ph) new C8959ph().a(c7215fB, AbstractC8999pu0.k());
        c8959ph.f51588d = c9103qZ.f54321f.size();
        c8959ph.f52322b = this.f46119c.f52648c.f50690i1 ? c9103qZ.getPosition() : B60.s();
        AbstractC10561zE c10 = c8959ph.c();
        y52.previous();
        y52.add(c10);
        AbstractC10561zE next = y52.next();
        if (!f46116d && next != c9103qZ) {
            throw new AssertionError();
        }
        C8769oZ c8769oZ = new C8769oZ(c9103qZ.d(), c10.d(), c9103qZ.f51805l);
        y52.a(c8769oZ, (C10696a) null);
        return c8769oZ;
    }

    public final void a(C7215fB c7215fB, Z5 z52, Y5 y52, C9103qZ c9103qZ) {
        ArrayList arrayList;
        int i10;
        C8769oZ a10 = a(c7215fB, y52, c9103qZ);
        C6226Xw c6226Xw = new C6226Xw(this.f46119c.f46379e, c9103qZ);
        ArrayList arrayList2 = c9103qZ.f54321f;
        int size = arrayList2.size();
        int i11 = 0;
        Y5 y53 = y52;
        int i12 = 0;
        while (i11 < size) {
            int i13 = i11 + 1;
            C10340xw0 c10340xw0 = (C10340xw0) arrayList2.get(i11);
            if (y53.f45924d.z()) {
                W5 a11 = y53.a(c7215fB, z52, this.f46119c.f52648c, (UnaryOperator<W5>) null);
                Y5 I10 = a11.I();
                arrayList = arrayList2;
                i10 = size;
                C10340xw0 a12 = a(c7215fB, I10, a10, c10340xw0, c6226Xw);
                z52.a(a11);
                W5 a13 = I10.a(c7215fB, z52, this.f46119c.f52648c, (UnaryOperator<W5>) null);
                Y5 I11 = a13.I();
                a(c7215fB, I11, a10, i12, a12);
                z52.a(a13);
                this.f46117a = true;
                y53 = I11;
            } else {
                arrayList = arrayList2;
                i10 = size;
                Y5 y54 = y53;
                a(c7215fB, y54, a10, i12, a(c7215fB, y54, a10, c10340xw0, c6226Xw));
            }
            i12++;
            arrayList2 = arrayList;
            i11 = i13;
            size = i10;
        }
        if (f46116d) {
            return;
        }
        boolean z10 = C6226Xw.f45866d;
        if (!z10 && c6226Xw.f45868b.size() != 0) {
            throw new AssertionError();
        }
        if (!z10 && c6226Xw.f45869c.size() != 0) {
            throw new AssertionError();
        }
    }

    public final C10340xw0 a(C7215fB c7215fB, Y5 y52, C8769oZ c8769oZ, C10340xw0 c10340xw0, C6226Xw c6226Xw) {
        AbstractC10561zE c9103qZ;
        if (!c10340xw0.w() && (c10340xw0.L() || c10340xw0.K() || c10340xw0.I() || c10340xw0.d(new J21()) || (a(c10340xw0) && !y52.f45924d.z()))) {
            C10340xw0 a10 = c6226Xw.a(c10340xw0);
            if (a10 != null) {
                AbstractC10561zE r10 = c10340xw0.r();
                if (this.f46118b == C6340Zw.f46378f) {
                    this.f46118b = C4875Al0.b(new AbstractC10561zE[0]);
                }
                this.f46118b.add(r10);
                return a10;
            }
            if (c10340xw0.K()) {
                C9126qh J10 = c10340xw0.r().J();
                boolean z10 = C9126qh.f51850m;
                c9103qZ = C9126qh.a(c7215fB.a(J10.a(), J10.q()), J10);
            } else if (c10340xw0.L()) {
                C9960vh K10 = c10340xw0.r().K();
                boolean z11 = C9960vh.f53189m;
                c9103qZ = C9960vh.a(c7215fB.a(K10.a(), K10.q()), K10);
                c6226Xw.b(c9103qZ.d());
            } else if (c10340xw0.I()) {
                C7957jh F10 = c10340xw0.r().F();
                boolean z12 = C7957jh.f49302n;
                c9103qZ = C7957jh.a(c7215fB.a(F10.a(), F10.q()), F10);
                c6226Xw.b(c9103qZ.d());
            } else if (c10340xw0.d(new J21())) {
                c9103qZ = C5576Mo0.a(c7215fB, c10340xw0.r().K0());
                c6226Xw.b(c9103qZ.d());
            } else if (a(c10340xw0)) {
                C9103qZ u02 = c10340xw0.r().u0();
                if (!f46116d && !c(u02)) {
                    throw new AssertionError();
                }
                C10340xw0 a11 = c7215fB.a(u02.a(), u02.q());
                ArrayList arrayList = new ArrayList(u02.f54321f.size());
                ArrayList arrayList2 = u02.f54321f;
                int size = arrayList2.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayList2.get(i10);
                    i10++;
                    C10340xw0 c10340xw02 = (C10340xw0) obj;
                    if (c10340xw02.K()) {
                        C9126qh J11 = c10340xw02.r().J();
                        boolean z13 = C9126qh.f51850m;
                        arrayList.add(C9126qh.a(c7215fB.a(J11.a(), J11.q()), J11).d());
                    } else if (c10340xw02.L()) {
                        C9960vh K11 = c10340xw02.r().K();
                        boolean z14 = C9960vh.f53189m;
                        arrayList.add(C9960vh.a(c7215fB.a(K11.a(), K11.q()), K11).d());
                    } else if (c10340xw02.I()) {
                        C7957jh F11 = c10340xw02.r().F();
                        boolean z15 = C7957jh.f49302n;
                        arrayList.add(C7957jh.a(c7215fB.a(F11.a(), F11.q()), F11).d());
                    } else if (!f46116d) {
                        throw new AssertionError();
                    }
                }
                c9103qZ = new C9103qZ(u02.f51805l, a11, arrayList);
                if (!f46116d && y52.f45924d.z()) {
                    throw new AssertionError();
                }
                ArrayList arrayList3 = c9103qZ.f54321f;
                int size2 = arrayList3.size();
                int i11 = 0;
                while (i11 < size2) {
                    Object obj2 = arrayList3.get(i11);
                    i11++;
                    C10340xw0 c10340xw03 = (C10340xw0) obj2;
                    y52.add(c10340xw03.r());
                    c10340xw03.r();
                    c10340xw03.r().b(c8769oZ.getPosition());
                }
            } else if (!f46116d) {
                throw new AssertionError();
            }
            c9103qZ.b(c8769oZ.getPosition());
            y52.add(c9103qZ);
            AbstractC10561zE r11 = c10340xw0.r();
            if (this.f46118b == C6340Zw.f46378f) {
                this.f46118b = C4875Al0.b(new AbstractC10561zE[0]);
            }
            this.f46118b.add(r11);
            return c9103qZ.d();
        }
        return c10340xw0;
    }

    public final void a(C7215fB c7215fB, Y5 y52, C8769oZ c8769oZ, int i10, C10340xw0 c10340xw0) {
        boolean z10 = C9126qh.f51850m;
        C8959ph c8959ph = (C8959ph) new C8959ph().a(c7215fB, AbstractC8999pu0.k());
        c8959ph.f51588d = i10;
        c8959ph.f52322b = this.f46119c.f52648c.f50690i1 ? c8769oZ.getPosition() : B60.s();
        C9126qh c10 = c8959ph.c();
        y52.add(c10);
        T3 a10 = T3.a(YV.a((char) c8769oZ.f51273k.a(1, this.f46119c.f52647b).f36592f.f36562f[0]), c8769oZ.d(), c10.d(), c10340xw0);
        a10.b(c8769oZ.getPosition());
        y52.add(a10);
    }
}
