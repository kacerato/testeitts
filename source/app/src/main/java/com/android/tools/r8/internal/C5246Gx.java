package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Supplier;

public final class C5246Gx extends AbstractC7701i6 implements InterfaceC5825Qx {

    public final LinkedHashMap f40628b;

    public final LinkedHashMap f40629c;

    public C5246Gx(LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2) {
        this.f40628b = linkedHashMap;
        this.f40629c = linkedHashMap2;
    }

    @Override
    public final Set a(Object obj) {
        return a((AbstractC5420Jx) obj, new C6286Yx0(new LinkedHashSet()));
    }

    public final void b(Consumer consumer) {
        this.f40628b.values().forEach(consumer);
    }

    public final void c(final Consumer consumer) {
        this.f40629c.values().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((SG) obj).values().forEach(Consumer.this);
            }
        });
    }

    public C5246Gx(LinkedHashSet linkedHashSet) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        this.f40628b = linkedHashMap;
        this.f40629c = linkedHashMap2;
        Iterator<E> it = linkedHashSet.iterator();
        while (it.hasNext()) {
            AbstractC5420Jx abstractC5420Jx = (AbstractC5420Jx) it.next();
            abstractC5420Jx.getClass();
            if (abstractC5420Jx instanceof C5362Ix) {
                C5362Ix a10 = abstractC5420Jx.a();
                this.f40628b.put(a10.f41254e.getReference(), a10);
            } else {
                C5478Kx b10 = abstractC5420Jx.b();
                ((SG) this.f40629c.computeIfAbsent(b10.f41831e.getReference(), TU.a(new C6565bG0()))).a(b10.f41833g, b10);
            }
        }
    }

    @Override
    public final void a(Consumer consumer, Object obj) {
        AbstractC5420Jx abstractC5420Jx = (AbstractC5420Jx) obj;
        abstractC5420Jx.f41532a.forEach(consumer);
        abstractC5420Jx.f41533b.o().forEach(consumer);
    }

    @Override
    public final void a(final Consumer consumer) {
        this.f40628b.values().forEach(consumer);
        this.f40629c.values().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((SG) obj).values().forEach(Consumer.this);
            }
        });
    }

    @Override
    public final AbstractC5361Iw0 a(C4554l1 c4554l1) {
        return ((C5362Ix) this.f40628b.get(c4554l1)).f41255f;
    }

    @Override
    public final AbstractC5361Iw0 a(C6431aX c6431aX, Supplier supplier) {
        C5478Kx c5478Kx = (C5478Kx) ((SG) this.f40629c.getOrDefault(c6431aX.f46550a, UG.f44715a)).get(c6431aX.f46551b);
        if (c5478Kx != null) {
            return c5478Kx.d();
        }
        return (AbstractC5361Iw0) supplier.get();
    }
}
