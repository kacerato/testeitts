package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Consumer;
import java.util.function.Function;

public class C4875Al0 {
    public static <T> Set<T> a() {
        return ConcurrentHashMap.newKeySet();
    }

    @SafeVarargs
    public static <T> Set<T> b(T... tArr) {
        Set<T> newSetFromMap = Collections.newSetFromMap(new IdentityHashMap(tArr.length));
        Collections.addAll(newSetFromMap, tArr);
        return newSetFromMap;
    }

    public static QC c(Object... objArr) {
        int i10 = QC.f43505c;
        IC ic2 = new IC();
        for (Object obj : objArr) {
            if (obj != null) {
                ic2.a(obj);
            }
        }
        return ic2.a();
    }

    public static Set a(int i10) {
        return ConcurrentHashMap.newKeySet(i10);
    }

    @SafeVarargs
    public static <T> HashSet<T> a(T... tArr) {
        HashSet<T> hashSet = new HashSet<>(tArr.length);
        Collections.addAll(hashSet, tArr);
        return hashSet;
    }

    public static Set b(int i10) {
        return Collections.newSetFromMap(new IdentityHashMap(i10));
    }

    public static Set a(InterfaceC6285Yx interfaceC6285Yx) {
        Set c10 = AbstractC5513Ll0.c();
        Objects.requireNonNull(c10);
        interfaceC6285Yx.forEach(new C4903Az0(c10));
        return c10;
    }

    public static QC b(InterfaceC6285Yx interfaceC6285Yx) {
        int i10 = QC.f43505c;
        final IC ic2 = new IC();
        interfaceC6285Yx.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                IC.this.a(obj);
            }
        });
        return ic2.a();
    }

    public static <T> Set<T> a(Iterable<? extends T> iterable) {
        Set<T> c10 = AbstractC5513Ll0.c();
        Objects.requireNonNull(c10);
        iterable.forEach(new C4903Az0(c10));
        return c10;
    }

    public static <T> Set<T> a(Iterable<T> iterable, Iterable<T> iterable2) {
        Set<T> c10 = AbstractC5513Ll0.c();
        Objects.requireNonNull(c10);
        iterable.forEach(new C4903Az0(c10));
        iterable2.forEach(new C4903Az0(c10));
        return c10;
    }

    public static Set a(Iterable iterable, Set set, Iterable iterable2) {
        Set c10 = AbstractC5513Ll0.c();
        Objects.requireNonNull(c10);
        iterable.forEach(new C4903Az0(c10));
        set.forEach(new C4903Az0(c10));
        iterable2.forEach(new C4903Az0(c10));
        return c10;
    }

    public static <T, S> Set<T> a(Collection<S> collection, Function<S, T> function) {
        Set<T> newSetFromMap = Collections.newSetFromMap(new IdentityHashMap(collection.size()));
        Iterator<S> it = collection.iterator();
        while (it.hasNext()) {
            newSetFromMap.add(function.apply(it.next()));
        }
        return newSetFromMap;
    }

    public static LinkedHashSet a(ArrayList arrayList, Function function) {
        LinkedHashSet linkedHashSet = new LinkedHashSet(arrayList.size());
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            linkedHashSet.add(function.apply(obj));
        }
        return linkedHashSet;
    }
}
