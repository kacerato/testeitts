package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4422e1;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.C4704t0;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.EnumC4629p0;
import com.android.tools.r8.graph.R2;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C8268lZ;
import com.android.tools.r8.internal.EnumC6871d70;
import java.util.Collection;
import java.util.concurrent.ExecutorService;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C11126b {

    public static final boolean f57184d = true;

    public final C4798y f57185a;

    public final C8268lZ f57186b;

    public final AbstractC5308Hz f57187c;

    public C11126b(C4798y c4798y, C8268lZ c8268lZ) {
        this.f57185a = c4798y;
        this.f57186b = c8268lZ;
        this.f57187c = c4798y.v();
    }

    public final com.android.tools.r8.graph.M2 a(com.android.tools.r8.graph.M2 m22) {
        return this.f57186b.c(this.f57187c, m22);
    }

    public final void a(Collection collection, ExecutorService executorService) {
        com.android.tools.r8.J.a(this.f57185a, collection, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11126b.this.a((com.android.tools.r8.graph.H2) obj);
            }
        }, executorService);
    }

    public final void a(com.android.tools.r8.graph.H2 h22) {
        h22.f37066b = h22.k0().a(new Nb(this));
        h22.g(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11126b.this.a((C4516j1) obj);
            }
        });
        h22.c(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11126b.this.a((C4460g1) obj);
            }
        }, EnumC6871d70.f47286b);
    }

    public final void a(C4516j1 c4516j1) {
        c4516j1.a(new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C11126b.this.a((C4666r0) obj, (EnumC4629p0) obj2);
            }
        });
    }

    public final C4666r0 a(C4666r0 c4666r0, EnumC4629p0 enumC4629p0) {
        return a(c4666r0);
    }

    public final void a(C4460g1 c4460g1) {
        c4460g1.f37066b = c4460g1.k0().a(new Nb(this));
    }

    public final C4666r0 a(C4666r0 c4666r0) {
        return c4666r0.a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C11126b.this.a((C4422e1) obj);
            }
        });
    }

    public final C4422e1 a(C4422e1 c4422e1) {
        return c4422e1.a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C11126b.this.a((com.android.tools.r8.graph.M2) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C11126b.this.a((C4704t0) obj);
            }
        });
    }

    public final C4704t0 a(C4704t0 c4704t0) {
        com.android.tools.r8.graph.R2 a10 = a(c4704t0.f37739c);
        return a10 != c4704t0.f37739c ? new C4704t0(c4704t0.f37738b, a10) : c4704t0;
    }

    public final com.android.tools.r8.graph.R2 a(com.android.tools.r8.graph.R2 r22) {
        r22.getClass();
        if (r22 instanceof R2.b) {
            com.android.tools.r8.graph.R2[] W02 = r22.n0().W0();
            com.android.tools.r8.graph.R2[] r2Arr = (com.android.tools.r8.graph.R2[]) com.android.tools.r8.internal.X3.a((Object[]) W02, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C11126b.this.a((com.android.tools.r8.graph.R2) obj);
                }
            }, (Object[]) com.android.tools.r8.graph.R2.f36737b);
            if (r2Arr != W02) {
                return new R2.b(r2Arr);
            }
        } else if (r22.H0()) {
            R2.a m02 = r22.m0();
            C4422e1 a10 = a(m02.f36739d);
            if (m02.f36739d != a10) {
                return new R2.a(a10);
            }
            return r22;
        }
        if (r22 instanceof com.android.tools.r8.graph.Q2) {
            com.android.tools.r8.graph.Q2 l02 = r22.l0();
            com.android.tools.r8.graph.J2 j22 = (com.android.tools.r8.graph.J2) l02.f36759d;
            com.android.tools.r8.graph.J2 a11 = this.f57186b.a(j22, this.f57187c);
            if (j22 != a11) {
                return new com.android.tools.r8.graph.Q2(a11, l02.f36720e);
            }
        } else if (r22 instanceof com.android.tools.r8.graph.T2) {
            C4554l1 c4554l1 = (C4554l1) r22.t0().f36759d;
            C4554l1 e10 = this.f57186b.e(this.f57187c, c4554l1);
            if (c4554l1 != e10) {
                return new com.android.tools.r8.graph.T2(e10);
            }
        } else if (!(r22 instanceof com.android.tools.r8.graph.U2)) {
            if (!(r22 instanceof com.android.tools.r8.graph.W2)) {
                if (!(r22 instanceof com.android.tools.r8.graph.X2)) {
                    if (!(r22 instanceof com.android.tools.r8.graph.Y2)) {
                        if (!r22.R0()) {
                            if (r22.S0()) {
                                com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) r22.E0().f36759d;
                                com.android.tools.r8.graph.M2 c10 = this.f57186b.c(this.f57187c, m22);
                                if (c10 != m22) {
                                    return new R2.l(c10);
                                }
                            } else if (!f57184d && r22.T0()) {
                                throw new AssertionError();
                            }
                        }
                    } else {
                        throw new C5417Jv0("Unexpected method type in annotation");
                    }
                } else {
                    throw new C5417Jv0("Unexpected method handle in annotation");
                }
            } else {
                throw new C5417Jv0("Unexpected method in annotation");
            }
        } else {
            throw new C5417Jv0("Unexpected field in annotation");
        }
        return r22;
    }
}
