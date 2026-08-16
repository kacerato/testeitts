package com.android.tools.r8.synthesis;

import com.android.tools.r8.internal.AbstractC9530t40;
import com.android.tools.r8.internal.AbstractC9907vK;
import com.android.tools.r8.internal.V60;
import com.android.tools.r8.shaking.C11349o2;
import java.util.List;
import java.util.function.Consumer;

public final class C11611w {

    public static final boolean f58349d = true;

    public final List f58350a;

    public final AbstractC11602t f58351b;

    public final AbstractC9530t40 f58352c;

    public C11611w(AbstractC11602t abstractC11602t, List list, AbstractC9530t40 abstractC9530t40) {
        boolean z10 = f58349d;
        if (!z10 && abstractC11602t == null) {
            throw new AssertionError();
        }
        if (!z10 && list == null) {
            throw new AssertionError();
        }
        if (!z10 && abstractC9530t40 == null) {
            throw new AssertionError();
        }
        this.f58350a = list;
        this.f58351b = abstractC11602t;
        this.f58352c = abstractC9530t40;
    }

    public static boolean a(C11349o2 c11349o2, AbstractC11602t abstractC11602t) {
        return c11349o2.f57581a.contains(abstractC11602t.f58332b.f58274c);
    }

    public final void b(Consumer consumer) {
        this.f58350a.forEach(consumer);
    }

    public final String toString() {
        return "EquivalenceGroup{ size = " + (this.f58350a.size() + 1) + ", repr = " + ((Object) this.f58351b) + " }";
    }

    public final void a(Consumer consumer) {
        consumer.accept(this.f58351b);
        this.f58350a.forEach(consumer);
    }

    public final boolean a(final C11349o2 c11349o2) {
        return c11349o2.f57581a.contains(this.f58351b.f58332b.f58274c) || AbstractC9907vK.b(this.f58350a, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return C11611w.a(C11349o2.this, (AbstractC11602t) obj);
            }
        });
    }
}
