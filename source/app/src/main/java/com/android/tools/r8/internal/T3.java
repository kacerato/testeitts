package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Arrays;
import java.util.function.Consumer;

public class T3 extends J3 {

    public static final boolean f44379l = true;

    public YV f44380k;

    public T3(YV yv, C10340xw0 c10340xw0, C10340xw0 c10340xw02, C10340xw0 c10340xw03) {
        super(Arrays.asList(c10340xw0, c10340xw02, c10340xw03), null);
        this.f44380k = yv;
    }

    @Override
    public final T3 A() {
        return this;
    }

    @Override
    public final C10340xw0 Z0() {
        return u2();
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12, C10394yE c10394yE) {
        return true;
    }

    @Override
    public final boolean d1() {
        return true;
    }

    @Override
    public final YV f() {
        return this.f44380k;
    }

    @Override
    public final boolean o1() {
        return true;
    }

    @Override
    public final int p2() {
        return 255;
    }

    @Override
    public final int q2() {
        if (f44379l) {
            return 0;
        }
        throw new AssertionError((Object) "ArrayPut instructions define no values.");
    }

    @Override
    public final int r2() {
        return 8;
    }

    @Override
    public final boolean t2() {
        return true;
    }

    public C10340xw0 value() {
        return (C10340xw0) this.f54321f.get(2);
    }

    @Override
    public final J3 w2() {
        return a(YV.f45999f, u2(), (C10340xw0) this.f54321f.get(1), value());
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return false;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE.o1() && abstractC10561zE.A().f44380k == this.f44380k;
    }

    @Override
    public final boolean a(AbstractC10561zE abstractC10561zE, InterfaceC5381Je0 interfaceC5381Je0, EW ew) {
        return false;
    }

    public static T3 a(YV yv, C10340xw0 c10340xw0, C10340xw0 c10340xw02, C10340xw0 c10340xw03) {
        T3 t32 = new T3(yv, c10340xw0, c10340xw02, c10340xw03);
        boolean z10 = f44379l;
        if (!z10) {
            if (!z10 && t32.f44380k == null) {
                throw new AssertionError();
            }
            if (!z10) {
                t32.u2().a(EnumC5477Kw0.f41824b);
            }
            if (!z10) {
                ((C10340xw0) t32.f54321f.get(1)).a(EnumC5477Kw0.f41825c);
            }
        }
        return t32;
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return com.android.tools.r8.ir.optimize.O.f54787d;
    }

    @Override
    public final void a(PS ps) {
        ps.a(this.f44380k, u2(), (C10340xw0) this.f54321f.get(1), value());
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        AbstractC5635Np c8977pn;
        int b10 = c5458Kn.f41765d.b(value(), this.f54322g);
        int b11 = c5458Kn.f41765d.b(u2(), this.f54322g);
        int b12 = c5458Kn.f41765d.b((C10340xw0) this.f54321f.get(1), this.f54322g);
        switch (this.f44380k) {
            case f45995b:
                c8977pn = new C8977pn(b10, b11, b12);
                break;
            case f45996c:
                W3 a10 = u2().u().a();
                if (a10 != null && a10.F() == AbstractC8999pu0.e()) {
                    c8977pn = new C8476mn(b10, b11, b12);
                    break;
                } else {
                    if (!f44379l && !u2().u().B().e() && a10.F() != AbstractC8999pu0.g()) {
                        throw new AssertionError();
                    }
                    c8977pn = new C8643nn(b10, b11, b12);
                    break;
                }
            case f45997d:
                c8977pn = new C8810on(b10, b11, b12);
                break;
            case f45998e:
                c8977pn = new C9144qn(b10, b11, b12);
                break;
            case f45999f:
            case f46000g:
                c8977pn = new C8309ln(b10, b11, b12);
                break;
            case f46001h:
            case f46002i:
                c8977pn = new C9310rn(b10, b11, b12);
                break;
            case f46003j:
            case f46004k:
                throw new C5417Jv0("Unexpected imprecise type: " + ((Object) this.f44380k));
            default:
                throw new C5417Jv0("Unexpected type: " + ((Object) this.f44380k));
        }
        c5458Kn.a(this, c8977pn);
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12, C10394yE c10394yE) {
        int size;
        int u22;
        C10340xw0 i10 = u2().i();
        if (i10.d(new C6571bJ0()) && !i10.z()) {
            AbstractC10561zE r10 = i10.r();
            r10.getClass();
            if (r10 instanceof C8769oZ) {
                C10340xw0 c10340xw0 = (C10340xw0) r10.t0().f54321f.get(0);
                if (!c10340xw0.M()) {
                    return true;
                }
                size = c10340xw0.n().J().u2();
            } else {
                size = r10.u0().f54321f.size();
            }
            C10340xw0 i11 = ((C10340xw0) this.f54321f.get(1)).i();
            if (i11.M() && (u22 = i11.n().J().u2()) >= 0 && u22 < size) {
                AbstractC8999pu0 u10 = i10.u();
                AbstractC8999pu0 u11 = value().u();
                if (u10.r()) {
                    return !u11.b(u10.a().G(), c4798y);
                }
                return true;
            }
        }
        return true;
    }

    @Override
    public final com.android.tools.r8.ir.optimize.E a(C4798y c4798y, C7215fB c7215fB) {
        com.android.tools.r8.graph.H5 j10 = c7215fB.j();
        if (!a(c4798y, j10, M1.a(c4798y, j10), C10394yE.f53978a)) {
            C10340xw0 i10 = u2().i();
            if (i10.d(new YW0())) {
                return new com.android.tools.r8.ir.optimize.D(i10);
            }
        }
        return com.android.tools.r8.ir.optimize.E.f54734b;
    }

    @Override
    public final void a(NT nt) {
        nt.a(this);
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.a(new Z8(this.f44380k), this);
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C10340xw0 c10340xw0) {
        return u2() == c10340xw0;
    }

    @Override
    public final void a(C8832ou0 c8832ou0) {
        c8832ou0.a(this.f44380k, value(), u2(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                T3.this.a((YV) obj);
            }
        });
    }

    public final void a(YV yv) {
        this.f44380k = yv;
    }
}
