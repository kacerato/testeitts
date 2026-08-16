package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.AbstractC4458g;
import com.android.tools.r8.graph.C4634p5;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.M2;
import java.util.Iterator;

public class O {

    public static final O f54786c = new O(N.NEVER);

    public static final O f54787d = new O(N.ALWAYS);

    public static final boolean f54788e = true;

    public final N f54789a;

    public final M2 f54790b;

    public O(N n10) {
        if (!f54788e && n10 != N.NEVER && n10 != N.ALWAYS) {
            throw new AssertionError();
        }
        this.f54789a = n10;
        this.f54790b = null;
    }

    public static O a(H5 h52, M2 m22, AbstractC4458g abstractC4458g, C4798y c4798y) {
        if (abstractC4458g.l()) {
            return f54787d;
        }
        if (abstractC4458g.h()) {
            if (h52.getHolder().q1()) {
                if (AbstractC10709g0.a(h52.p(), m22, c4798y)) {
                    return new O(N.SAMENEST, m22);
                }
                return f54786c;
            }
            if (m22 == h52.p()) {
                return new O(N.SAMECLASS, m22);
            }
            return f54786c;
        }
        if (abstractC4458g.k()) {
            if (m22.z0().equals(h52.p().z0())) {
                return new O(N.PACKAGE, m22);
            }
            if (c4798y.a(h52.p(), m22).d()) {
                return new O(N.SUBCLASS, m22);
            }
            return f54786c;
        }
        if (m22.z0().equals(h52.p().z0())) {
            return new O(N.PACKAGE, m22);
        }
        return f54786c;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof O)) {
            return false;
        }
        O o10 = (O) obj;
        return this.f54789a.ordinal() == o10.f54789a.ordinal() && this.f54790b == o10.f54790b;
    }

    public final int hashCode() {
        if (this.f54790b == null) {
            return this.f54789a.ordinal();
        }
        return this.f54790b.f36592f.hashCode() * this.f54789a.ordinal();
    }

    public O(N n10, M2 m22) {
        boolean z10 = f54788e;
        if (!z10 && n10 == N.NEVER) {
            throw new AssertionError();
        }
        if (!z10 && n10 == N.ALWAYS) {
            throw new AssertionError();
        }
        if (!z10 && m22 == null) {
            throw new AssertionError();
        }
        this.f54789a = n10;
        this.f54790b = m22;
    }

    public static O a(C4798y c4798y, M2 m22, H5 h52) {
        if (m22.E0()) {
            return a(c4798y, m22.a(1, c4798y.b()), h52);
        }
        if (m22.P0()) {
            return f54787d;
        }
        com.android.tools.r8.graph.E0 g10 = c4798y.g(m22);
        if (g10 == null) {
            return f54786c;
        }
        return a(h52, m22, g10.f36246f, c4798y);
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x01f1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static O a(O o10, O o11, C4798y<?> c4798y) {
        boolean z10;
        if (!o10.equals(o11)) {
            if (o11.f54789a.ordinal() < o10.f54789a.ordinal()) {
                return a(o11, o10, c4798y);
            }
            N n10 = o10.f54789a;
            n10.getClass();
            N n11 = N.NEVER;
            if (n10 == n11) {
                return f54786c;
            }
            if (o11 != f54787d) {
                int i10 = o10.f54789a.f54785b | o11.f54789a.f54785b;
                boolean z11 = f54788e;
                if (!z11 && n11.a(i10)) {
                    throw new AssertionError();
                }
                if (!z11 && N.ALWAYS.a(i10)) {
                    throw new AssertionError();
                }
                N n12 = N.SAMECLASS;
                if (n12.a(i10)) {
                    if (!z11 && o10.f54789a != n12) {
                        throw new AssertionError();
                    }
                    N n13 = o11.f54789a;
                    if (n13 == n12) {
                        if (z11 || o10.f54790b != o11.f54790b) {
                            return f54786c;
                        }
                        throw new AssertionError();
                    }
                    if (n13 == N.SAMENEST) {
                        if (!AbstractC10709g0.a(o10.f54790b, o11.f54790b, c4798y)) {
                            return f54786c;
                        }
                    } else if (n13 == N.PACKAGE) {
                        if (!o10.f54790b.z0().equals(o11.f54790b.z0())) {
                            return f54786c;
                        }
                    } else {
                        if (!z11 && n13 != N.SUBCLASS) {
                            throw new AssertionError();
                        }
                        if (!c4798y.a(o10.f54790b, o11.f54790b).d()) {
                            return f54786c;
                        }
                    }
                } else {
                    N n14 = N.SAMENEST;
                    if (n14.a(i10)) {
                        if (!z11 && o10.f54789a != n14) {
                            throw new AssertionError();
                        }
                        if (o11.f54789a == n14) {
                            if (!AbstractC10709g0.a(o10.f54790b, o11.f54790b, c4798y)) {
                                return f54786c;
                            }
                        } else {
                            if (!z11) {
                                M2 m22 = o10.f54790b;
                                String z02 = m22.z0();
                                com.android.tools.r8.graph.E0 g10 = c4798y.g(m22);
                                if (!z11 && g10 == null) {
                                    throw new AssertionError();
                                }
                                if (g10.q1()) {
                                    if (!g10.t1()) {
                                        g10 = c4798y.g(g10.T0());
                                    }
                                    if (!z11 && g10 == null) {
                                        throw new AssertionError();
                                    }
                                    for (C4634p5 c4634p5 : g10.V0()) {
                                        if (!f54788e && !c4634p5.a().z0().equals(z02)) {
                                            throw new AssertionError();
                                        }
                                    }
                                }
                            }
                            N n15 = o11.f54789a;
                            if (n15 == N.PACKAGE) {
                                if (!o10.f54790b.z0().equals(o11.f54790b.z0())) {
                                    return f54786c;
                                }
                            } else {
                                boolean z12 = f54788e;
                                if (!z12 && n15 != N.SUBCLASS) {
                                    throw new AssertionError();
                                }
                                M2 m23 = o10.f54790b;
                                M2 m24 = o11.f54790b;
                                com.android.tools.r8.graph.E0 g11 = c4798y.g(m23);
                                if (g11 != null) {
                                    if (!g11.q1()) {
                                        z10 = c4798y.a(g11.f36245e, m24).d();
                                    } else {
                                        if (!g11.t1()) {
                                            g11 = c4798y.g(g11.T0());
                                        }
                                        if (g11 != null) {
                                            Iterator<C4634p5> it = g11.V0().iterator();
                                            while (it.hasNext()) {
                                                if (!c4798y.a(it.next().a(), m24).d()) {
                                                }
                                            }
                                            z10 = true;
                                        } else if (!z12) {
                                            throw new AssertionError();
                                        }
                                    }
                                    if (!z10) {
                                        return f54786c;
                                    }
                                } else if (!z12) {
                                    throw new AssertionError();
                                }
                                z10 = false;
                                if (!z10) {
                                }
                            }
                        }
                    } else {
                        N n16 = N.PACKAGE;
                        if (n16.a(i10)) {
                            if (!z11 && o10.f54789a != n16) {
                                throw new AssertionError();
                            }
                            N n17 = o11.f54789a;
                            if (n17 == n16) {
                                if (!z11 && o10.f54790b == o11.f54790b) {
                                    throw new AssertionError();
                                }
                                if (!o10.f54790b.z0().equals(o11.f54790b.z0())) {
                                    return f54786c;
                                }
                            } else {
                                if (!z11 && n17 != N.SUBCLASS) {
                                    throw new AssertionError();
                                }
                                if (!o11.f54790b.z0().equals(o10.f54790b.z0())) {
                                    if (c4798y.a(o10.f54790b, o11.f54790b).d()) {
                                        return new O(n12, o10.f54790b);
                                    }
                                    return f54786c;
                                }
                            }
                        } else {
                            if (!z11 && !N.SUBCLASS.a(i10)) {
                                throw new AssertionError();
                            }
                            if (!z11 && o10.f54789a != o11.f54789a) {
                                throw new AssertionError();
                            }
                            if (!z11 && o10.f54790b == o11.f54790b) {
                                throw new AssertionError();
                            }
                            if (!c4798y.a(o10.f54790b, o11.f54790b).d()) {
                                return c4798y.a(o11.f54790b, o10.f54790b).d() ? o11 : f54786c;
                            }
                        }
                    }
                }
            }
        }
        return o10;
    }
}
