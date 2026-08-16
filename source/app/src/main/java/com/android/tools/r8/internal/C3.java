package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;

public final class C3 {

    public final C4798y f39110a;

    public final C4387c4 f39111b;

    public final IdentityHashMap f39112c;

    public final C5212Gg f39113d;

    public C3(C4798y c4798y, C4387c4 c4387c4, IdentityHashMap identityHashMap) {
        this.f39110a = c4798y;
        this.f39111b = c4387c4;
        this.f39112c = identityHashMap;
        this.f39113d = new C5212Gg(c4798y);
    }

    public final C9693u3 a(ArrayList arrayList, final Consumer consumer, ExecutorService executorService, C8659ns0 c8659ns0) {
        c8659ns0.b("Optimize components");
        C4798y c4798y = this.f39110a;
        final F3 f32 = E3.f39740a;
        M70 b10 = M70.b(c4798y);
        b10.getClass();
        if (!(b10 instanceof C6520b10)) {
            f32 = new O70(b10.a());
        }
        final C5093Ef k10 = this.f39110a.k();
        ArrayList a10 = C5467Kr0.a(arrayList, new InterfaceC6217Xr0() {
            @Override
            public final Object apply(Object obj) {
                return C3.this.a(f32, k10, consumer, (Set) obj);
            }
        }, this.f39110a.E().G(), executorService);
        f32.a(this.f39110a);
        c8659ns0.d();
        c8659ns0.b("Build graph lens");
        C4798y c4798y2 = this.f39110a;
        boolean z10 = C9693u3.f52773o;
        final C9526t3 c9526t3 = new C9526t3(c4798y2);
        a10.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9526t3.this.a((C9526t3) obj);
            }
        });
        C9693u3 c9693u3 = null;
        if (!c9526t3.f52509b.f51964b.isEmpty() || !c9526t3.f52510c.f51964b.isEmpty() || !c9526t3.f52511d.isEmpty()) {
            C9693u3 c9693u32 = new C9693u3(c9526t3.f52508a, c9526t3.f52509b, c9526t3.f52510c, c9526t3.f52511d);
            for (Map.Entry entry : c9526t3.f52511d.entrySet()) {
                com.android.tools.r8.graph.proto.j jVar = (com.android.tools.r8.graph.proto.j) entry.getValue();
                C4798y c4798y3 = c9526t3.f52508a;
                AbstractC5308Hz abstractC5308Hz = c9693u32.f43777d;
                com.android.tools.r8.graph.proto.c a11 = jVar.f37623b.a(c4798y3, c9693u32, abstractC5308Hz);
                com.android.tools.r8.graph.proto.k a12 = jVar.b() ? jVar.f37624c.a(c4798y3, c9693u32, abstractC5308Hz) : null;
                com.android.tools.r8.graph.proto.j jVar2 = (a11 == jVar.f37623b && a12 == jVar.f37624c) ? jVar : new com.android.tools.r8.graph.proto.j(jVar.f37622a, a12, a11);
                if (jVar2 != jVar) {
                    entry.setValue(jVar2);
                }
            }
            c9693u3 = c9693u32;
        }
        c8659ns0.d();
        return c9693u3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C9526t3 a(F3 f32, C5093Ef c5093Ef, Consumer consumer, Set set) {
        return new B3(this, f32, c5093Ef).a(set, (C5058Dq) this.f39112c.getOrDefault(set, C5058Dq.f39660c), consumer);
    }
}
