package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.internal.AT;
import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC8999pu0;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C5698Or0;
import com.android.tools.r8.internal.C5920Sm0;
import com.android.tools.r8.internal.C5924So0;
import com.android.tools.r8.internal.C6600bY;
import com.android.tools.r8.internal.C6628bi;
import com.android.tools.r8.internal.C6920dR0;
import com.android.tools.r8.internal.C7201f60;
import com.android.tools.r8.internal.C7207f80;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C7680hz0;
import com.android.tools.r8.internal.C7957jh;
import com.android.tools.r8.internal.C8405mK;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8854p10;
import com.android.tools.r8.internal.C9389sD;
import com.android.tools.r8.internal.JD;
import com.android.tools.r8.internal.N8;
import com.android.tools.r8.internal.NJ;
import com.android.tools.r8.internal.QJ;
import com.android.tools.r8.internal.V60;
import com.android.tools.r8.internal.VJ;
import com.android.tools.r8.internal.W5;
import com.android.tools.r8.internal.WX;
import com.android.tools.r8.internal.XX;
import com.android.tools.r8.internal.Y5;
import com.android.tools.r8.internal.Y60;
import com.android.tools.r8.internal.Z5;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.UnaryOperator;

public final class Q extends S {

    public static final boolean f54797g = true;

    public final H5 f54798a;

    public final NJ f54799b;

    public final U f54800c;

    public boolean f54801d;

    public C7207f80 f54802e;

    public H2 f54803f;

    public Q(H5 h52, NJ nj2, U u10) {
        this.f54798a = h52;
        this.f54799b = nj2;
        this.f54800c = u10;
    }

