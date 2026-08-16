package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC8737oJ;
import com.android.tools.r8.internal.BN;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5766Pw0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C9663tt0;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Consumer;
import java.util.function.Function;

public class C4482h4 {

    public static final boolean f37266h = true;

    public final C8570nJ f37267a;

    public final ConcurrentHashMap f37268b;

    public final ConcurrentHashMap f37269c;

    public final ConcurrentHashMap f37270d;

    public final B f37271e;

    public final C4799y0 f37272f;

    public final ArrayList f37273g;

    public C4482h4(C8570nJ c8570nJ, C4799y0 c4799y0) {
        this.f37268b = new ConcurrentHashMap();
        this.f37269c = new ConcurrentHashMap();
        this.f37270d = new ConcurrentHashMap();
        this.f37273g = new ArrayList();
        this.f37267a = c8570nJ;
        this.f37272f = c4799y0;
        B c4817z = new C4817z();
        if (AbstractC8737oJ.a(c8570nJ.k()) && !c8570nJ.f50599F1.f50919z0) {
            c4817z = new A(c8570nJ.m());
        }
        this.f37271e = c4817z;
    }

    public final void a(BN bn2) {
        synchronized (this.f37273g) {
            this.f37273g.add(bn2);
        }
    }

    public final C9663tt0 b(String str) {
        return (C9663tt0) this.f37269c.computeIfAbsent(str, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C9663tt0.f((String) obj);
            }
        });
    }

    public final I2 c(String str) {
        O2 o22;
        if (!f37266h && !b(str).b().equals(str)) {
            throw new AssertionError();
        }
        String t10 = C4932Bl.t(str);
        String[] e10 = C4932Bl.e(str);
        C4724u1 c4724u1 = this.f37267a.f50660a;
        M2 e11 = e(t10);
        if (e10.length == 0) {
            o22 = O2.k0();
        } else {
            M2[] m2Arr = new M2[e10.length];
            for (int i10 = 0; i10 < e10.length; i10++) {
                m2Arr[i10] = e(e10[i10]);
            }
            o22 = new O2(m2Arr);
        }
        return c4724u1.a(e11, o22);
    }

    public final L2 d(String str) {
        ConcurrentHashMap concurrentHashMap = this.f37270d;
        C4724u1 c4724u1 = this.f37267a.f50660a;
        Objects.requireNonNull(c4724u1);
        return (L2) concurrentHashMap.computeIfAbsent(str, new u.H1(c4724u1));
    }

    public final M2 e(String str) {
        if (!f37266h && !b(str).b().equals(str)) {
            throw new AssertionError();
        }
        return this.f37267a.f50660a.c(d(this.f37271e.a(str)));
    }

    public final M2 f(String str) {
        if (!f37266h) {
            C9663tt0 a10 = a(str);
            if (!a10.f52723b.substring(a10.f52724c, a10.f52725d).equals(str)) {
                throw new AssertionError();
            }
        }
        return e(a(str).b());
    }

    public final void b(M2 m22, V v10) {
        if (v10 == V.f36877c) {
            C4799y0 c4799y0 = this.f37272f;
            synchronized (c4799y0.f38437d) {
                c4799y0.f38437d.a(m22);
            }
        }
    }

    public final C9663tt0 a(String str) {
        return (C9663tt0) this.f37268b.computeIfAbsent(str, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C9663tt0.d((String) obj);
            }
        });
    }

    public final A2 a(M2 m22, String str, String str2) {
        return this.f37267a.f50660a.a(m22, c(str2), d(str));
    }

    public final void a(M2 m22, V v10) {
        if (v10 == V.f36877c) {
            C4799y0 c4799y0 = this.f37272f;
            synchronized (c4799y0.f38438e) {
                c4799y0.f38438e.a(m22);
            }
        }
    }

    public C4482h4(C8570nJ c8570nJ) {
        this(c8570nJ, new C4799y0());
    }

    public final void a(final E0 e02, final V v10) {
        if (this.f37267a.d0()) {
            if (C5766Pw0.a(this.f37267a.f50660a, e02.getType())) {
                M2 type = e02.getType();
                if (v10 == V.f36877c) {
                    C4799y0 c4799y0 = this.f37272f;
                    synchronized (c4799y0.f38437d) {
                        c4799y0.f38437d.a(type);
                    }
                }
            }
            e02.Q0().forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C4482h4.this.a(e02, v10, (C4425e4) obj);
                }
            });
        }
    }

    public final void a(E0 e02, V v10, C4425e4 c4425e4) {
        boolean z10 = f37266h;
        if (!z10) {
            if (C5766Pw0.a(this.f37267a.f50660a, c4425e4.d())) {
                throw new AssertionError();
            }
        }
        if (C5766Pw0.a(this.f37267a.f50660a, c4425e4.b())) {
            M2 type = e02.getType();
            if (v10 == V.f36877c) {
                C4799y0 c4799y0 = this.f37272f;
                synchronized (c4799y0.f38438e) {
                    c4799y0.f38438e.a(type);
                }
            }
            if (!z10 && c4425e4.d() != this.f37267a.f50660a.f37927P2) {
                throw new AssertionError();
            }
            b(e02.getType(), v10);
        }
    }
}
