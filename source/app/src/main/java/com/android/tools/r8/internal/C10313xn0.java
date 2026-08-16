package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;

public final class C10313xn0 extends AbstractC9617te {

    public static final boolean f53845e = true;

    public C10313xn0(C4798y c4798y) {
        super(c4798y);
    }

    @Override
    public final String a() {
        return "SplitReturnRewriter";
    }

    @Override
    public final InterfaceC10118we b(C7215fB c7215fB) {
        int c10 = c(c7215fB);
        C10696a c10696a = new C10696a();
        Collection<W5> c11 = AbstractC5513Ll0.c();
        ArrayDeque arrayDeque = new ArrayDeque(c7215fB.f());
        boolean z10 = false;
        boolean z11 = false;
        while (!arrayDeque.isEmpty()) {
            W5 w52 = (W5) arrayDeque.removeFirst();
            C10471yk0 G02 = w52.f45293f.a().G0();
            if (G02 != null) {
                C10340xw0 w22 = !G02.v2() ? G02.w2() : null;
                CH ch2 = new CH(16);
                for (int i10 = 0; i10 < w52.u().size(); i10++) {
                    W5 w53 = w52.u().get(i10);
                    if (w53.i().G1() && !w53.a(c10)) {
                        if (R5.a(w53) == w52) {
                            if (w52.z()) {
                                Iterator<W5> it = w52.v().iterator();
                                while (it.hasNext()) {
                                    it.next().m().clear();
                                }
                                w52.n().clear();
                                w52.f45292e = N8.f42507e;
                                z10 = true;
                            } else if (!f53845e && !w52.v().isEmpty()) {
                                throw new AssertionError();
                            }
                            C10340xw0 c10340xw0 = (w22 != null && w22.j() && w22.b() == w52) ? (C10340xw0) w22.l().f47863q.get(i10) : w22;
                            C10304xk0 c10304xk0 = new C10304xk0();
                            c10304xk0.f53830d = c10340xw0;
                            c10304xk0.f52322b = G02.getPosition();
                            C10471yk0 c10471yk0 = c10304xk0.f53830d == null ? new C10471yk0() : new C10471yk0(c10304xk0.f53830d);
                            B60 b60 = c10304xk0.f52322b;
                            if (b60 != null) {
                                c10471yk0.b(b60);
                            }
                            w53.i().d(c10471yk0);
                            w53.O();
                            ch2.add(i10);
                            arrayDeque.add(w53);
                        } else if (!f53845e && !w53.b(w52)) {
                            throw new AssertionError();
                        }
                    }
                }
                if (!ch2.isEmpty()) {
                    if (ch2.f39177c == w52.u().size()) {
                        c11.add(w52);
                        for (C7201f60 c7201f60 : w52.s()) {
                            for (C10340xw0 c10340xw02 : c7201f60.c0()) {
                                c10340xw02.f53889f.remove(c7201f60);
                                c10340xw02.f53890g = null;
                            }
                        }
                        if (w22 != null) {
                            w22.f53887d.remove(G02);
                            w22.f53888e = null;
                        }
                    } else {
                        if (!ch2.isEmpty()) {
                            List<W5> m10 = w52.m();
                            ArrayList arrayList = new ArrayList(m10);
                            m10.clear();
                            Iterator it2 = ch2.iterator();
                            int i11 = 0;
                            while (it2.hasNext()) {
                                int intValue = ((Integer) ((X) it2).next()).intValue();
                                m10.addAll(arrayList.subList(i11, intValue));
                                i11 = intValue + 1;
                            }
                            m10.addAll(arrayList.subList(i11, arrayList.size()));
                        }
                        w52.a((List) ch2);
                        Iterator it3 = w52.f45295h.iterator();
                        while (it3.hasNext()) {
                            C7201f60 c7201f602 = (C7201f60) it3.next();
                            if (c7201f602.d0()) {
                                it3.remove();
                                c7201f602.a((C6382aB) null, c10696a, C6628bi.b(), EnumC6871d70.f47287c);
                            }
                        }
                        c10696a.f54829b.addAll(w52.s());
                    }
                    z11 = true;
                }
            }
        }
        c7215fB.b(c11);
        if (z10) {
            c7215fB.a(c10696a, C6628bi.b());
        }
        c10696a.a(this.f52646a, c7215fB, C6628bi.b());
        if (z11) {
            c7215fB.x();
        }
        c7215fB.a(c10);
        return z11 ? InterfaceC10118we.f53548b : InterfaceC10118we.f53547a;
    }

    public final int c(C7215fB c7215fB) {
        final int y10 = c7215fB.y();
        if (this.f52646a.H().f50891l0) {
            return y10;
        }
        final C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        Iterator<W5> it = c7215fB.f47897d.iterator();
        while (it.hasNext()) {
            c6286Yx0.b((Iterable) it.next().j().a());
        }
        c6286Yx0.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10313xn0.a(y10, c6286Yx0, (W5) obj);
            }
        });
        return y10;
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        if (!f53845e && this.f52648c.f50690i1) {
            throw new AssertionError();
        }
        return this.f52646a.E().F().f50856Z;
    }

    public static void a(int i10, C6286Yx0 c6286Yx0, W5 w52) {
        w52.c(i10);
        c6286Yx0.b((Iterable) w52.v());
    }
}
