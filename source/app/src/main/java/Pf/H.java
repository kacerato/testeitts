package pf;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import nf.InterfaceC14401b;
import nf.InterfaceC14410f0;
import nf.InterfaceC14422l0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import tf.C15420g;

@kotlin.jvm.internal.t0({"SMAP\nCollections.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collections.kt\nkotlin/collections/CollectionsKt__CollectionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,529:1\n1#2:530\n*E\n"})
public class H extends G {

    /* JADX WARN: Incorrect field signature: TK; */
    @kotlin.jvm.internal.t0({"SMAP\nCollections.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collections.kt\nkotlin/collections/CollectionsKt__CollectionsKt$binarySearchBy$1\n*L\n1#1,529:1\n*E\n"})
    public static final class a<T> implements Mf.l<T, Integer> {

        public final Mf.l<T, K> f103822b;

        public final Comparable f103823c;

        /* JADX WARN: Incorrect types in method signature: (LMf/l<-TT;+TK;>;TK;)V */
        public a(Mf.l lVar, Comparable comparable) {
            this.f103822b = lVar;
            this.f103823c = comparable;
        }

        @Override
        public final Integer invoke(T t10) {
            return Integer.valueOf(C15420g.l((Comparable) this.f103822b.invoke(t10), this.f103823c));
        }
    }

