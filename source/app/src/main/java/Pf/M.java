package pf;

import Xf.InterfaceC3312m;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import nf.EnumC14431q;
import nf.InterfaceC14394D;
import nf.InterfaceC14412g0;
import nf.InterfaceC14422l0;
import nf.InterfaceC14427o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class M extends L {
    @Ef.f
    public static final <T> void A0(Collection<? super T> collection, T t10) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        collection.remove(t10);
    }

    @Ef.f
    public static final <T> void B0(Collection<? super T> collection, T[] elements) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        M0(collection, elements);
    }

    @Ef.f
    public static final <T> void C0(Collection<? super T> collection, InterfaceC3312m<? extends T> elements) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        s0(collection, elements);
    }

    @Ef.f
    public static final <T> void D0(Collection<? super T> collection, Iterable<? extends T> elements) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        t0(collection, elements);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    public static final <T> void E0(Collection<? super T> collection, T t10) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        collection.add(t10);
    }

    @Ef.f
    public static final <T> void F0(Collection<? super T> collection, T[] elements) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        u0(collection, elements);
    }

    @Ef.f
    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Use removeAt(index) instead.", replaceWith = @InterfaceC14412g0(expression = "removeAt(index)", imports = {}))
    public static final <T> T G0(List<T> list, int i10) {
        kotlin.jvm.internal.M.p(list, "<this>");
        return list.remove(i10);
    }

    @Ef.f
    @InterfaceC14394D
    public static final <T> boolean H0(Collection<? extends T> collection, T t10) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        return kotlin.jvm.internal.w0.a(collection).remove(t10);
    }

    @InterfaceC14394D
    public static final <T> boolean I0(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        return w0(iterable, predicate, true);
    }

    @InterfaceC14394D
    public static final <T> boolean J0(@NotNull Collection<? super T> collection, @NotNull InterfaceC3312m<? extends T> elements) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        List I32 = Xf.K.I3(elements);
        return !I32.isEmpty() && collection.removeAll(I32);
    }

    @InterfaceC14394D
    public static final <T> boolean K0(@NotNull Collection<? super T> collection, @NotNull Iterable<? extends T> elements) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        return collection.removeAll(v0(elements));
    }

    @Ef.f
    @InterfaceC14394D
    public static final <T> boolean L0(Collection<? extends T> collection, Collection<? extends T> elements) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        return kotlin.jvm.internal.w0.a(collection).removeAll(elements);
    }

    @InterfaceC14394D
    public static final <T> boolean M0(@NotNull Collection<? super T> collection, @NotNull T[] elements) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        return !(elements.length == 0) && collection.removeAll(C14985q.t(elements));
    }

    @InterfaceC14394D
    public static final <T> boolean N0(@NotNull List<T> list, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(list, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        return x0(list, predicate, true);
    }

    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <T> T O0(@NotNull List<T> list) {
        kotlin.jvm.internal.M.p(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.remove(0);
    }

    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <T> T P0(@NotNull List<T> list) {
        kotlin.jvm.internal.M.p(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.remove(0);
    }

    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static <T> T Q0(@NotNull List<T> list) {
        kotlin.jvm.internal.M.p(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.remove(H.L(list));
    }

    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <T> T R0(@NotNull List<T> list) {
        kotlin.jvm.internal.M.p(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.remove(H.L(list));
    }

    @InterfaceC14394D
    public static <T> boolean S0(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        return w0(iterable, predicate, false);
    }

    @InterfaceC14394D
    public static final <T> boolean T0(@NotNull Collection<? super T> collection, @NotNull InterfaceC3312m<? extends T> elements) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        List I32 = Xf.K.I3(elements);
        return !I32.isEmpty() ? collection.retainAll(I32) : Y0(collection);
    }

    @InterfaceC14394D
    public static final <T> boolean U0(@NotNull Collection<? super T> collection, @NotNull Iterable<? extends T> elements) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        return collection.retainAll(v0(elements));
    }

    @Ef.f
    @InterfaceC14394D
    public static final <T> boolean V0(Collection<? extends T> collection, Collection<? extends T> elements) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        return kotlin.jvm.internal.w0.a(collection).retainAll(elements);
    }

    @InterfaceC14394D
    public static final <T> boolean W0(@NotNull Collection<? super T> collection, @NotNull T[] elements) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        return !(elements.length == 0) ? collection.retainAll(C14985q.t(elements)) : Y0(collection);
    }

    @InterfaceC14394D
    public static final <T> boolean X0(@NotNull List<T> list, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(list, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        return x0(list, predicate, false);
    }

    @InterfaceC14394D
    public static final boolean Y0(Collection<?> collection) {
        boolean z10 = !collection.isEmpty();
        collection.clear();
        return z10;
    }

    @InterfaceC14394D
    public static <T> boolean s0(@NotNull Collection<? super T> collection, @NotNull InterfaceC3312m<? extends T> elements) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        Iterator<? extends T> it = elements.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (collection.add(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    @InterfaceC14394D
    public static <T> boolean t0(@NotNull Collection<? super T> collection, @NotNull Iterable<? extends T> elements) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        if (elements instanceof Collection) {
            return collection.addAll((Collection) elements);
        }
        Iterator<? extends T> it = elements.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (collection.add(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    @InterfaceC14394D
    public static final <T> boolean u0(@NotNull Collection<? super T> collection, @NotNull T[] elements) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        return collection.addAll(C14985q.t(elements));
    }

    @NotNull
    public static <T> Collection<T> v0(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            iterable = S.a6(iterable);
        }
        return (Collection) iterable;
    }

    public static final <T> boolean w0(Iterable<? extends T> iterable, Mf.l<? super T, Boolean> lVar, boolean z10) {
        Iterator<? extends T> it = iterable.iterator();
        boolean z11 = false;
        while (it.hasNext()) {
            if (lVar.invoke(it.next()).booleanValue() == z10) {
                it.remove();
                z11 = true;
            }
        }
        return z11;
    }

    public static final <T> boolean x0(List<T> list, Mf.l<? super T, Boolean> lVar, boolean z10) {
        int i10;
        if (!(list instanceof RandomAccess)) {
            kotlin.jvm.internal.M.n(list, "null cannot be cast to non-null type kotlin.collections.MutableIterable<T of kotlin.collections.CollectionsKt__MutableCollectionsKt.filterInPlace>");
            return w0(kotlin.jvm.internal.w0.c(list), lVar, z10);
        }
        int L10 = H.L(list);
        if (L10 >= 0) {
            int i11 = 0;
            i10 = 0;
            while (true) {
                T t10 = list.get(i11);
                if (lVar.invoke(t10).booleanValue() != z10) {
                    if (i10 != i11) {
                        list.set(i10, t10);
                    }
                    i10++;
                }
                if (i11 == L10) {
                    break;
                }
                i11++;
            }
        } else {
            i10 = 0;
        }
        if (i10 >= list.size()) {
            return false;
        }
        int L11 = H.L(list);
        if (i10 > L11) {
            return true;
        }
        while (true) {
            list.remove(L11);
            if (L11 == i10) {
                return true;
            }
            L11--;
        }
    }

    @Ef.f
    public static final <T> void y0(Collection<? super T> collection, InterfaceC3312m<? extends T> elements) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        J0(collection, elements);
    }

    @Ef.f
    public static final <T> void z0(Collection<? super T> collection, Iterable<? extends T> elements) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        K0(collection, elements);
    }
}
