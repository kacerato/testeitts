package com.android.tools.r8.internal;

import android.util.Half;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.shaking.C11498x;
import java.util.IdentityHashMap;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.BiConsumer;

public final class C6344Zy implements InterfaceC8005jx {

    public static final boolean f46385c = true;

    public final Set f46386a;

    public final C6678bz f46387b;

    public C6344Zy(C6678bz c6678bz, Set set) {
        this.f46387b = c6678bz;
        this.f46386a = set;
    }

    @Override
    public final void a(com.android.tools.r8.shaking.N n10, final com.android.tools.r8.shaking.L0 l02, ExecutorService executorService, C8659ns0 c8659ns0) {
        IdentityHashMap identityHashMap = this.f46387b.f46926d;
        final Set set = this.f46386a;
        identityHashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C6344Zy.this.a(set, l02, (com.android.tools.r8.graph.H2) obj, (com.android.tools.r8.graph.H5) obj2);
            }
        });
    }

    public final void a(Set set, com.android.tools.r8.shaking.L0 l02, com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.A2 a22;
        if (set.add(h22)) {
            com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(this.f46387b.f46923a.g(h22.f36247g));
            boolean z10 = f46385c;
            if (!z10 && a10 == null) {
                throw new AssertionError();
            }
            if (a10.getType().a(this.f46387b.f46924b.f41998j)) {
                a22 = this.f46387b.f46924b.f42007s.f40794a;
            } else {
                a22 = this.f46387b.f46924b.f42008t.f41130b;
            }
            com.android.tools.r8.graph.H5 e10 = a10.e(a22);
            if (e10 != null) {
                com.android.tools.r8.graph.L4 accessFlags = e10.getAccessFlags();
                if (!accessFlags.l()) {
                    accessFlags.A();
                    accessFlags.B();
                    accessFlags.w();
                }
            }
            a10.f36246f.f37197c &= Half.LOWEST_VALUE;
            if (a10.getType().a(this.f46387b.f46924b.f41998j)) {
                l02.b(this.f46387b.f46924b.f41998j, h52);
                l02.a(this.f46387b.f46924b.f42007s.f40794a, h52, (C11498x) null);
            } else {
                if (!z10 && !a10.getType().a(this.f46387b.f46924b.f41999k)) {
                    throw new AssertionError();
                }
                l02.b(this.f46387b.f46924b.f41999k, h52);
                l02.a(this.f46387b.f46924b.f42008t.f41130b, h52, (C11498x) null);
            }
            C5485La0 c5485La0 = this.f46387b.f46924b;
            com.android.tools.r8.graph.H2 holder = h52.getHolder();
            C4724u1 c4724u1 = c5485La0.f41989a;
            com.android.tools.r8.graph.M2 m22 = holder.f36245e;
            l02.a(c4724u1.a(m22, m22, c5485La0.f42010v), h52);
        }
    }
}
