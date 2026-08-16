package com.android.tools.r8.naming;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.R5;
import com.android.tools.r8.graph.Y5;
import com.android.tools.r8.internal.C6620bf0;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.shaking.C11245i;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;

public class C10973n0 {

    public static final boolean f56015b = true;

    public final C4798y f56016a;

    public C10973n0(C4798y<C11245i> c4798y) {
        this.f56016a = c4798y;
    }

    /* JADX WARN: Type inference failed for: r12v1, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.util.Map, java.lang.Object] */
    public void a(ExecutorService executorService, C8659ns0 c8659ns0) throws ExecutionException {
        boolean z10 = f56015b;
        if (!z10 && !this.f56016a.E().R()) {
            throw new AssertionError();
        }
        Y5 a10 = AbstractC10978o0.a(this.f56016a);
        c8659ns0.b("ComputeInterfaces");
        List a11 = a10.a();
        c8659ns0.d();
        c8659ns0.b("MinifyClasses");
        C4798y c4798y = this.f56016a;
        C10922d a12 = new C10932f(c4798y, c4798y.E().x().c() ? new C10948i0(this.f56016a) : new C10953j0(this.f56016a), ((C11245i) this.f56016a.f()).e()).a(c8659ns0);
        c8659ns0.d();
        if (!z10) {
            C4798y c4798y2 = this.f56016a;
            C6620bf0 c6620bf0 = C6620bf0.f46817i;
            new C10933f0(c4798y2, a12, new X(c6620bf0), new C11021x(c6620bf0)).a(((C11245i) this.f56016a.f()).d(), this.f56016a.b());
        }
        C10968m0 c10968m0 = new C10968m0(this.f56016a);
        c8659ns0.b("MinifyMethods");
        Z z11 = new Z(this.f56016a, c10968m0);
        c8659ns0.b("Phase 1");
        z11.e();
        c8659ns0.d();
        c8659ns0.b("Phase 2");
        K k10 = new K(z11.f55802a, z11.f55805d, a10);
        c8659ns0.d();
        c8659ns0.b("Phase 3");
        k10.a(c8659ns0, a11);
        c8659ns0.d();
        c8659ns0.b("Phase 4");
        z11.a();
        z11.d();
        c8659ns0.d();
        IdentityHashMap identityHashMap = z11.f55804c;
        X x10 = new X(identityHashMap);
        c8659ns0.d();
        if (!z10) {
            new C10933f0(this.f56016a, a12, x10, new C11021x(C6620bf0.f46817i)).a(((C11245i) this.f56016a.f()).d(), this.f56016a.b());
        }
        c8659ns0.b("MinifyFields");
        C11021x a13 = new C11031z(this.f56016a, a10, c10968m0).a(c8659ns0, a11);
        c8659ns0.d();
        c8659ns0.b("non-rebound-references");
        C4798y c4798y3 = this.f56016a;
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap((Map) a13.f56100a);
        a13.f56100a.clear();
        ConcurrentHashMap concurrentHashMap2 = new ConcurrentHashMap(identityHashMap);
        identityHashMap.clear();
        new R5(c4798y3, new C10938g0(concurrentHashMap, c4798y3, concurrentHashMap2)).a(executorService);
        a13.f56100a.putAll(concurrentHashMap);
        identityHashMap.putAll(concurrentHashMap2);
        c8659ns0.d();
        C10933f0 c10933f0 = new C10933f0(this.f56016a, a12, x10, a13);
        if (!z10) {
            c10933f0.a(((C11245i) this.f56016a.f()).d(), this.f56016a.b());
        }
        this.f56016a.H().f50810C.accept(this.f56016a.b(), c10933f0);
        this.f56016a.getClass();
        this.f56016a.f38419l = c10933f0;
    }
}
