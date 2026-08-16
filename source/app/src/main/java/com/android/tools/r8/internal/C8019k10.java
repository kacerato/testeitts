package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.shaking.C11245i;
import java.util.IdentityHashMap;
import java.util.function.Predicate;

public final class C8019k10 extends AbstractC8186l10 {

    public static final boolean f49448e = true;

    public final C4798y f49449a;

    public final C7215fB f49450b;

    public final R00 f49451c;

    public final IdentityHashMap f49452d = new IdentityHashMap();

    public C8019k10(C4798y c4798y, C7215fB c7215fB, R00 r00) {
        this.f49449a = c4798y;
        this.f49450b = c7215fB;
        this.f49451c = r00;
    }

    public static boolean a(W5 w52, W5 w53) {
        return w53 == w52;
    }

    @Override
    public final void a(VJ vj2, VJ vj3, NW nw) {
        if (vj2.Q1() && vj3.R1()) {
            com.android.tools.r8.graph.proto.b a10 = nw.f42624e.f37623b.a(0);
            a10.getClass();
            if (a10 instanceof com.android.tools.r8.graph.proto.i) {
                C10340xw0 C22 = vj2.f0().C2();
                if (C22.u().t() || C22.d(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return ((AbstractC10561zE) obj).o2();
                    }
                })) {
                    return;
                }
                this.f49452d.put(vj3.i0(), C22);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0160  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a() {
        B60 position;
        B60 a10;
        B60 b60;
        if (this.f49452d.isEmpty()) {
            return;
        }
        Z5 u10 = this.f49450b.u();
        while (u10.f46159b.hasNext()) {
            W5 w52 = (W5) u10.f46159b.next();
            u10.f46160c = w52;
            Y5 I10 = w52.I();
            while (I10.hasNext()) {
                AbstractC10561zE next = I10.next();
                if (next.R1()) {
                    C7405gK i02 = next.i0();
                    if (this.f49452d.containsKey(i02)) {
                        C10340xw0 c10340xw0 = (C10340xw0) this.f49452d.get(i02);
                        if (c10340xw0.j()) {
                            C7201f60 l10 = c10340xw0.l();
                            C6286Yx0 c6286Yx0 = new C6286Yx0(2);
                            c6286Yx0.b((C6286Yx0) l10);
                            boolean z10 = false;
                            while (c6286Yx0.b()) {
                                for (C10340xw0 c10340xw02 : ((C7201f60) c6286Yx0.c()).c0()) {
                                    if (c10340xw02.j()) {
                                        c6286Yx0.b((C6286Yx0) c10340xw02.l());
                                    } else {
                                        AbstractC10561zE r10 = c10340xw02.r();
                                        if (r10.D1()) {
                                            com.android.tools.r8.graph.D3 c10 = ((C11245i) this.f49449a.f()).c(this.f49449a.v().e(this.f49451c, r10.R().getField()));
                                            if (c10.y() && !((C11245i) this.f49449a.f()).a(c10.p())) {
                                                z10 = true;
                                            }
                                        }
                                        I10.previous();
                                        B60 position2 = i02.getPosition();
                                        C9882vA0 c9882vA0 = new C9882vA0();
                                        position = i02.getPosition();
                                        a10 = position2.a((Predicate) c9882vA0, false);
                                        if (a10 != null) {
                                            position = a10;
                                        }
                                        if (position.f38810e) {
                                            b60 = position;
                                        } else {
                                            B60.a b10 = position.b();
                                            b10.f38815d = false;
                                            B60 a11 = b10.c().a();
                                            i02.a(i02.getPosition().a(position, a11));
                                            b60 = a11;
                                        }
                                        I10.a(this.f49449a, this.f49450b, u10, c10340xw0, b60);
                                        if (i02.b().z()) {
                                            final W5 b11 = i02.b();
                                            W5 w53 = (W5) AbstractC10241xK.a(u10, new Predicate() {
                                                @Override
                                                public final boolean test(Object obj) {
                                                    return C8019k10.a(W5.this, (W5) obj);
                                                }
                                            });
                                            if (!f49448e && w53 != b11) {
                                                throw new AssertionError();
                                            }
                                            u10.f46160c = (W5) u10.f46159b.next();
                                            I10 = b11.I();
                                        }
                                        AbstractC10561zE next2 = I10.next();
                                        if (!f49448e && next2 != i02) {
                                            throw new AssertionError();
                                        }
                                    }
                                }
                            }
                            if (!f49448e && !z10) {
                                throw new AssertionError();
                            }
                        } else {
                            AbstractC10561zE r11 = c10340xw0.r();
                            if (r11.D1()) {
                                com.android.tools.r8.graph.D3 c11 = ((C11245i) this.f49449a.f()).c(this.f49449a.v().e(this.f49451c, r11.R().getField()));
                                if (c11.y() && !((C11245i) this.f49449a.f()).a(c11.p())) {
                                }
                            }
                            I10.previous();
                            B60 position22 = i02.getPosition();
                            C9882vA0 c9882vA02 = new C9882vA0();
                            position = i02.getPosition();
                            a10 = position22.a((Predicate) c9882vA02, false);
                            if (a10 != null) {
                            }
                            if (position.f38810e) {
                            }
                            I10.a(this.f49449a, this.f49450b, u10, c10340xw0, b60);
                            if (i02.b().z()) {
                            }
                            AbstractC10561zE next22 = I10.next();
                            if (!f49448e) {
                                throw new AssertionError();
                            }
                            continue;
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
    }
}
