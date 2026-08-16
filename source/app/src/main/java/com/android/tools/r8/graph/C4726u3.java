package com.android.tools.r8.graph;

import com.android.tools.r8.internal.C4875Al0;
import java.util.Set;
import java.util.function.Consumer;

public final class C4726u3 {

    public static final boolean f38269b = true;

    public final C4514j f38270a;

    public C4726u3(C4514j c4514j) {
        this.f38270a = c4514j;
    }

    public final D3 a(M2 m22, final C4554l1 c4554l1) {
        boolean z10 = D3.f36221a;
        final C4745v3 c4745v3 = new C4745v3();
        this.f38270a.f(m22).a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4726u3.this.a(c4554l1, c4745v3, (E0) obj);
            }
        });
        C4764w3 c4764w3 = C4764w3.f38324b;
        D3 d32 = c4745v3.f38300a;
        return d32 == null ? c4764w3 : d32;
    }

    public final void a(C4554l1 c4554l1, C4745v3 c4745v3, E0 e02) {
        a(e02, c4554l1, e02, C4875Al0.b(8), c4745v3);
    }

    public final void a(final E0 e02, final C4554l1 c4554l1, final E0 e03, final Set set, final C4745v3 c4745v3) {
        if (!f38269b && e02 == null) {
            throw new AssertionError();
        }
        C4460g1 a10 = e02.f36251k.f37700b.a(c4554l1);
        if (a10 != null) {
            c4745v3.a(D3.a(e03, e02, a10));
            return;
        }
        D3 a11 = a(e03, e02, c4554l1, set);
        if (a11 != null) {
            c4745v3.a(a11);
            return;
        }
        M2 m22 = e02.f36247g;
        if (m22 != null) {
            this.f38270a.f(m22).a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C4726u3.this.a(e02, c4554l1, e03, set, c4745v3, (E0) obj);
                }
            });
        } else {
            boolean z10 = D3.f36221a;
            c4745v3.a(C4764w3.f38324b);
        }
    }

    public final void a(E0 e02, C4554l1 c4554l1, E0 e03, Set set, C4745v3 c4745v3, E0 e04) {
        if (!e02.f0() || e04.f0()) {
            a(e04, c4554l1, e03, set, c4745v3);
        }
    }

    public final D3 a(final E0 e02, final E0 e03, final C4554l1 c4554l1, final Set set) {
        for (M2 m22 : e03.f36248h.f36675b) {
            if (set.add(m22)) {
                boolean z10 = D3.f36221a;
                final C4745v3 c4745v3 = new C4745v3();
                this.f38270a.f(m22).a(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C4726u3.this.a(e03, e02, c4554l1, set, c4745v3, (E0) obj);
                    }
                });
                D3 d32 = c4745v3.f38300a;
                D3 d33 = d32 == null ? null : d32;
                if (d33 != null) {
                    return d33;
                }
            }
        }
        return null;
    }

    public final void a(E0 e02, E0 e03, C4554l1 c4554l1, Set set, C4745v3 c4745v3, E0 e04) {
        D3 a10;
        if (!e02.f0() || e04.f0()) {
            C4460g1 a11 = e04.f36251k.f37700b.a(c4554l1);
            if (a11 != null) {
                a10 = D3.a(e03, e04, a11);
            } else {
                a10 = a(e03, e04, c4554l1, set);
            }
            if (a10 != null) {
                c4745v3.a(a10);
            }
        }
    }
}
