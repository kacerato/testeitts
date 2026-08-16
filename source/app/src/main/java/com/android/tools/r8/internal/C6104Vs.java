package com.android.tools.r8.internal;

import ei.C13155a;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public class C6104Vs<T> {

    public static final boolean f45193b = true;

    public final HashMap f45194a = new HashMap();

    /* JADX WARN: Multi-variable type inference failed */
    public Set<T> a(T t10) {
        Object b10 = b(t10);
        if (b10 == null) {
            return null;
        }
        HashSet hashSet = new HashSet();
        for (Object obj : this.f45194a.o()) {
            if (b(obj).equals(b10)) {
                hashSet.add(obj);
            }
        }
        return hashSet;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T b(T t10) {
        T t11 = (T) this.f45194a.get(t10);
        if (t11 == null) {
            return null;
        }
        Object obj = this.f45194a.get(t11);
        if (t11 == obj) {
            return t11;
        }
        T t12 = (T) b(obj);
        this.f45194a.put(t10, t12);
        return t12;
    }

    public boolean c(T t10) {
        T b10 = b(t10);
        return b10 == null || b10.equals(t10);
    }

    public T d(T t10) {
        boolean z10 = f45193b;
        if (!z10 && this.f45194a.containsKey(t10)) {
            throw new AssertionError();
        }
        this.f45194a.put(t10, t10);
        if (z10 || b(t10) == t10) {
            return t10;
        }
        throw new AssertionError();
    }

    public final String toString() {
        Map<T, Set<T>> a10 = a();
        final StringBuilder sb2 = new StringBuilder();
        sb2.append("Number of sets: ");
        sb2.append(a10.o().size());
        sb2.append(System.lineSeparator());
        a10.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C6104Vs.a(StringBuilder.this, obj, (Set) obj2);
            }
        });
        return sb2.toString();
    }

    public T a(T t10, T t11) {
        boolean z10 = f45193b;
        if (!z10 && t10 == null) {
            throw new AssertionError();
        }
        if (!z10 && t11 == null) {
            throw new AssertionError();
        }
        if (t10 != t11) {
            if (!z10 && this.f45194a.get(t10) != t10) {
                throw new AssertionError();
            }
            if (!z10 && this.f45194a.get(t11) != t11) {
                throw new AssertionError();
            }
            this.f45194a.put(t11, t10);
            if (!z10 && b(t10) != t10) {
                throw new AssertionError();
            }
            if (!z10 && b(t11) != t10) {
                throw new AssertionError();
            }
        }
        return t10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Map<T, Set<T>> a() {
        final HashMap hashMap = new HashMap();
        BiConsumer biConsumer = new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ((Set) Map.this.computeIfAbsent(obj, TU.a(new C10604zY0()))).add(obj2);
            }
        };
        for (Object obj : this.f45194a.o()) {
            biConsumer.accept(b(obj), obj);
        }
        return hashMap;
    }

    public static void a(final StringBuilder sb2, Object obj, Set set) {
        sb2.append("Representative: ");
        sb2.append(obj);
        sb2.append(System.lineSeparator());
        set.forEach(new Consumer() {
            @Override
            public final void accept(Object obj2) {
                C6104Vs.a(StringBuilder.this, obj2);
            }
        });
    }

    public static void a(StringBuilder sb2, Object obj) {
        sb2.append(C13155a.f85806a);
        sb2.append(obj);
        sb2.append(System.lineSeparator());
    }
}
