package com.android.tools.r8.shaking;

import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.synthesis.C11555d;
import java.util.Set;
import java.util.function.Consumer;

public final class C11315m2 {

    public static final boolean f57526f = true;

    public final Set f57527a = AbstractC5513Ll0.c();

    public final Set f57528b = AbstractC5513Ll0.c();

    public final Set f57529c = AbstractC5513Ll0.c();

    public final Set f57530d = AbstractC5513Ll0.c();

    public final boolean f57531e;

    public C11315m2(boolean z10) {
        this.f57531e = z10;
    }

    public final void a(com.android.tools.r8.graph.H2 h22) {
        d(h22.getType());
    }

    public final void b(com.android.tools.r8.graph.M2 m22) {
        if (this.f57528b.contains(m22)) {
            return;
        }
        a(m22);
    }

    public final void c(com.android.tools.r8.graph.M2 m22) {
        this.f57527a.add(m22);
    }

    public final void d(com.android.tools.r8.graph.M2 m22) {
        if (!f57526f && this.f57530d.contains(m22)) {
            throw new AssertionError();
        }
        this.f57528b.add(m22);
    }

    public final boolean e(com.android.tools.r8.graph.M2 m22) {
        return this.f57528b.contains(m22) || this.f57530d.contains(m22);
    }

    public final void a(com.android.tools.r8.graph.M2 m22) {
        if (!f57526f && this.f57528b.contains(m22)) {
            throw new AssertionError();
        }
        this.f57530d.add(m22);
    }

    public final Consumer a(final com.android.tools.r8.synthesis.J j10) {
        return new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11315m2.this.a(j10, (com.android.tools.r8.graph.M2) obj);
            }
        };
    }

    public final void a(com.android.tools.r8.synthesis.J j10, com.android.tools.r8.graph.M2 m22) {
        if (!f57526f && this.f57528b.contains(m22)) {
            C11555d c11555d = j10.f58086c;
            if (!c11555d.f58241b.containsKey(m22) && !c11555d.f58242c.containsKey(m22)) {
                throw new AssertionError();
            }
        }
        b(m22);
    }

    public final C11349o2 a(Set set) {
        if (f57526f || this.f57527a.isEmpty()) {
            return new C11349o2(set, this.f57528b, this.f57529c, this.f57530d, this.f57531e);
        }
        throw new AssertionError();
    }
}
