package pf;

import java.util.Collections;
import java.util.Comparator;
import java.util.Set;
import java.util.TreeSet;
import nf.InterfaceC14410f0;
import nf.InterfaceC14422l0;
import nf.P0;
import org.jetbrains.annotations.NotNull;

public class y0 {
    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static <E> Set<E> a(@NotNull Set<E> builder) {
        kotlin.jvm.internal.M.p(builder, "builder");
        return ((qf.j) builder).b();
    }

    @Ef.f
    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    public static final <E> Set<E> b(int i10, Mf.l<? super Set<E>, P0> builderAction) {
        kotlin.jvm.internal.M.p(builderAction, "builderAction");
        Set e10 = e(i10);
        builderAction.invoke(e10);
        return a(e10);
    }

    @Ef.f
    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    public static final <E> Set<E> c(Mf.l<? super Set<E>, P0> builderAction) {
        kotlin.jvm.internal.M.p(builderAction, "builderAction");
        Set d10 = d();
        builderAction.invoke(d10);
        return a(d10);
    }

    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final <E> Set<E> d() {
        return new qf.j();
    }

    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static <E> Set<E> e(int i10) {
        return new qf.j(i10);
    }

    @NotNull
    public static <T> Set<T> f(T t10) {
        Set<T> singleton = Collections.singleton(t10);
        kotlin.jvm.internal.M.o(singleton, "singleton(...)");
        return singleton;
    }

    @NotNull
    public static final <T> TreeSet<T> g(@NotNull Comparator<? super T> comparator, @NotNull T... elements) {
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(elements, "elements");
        return (TreeSet) C14960A.Hy(elements, new TreeSet(comparator));
    }

    @NotNull
    public static final <T> TreeSet<T> h(@NotNull T... elements) {
        kotlin.jvm.internal.M.p(elements, "elements");
        return (TreeSet) C14960A.Hy(elements, new TreeSet());
    }
}
