package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC8374m80;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C8040k80;
import com.android.tools.r8.internal.C8207l80;
import com.android.tools.r8.internal.TU;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C4344a extends AbstractC4401d {

    public static final boolean f37033b = true;

    public final Map f37034a;

    public C4344a() {
        this.f37034a = new IdentityHashMap();
    }

    @Override
    public final C4344a a() {
        return this;
    }

    @Override
    public final int b() {
        if (this.f37034a.size() == 1) {
            return ((AbstractC8374m80) this.f37034a.values().iterator().next()).f45165b.size();
        }
        throw new C5417Jv0("Should only be querying the number of access contexts after flattening");
    }

    @Override
    public final boolean c() {
        return this.f37034a.isEmpty();
    }

    public static void a(C4554l1 c4554l1, AbstractC8374m80 abstractC8374m80, C4554l1 c4554l12, AbstractC8374m80 abstractC8374m802) {
        if (c4554l12 != c4554l1) {
            abstractC8374m80.f45165b.putAll(abstractC8374m802.f45165b);
        }
    }

    public C4344a(Map map) {
        this.f37034a = map;
    }

    public final void a(final Consumer consumer, final Predicate predicate) {
        Map map = this.f37034a;
        if (map != null) {
            map.forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    C4344a.a(Predicate.this, consumer, (C4554l1) obj, (AbstractC8374m80) obj2);
                }
            });
        }
    }

    public static void a(Predicate predicate, Consumer consumer, C4554l1 c4554l1, AbstractC8374m80 abstractC8374m80) {
        if (predicate.test(c4554l1)) {
            consumer.accept(c4554l1);
        }
    }

    @Override
    public final boolean b(Predicate predicate) {
        Iterator it = this.f37034a.values().iterator();
        while (it.hasNext()) {
            Iterator it2 = ((AbstractC8374m80) it.next()).f45165b.values().iterator();
            while (it2.hasNext()) {
                if (!predicate.test((H5) it2.next())) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override
    public final void a(Consumer consumer) {
        AbstractC8374m80 c10 = AbstractC8374m80.c();
        Map map = this.f37034a;
        if (map != null) {
            Iterator it = map.values().iterator();
            while (it.hasNext()) {
                for (H5 h52 : ((AbstractC8374m80) it.next()).f45165b.values()) {
                    if (c10.add((AbstractC8374m80) h52)) {
                        consumer.accept(h52);
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final C4344a a(InterfaceC4403d1 interfaceC4403d1, AbstractC5308Hz abstractC5308Hz) {
        final IdentityHashMap identityHashMap = null;
        for (Map.Entry entry : this.f37034a.entrySet()) {
            C4554l1 c4554l1 = (C4554l1) entry.getKey();
            C4554l1 e10 = abstractC5308Hz.e((AbstractC5308Hz) null, c4554l1);
            AbstractC8374m80 abstractC8374m80 = (AbstractC8374m80) entry.getValue();
            AbstractC8374m80 a10 = abstractC8374m80.a(interfaceC4403d1, abstractC5308Hz);
            if (e10 == c4554l1 && a10 == abstractC8374m80) {
                if (identityHashMap == null) {
                }
            } else if (identityHashMap == null) {
                identityHashMap = new IdentityHashMap(this.f37034a.size());
                TU.a(this.f37034a, new BiConsumer() {
                    @Override
                    public final void accept(Object obj, Object obj2) {
                        Map.this.put((C4554l1) obj, (AbstractC8374m80) obj2);
                    }
                }, (Object) c4554l1);
            }
            AbstractC8374m80 abstractC8374m802 = (AbstractC8374m80) identityHashMap.put(e10, a10);
            if (abstractC8374m802 != null) {
                if (abstractC8374m802.f45165b.size() <= a10.f45165b.size()) {
                    a10.f45165b.putAll(abstractC8374m802.f45165b);
                } else {
                    identityHashMap.put(e10, abstractC8374m802);
                    abstractC8374m802.f45165b.putAll(a10.f45165b);
                }
            }
        }
        return identityHashMap != null ? new C4344a(TU.a(identityHashMap, this.f37034a.size())) : this;
    }

    @Override
    public final void a(final C4554l1 c4554l1) {
        Map map = this.f37034a;
        if (map != null) {
            final AbstractC8374m80 abstractC8374m80 = (AbstractC8374m80) map.computeIfAbsent(c4554l1, new Function() {
                @Override
                public final Object apply(Object obj) {
                    AbstractC8374m80 c10;
                    c10 = AbstractC8374m80.c();
                    return c10;
                }
            });
            this.f37034a.forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    C4344a.a(C4554l1.this, abstractC8374m80, (C4554l1) obj, (AbstractC8374m80) obj2);
                }
            });
            this.f37034a.clear();
            if (!abstractC8374m80.f45165b.isEmpty()) {
                this.f37034a.put(c4554l1, abstractC8374m80);
            }
            if (!f37033b && this.f37034a.size() > 1) {
                throw new AssertionError();
            }
        }
    }

    @Override
    public final boolean a(Predicate predicate) {
        Iterator it = this.f37034a.values().iterator();
        while (it.hasNext()) {
            Iterator it2 = ((AbstractC8374m80) it.next()).f45165b.values().iterator();
            while (it2.hasNext()) {
                if (predicate.test((H5) it2.next())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public final boolean a(C4516j1 c4516j1) {
        Iterator it = this.f37034a.values().iterator();
        while (it.hasNext()) {
            Iterator it2 = ((AbstractC8374m80) it.next()).f45165b.values().iterator();
            while (it2.hasNext()) {
                if (((H5) it2.next()).d() != c4516j1) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void b(Map map, C4554l1 c4554l1, AbstractC8374m80 abstractC8374m80) {
        ((AbstractC8374m80) map.computeIfAbsent(c4554l1, new Function() {
            @Override
            public final Object apply(Object obj) {
                AbstractC8374m80 c10;
                c10 = AbstractC8374m80.c();
                return c10;
            }
        })).f45165b.putAll(abstractC8374m80.f45165b);
    }

    public final boolean a(C4554l1 c4554l1, H5 h52) {
        return ((AbstractC8374m80) this.f37034a.computeIfAbsent(c4554l1, new Function() {
            @Override
            public final Object apply(Object obj) {
                AbstractC8374m80 c10;
                c10 = AbstractC8374m80.c();
                return c10;
            }
        })).add((AbstractC8374m80) h52);
    }

    @Override
    public final AbstractC4401d a(AbstractC4401d abstractC4401d) {
        if (abstractC4401d.c()) {
            return this;
        }
        if (abstractC4401d instanceof C4382c) {
            return abstractC4401d;
        }
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        this.f37034a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C4344a.a(Map.this, (C4554l1) obj, (AbstractC8374m80) obj2);
            }
        });
        abstractC4401d.a().f37034a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C4344a.b(Map.this, (C4554l1) obj, (AbstractC8374m80) obj2);
            }
        });
        return new C4344a(identityHashMap);
    }

    public static void a(Map map, C4554l1 c4554l1, AbstractC8374m80 abstractC8374m80) {
        C8040k80 c8040k80 = AbstractC8374m80.f50207d;
        C8207l80 c8207l80 = new C8207l80(abstractC8374m80.size());
        c8207l80.addAll(abstractC8374m80);
        map.put(c4554l1, c8207l80);
    }

    @Override
    public final AbstractC4401d a(O5 o52) {
        for (AbstractC8374m80 abstractC8374m80 : this.f37034a.values()) {
            Iterator it = abstractC8374m80.f45165b.values().iterator();
            AbstractC8374m80 abstractC8374m802 = null;
            while (it.hasNext()) {
                A2 reference = ((H5) it.next()).getReference();
                if (o52.a(reference)) {
                    it.remove();
                    if (o52.f36680c.containsKey(reference)) {
                        if (abstractC8374m802 == null) {
                            abstractC8374m802 = AbstractC8374m80.c();
                        }
                        Objects.requireNonNull(abstractC8374m802);
                        o52.a(reference, new C4735uc(abstractC8374m802));
                    }
                }
            }
            if (abstractC8374m802 != null) {
                abstractC8374m80.f45165b.putAll(abstractC8374m802.f45165b);
            }
        }
        return this;
    }
}
