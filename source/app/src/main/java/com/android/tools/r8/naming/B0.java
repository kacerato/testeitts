package com.android.tools.r8.naming;

import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.F5;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.position.Position;
import java.util.IdentityHashMap;
import java.util.function.BiPredicate;

public final class B0 extends C10968m0 {

    public static final boolean f55575k = true;

    public final IdentityHashMap f55576i;

    public final C4724u1 f55577j;

    public B0(C4798y c4798y, IdentityHashMap identityHashMap) {
        super(c4798y);
        this.f55576i = identityHashMap;
        this.f55577j = c4798y.b();
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.E0 e02) {
        return true;
    }

    @Override
    public final com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.F0 f02) {
        return a(f02, f02.getReference().t0());
    }

    @Override
    public final com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.H0 h02) {
        return a(h02, h02.getReference().t0());
    }

    @Override
    public final com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.H0 h02, C10908a0 c10908a0, BiPredicate biPredicate) {
        com.android.tools.r8.graph.A2 reference = h02.getReference();
        com.android.tools.r8.graph.L2 a10 = a(h02, reference.t0());
        if (a10 != null) {
            if (!biPredicate.test(a10, reference)) {
                a(reference, a10);
            }
        } else {
            boolean z10 = f55575k;
            if (!z10 && this.f55576i.containsKey(reference)) {
                throw new AssertionError();
            }
            if (!z10 && (h02 instanceof H5) && !this.f56001e.a(h02.H()).b(this.f56001e.E())) {
                throw new AssertionError();
            }
            a10 = super.a(h02, c10908a0, biPredicate);
        }
        boolean z11 = f55575k;
        if (!z11 && !a10.g(reference.t0()) && h02.d().i1()) {
            throw new AssertionError();
        }
        if (z11 || a10.g(reference.t0()) || !h02.getHolder().f36246f.H()) {
            return a10;
        }
        throw new AssertionError();
    }

    @Override
    public final com.android.tools.r8.graph.L2 a(F5 f52, A a10, BiPredicate biPredicate) {
        C4554l1 reference = f52.getReference();
        com.android.tools.r8.graph.L2 a11 = a(f52, reference.t0());
        if (a11 != null) {
            if (!biPredicate.test(a11, f52)) {
                a(reference, a11);
            }
            return a11;
        }
        boolean z10 = f55575k;
        if (!z10 && this.f55576i.containsKey(reference)) {
            throw new AssertionError();
        }
        if (z10 || this.f56001e.a(f52).b(this.f56001e.E())) {
            return super.a(f52, a10, biPredicate);
        }
        throw new AssertionError();
    }

    public final com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.G0 g02, com.android.tools.r8.graph.L2 l22) {
        com.android.tools.r8.graph.L2 a10;
        AbstractC4744v2 reference = g02.getReference();
        if (g02.getHolder().v1()) {
            return this.f55576i.containsKey(reference) ? this.f55577j.b(((V) this.f55576i.get(reference)).c()) : l22;
        }
        if (!f55575k && !g02.a0()) {
            throw new AssertionError();
        }
        if (g02.I()) {
            a10 = super.a(g02.b());
        } else {
            a10 = super.a(g02.c());
        }
        if (a10 != null) {
            return a10;
        }
        if (this.f55576i.containsKey(reference)) {
            return this.f55577j.b(((V) this.f55576i.get(reference)).c());
        }
        return null;
    }

    public final void a(AbstractC4744v2 abstractC4744v2, com.android.tools.r8.graph.L2 l22) {
        Position position;
        V v10 = (V) this.f55576i.get(abstractC4744v2);
        if (!f55575k && !abstractC4744v2.r0() && !abstractC4744v2.p0()) {
            throw new AssertionError();
        }
        String j02 = abstractC4744v2.j0();
        String l23 = l22.toString();
        if (v10 == null) {
            position = Position.UNKNOWN;
        } else {
            position = v10.f55769d;
        }
        new C10907a("'" + j02 + "' cannot be mapped to '" + l23 + "' because it is in conflict with an existing member with the same signature. This usually happens when compiling a test application against a source application and there are used classes in the test that was not given a -keep rule when compiling the app. Try either renaming '" + l23 + "' such that it will not collide or add a keep rule to keep '" + j02 + "'.", position);
    }
}
