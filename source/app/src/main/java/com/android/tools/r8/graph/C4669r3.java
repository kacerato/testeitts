package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC6333Zs0;
import com.android.tools.r8.internal.C6276Ys0;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C4669r3 {

    public static final boolean f37698c = true;

    public final E0 f37699a;

    public final AbstractC4688s3 f37700b;

    public C4669r3(E0 e02, AbstractC4688s3 abstractC4688s3) {
        this.f37699a = e02;
        this.f37700b = abstractC4688s3;
    }

    public final void a(final Consumer consumer) {
        this.f37700b.a(this.f37699a, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C4669r3.a(Consumer.this, (F0) obj);
            }
        });
    }

    public final void b(F0 f02) {
        boolean z10 = f37698c;
        if (z10 || z10) {
            return;
        }
        a(f02.d());
    }

    public final void c() {
        a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4669r3.this.b((F0) obj);
            }
        });
        if (f37698c) {
            return;
        }
        this.f37700b.h();
    }

    public static AbstractC6333Zs0 a(Consumer consumer, F0 f02) {
        consumer.accept(f02);
        return C6276Ys0.f46097c;
    }

    public final boolean b() {
        return this.f37700b.a(this.f37699a, new Function() {
            @Override
            public final Object apply(Object obj) {
                AbstractC6333Zs0 a10;
                a10 = AbstractC6333Zs0.a(((F0) obj).d().q0());
                return a10;
            }
        }).c();
    }

    public final void a(C4460g1 c4460g1) {
        if (f37698c || c4460g1.B0() == this.f37699a.f36245e) {
            return;
        }
        throw new AssertionError((Object) ("Expected field `" + c4460g1.getReference().j0() + "` to have holder `" + this.f37699a.f36245e.j0() + "`"));
    }

    public final ArrayList a() {
        final ArrayList arrayList = new ArrayList(this.f37700b.f());
        a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                List.this.add(((F0) obj).d());
            }
        });
        arrayList.sort(Comparator.comparing(new C4585md()));
        return arrayList;
    }
}
