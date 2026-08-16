package com.android.tools.r8.internal;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.errors.NonKeptMethodWithCovariantReturnTypeAnnotationDiagnostic;
import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.AbstractC11415s1;
import com.android.tools.r8.shaking.C11144c0;
import com.android.tools.r8.shaking.C11416s2;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C8962pi implements BZ, InterfaceC8005jx {

    public final C4798y f51590a;

    public final C8461mi f51591b;

    public final IdentityHashMap f51592c = new IdentityHashMap();

    public C8962pi(C4798y c4798y) {
        this.f51590a = c4798y;
        this.f51591b = new C8461mi(c4798y, null);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.D5 d52, com.android.tools.r8.shaking.N n10) {
        if (a(h52)) {
            ((List) this.f51592c.computeIfAbsent(h52.getHolder(), TU.a(new com.android.tools.r8.graph.Uc()))).add(h52);
        }
    }

    public final boolean a(com.android.tools.r8.graph.H5 h52) {
        final C9295ri c9295ri = this.f51591b.f50395d;
        return h52.f36318c.k0().a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C8962pi.a(C9295ri.this, (C4666r0) obj);
            }
        }) != null;
    }

    public static boolean a(C9295ri c9295ri, C4666r0 c4666r0) {
        com.android.tools.r8.graph.M2 l02 = c4666r0.l0();
        return l02.a(c9295ri.f52106a) || l02.a(c9295ri.f52107b);
    }

    @Override
    public final void a(final com.android.tools.r8.shaking.N n10, com.android.tools.r8.shaking.L0 l02, ExecutorService executorService, C8659ns0 c8659ns0) {
        if (this.f51592c.isEmpty()) {
            return;
        }
        final C7541h80 l10 = C7541h80.l();
        this.f51591b.a(this.f51592c, new InterfaceC8795oi() {
            @Override
            public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
                C8962pi.this.a(l10, n10, h52, h53);
            }
        }, executorService);
        final C5094Ef0 c5094Ef0 = this.f51590a.E().f50691j;
        Objects.requireNonNull(c5094Ef0);
        l10.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5094Ef0.this.error((Diagnostic) obj);
            }
        });
        this.f51592c.clear();
    }

    public final void a(C7541h80 c7541h80, com.android.tools.r8.shaking.N n10, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        com.android.tools.r8.shaking.H1 a10 = a(c7541h80, h53);
        n10.f56780W.a(h52);
        n10.d(C11144c0.f57206a, h52, a10);
        n10.f56809m0.a(h52, h53);
    }

    public final com.android.tools.r8.shaking.H1 a(C7541h80 c7541h80, com.android.tools.r8.graph.H5 h52) {
        AbstractC11415s1 a10 = this.f51590a.G().f56422a.b(C11416s2.f57793b).a((AbstractC4744v2) h52.getReference(), (com.android.tools.r8.shaking.H1) null);
        if (a10 == null) {
            a10 = com.android.tools.r8.shaking.I1.f56549D.d();
        }
        C8570nJ E10 = this.f51590a.E();
        if ((E10.R() && a10.f57790a.e()) || ((E10.T() && a10.f57790a.f()) || (E10.W() && a10.f57790a.g()))) {
            Function function = new Function() {
                @Override
                public final Object apply(Object obj) {
                    return new NonKeptMethodWithCovariantReturnTypeAnnotationDiagnostic((com.android.tools.r8.graph.H5) obj);
                }
            };
            c7541h80.getClass();
            c7541h80.a(function, new C7333fv(C7374g80.f48192a, h52));
        }
        return a10.d();
    }
}
