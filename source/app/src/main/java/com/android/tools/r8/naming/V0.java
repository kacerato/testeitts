package com.android.tools.r8.naming;

import com.android.tools.r8.AbstractC4281a;
import com.android.tools.r8.graph.C4425e4;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8570nJ;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class V0 extends AbstractC10988q0 {

    public static final boolean f55778f = true;

    public final AbstractC10992r0 f55779d;

    public final IdentityHashMap f55780e;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public V0(C4798y c4798y, IdentityHashMap identityHashMap) {
        super(r0);
        C4724u1 b10 = c4798y.b();
        AbstractC10992r0 s10 = c4798y.s();
        this.f55779d = s10;
        this.f55780e = identityHashMap;
    }

    public static AbstractC10992r0 a(C4798y c4798y) {
        final C4724u1 b10 = c4798y.b();
        if (c4798y.E().d0() && (c4798y.f().c(b10.f37958T5) != null || c4798y.f().c(b10.f37913N2) != null)) {
            c4798y.f().d().forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((com.android.tools.r8.graph.H2) obj).e(new Predicate() {
                        @Override
                        public final boolean test(Object obj2) {
                            return V0.a(C4724u1.this, (C4425e4) obj2);
                        }
                    });
                }
            });
            IdentityHashMap identityHashMap = new IdentityHashMap();
            a(c4798y, b10.f37958T5, b10.f38088k6, identityHashMap);
            a(c4798y, b10.f37913N2, b10.f38080j6, identityHashMap);
            return new V0(c4798y, identityHashMap);
        }
        return c4798y.s();
    }

    @Override
    public final boolean b() {
        return this.f55779d.b();
    }

    @Override
    public final AbstractC10992r0 c() {
        AbstractC10992r0 c10 = this.f55779d.c();
        return c10 != this.f55779d ? new V0(this.f56029b, c10, this.f55780e) : this;
    }

    @Override
    public final com.android.tools.r8.graph.L2 e(com.android.tools.r8.graph.M2 m22) {
        return this.f55779d.e(m22);
    }

    public V0(C4724u1 c4724u1, AbstractC10992r0 abstractC10992r0, IdentityHashMap identityHashMap) {
        super(c4724u1);
        this.f55779d = abstractC10992r0;
        this.f55780e = identityHashMap;
    }

    public static boolean a(C4724u1 c4724u1, C4425e4 c4425e4) {
        return c4425e4.b() == c4724u1.f37958T5;
    }

    public static void a(C4798y c4798y, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, final IdentityHashMap identityHashMap) {
        final com.android.tools.r8.graph.L2 b10;
        final C4724u1 b11 = c4798y.b();
        if (!f55778f && !c4798y.f().g().c()) {
            throw new AssertionError();
        }
        String l22 = m22.f36592f.toString();
        final com.android.tools.r8.graph.L2 b12 = b11.b(l22.substring(0, l22.length() - 1));
        String l23 = m23.f36592f.toString();
        if (c4798y.E().x().f45397b.isEmpty()) {
            b10 = b11.b("L" + AbstractC4281a.a(l23, 1, 1));
        } else {
            b10 = b11.b("L" + c4798y.E().x().f45397b + AbstractC4281a.a(l23, 1, 1));
        }
        c4798y.f().g().a(m22).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Map.this.put(r5, ((com.android.tools.r8.graph.M2) obj).f36592f.a(b12, b10, b11));
            }
        });
    }

    @Override
    public final com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.M2 m22) {
        boolean z10 = f55778f;
        if (!z10 && m22 == this.f56029b.f38088k6) {
            throw new AssertionError();
        }
        if (!z10 && m22 == this.f56029b.f38080j6) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.L2 l22 = (com.android.tools.r8.graph.L2) this.f55780e.get(m22);
        return l22 != null ? l22 : this.f55779d.c(m22);
    }

    @Override
    public final com.android.tools.r8.graph.L2 a(C4425e4 c4425e4, C8570nJ c8570nJ) {
        boolean z10 = f55778f;
        if (!z10) {
            com.android.tools.r8.graph.M2 b10 = c4425e4.b();
            if (!z10 && b10 == this.f56029b.f38088k6) {
                throw new AssertionError();
            }
            if (!z10 && b10 == this.f56029b.f38080j6) {
                throw new AssertionError();
            }
            if (((com.android.tools.r8.graph.L2) this.f55780e.get(b10)) != null) {
                throw new AssertionError();
            }
        }
        return this.f55779d.a(c4425e4, c8570nJ);
    }

    @Override
    public final com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.A2 a22) {
        return this.f55779d.a(a22);
    }

    @Override
    public final com.android.tools.r8.graph.L2 a(C4554l1 c4554l1) {
        return this.f55779d.a(c4554l1);
    }

    @Override
    public final String a(String str) {
        return this.f55779d.a(str);
    }
}
