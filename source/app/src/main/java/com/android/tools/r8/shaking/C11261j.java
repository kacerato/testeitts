package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4363b;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4594n3;
import com.android.tools.r8.graph.C4613o3;
import com.android.tools.r8.graph.C4690s5;
import com.android.tools.r8.internal.C4875Al0;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;

public final class C11261j {

    public final Set f57437a = C4875Al0.a();

    public final Set f57438b = C4875Al0.a();

    public final void a(C4554l1 c4554l1) {
        this.f57438b.add(c4554l1);
    }

    public final void a(final C11245i c11245i) {
        Set set = this.f57437a;
        Objects.requireNonNull(c11245i);
        set.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11245i.this.a((com.android.tools.r8.graph.E0) obj);
            }
        });
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11261j.this.a((C4690s5) obj);
            }
        };
        C4690s5 c4690s5 = (C4690s5) c11245i.f57405t;
        c4690s5.getClass();
        consumer.accept(c4690s5);
        c4690s5.a(c11245i);
        final C4594n3 c4594n3 = c11245i.f57404s;
        this.f57438b.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11261j.a(C4594n3.this, (C4554l1) obj);
            }
        });
        this.f57437a.clear();
    }

    public final void a(final C4690s5 c4690s5) {
        Set set = this.f57437a;
        Objects.requireNonNull(c4690s5);
        set.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4690s5.this.g((com.android.tools.r8.graph.H2) obj);
            }
        });
    }

    public static void a(C4594n3 c4594n3, C4554l1 c4554l1) {
        C4613o3 c4613o3 = (C4613o3) c4594n3.f37507a.get(c4554l1);
        if (c4613o3 != null) {
            c4613o3.f37539d = C4363b.f37064a;
        }
    }
}
