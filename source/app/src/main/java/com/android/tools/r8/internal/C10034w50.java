package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C10034w50 extends AbstractC9617te {

    public static final boolean f53413f = true;

    public List f53414e;

    public C10034w50(C4798y c4798y) {
        super(c4798y);
    }

    public static boolean a(QJ qj2, AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE == qj2;
    }

    @Override
    public final InterfaceC10118we b(C7215fB c7215fB) {
        if (this.f53414e == null) {
            this.f53414e = c(c7215fB);
        }
        for (QJ qj2 : this.f53414e) {
            ArrayDeque arrayDeque = new ArrayDeque();
            do {
                Y5 I10 = qj2.b().I();
                I10.a((AbstractC10561zE) (arrayDeque.isEmpty() ? qj2 : arrayDeque.iterator().next()));
                while (I10.hasPrevious()) {
                    AbstractC10561zE previous = I10.previous();
                    if (previous.k1()) {
                        break;
                    }
                    if (previous.e1() && qj2.f54321f.contains(previous.d())) {
                        if (!previous.w1() && !previous.x1()) {
                            break;
                        }
                        arrayDeque.addFirst(previous);
                    } else {
                        int size = arrayDeque.size() + 2;
                        for (int i10 = 0; i10 < size; i10++) {
                            AbstractC10561zE next = I10.next();
                            next.f54317b.l().b(next);
                        }
                        Iterator it = arrayDeque.iterator();
                        while (it.hasNext()) {
                            I10.add((AbstractC10561zE) it.next());
                        }
                        I10.add(qj2);
                        I10.add(previous);
                        AbstractC10241xK.a(I10, -size);
                    }
                }
                if (qj2.b().f45293f.a() == ((AbstractC10561zE) (arrayDeque.isEmpty() ? qj2 : arrayDeque.iterator().next()))) {
                }
            } while (a(qj2, arrayDeque));
        }
        c7215fB.x();
        return InterfaceC10118we.f53549c;
    }

    public final List c(final C7215fB c7215fB) {
        final C10340xw0 m10 = c7215fB.m();
        return AT.a(m10.b0(), new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C10034w50.this.a(m10, c7215fB, (AbstractC10561zE) obj);
            }
        });
    }

    public final boolean d(C7215fB c7215fB) {
        if (!c7215fB.f47902i.a(30)) {
            return false;
        }
        final C10340xw0 m10 = c7215fB.m();
        final C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        if (this.f53414e == null) {
            this.f53414e = c(c7215fB);
        }
        for (final QJ qj2 : this.f53414e) {
            if (C9073qK.a(qj2.b().l(), new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C10034w50.a(C10340xw0.this, (AbstractC10561zE) obj);
                }
            }, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C10034w50.a(QJ.this, (AbstractC10561zE) obj);
                }
            })) {
                return true;
            }
            c6286Yx0.b((Iterable) qj2.b().u());
        }
        return c6286Yx0.a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10034w50.a(C10340xw0.this, c6286Yx0, (W5) obj);
            }
        }).c();
    }

    @Override
    public final String a() {
        return "Parent constructor hoisting pass";
    }

    public static boolean a(QJ qj2, ArrayDeque arrayDeque) {
        W5 b10 = qj2.b();
        if (!b10.B()) {
            return false;
        }
        W5 x10 = b10.x();
        if (!x10.C() || x10.z()) {
            return false;
        }
        int size = arrayDeque.size() + 1;
        for (int i10 = 0; i10 < size; i10++) {
            AbstractC10561zE a10 = b10.f45293f.a();
            a10.f54317b.l().b(a10);
        }
        Y5 b11 = x10.b(x10.l().size() - 1);
        Objects.requireNonNull(b11);
        arrayDeque.forEach(new Iv1(b11));
        b11.add(qj2);
        AbstractC10241xK.a(b11, (-arrayDeque.size()) - 1);
        if (!f53413f) {
            Object h10 = b11.h();
            Object obj = qj2;
            if (!arrayDeque.isEmpty()) {
                obj = arrayDeque.iterator().next();
            }
            if (h10 != obj) {
                throw new AssertionError();
            }
        }
        return true;
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        if (!this.f52646a.f().h()) {
            return false;
        }
        com.android.tools.r8.graph.H5 j10 = c7215fB.j();
        if (j10.d().j1() && this.f52648c.e()) {
            com.android.tools.r8.shaking.I1 a10 = this.f52646a.a(j10);
            if (a10.c(this.f52648c) && a10.e(this.f52648c) && d(c7215fB)) {
                return true;
            }
        }
        return false;
    }

    public static AbstractC6333Zs0 a(final C10340xw0 c10340xw0, C6286Yx0 c6286Yx0, W5 w52) {
        if (AbstractC9907vK.b(w52.l(), new V60() {
            @Override
            public final boolean apply(Object obj) {
                return C10034w50.b(C10340xw0.this, (AbstractC10561zE) obj);
            }
        })) {
            return C6162Ws0.f45559c;
        }
        c6286Yx0.b((Iterable) w52.u());
        return C6276Ys0.f46097c;
    }

    public final boolean a(C10340xw0 c10340xw0, C7215fB c7215fB, AbstractC10561zE abstractC10561zE) {
        com.android.tools.r8.graph.H0 e10;
        if (!abstractC10561zE.a(this.f52647b)) {
            return false;
        }
        QJ c02 = abstractC10561zE.c0();
        return (c02.C2() != c10340xw0 || (e10 = c02.e(this.f52646a, c7215fB.j())) == null || e10.A().a((VJ) c02)) ? false : true;
    }

    public static boolean b(C10340xw0 c10340xw0, AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE.i() && abstractC10561zE.m().n() == c10340xw0;
    }

    public static boolean a(C10340xw0 c10340xw0, AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE.i() && abstractC10561zE.m().n() == c10340xw0;
    }
}
