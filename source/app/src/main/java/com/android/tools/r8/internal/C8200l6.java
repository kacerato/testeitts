package com.android.tools.r8.internal;

import java.util.AbstractMap;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;

public class C8200l6 implements TY {

    public static final boolean f49889d = true;

    public final AbstractMap f49890b;

    public final AbstractMap f49891c;

    public C8200l6(AbstractMap abstractMap, AbstractMap abstractMap2) {
        this.f49890b = abstractMap;
        this.f49891c = abstractMap2;
    }

    @Override
    public final void a(final BiConsumer biConsumer) {
        this.f49891c.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                BiConsumer.this.accept((Set) obj2, obj);
            }
        });
    }

    public final void b(BiConsumer biConsumer) {
        this.f49890b.forEach(biConsumer);
    }

    @Override
    public final boolean containsKey(Object obj) {
        return this.f49890b.containsKey(obj);
    }

    @Override
    public final boolean containsValue(Object obj) {
        return this.f49891c.containsKey(obj);
    }

    @Override
    public final Set d(Object obj) {
        return (Set) this.f49891c.getOrDefault(obj, Collections.EMPTY_SET);
    }

    @Override
    public final Map e() {
        return this.f49890b;
    }

    public Object f(Object obj) {
        Object remove = this.f49890b.remove(obj);
        if (remove != null) {
            Set set = (Set) this.f49891c.get(remove);
            set.remove(obj);
            if (set.isEmpty()) {
                this.f49891c.remove(remove);
            }
        }
        return remove;
    }

    @Override
    public final Object get(Object obj) {
        return this.f49890b.get(obj);
    }

    @Override
    public final Object getOrDefault(Object obj, Object obj2) {
        return this.f49890b.getOrDefault(obj, obj2);
    }

    @Override
    public final boolean isEmpty() {
        return this.f49890b.isEmpty();
    }

    @Override
    public final Set keySet() {
        return this.f49890b.o();
    }

    @Override
    public final Object a(Object obj, Object obj2) {
        Object f10 = f(obj);
        this.f49890b.put(obj, obj2);
        ((Set) this.f49891c.computeIfAbsent(obj2, new Function() {
            @Override
            public final Object apply(Object obj3) {
                return C8200l6.e(obj3);
            }
        })).add(obj);
        return f10;
    }

    @Override
    public final Set mo743values() {
        return this.f49891c.o();
    }

    public static Set e(Object obj) {
        return new LinkedHashSet();
    }

    public final void b(Set set) {
        set.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8200l6.this.f(obj);
            }
        });
    }

    @Override
    public Set a(Object obj) {
        Set set = (Set) this.f49891c.remove(obj);
        if (set == null) {
            return Collections.EMPTY_SET;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            Object remove = this.f49890b.remove(it.next());
            if (!f49889d && remove != obj) {
                throw new AssertionError();
            }
        }
        return set;
    }

    @Override
    public final void a(Iterable iterable, final Object obj) {
        iterable.forEach(new Consumer() {
            @Override
            public final void accept(Object obj2) {
                C8200l6.this.a(obj, obj2);
            }
        });
    }
}
