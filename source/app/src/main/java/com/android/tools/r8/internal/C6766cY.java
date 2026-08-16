package com.android.tools.r8.internal;

import java.util.List;
import java.util.function.Predicate;

public final class C6766cY implements InterfaceC6534b6 {

    public static final boolean f47071f = true;

    public C10340xw0 f47072a = null;

    public int f47073b = 0;

    public AbstractC10561zE f47074c = null;

    public final C9202r60 f47075d;

    public final V50 f47076e;

    public C6766cY() {
        C9202r60 c9202r60 = new C9202r60(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C6766cY.this.a((AbstractC10561zE) obj);
            }
        });
        this.f47075d = c9202r60;
        this.f47076e = new V50(true, c9202r60, new C5421Jx0(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C6766cY.this.b((AbstractC10561zE) obj);
            }
        }));
    }

    public final boolean a(AbstractC10561zE abstractC10561zE) {
        if (!U50.a(new C9741uK0()).test(abstractC10561zE)) {
            return false;
        }
        JT m02 = abstractC10561zE.m0();
        if (m02.W0().U() > 20) {
            return false;
        }
        this.f47072a = (C10340xw0) m02.f54321f.get(0);
        return true;
    }

    public final boolean b(AbstractC10561zE abstractC10561zE) {
        if (abstractC10561zE.k1() || (abstractC10561zE instanceof C6600bY) || ((abstractC10561zE instanceof C5692Oo0) && abstractC10561zE.d() == this.f47072a)) {
            return false;
        }
        int b10 = U50.b(abstractC10561zE) + this.f47073b;
        this.f47073b = b10;
        if (b10 > 0) {
            return false;
        }
        int a10 = b10 - U50.a(abstractC10561zE);
        this.f47073b = a10;
        if (a10 != 0 || (abstractC10561zE instanceof C7631hj)) {
            return true;
        }
        this.f47074c = abstractC10561zE;
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0091, code lost:
    
        if ((r4 instanceof com.android.tools.r8.internal.C5692Oo0) != false) goto L50;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(C7920jS c7920jS) {
        this.f47073b = 0;
        this.f47074c = null;
        C10430yV a10 = this.f47076e.a(c7920jS);
        if (a10 != null && this.f47074c != null) {
            c7920jS.previous();
            JT m02 = c7920jS.next().m0();
            if (c7920jS.hasNext()) {
                B60 position = m02.getPosition();
                AbstractC10561zE next = c7920jS.next();
                if (position == next.getPosition() && next.w1() && next.a() == AbstractC8999pu0.k() && next.J().u2() >= -128 && next.J().u2() <= 127 && c7920jS.hasNext()) {
                    AbstractC10561zE next2 = c7920jS.next();
                    if (position == next2.getPosition() && next2.h1() && c7920jS.hasNext()) {
                        AbstractC10561zE next3 = c7920jS.next();
                        U50.a(c7920jS, 4);
                        if (position == next3.getPosition()) {
                        }
                    } else {
                        U50.a(c7920jS, 3);
                    }
                } else {
                    U50.a(c7920jS, 2);
                }
            }
            C9202r60 c9202r60 = this.f47075d;
            c9202r60.getClass();
            JT m03 = ((AbstractC10561zE) ((List) a10.f54035a.get(c9202r60.f51967b)).get(0)).m0();
            if (!f47071f && ((C10340xw0) m03.f54321f.get(0)).z()) {
                throw new AssertionError();
            }
            C8146ko0 c8146ko0 = (C8146ko0) m03.d();
            C8146ko0 c8146ko02 = new C8146ko0(c8146ko0.f49763q, c8146ko0.u(), c8146ko0.f49762p);
            c8146ko0.f(c8146ko02);
            C10340xw0 c10340xw0 = (C10340xw0) m03.f54321f.get(0);
            c10340xw0.f53887d.remove(m03);
            c10340xw0.f53888e = null;
            c7920jS.i();
            AbstractC10561zE previous = c7920jS.previous();
            int i10 = 1;
            while (previous != this.f47074c) {
                previous = c7920jS.previous();
                i10++;
            }
            JT jt = new JT(c8146ko02, (C10340xw0) m03.f54321f.get(0));
            jt.b(this.f47074c.getPosition());
            c7920jS.add(jt);
            int i11 = i10 + 1;
            for (int i12 = 0; i12 < i11; i12++) {
                c7920jS.next();
            }
        }
        return false;
    }
}
