package pf;

import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;
import nf.InterfaceC14401b;
import nf.InterfaceC14422l0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class z0 extends y0 {
    @Ef.f
    @InterfaceC14422l0(version = "1.6")
    public static final <E> Set<E> i(int i10, @InterfaceC14401b Mf.l<? super Set<E>, P0> builderAction) {
        kotlin.jvm.internal.M.p(builderAction, "builderAction");
        Set e10 = y0.e(i10);
        builderAction.invoke(e10);
        return y0.a(e10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.6")
    public static final <E> Set<E> j(@InterfaceC14401b Mf.l<? super Set<E>, P0> builderAction) {
        kotlin.jvm.internal.M.p(builderAction, "builderAction");
        Set d10 = y0.d();
        builderAction.invoke(d10);
        return y0.a(d10);
    }

    @NotNull
    public static <T> Set<T> k() {
        return X.f103836b;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.1")
    public static final <T> HashSet<T> l() {
        return new HashSet<>();
    }

    @NotNull
    public static final <T> HashSet<T> m(@NotNull T... elements) {
        kotlin.jvm.internal.M.p(elements, "elements");
        return (HashSet) C14960A.Hy(elements, new HashSet(n0.j(elements.length)));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.1")
    public static final <T> LinkedHashSet<T> n() {
        return new LinkedHashSet<>();
    }

    @NotNull
    public static final <T> LinkedHashSet<T> o(@NotNull T... elements) {
        kotlin.jvm.internal.M.p(elements, "elements");
        return (LinkedHashSet) C14960A.Hy(elements, new LinkedHashSet(n0.j(elements.length)));
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.1")
    public static final <T> Set<T> p() {
        return new LinkedHashSet();
    }

    @NotNull
    public static <T> Set<T> q(@NotNull T... elements) {
        kotlin.jvm.internal.M.p(elements, "elements");
        return (Set) C14960A.Hy(elements, new LinkedHashSet(n0.j(elements.length)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> Set<T> r(@NotNull Set<? extends T> set) {
        kotlin.jvm.internal.M.p(set, "<this>");
        int size = set.size();
        return size != 0 ? size != 1 ? set : y0.f(set.iterator().next()) : k();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    public static final <T> Set<T> s(Set<? extends T> set) {
        return set == 0 ? k() : set;
    }

    @Ef.f
    public static final <T> Set<T> t() {
        return k();
    }

    @NotNull
    public static <T> Set<T> u(@NotNull T... elements) {
        kotlin.jvm.internal.M.p(elements, "elements");
        return C14960A.Ez(elements);
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <T> Set<T> v(@Nullable T t10) {
        return t10 != null ? y0.f(t10) : k();
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <T> Set<T> w(@NotNull T... elements) {
        kotlin.jvm.internal.M.p(elements, "elements");
        return (Set) C14960A.mb(elements, new LinkedHashSet());
    }
}