    @Override
    public final Q a() {
        return this;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.AbstractCollection, java.util.List, java.lang.Iterable] */
    public static void a(G0 g02, W5 w52, Consumer consumer, Consumer consumer2) {
        ?? r02 = g02.f54743c;
        int i10 = g02.f54741a;
        if (i10 == 3 || ((E0.b(i10) && r02.size() > 1) || (E0.b(g02.f54741a) && ((W5) r02.get(0)).z()))) {
            consumer2.accept(w52);
        } else {
            g02.f54742b.forEach(consumer);
            r02.forEach(consumer2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0, types: [com.android.tools.r8.ir.optimize.Q] */
    /* JADX WARN: Type inference failed for: r3v19, types: [com.android.tools.r8.internal.xw0] */
    /* JADX WARN: Type inference failed for: r5v1, types: [com.android.tools.r8.internal.zw0, java.lang.Object, com.android.tools.r8.internal.fB] */
    /* JADX WARN: Type inference failed for: r6v11, types: [java.lang.Object, com.android.tools.r8.internal.W5] */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.android.tools.r8.internal.GZ, com.android.tools.r8.internal.EE, java.util.ListIterator, com.android.tools.r8.internal.Y5] */
    /* JADX WARN: Type inference failed for: r7v8, types: [com.android.tools.r8.internal.EE, com.android.tools.r8.internal.Y5] */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [com.android.tools.r8.graph.j0, com.android.tools.r8.internal.aB, java.util.ListIterator, java.util.function.UnaryOperator] */
    public final C7215fB a(final C4798y c4798y, final VJ vj2, H5 h52, JD jd2) {
        Y5 y52;
        ?? r82;
        C10340xw0 d10;
        Object obj;
        C7201f60 c7201f60;
        C4724u1 b10 = c4798y.b();
        C8570nJ E10 = c4798y.E();
        final ?? b11 = jd2.b(this.f54798a, vj2);
        if (this.f54801d) {
            a(I0.a(c4798y, h52, b11), b11.k(), C6628bi.b(), new Consumer() {
                @Override
                public final void accept(Object obj2) {
                    com.android.tools.r8.ir.optimize.Q.this.a(b11, (W5) obj2);
                }
            });
        }
        if (vj2.a(b10)) {
            QJ c02 = vj2.c0();
            C10340xw0 C22 = c02.C2();
            if (this.f54802e != null && C22.d(new C7680hz0())) {
                a(c4798y, b11, c02);
            }
        }
        int i10 = 1;
        boolean z10 = this.f54798a.d().f37314g.L() && (E10.f50697l instanceof ClassFileConsumer);
        boolean z11 = z10 && !this.f54798a.d().w0();
        if (vj2.Q1() && !vj2.f0().C2().O() && !z11) {
            a(I0.a(c4798y, (C7215fB) b11), b11.k(), new Consumer() {
                @Override
                public final void accept(Object obj2) {
                    com.android.tools.r8.ir.optimize.Q.this.a((AbstractC10561zE) obj2);
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj2) {
                    com.android.tools.r8.ir.optimize.Q.this.a(c4798y, b11, vj2, (W5) obj2);
                }
            });
        }
        if (z10) {
            AbstractC8999pu0 a10 = AbstractC8999pu0.a(b10.f38173v3, C8854p10.b(), (C4798y<?>) c4798y);
            b11.w();
            ?? w52 = new W5(b11.f47902i);
            w52.d(b11.f47899f.a());
            ArrayList arrayList = new ArrayList();
            Iterator<W5> it = b11.f47897d.iterator();
            while (true) {
                y52 = null;
                if (!it.hasNext()) {
                    break;
                }
                W5 next = it.next();
                if (next.a()) {
                    if (next.z()) {
                        N8 n82 = next.f45292e;
                        if (n82.f42510b.size() > 0) {
                            AbstractC7552hC abstractC7552hC = n82.f42510b;
                            if (abstractC7552hC.get(abstractC7552hC.size() - i10) == b10.f38173v3) {
                            }
                        }
                    }
                    W5 a11 = W5.a(b11.f47899f.a(), B60.s(), b11.f47902i, (W5) w52);
                    Y5 I10 = a11.I();
                    I10.f45926f = B60.c.f38822h;
                    I10.add(new C6600bY(b11.a(a10, null), b10.f38173v3, E10));
                    next.a(a11, b10.f38173v3);
                    arrayList.add(a11);
                    i10 = 1;
                }
            }
            if (arrayList.isEmpty()) {
                r82 = 0;
            } else {
                if (arrayList.size() == 1) {
                    obj = null;
                    c7201f60 = ((W5) AT.a(arrayList)).l().a().d();
                } else {
                    obj = null;
                    C7201f60 c7201f602 = new C7201f60(b11.f47898e.a(), w52, a10, null, C7201f60.a.f47867b);
                    c7201f602.a(AT.a((Collection) arrayList, new Function() {
                        @Override
                        public final Object apply(Object obj2) {
                            C10340xw0 d11;
                            d11 = ((W5) obj2).l().a().d();
                            return d11;
                        }
                    }));
                    c7201f60 = c7201f602;
                }
                y52 = w52.I();
                boolean z12 = B60.f38806g;
                y52.f45926f = B60.c.f38822h;
                y52.add(new C5698Or0(c7201f60));
                w52.m().addAll(arrayList);
                b11.f47897d.addAll(arrayList);
                b11.f47897d.add(w52);
                r82 = obj;
            }
            W5 k10 = b11.k();
            ?? I11 = k10.I();
            I11.a(new Y60(new V60() {
                @Override
                public final boolean apply(Object obj2) {
                    return ((AbstractC10561zE) obj2).k1();
                }
            }));
            I11.previous();
            W5 a12 = I11.a(b11, 0, r82);
            if (!f54797g && a12.z()) {
                throw new AssertionError();
            }
            Y5 I12 = a12.I();
            I12.f45926f = vj2.getPosition();
            if (this.f54798a.d().w0()) {
                d10 = b11.a(AbstractC8999pu0.a(c4798y.b().f38180w2, C8854p10.b(), (C4798y<?>) c4798y).b(), r82);
                I12.add(new C7957jh(d10, this.f54798a.p(), false));
            } else {
                d10 = k10.l().a().v().d();
            }
            I12.add(new WX(XX.f45732b, d10));
            if (y52 != null) {
                y52.previous();
                y52.add(new WX(XX.f45733c, d10));
                w52.a(r82);
            }
            Z5 u10 = b11.u();
            while (u10.f46159b.hasNext()) {
                W5 w53 = (W5) u10.f46159b.next();
                u10.f46160c = w53;
                if (w53.i().g2()) {
                    ?? b12 = w53.b(w53.l().size() - 1);
                    Y5 y53 = b12;
                    if (w53.a()) {
                        y53 = b12.a(b11, u10, E10, r82).I();
                    }
                    WX wx = new WX(XX.f45733c, d10);
                    boolean z13 = B60.f38806g;
                    wx.b(B60.c.f38822h);
                    y53.add(wx);
                }
            }
        }
        Consumer consumer = E10.f50599F1.f50913w0;
        if (consumer != null) {
            consumer.accept(b11);
        }
        b11.x();
        if (f54797g || b11.b(c4798y)) {
            return b11;
        }
        throw new AssertionError();
    }

    public final void a(C7215fB c7215fB, W5 w52) {
        boolean z10 = f54797g;
        if (!z10 && w52.z()) {
            throw new AssertionError();
        }
        W5 a10 = w52.b(w52.u().isEmpty() ? c7215fB.d().size() : 0).a(c7215fB, 0, (ListIterator) null);
        if (!z10 && a10.z()) {
            throw new AssertionError();
        }
        Y5 I10 = a10.I();
        I10.f45926f = this.f54799b.getPosition();
        I10.add(new C9389sD(this.f54798a.p(), c7215fB.a(AbstractC8999pu0.k(), (C4515j0) null)));
    }

    public final void a(C4798y c4798y, C7215fB c7215fB, VJ vj2, W5 w52) {
        List<C10340xw0> d10 = c7215fB.d();
        if (!d10.isEmpty()) {
            C10340xw0 c10340xw0 = d10.get(0);
            boolean z10 = f54797g;
            if (!z10 && !c10340xw0.f53893j) {
                throw new AssertionError();
            }
            W5 a10 = w52.b(w52.u().isEmpty() ? d10.size() : 0).a(c7215fB, 0, (ListIterator) null);
            if (!z10 && a10.z()) {
                throw new AssertionError();
            }
            Y5 I10 = a10.I();
            I10.f45926f = vj2.getPosition();
            A2 a22 = c4798y.b().f37859F4.f38226d;
            int i10 = AbstractC7552hC.f48487c;
            I10.add(new C8405mK(a22, null, new C5920Sm0(c10340xw0)));
            return;
        }
        if (!f54797g) {
            throw new AssertionError((Object) "Unable to synthesize a null check for the receiver");
        }
    }

    public final void a(C4798y c4798y, C7215fB c7215fB, QJ qj2) {
        Y5 b10;
        if (!f54797g && !this.f54798a.d().j1()) {
            throw new AssertionError();
        }
        Z5 u10 = c7215fB.u();
        while (u10.f46159b.hasNext()) {
            W5 w52 = (W5) u10.f46159b.next();
            u10.f46160c = w52;
            if (w52.i().g2()) {
                if (w52.z()) {
                    b10 = w52.I();
                    if (((AbstractC10561zE) b10.a(new C6920dR0())) != null) {
                        b10 = b10.a(c7215fB, u10, c4798y.E(), (UnaryOperator<W5>) null).I();
                    } else {
                        AbstractC10561zE previous = b10.previous();
                        if (!f54797g && !previous.g2()) {
                            throw new AssertionError();
                        }
                    }
                } else {
                    b10 = w52.b(w52.l().size() - 1);
                }
                C5924So0 c5924So0 = new C5924So0(qj2.C2());
                c5924So0.b(qj2.getPosition());
                b10.add(c5924So0);
            }
        }
    }

    public final void a(AbstractC10561zE abstractC10561zE) {
        B60 position = abstractC10561zE.getPosition();
        if (position == null) {
            if (!f54797g) {
                throw new AssertionError((Object) "Expected position for inlinee call to receiver");
            }
        } else {
            B60 h10 = position.h();
            B60.a b10 = h10.b();
            b10.f38815d = true;
            abstractC10561zE.a(position.a(h10, b10.c().a()));
        }
    }
}
