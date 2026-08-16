package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.EnumC4629p0;
import com.android.tools.r8.internal.InterfaceC6522b2;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.function.Consumer;

public abstract class L0 {

    public final N f56692a;

    public final ConcurrentLinkedQueue f56693b;

    public L0(N n10, ConcurrentLinkedQueue concurrentLinkedQueue) {
        this.f56692a = n10;
        this.f56693b = concurrentLinkedQueue;
    }

    public abstract void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.H5 h52, X1 x12);

    public abstract void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.H5 h52, C11498x c11498x);

    public abstract void a(com.android.tools.r8.graph.D5 d52, C4666r0 c4666r0, EnumC4629p0 enumC4629p0);

    public abstract void a(com.android.tools.r8.graph.F5 f52);

    public abstract void a(com.android.tools.r8.graph.F5 f52, com.android.tools.r8.graph.D5 d52, X1 x12);

    public abstract void a(com.android.tools.r8.graph.F5 f52, com.android.tools.r8.graph.H5 h52);

    public abstract void a(com.android.tools.r8.graph.H2 h22);

    public abstract void a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H5 h52, int i10, X1 x12);

    public abstract void a(com.android.tools.r8.graph.H2 h22, R0 r02);

    public abstract void a(com.android.tools.r8.graph.H5 h52);

    public abstract void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.A2 a22);

    public abstract void a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.H5 h52);

    public abstract void a(C4554l1 c4554l1, com.android.tools.r8.graph.H5 h52);

    public abstract void a(InterfaceC6522b2 interfaceC6522b2);

    public abstract void a(X1 x12, com.android.tools.r8.graph.H5 h52);

    public abstract void a(AbstractC11279k0 abstractC11279k0);

    public final boolean a() {
        return !this.f56693b.isEmpty();
    }

    public abstract boolean a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.D5 d52, X1 x12);

    public abstract C11448u0 b();

    public abstract void b(com.android.tools.r8.graph.F5 f52, com.android.tools.r8.graph.H5 h52);

    public abstract void b(com.android.tools.r8.graph.H2 h22);

    public abstract void b(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.A2 a22);

    public abstract void b(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.H5 h52);

    public abstract void c(com.android.tools.r8.graph.F5 f52, com.android.tools.r8.graph.H5 h52);

    public abstract void c(com.android.tools.r8.graph.H2 h22);

    public final void a(Set set) {
        set.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                L0.this.a((AbstractC11279k0) obj);
            }
        });
    }
}