    public static int A(List list, Comparable comparable, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = list.size();
        }
        return x(list, comparable, i10, i11);
    }

    public static int B(List list, Object obj, Comparator comparator, int i10, int i11, int i12, Object obj2) {
        if ((i12 & 4) != 0) {
            i10 = 0;
        }
        if ((i12 & 8) != 0) {
            i11 = list.size();
        }
        return y(list, obj, comparator, i10, i11);
    }

    public static final <T, K extends Comparable<? super K>> int C(@NotNull List<? extends T> list, @Nullable K k10, int i10, int i11, @NotNull Mf.l<? super T, ? extends K> selector) {
        kotlin.jvm.internal.M.p(list, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        return w(list, i10, i11, new a(selector, k10));
    }

    public static int D(List list, Comparable comparable, int i10, int i11, Mf.l selector, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = list.size();
        }
        kotlin.jvm.internal.M.p(list, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        return w(list, i10, i11, new a(selector, comparable));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.6")
    public static final <E> List<E> E(int i10, @InterfaceC14401b Mf.l<? super List<E>, P0> builderAction) {
        kotlin.jvm.internal.M.p(builderAction, "builderAction");
        List k10 = G.k(i10);
        builderAction.invoke(k10);
        return G.b(k10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.6")
    public static final <E> List<E> F(@InterfaceC14401b Mf.l<? super List<E>, P0> builderAction) {
        kotlin.jvm.internal.M.p(builderAction, "builderAction");
        List j10 = G.j();
        builderAction.invoke(j10);
        return G.b(j10);
    }

    @NotNull
    public static final Object[] G(@NotNull Collection<?> collection) {
        kotlin.jvm.internal.M.p(collection, "collection");
        int i10 = 0;
        if (collection.isEmpty()) {
            return new Object[0];
        }
        Object[] objArr = new Object[collection.size()];
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            objArr[i10] = it.next();
            i10++;
        }
        return objArr;
    }

    @NotNull
    public static final <T> T[] H(@NotNull Collection<?> collection, @NotNull T[] array) {
        kotlin.jvm.internal.M.p(collection, "collection");
        kotlin.jvm.internal.M.p(array, "array");
        int i10 = 0;
        if (collection.isEmpty()) {
            return (T[]) G.o(0, array);
        }
        int length = array.length;
        Object[] objArr = array;
        if (length < collection.size()) {
            objArr = (T[]) C14983o.a(array, collection.size());
        }
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            objArr[i10] = it.next();
            i10++;
        }
        return (T[]) G.o(collection.size(), objArr);
    }

    @Ef.f
    public static final <T> boolean I(Collection<? extends T> collection, Collection<? extends T> elements) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        return collection.containsAll(elements);
    }

    @NotNull
    public static <T> List<T> J() {
        return V.f103832b;
    }

    @NotNull
    public static Vf.l K(@NotNull Collection<?> collection) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        return new Vf.l(0, collection.size() - 1);
    }

    public static <T> int L(@NotNull List<? extends T> list) {
        kotlin.jvm.internal.M.p(list, "<this>");
        return list.size() - 1;
    }

    /* JADX WARN: Incorrect types in method signature: <C::Ljava/util/Collection<*>;:TR;R:Ljava/lang/Object;>(TC;LMf/a<+TR;>;)TR; */
    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final Object M(Collection collection, Mf.a defaultValue) {
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        return collection.isEmpty() ? defaultValue.invoke() : collection;
    }

    @Ef.f
    public static final <T> boolean N(Collection<? extends T> collection) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        return !collection.isEmpty();
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final <T> boolean O(Collection<? extends T> collection) {
        return collection == null || collection.isEmpty();
    }

    @Ef.f
    public static final <T> List<T> P() {
        return J();
    }

    @NotNull
    public static <T> List<T> Q(@NotNull T... elements) {
        kotlin.jvm.internal.M.p(elements, "elements");
        return elements.length > 0 ? C14985q.t(elements) : J();
    }

    @NotNull
    public static final <T> List<T> R(@Nullable T t10) {
        return t10 != null ? G.l(t10) : J();
    }

    @NotNull
    public static final <T> List<T> S(@NotNull T... elements) {
        kotlin.jvm.internal.M.p(elements, "elements");
        return C14960A.lb(elements);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.1")
    public static final <T> List<T> T() {
        return new ArrayList();
    }

    @NotNull
    public static <T> List<T> U(@NotNull T... elements) {
        kotlin.jvm.internal.M.p(elements, "elements");
        return elements.length == 0 ? new ArrayList() : new ArrayList(u(elements, true));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> List<T> V(@NotNull List<? extends T> list) {
        kotlin.jvm.internal.M.p(list, "<this>");
        int size = list.size();
        return size != 0 ? size != 1 ? list : G.l(list.get(0)) : J();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    public static final <T> Collection<T> W(Collection<? extends T> collection) {
        return collection == 0 ? J() : collection;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    public static final <T> List<T> X(List<? extends T> list) {
        return list == 0 ? J() : list;
    }

    public static final void Y(int i10, int i11, int i12) {
        if (i11 > i12) {
            throw new IllegalArgumentException("fromIndex (" + i11 + ") is greater than toIndex (" + i12 + ").");
        }
        if (i11 < 0) {
            throw new IndexOutOfBoundsException("fromIndex (" + i11 + ") is less than zero.");
        }
        if (i12 <= i10) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i12 + ") is greater than size (" + i10 + ").");
    }

    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final <T> List<T> Z(@NotNull Iterable<? extends T> iterable, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        List<T> c62 = S.c6(iterable);
        S.j5(c62, random);
        return c62;
    }

    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    public static void a0() {
        throw new ArithmeticException("Count overflow has happened.");
    }

    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    public static void b0() {
        throw new ArithmeticException("Index overflow has happened.");
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.1")
    public static final <T> List<T> q(int i10, Mf.l<? super Integer, ? extends T> init) {
        kotlin.jvm.internal.M.p(init, "init");
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            arrayList.add(init.invoke(Integer.valueOf(i11)));
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.1")
    public static final <T> List<T> r(int i10, Mf.l<? super Integer, ? extends T> init) {
        kotlin.jvm.internal.M.p(init, "init");
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            arrayList.add(init.invoke(Integer.valueOf(i11)));
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.1")
    public static final <T> ArrayList<T> s() {
        return new ArrayList<>();
    }

    @NotNull
    public static final <T> ArrayList<T> t(@NotNull T... elements) {
        kotlin.jvm.internal.M.p(elements, "elements");
        return elements.length == 0 ? new ArrayList<>() : new ArrayList<>(u(elements, true));
    }

    @NotNull
    public static final <T> Collection<T> u(@NotNull T[] tArr, boolean z10) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return new C14980l(tArr, z10);
    }

    public static Collection v(Object[] objArr, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return u(objArr, z10);
    }

    public static final <T> int w(@NotNull List<? extends T> list, int i10, int i11, @NotNull Mf.l<? super T, Integer> comparison) {
        kotlin.jvm.internal.M.p(list, "<this>");
        kotlin.jvm.internal.M.p(comparison, "comparison");
        Y(list.size(), i10, i11);
        int i12 = i11 - 1;
        while (i10 <= i12) {
            int i13 = (i10 + i12) >>> 1;
            int intValue = comparison.invoke(list.get(i13)).intValue();
            if (intValue < 0) {
                i10 = i13 + 1;
            } else {
                if (intValue <= 0) {
                    return i13;
                }
                i12 = i13 - 1;
            }
        }
        return -(i10 + 1);
    }

    public static final <T extends Comparable<? super T>> int x(@NotNull List<? extends T> list, @Nullable T t10, int i10, int i11) {
        kotlin.jvm.internal.M.p(list, "<this>");
        Y(list.size(), i10, i11);
        int i12 = i11 - 1;
        while (i10 <= i12) {
            int i13 = (i10 + i12) >>> 1;
            int l10 = C15420g.l(list.get(i13), t10);
            if (l10 < 0) {
                i10 = i13 + 1;
            } else {
                if (l10 <= 0) {
                    return i13;
                }
                i12 = i13 - 1;
            }
        }
        return -(i10 + 1);
    }

    public static final <T> int y(@NotNull List<? extends T> list, T t10, @NotNull Comparator<? super T> comparator, int i10, int i11) {
        kotlin.jvm.internal.M.p(list, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        Y(list.size(), i10, i11);
        int i12 = i11 - 1;
        while (i10 <= i12) {
            int i13 = (i10 + i12) >>> 1;
            int compare = comparator.compare(list.get(i13), t10);
            if (compare < 0) {
                i10 = i13 + 1;
            } else {
                if (compare <= 0) {
                    return i13;
                }
                i12 = i13 - 1;
            }
        }
        return -(i10 + 1);
    }

    public static int z(List list, int i10, int i11, Mf.l lVar, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = list.size();
        }
        return w(list, i10, i11, lVar);
    }
}
