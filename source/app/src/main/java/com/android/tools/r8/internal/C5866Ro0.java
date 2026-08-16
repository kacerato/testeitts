package com.android.tools.r8.internal;

import com.android.tools.r8.ir.optimize.C10696a;
import java.util.List;
import java.util.function.Predicate;

public final class C5866Ro0 implements InterfaceC6534b6 {

    public C5692Oo0 f43997a;

    public int f43998b = 0;

    public final C9202r60 f43999c;

    public final C5421Jx0 f44000d;

    public final C9202r60 f44001e;

    public final V50 f44002f;

    public C5866Ro0() {
        C9202r60 c9202r60 = new C9202r60(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C5866Ro0.this.a((AbstractC10561zE) obj);
            }
        });
        this.f43999c = c9202r60;
        C5421Jx0 c5421Jx0 = new C5421Jx0(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C5866Ro0.this.b((AbstractC10561zE) obj);
            }
        });
        this.f44000d = c5421Jx0;
        C9202r60 c9202r602 = new C9202r60(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C5866Ro0.this.c((AbstractC10561zE) obj);
            }
        });
        this.f44001e = c9202r602;
        this.f44002f = new V50(false, c9202r60, c5421Jx0, c9202r602);
    }

    public static boolean a(JT jt, AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE == jt;
    }

    public final boolean b(AbstractC10561zE abstractC10561zE) {
        if (this.f43998b == 1) {
            abstractC10561zE.getClass();
            if ((abstractC10561zE instanceof JT) && ((C10340xw0) abstractC10561zE.m0().f54321f.get(0)) == this.f43997a.d()) {
                return false;
            }
        }
        int a10 = this.f43998b - U50.a(abstractC10561zE);
        this.f43998b = a10;
        if (a10 < 0) {
            this.f43997a = null;
            return false;
        }
        this.f43998b = U50.b(abstractC10561zE) + a10;
        return true;
    }

    public final boolean c(AbstractC10561zE abstractC10561zE) {
        if (this.f43997a != null) {
            abstractC10561zE.getClass();
            if ((abstractC10561zE instanceof JT) && !((C10340xw0) abstractC10561zE.m0().f54321f.get(0)).z() && ((C10340xw0) abstractC10561zE.m0().f54321f.get(0)) == this.f43997a.d()) {
                return true;
            }
        }
        return false;
    }

    public final boolean a(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        if (!(abstractC10561zE instanceof C5692Oo0) || ((C10340xw0) abstractC10561zE.M0().f54321f.get(0)).u().A() || abstractC10561zE.d().z() || abstractC10561zE.M0().d().U() != 1) {
            return false;
        }
        this.f43997a = abstractC10561zE.M0();
        this.f43998b = 0;
        return true;
    }

    @Override
    public final boolean a(C7920jS c7920jS) {
        C8146ko0 c8146ko0;
        C10430yV a10 = this.f44002f.a(c7920jS);
        if (a10 != null && this.f43997a != null) {
            C9202r60 c9202r60 = this.f43999c;
            c9202r60.getClass();
            C5692Oo0 M02 = ((AbstractC10561zE) ((List) a10.f54035a.get(c9202r60.f51967b)).get(0)).M0();
            C5421Jx0 c5421Jx0 = this.f44000d;
            c5421Jx0.getClass();
            List list = (List) a10.f54035a.get(c5421Jx0.f41537b);
            C9202r60 c9202r602 = this.f44001e;
            c9202r602.getClass();
            final JT m02 = ((AbstractC10561zE) ((List) a10.f54035a.get(c9202r602.f51967b)).get(0)).m0();
            AbstractC10561zE abstractC10561zE = (AbstractC10561zE) list.get(list.size() - 1);
            if (abstractC10561zE.d() instanceof C8146ko0) {
                c8146ko0 = (C8146ko0) abstractC10561zE.d();
            } else if (abstractC10561zE.d() instanceof C8313lo0) {
                C8146ko0[] c8146ko0Arr = ((C8313lo0) abstractC10561zE.d()).f50108p;
                c8146ko0 = c8146ko0Arr[c8146ko0Arr.length - 1];
            } else {
                c8146ko0 = null;
            }
            if (c8146ko0 != null && !c8146ko0.u().A()) {
                C8146ko0 c8146ko02 = (C8146ko0) ((C10340xw0) M02.f54321f.get(0));
                C10340xw0 d10 = M02.d();
                d10.f53887d.remove(m02);
                d10.f53888e = null;
                m02.d().f(c8146ko02);
                c7920jS.i();
                c7920jS.a(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return C5866Ro0.a(JT.this, (AbstractC10561zE) obj);
                    }
                });
                C8146ko0 c8146ko03 = new C8146ko0(c8146ko0.f49763q, c8146ko0.u(), c8146ko02.f49762p);
                C8146ko0 c8146ko04 = new C8146ko0(c8146ko02.f49763q, c8146ko02.u(), c8146ko03.f49762p + 1);
                c8146ko02.f(c8146ko04);
                c8146ko0.f(c8146ko03);
                c7920jS.a(new C6329Zq0(c8146ko03, c8146ko04, c8146ko02, c8146ko0), (C10696a) null);
                U50.a(c7920jS, 2);
                return true;
            }
        }
        return false;
    }
}
