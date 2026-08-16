package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4650q2;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.Set;

public final class C9651tp0 implements ZR {

    public static final boolean f52699e = true;

    public final C4798y f52700a;

    public final C4724u1 f52701b;

    public final C8570nJ f52702c;

    public final C4650q2 f52703d;

    public C9651tp0(C4798y c4798y) {
        C4724u1 b10 = c4798y.b();
        this.f52700a = c4798y;
        this.f52701b = b10;
        this.f52702c = c4798y.E();
        this.f52703d = b10.f38174v4;
    }

    @Override
    public final EE a(C7215fB c7215fB, Z5 z52, EE ee2, VJ vj2, com.android.tools.r8.graph.H0 h02, C10696a c10696a, Set set, YR yr, AbstractC6931dX abstractC6931dX, C5035Df c5035Df) {
        C9484sp0 c9484sp0 = (C9484sp0) yr;
        if (vj2.Q1()) {
            WJ f02 = vj2.f0();
            C4650q2 c4650q2 = this.f52703d;
            if (c4650q2.f37667s.contains(h02.getReference())) {
                a(ee2, f02, h02, c10696a, c9484sp0, abstractC6931dX, c5035Df);
                return ee2;
            }
            if (h02.getReference() == this.f52701b.f38174v4.f37666r) {
                C10340xw0 C22 = f02.C2();
                C4724u1 c4724u1 = this.f52701b;
                while (true) {
                    if (!C22.j()) {
                        AbstractC10561zE r10 = C22.r();
                        if (r10.c2()) {
                            if (r10.w0().f52627k == c4724u1.f37857F2 && (!f02.e1() || !f02.d().A())) {
                                ee2.i();
                                return ee2;
                            }
                        } else {
                            if (!r10.T1()) {
                                break;
                            }
                            C8405mK k02 = r10.k0();
                            C4650q2 c4650q22 = c4724u1.f38174v4;
                            if (!c4650q22.f37667s.contains(k02.B2())) {
                                break;
                            }
                            C22 = k02.C2();
                        }
                    } else {
                        break;
                    }
                }
            }
        }
        return ee2;
    }

    @Override
    public final com.android.tools.r8.graph.M2 getType() {
        return this.f52701b.f37857F2;
    }

    @Override
    public final YR a() {
        return new C9484sp0(this);
    }

    public final void a(EE ee2, WJ wj2, com.android.tools.r8.graph.H0 h02, C10696a c10696a, C9484sp0 c9484sp0, AbstractC6931dX abstractC6931dX, C5035Df c5035Df) {
        C10340xw0 C22 = wj2.C2();
        if (!c9484sp0.f52461a.containsKey(C22)) {
            c9484sp0.a(C22);
            if (!C9484sp0.f52460c && !c9484sp0.f52461a.containsKey(C22)) {
                throw new AssertionError();
            }
        }
        boolean a10 = c9484sp0.f52461a.a(C22);
        if (wj2.e1() && (this.f52702c.P() || a10)) {
            wj2.d().a(wj2.C2(), c10696a);
            wj2.C2().a0().forEach(new C9574tK0());
            wj2.d((C10340xw0) null);
        }
        if (a10) {
            if (!f52699e && wj2.e1()) {
                throw new AssertionError();
            }
            com.android.tools.r8.graph.A2 reference = h02.getReference();
            if (!this.f52703d.f37668t.contains(reference)) {
                C4650q2 c4650q2 = this.f52703d;
                if (reference != c4650q2.f37660l) {
                    if (reference == c4650q2.f37659k) {
                        C10340xw0 b10 = wj2.b(1);
                        if (b10.O()) {
                            boolean z10 = C8405mK.f50258o;
                            C8238lK c8238lK = new C8238lK();
                            c8238lK.f44718d = this.f52701b.f37859F4.f38230h;
                            ee2.b(((C8238lK) c8238lK.a(b10)).c());
                            return;
                        }
                        C8570nJ c8570nJ = this.f52702c;
                        c8570nJ.getClass();
                        if (c8570nJ.c(C2.K)) {
                            boolean z11 = C7405gK.f48231o;
                            C7238fK c7238fK = new C7238fK();
                            c7238fK.f44718d = this.f52701b.f37852E4.f37359k;
                            ee2.b(((C7238fK) c7238fK.a(b10)).c());
                            ee2.previous();
                            return;
                        }
                        com.android.tools.r8.ir.optimize.L0 c10 = com.android.tools.r8.ir.optimize.M0.c(this.f52700a, abstractC6931dX.d(), c5035Df);
                        abstractC6931dX.b(c10.f54773a);
                        c10.f54774b = true;
                        boolean z12 = C7405gK.f48231o;
                        C7238fK c7238fK2 = new C7238fK();
                        if (!com.android.tools.r8.ir.optimize.L0.f54772c && !c10.f54774b) {
                            throw new AssertionError();
                        }
                        c7238fK2.f44718d = c10.f54773a.getReference();
                        ee2.b(((C7238fK) c7238fK2.a(b10)).c());
                        return;
                    }
                    return;
                }
            }
            ee2.i();
        }
    }
}
