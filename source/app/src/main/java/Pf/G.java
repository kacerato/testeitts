package pf;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.List;
import java.util.Random;
import kotlin.jvm.internal.C14025w;
import nf.InterfaceC14394D;
import nf.InterfaceC14410f0;
import nf.InterfaceC14422l0;
import nf.P0;
import org.jetbrains.annotations.NotNull;

@kotlin.jvm.internal.t0({"SMAP\nCollectionsJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectionsJVM.kt\nkotlin/collections/CollectionsKt__CollectionsJVMKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,133:1\n1#2:134\n*E\n"})
public class G {
    @Ef.f
    public static final <T> ArrayList<T> a(T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return new ArrayList<>(H.u(tArr, true));
    }

    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static <E> List<E> b(@NotNull List<E> builder) {
        kotlin.jvm.internal.M.p(builder, "builder");
        return ((qf.b) builder).x();
    }

    @Ef.f
    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    public static final <E> List<E> c(int i10, Mf.l<? super List<E>, P0> builderAction) {
        kotlin.jvm.internal.M.p(builderAction, "builderAction");
        List k10 = k(i10);
        builderAction.invoke(k10);
        return b(k10);
    }

    @Ef.f
    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    public static final <E> List<E> d(Mf.l<? super List<E>, P0> builderAction) {
        kotlin.jvm.internal.M.p(builderAction, "builderAction");
        List j10 = j();
        builderAction.invoke(j10);
        return b(j10);
    }

    @Ef.f
    @InterfaceC14410f0
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final int e(int i10) {
        if (i10 < 0) {
            H.a0();
        }
        return i10;
    }

    @Ef.f
    @InterfaceC14410f0
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final int f(int i10) {
        if (i10 < 0) {
            H.b0();
        }
        return i10;
    }

    @Ef.f
    public static final Object[] g(Collection<?> collection) {
        kotlin.jvm.internal.M.p(collection, "collection");
        return C14025w.a(collection);
    }

    @Ef.f
    public static final <T> T[] h(Collection<?> collection, T[] array) {
        kotlin.jvm.internal.M.p(collection, "collection");
        kotlin.jvm.internal.M.p(array, "array");
        return (T[]) C14025w.b(collection, array);
    }

    @NotNull
    public static final <T> Object[] i(@NotNull T[] tArr, boolean z10) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        if (z10 && kotlin.jvm.internal.M.g(tArr.getClass(), Object[].class)) {
            return tArr;
        }
        Object[] copyOf = Arrays.copyOf(tArr, tArr.length, Object[].class);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        return copyOf;
    }

    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static <E> List<E> j() {
        return new qf.b(0, 1, null);
    }

    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static <E> List<E> k(int i10) {
        return new qf.b(i10);
    }

    @NotNull
    public static <T> List<T> l(T t10) {
        List<T> singletonList = Collections.singletonList(t10);
        kotlin.jvm.internal.M.o(singletonList, "singletonList(...)");
        return singletonList;
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final <T> List<T> m(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        List<T> c62 = S.c6(iterable);
        Collections.shuffle(c62);
        return c62;
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final <T> List<T> n(@NotNull Iterable<? extends T> iterable, @NotNull Random random) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        List<T> c62 = S.c6(iterable);
        Collections.shuffle(c62, random);
        return c62;
    }

    @NotNull
    public static <T> T[] o(int i10, @NotNull T[] array) {
        kotlin.jvm.internal.M.p(array, "array");
        if (i10 < array.length) {
            array[i10] = null;
        }
        return array;
    }

    @Ef.f
    public static final <T> List<T> p(Enumeration<T> enumeration) {
        kotlin.jvm.internal.M.p(enumeration, "<this>");
        ArrayList list = Collections.list(enumeration);
        kotlin.jvm.internal.M.o(list, "list(...)");
        return list;
    }
}
