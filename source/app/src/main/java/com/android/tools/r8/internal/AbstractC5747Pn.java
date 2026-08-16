package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Stream;

public abstract class AbstractC5747Pn implements InterfaceC7033e6, Map {

    public final Map f43368b;

    public AbstractC5747Pn(Supplier supplier) {
        this.f43368b = (Map) supplier.get();
    }

    public final Object a(final com.android.tools.r8.graph.G0 g02, final BiFunction biFunction) {
        return this.f43368b.compute(b(g02), new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                Object apply;
                apply = BiFunction.this.apply(g02, obj2);
                return apply;
            }
        });
    }

    public abstract C7333fv b(com.android.tools.r8.graph.G0 g02);

    public final void b(Consumer consumer) {
        this.f43368b.values().forEach(consumer);
    }

    @Override
    public final void clear() {
        this.f43368b.clear();
    }

    @Override
    public final boolean containsKey(Object obj) {
        return this.f43368b.containsKey(b((com.android.tools.r8.graph.G0) obj));
    }

    @Override
    public final boolean containsValue(Object obj) {
        throw new C6501av0();
    }

    public final ArrayList e() {
        final ArrayList arrayList = new ArrayList(this.f43368b.size());
        this.f43368b.o().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC5747Pn.a(List.this, (C7333fv) obj);
            }
        });
        return arrayList;
    }

    @Override
    public final Set entrySet() {
        throw new C6501av0();
    }

    @Override
    public final void forEach(final BiConsumer biConsumer) {
        this.f43368b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                AbstractC5747Pn.a(BiConsumer.this, (C7333fv) obj, obj2);
            }
        });
    }

    @Override
    public final Object get(Object obj) {
        return this.f43368b.get(b((com.android.tools.r8.graph.G0) obj));
    }

    @Override
    public final Object getOrDefault(Object obj, Object obj2) {
        return this.f43368b.getOrDefault(b((com.android.tools.r8.graph.G0) obj), obj2);
    }

    public final ArrayList i() {
        return AT.a((Collection) e(), new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int b10;
                b10 = ((com.android.tools.r8.graph.G0) obj).getReference().b((com.android.tools.r8.graph.J2) ((com.android.tools.r8.graph.G0) obj2).getReference());
                return b10;
            }
        });
    }

    @Override
    public final boolean isEmpty() {
        return this.f43368b.isEmpty();
    }

    public final Stream j() {
        return this.f43368b.o().stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return (com.android.tools.r8.graph.G0) ((C7333fv) obj).a();
            }
        });
    }

    @Override
    public final Set o() {
        throw new C6501av0();
    }

    @Override
    public final Object put(Object obj, Object obj2) {
        return this.f43368b.put(b((com.android.tools.r8.graph.G0) obj), obj2);
    }

    @Override
    public final void putAll(Map map) {
        throw new C6501av0();
    }

    @Override
    public final Object remove(Object obj) {
        return this.f43368b.remove(b((com.android.tools.r8.graph.G0) obj));
    }

    @Override
    public final int size() {
        return this.f43368b.size();
    }

    @Override
    public final Collection values() {
        return this.f43368b.values();
    }

    public final Object b(com.android.tools.r8.graph.G0 g02, Object obj) {
        return this.f43368b.put(b(g02), obj);
    }

    public AbstractC5747Pn(HashMap hashMap) {
        this.f43368b = hashMap;
    }

    public final Object a(final Function function, C7333fv c7333fv) {
        return this.f43368b.computeIfAbsent(c7333fv, new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC5747Pn.b(Function.this, (C7333fv) obj);
            }
        });
    }

    public static Object b(Function function, C7333fv c7333fv) {
        return function.apply((com.android.tools.r8.graph.G0) c7333fv.f48136c);
    }

    public final void a(final Consumer consumer) {
        this.f43368b.o().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC5747Pn.a(Consumer.this, (C7333fv) obj);
            }
        });
    }

    public final Object a(com.android.tools.r8.graph.G0 g02) {
        return this.f43368b.get(b(g02));
    }

    public final Object a(com.android.tools.r8.graph.G0 g02, Object obj) {
        return this.f43368b.getOrDefault(b(g02), obj);
    }

    public final Object a(com.android.tools.r8.graph.H5 h52, Supplier supplier) {
        Object obj = this.f43368b.get(b(h52));
        return obj != null ? obj : supplier.get();
    }

    public final boolean a(final BiPredicate biPredicate) {
        return this.f43368b.entrySet().removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return AbstractC5747Pn.a(BiPredicate.this, (Map.Entry) obj);
            }
        });
    }

    public static boolean a(BiPredicate biPredicate, Map.Entry entry) {
        return biPredicate.test((com.android.tools.r8.graph.G0) ((C7333fv) entry.getKey()).f48136c, entry.getValue());
    }

    public final void a(final InterfaceC7662ht0 interfaceC7662ht0) {
        this.f43368b.entrySet().removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return AbstractC5747Pn.a(InterfaceC7662ht0.this, (Map.Entry) obj);
            }
        });
    }

    public static boolean a(InterfaceC7662ht0 interfaceC7662ht0, Map.Entry entry) {
        return interfaceC7662ht0.a((com.android.tools.r8.graph.G0) ((C7333fv) entry.getKey()).f48136c, entry.getValue(), entry);
    }

    public final AbstractC6333Zs0 a(BiFunction biFunction) {
        for (Map.Entry entry : this.f43368b.entrySet()) {
            AbstractC6333Zs0 abstractC6333Zs0 = (AbstractC6333Zs0) biFunction.apply((com.android.tools.r8.graph.G0) ((C7333fv) entry.getKey()).f48136c, entry.getValue());
            if (abstractC6333Zs0.c()) {
                return abstractC6333Zs0;
            }
        }
        return C6276Ys0.f46097c;
    }

    public static void a(BiConsumer biConsumer, C7333fv c7333fv, Object obj) {
        biConsumer.accept(c7333fv.f48136c, obj);
    }

    public static void a(Consumer consumer, C7333fv c7333fv) {
        consumer.accept((com.android.tools.r8.graph.G0) c7333fv.f48136c);
    }

    public static void a(List list, C7333fv c7333fv) {
        list.add((com.android.tools.r8.graph.G0) c7333fv.f48136c);
    }
}
