package com.android.tools.r8.internal;

import java.util.Deque;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiPredicate;
import java.util.function.Predicate;

public abstract class AbstractC5420Jx {

    public static final boolean f41531d = true;

    public final LinkedHashSet f41532a = new LinkedHashSet();

    public final LinkedHashMap f41533b = new LinkedHashMap();

    public boolean f41534c = true;

    public C5362Ix a() {
        return null;
    }

    public abstract void a(AbstractC5361Iw0 abstractC5361Iw0);

    public C5478Kx b() {
        return null;
    }

    public final void c() {
        if (!f41531d && !this.f41533b.o().stream().noneMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return AbstractC5420Jx.this.a((AbstractC5420Jx) obj);
            }
        })) {
            throw new AssertionError();
        }
        this.f41533b.clear();
    }

    public abstract AbstractC5361Iw0 d();

    public abstract com.android.tools.r8.graph.M2 e();

    public boolean f() {
        return false;
    }

    public final boolean g() {
        AbstractC5361Iw0 d10 = d();
        d10.getClass();
        return d10 instanceof C10671zv0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(r rVar, AbstractC5420Jx abstractC5420Jx) {
        ((LinkedHashSet) abstractC5420Jx.f41533b.computeIfAbsent(this, TU.a(new C7905jK0()))).add(rVar);
        this.f41532a.add(abstractC5420Jx);
    }

    public final boolean a(AbstractC5420Jx abstractC5420Jx) {
        return abstractC5420Jx.f41532a.contains(this);
    }

    public final void a(BiConsumer biConsumer) {
        this.f41533b.forEach(biConsumer);
    }

    public final void a(final BiPredicate biPredicate) {
        this.f41533b.entrySet().removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean test;
                test = BiPredicate.this.test((AbstractC5420Jx) r2.getKey(), (Set) ((Map.Entry) obj).getValue());
                return test;
            }
        });
    }

    public final void a(Deque deque) {
        if (this.f41534c || this.f41533b.isEmpty()) {
            return;
        }
        deque.add(this);
        this.f41534c = true;
    }
}
