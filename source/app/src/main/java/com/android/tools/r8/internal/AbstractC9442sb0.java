package com.android.tools.r8.internal;

import com.android.tools.r8.diagnostic.DefinitionContext;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4610o0;
import com.android.tools.r8.shaking.AbstractC11147c3;
import com.android.tools.r8.shaking.AbstractC11250i4;
import com.android.tools.r8.shaking.C11130b3;
import com.android.tools.r8.shaking.C11350o3;
import com.android.tools.r8.shaking.C11384q3;
import com.android.tools.r8.tracereferences.C11633j;
import java.util.ArrayList;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Predicate;

public abstract class AbstractC9442sb0 extends C11633j {

    public final Set f52389k;

    public final Set f52390l;

    public AbstractC9442sb0(C4798y c4798y) {
        super(c4798y, new C9275rb0(), new C6353a10(), a(c4798y));
        this.f52389k = ConcurrentHashMap.newKeySet();
        this.f52390l = ConcurrentHashMap.newKeySet();
    }

    public static Predicate a(final C4798y c4798y) {
        return new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return AbstractC9442sb0.a(C4798y.this, (com.android.tools.r8.graph.M2) obj);
            }
        };
    }

    @Override
    public final void b(DefinitionContext definitionContext, com.android.tools.r8.graph.E0 e02) {
        b(e02);
    }

    public static boolean a(C4798y c4798y, com.android.tools.r8.graph.M2 m22) {
        return com.android.tools.r8.graph.H2.a(c4798y.g(m22)) != null;
    }

    @Override
    public final void a(DefinitionContext definitionContext, com.android.tools.r8.graph.H0 h02) {
        b(h02);
    }

    public final void a() {
        if (this.f52390l.isEmpty()) {
            return;
        }
        AbstractC11147c3.a a10 = AbstractC11147c3.a();
        ArrayList a11 = AT.a(this.f52390l, new Jo1());
        int size = a11.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = a11.get(i10);
            i10++;
            a10.a(false, AbstractC11250i4.a(C11384q3.a.a((String) obj), AbstractC11250i4.a.f57413b, this.f58483a.b()));
        }
        C11350o3 B10 = this.f58483a.E().B();
        B10.f57616t = C11130b3.a().a(a10.a()).a(B10.f57616t.f57189a).a();
    }

    public final void b(InterfaceC4610o0 interfaceC4610o0) {
        if (this.f52389k.add(interfaceC4610o0.getReference())) {
            com.android.tools.r8.shaking.F4 f42 = (com.android.tools.r8.shaking.F4) this;
            synchronized (f42) {
                try {
                    if (!com.android.tools.r8.shaking.F4.f56453p && !interfaceC4610o0.h()) {
                        throw new AssertionError();
                    }
                    f42.f56456o.a(interfaceC4610o0.g(), (com.android.tools.r8.graph.H2) null, (com.android.tools.r8.shaking.H3) null, f42.f56454m, InterfaceC6522b2.f46683a, f42.f56455n);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    @Override
    public final void a(com.android.tools.r8.graph.F0 f02, DefinitionContext definitionContext) {
        b(f02);
    }

    @Override
    public final void a(InterfaceC4610o0 interfaceC4610o0) {
        this.f52390l.add(interfaceC4610o0.S().A0());
    }
}
