package pf;

import Xf.InterfaceC3312m;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;
import org.jetbrains.annotations.NotNull;

@kotlin.jvm.internal.t0({"SMAP\n_Sets.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Sets.kt\nkotlin/collections/SetsKt___SetsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,141:1\n873#2,2:142\n862#2,2:144\n1#3:146\n*S KotlinDebug\n*F\n+ 1 _Sets.kt\nkotlin/collections/SetsKt___SetsKt\n*L\n30#1:142,2\n54#1:144,2\n*E\n"})
public class A0 extends z0 {
    @NotNull
    public static final <T> Set<T> A(@NotNull Set<? extends T> set, @NotNull T[] elements) {
        kotlin.jvm.internal.M.p(set, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        LinkedHashSet linkedHashSet = new LinkedHashSet(set);
        M.M0(linkedHashSet, elements);
        return linkedHashSet;
    }

    @Ef.f
    public static final <T> Set<T> B(Set<? extends T> set, T t10) {
        kotlin.jvm.internal.M.p(set, "<this>");
        return z(set, t10);
    }

    @NotNull
    public static final <T> Set<T> C(@NotNull Set<? extends T> set, @NotNull InterfaceC3312m<? extends T> elements) {
        kotlin.jvm.internal.M.p(set, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        LinkedHashSet linkedHashSet = new LinkedHashSet(n0.j(set.size() * 2));
        linkedHashSet.addAll(set);
        M.s0(linkedHashSet, elements);
        return linkedHashSet;
    }

    @NotNull
    public static <T> Set<T> D(@NotNull Set<? extends T> set, @NotNull Iterable<? extends T> elements) {
        int size;
        kotlin.jvm.internal.M.p(set, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        Integer e02 = I.e0(elements);
        if (e02 != null) {
            size = set.size() + e02.intValue();
        } else {
            size = set.size() * 2;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(n0.j(size));
        linkedHashSet.addAll(set);
        M.t0(linkedHashSet, elements);
        return linkedHashSet;
    }

    @NotNull
    public static final <T> Set<T> E(@NotNull Set<? extends T> set, T t10) {
        kotlin.jvm.internal.M.p(set, "<this>");
        LinkedHashSet linkedHashSet = new LinkedHashSet(n0.j(set.size() + 1));
        linkedHashSet.addAll(set);
        linkedHashSet.add(t10);
        return linkedHashSet;
    }

    @NotNull
    public static final <T> Set<T> F(@NotNull Set<? extends T> set, @NotNull T[] elements) {
        kotlin.jvm.internal.M.p(set, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        LinkedHashSet linkedHashSet = new LinkedHashSet(n0.j(set.size() + elements.length));
        linkedHashSet.addAll(set);
        M.u0(linkedHashSet, elements);
        return linkedHashSet;
    }

    @Ef.f
    public static final <T> Set<T> G(Set<? extends T> set, T t10) {
        kotlin.jvm.internal.M.p(set, "<this>");
        return E(set, t10);
    }

    @NotNull
    public static final <T> Set<T> x(@NotNull Set<? extends T> set, @NotNull InterfaceC3312m<? extends T> elements) {
        kotlin.jvm.internal.M.p(set, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        LinkedHashSet linkedHashSet = new LinkedHashSet(set);
        M.J0(linkedHashSet, elements);
        return linkedHashSet;
    }

    @NotNull
    public static final <T> Set<T> y(@NotNull Set<? extends T> set, @NotNull Iterable<? extends T> elements) {
        kotlin.jvm.internal.M.p(set, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        Collection<?> v02 = M.v0(elements);
        if (v02.isEmpty()) {
            return S.f6(set);
        }
        if (!(v02 instanceof Set)) {
            LinkedHashSet linkedHashSet = new LinkedHashSet(set);
            linkedHashSet.removeAll(v02);
            return linkedHashSet;
        }
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        for (T t10 : set) {
            if (!((Set) v02).contains(t10)) {
                linkedHashSet2.add(t10);
            }
        }
        return linkedHashSet2;
    }

    @NotNull
    public static final <T> Set<T> z(@NotNull Set<? extends T> set, T t10) {
        kotlin.jvm.internal.M.p(set, "<this>");
        LinkedHashSet linkedHashSet = new LinkedHashSet(n0.j(set.size()));
        boolean z10 = false;
        for (T t11 : set) {
            boolean z11 = true;
            if (!z10 && kotlin.jvm.internal.M.g(t11, t10)) {
                z10 = true;
                z11 = false;
            }
            if (z11) {
                linkedHashSet.add(t11);
            }
        }
        return linkedHashSet;
    }
}
