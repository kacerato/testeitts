package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public abstract class AbstractC7945jd {

    public static final boolean f49276c = true;

    public final Map f49277a;

    public final AtomicReference f49278b;

    public AbstractC7945jd(ConcurrentHashMap concurrentHashMap, AbstractC6014Ud abstractC6014Ud) {
        AtomicReference atomicReference = new AtomicReference();
        this.f49278b = atomicReference;
        if (!f49276c && abstractC6014Ud != null && abstractC6014Ud.f44814a != c()) {
            throw new AssertionError();
        }
        this.f49277a = concurrentHashMap == null ? new ConcurrentHashMap() : concurrentHashMap;
        atomicReference.set(abstractC6014Ud);
    }

    public abstract com.android.tools.r8.graph.E0 a(com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.E0 e03);

    public final com.android.tools.r8.graph.E0 a(final com.android.tools.r8.graph.M2 m22) {
        Supplier supplier;
        if (this.f49278b.get() == null) {
            Supplier supplier2 = (Supplier) this.f49277a.get(m22);
            if (supplier2 == null) {
                return null;
            }
            return (com.android.tools.r8.graph.E0) supplier2.get();
        }
        Supplier supplier3 = (Supplier) this.f49277a.get(m22);
        if (supplier3 != null) {
            return (com.android.tools.r8.graph.E0) supplier3.get();
        }
        synchronized (this) {
            supplier = (Supplier) this.f49277a.computeIfAbsent(m22, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return AbstractC7945jd.this.a(m22, (com.android.tools.r8.graph.M2) obj);
                }
            });
        }
        if (supplier == null) {
            return null;
        }
        return (com.android.tools.r8.graph.E0) supplier.get();
    }

    public abstract Supplier a(com.android.tools.r8.graph.E0 e02);

    public final AbstractC8552nC b() {
        if (this.f49278b.get() != null) {
            throw new C5417Jv0("Getting all classes from not fully loaded collection.");
        }
        C8051kC c8051kC = new C8051kC(4);
        for (Map.Entry entry : this.f49277a.entrySet()) {
            c8051kC.a((com.android.tools.r8.graph.M2) entry.getKey(), (com.android.tools.r8.graph.E0) ((Supplier) entry.getValue()).get());
        }
        return c8051kC.b();
    }

    public abstract com.android.tools.r8.graph.V c();

    public String toString() {
        return this.f49277a.size() + " loaded, provider: " + Objects.toString(this.f49278b.get());
    }

    public final Supplier a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        if (this.f49278b.get() == null) {
            return null;
        }
        return new C7780id(this, (AbstractC6014Ud) this.f49278b.get(), m22);
    }

    public final ArrayList a() {
        if (this.f49278b.get() == null) {
            ArrayList arrayList = new ArrayList();
            Iterator it = this.f49277a.values().iterator();
            while (it.hasNext()) {
                com.android.tools.r8.graph.E0 e02 = (com.android.tools.r8.graph.E0) ((Supplier) it.next()).get();
                if (!f49276c && e02 == null) {
                    throw new AssertionError();
                }
                arrayList.add(e02);
            }
            return arrayList;
        }
        throw new C5417Jv0("Getting all classes from not fully loaded collection.");
    }

    public final void a(Predicate predicate) {
        com.android.tools.r8.graph.E0 e02;
        if (this.f49278b.get() == null) {
            return;
        }
        AbstractC6014Ud abstractC6014Ud = (AbstractC6014Ud) this.f49278b.get();
        Set<com.android.tools.r8.graph.M2> c10 = AbstractC5513Ll0.c();
        c10.addAll(this.f49277a.o());
        c10.addAll(abstractC6014Ud.a());
        for (com.android.tools.r8.graph.M2 m22 : c10) {
            if (predicate.test(m22)) {
                a(m22);
            }
        }
        synchronized (this) {
            try {
                if (this.f49278b.get() == null) {
                    return;
                }
                Iterator it = this.f49277a.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    if (c10.contains(entry.getKey()) && (e02 = (com.android.tools.r8.graph.E0) ((Supplier) entry.getValue()).get()) != null) {
                        if (!f49276c && e02.f36245e != entry.getKey()) {
                            throw new AssertionError();
                        }
                        entry.setValue(a(e02));
                    } else {
                        it.remove();
                    }
                }
                this.f49278b.set(null);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
