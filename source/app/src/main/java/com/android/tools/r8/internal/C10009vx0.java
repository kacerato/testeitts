package com.android.tools.r8.internal;

import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.function.Consumer;

public final class C10009vx0 {

    public static final boolean f53380f = true;

    public final C10009vx0 f53381a;

    public final com.android.tools.r8.graph.H5 f53382b;

    public Set f53383c = Collections.EMPTY_SET;

    public List f53384d = Collections.EMPTY_LIST;

    public boolean f53385e = false;

    public C10009vx0(com.android.tools.r8.graph.H5 h52, C10009vx0 c10009vx0) {
        if (!f53380f && h52 == null) {
            throw new AssertionError();
        }
        this.f53381a = c10009vx0;
        this.f53382b = h52;
    }

    public final void a(C10009vx0 c10009vx0) {
        boolean z10 = f53380f;
        if (!z10 && c10009vx0.f53382b.a((com.android.tools.r8.graph.H0) this.f53382b)) {
            throw new AssertionError();
        }
        if (!z10 && !c10009vx0.f53382b.getReference().c(this.f53382b.getReference())) {
            throw new AssertionError();
        }
        if (this.f53383c.isEmpty()) {
            this.f53383c = AbstractC5513Ll0.c();
        }
        this.f53383c.add(c10009vx0);
        C10009vx0 c10009vx02 = this.f53381a;
        if (c10009vx02 != null) {
            c10009vx02.a(c10009vx0);
        }
    }

    public final C10009vx0 a() {
        C10009vx0 c10009vx0 = this.f53381a;
        return c10009vx0 != null ? c10009vx0.a() : this;
    }

    public final void a(Consumer consumer) {
        consumer.accept(this);
        this.f53383c.forEach(consumer);
    }
}
