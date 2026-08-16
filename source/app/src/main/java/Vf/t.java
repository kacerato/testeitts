package Vf;

import kotlin.jvm.internal.M;
import nf.InterfaceC14422l0;
import nf.InterfaceC14427o;
import nf.InterfaceC14429p;
import nf.InterfaceC14441w;
import nf.T0;
import org.jetbrains.annotations.NotNull;

public class t {
    public static final void a(boolean z10, @NotNull Number step) {
        M.p(step, "step");
        if (z10) {
            return;
        }
        throw new IllegalArgumentException("Step must be positive, was: " + ((Object) step) + '.');
    }

    /* JADX WARN: Incorrect types in method signature: <T::Ljava/lang/Comparable<-TT;>;R::LVf/g<TT;>;:Ljava/lang/Iterable<+TT;>;>(TR;TT;)Z */
    @Ef.f
    @InterfaceC14422l0(version = "2.3")
    public static final boolean b(g gVar, Comparable comparable) {
        M.p(gVar, "<this>");
        return comparable != null && gVar.contains(comparable);
    }

    /* JADX WARN: Incorrect types in method signature: <T:Ljava/lang/Object;R::LVf/g<TT;>;:Ljava/lang/Iterable<+TT;>;>(TR;TT;)Z */
    @InterfaceC14427o(message = "The signature violates type safety guarantees")
    @InterfaceC14429p(hiddenSince = "2.3")
    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final boolean c(g gVar, Object obj) {
        M.p(gVar, "<this>");
        return obj != null && gVar.contains((Comparable) obj);
    }

    /* JADX WARN: Incorrect types in method signature: <T::Ljava/lang/Comparable<-TT;>;R::LVf/r<TT;>;:Ljava/lang/Iterable<+TT;>;>(TR;TT;)Z */
    @Ef.f
    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "2.3")
    public static final boolean d(r rVar, Comparable comparable) {
        M.p(rVar, "<this>");
        return comparable != null && rVar.contains(comparable);
    }

    /* JADX WARN: Incorrect types in method signature: <T:Ljava/lang/Object;R::LVf/r<TT;>;:Ljava/lang/Iterable<+TT;>;>(TR;TT;)Z */
    @InterfaceC14427o(message = "The signature violates type safety guarantees")
    @InterfaceC14429p(hiddenSince = "2.3")
    @Ef.f
    @InterfaceC14422l0(version = "1.9")
    public static final boolean e(r rVar, Object obj) {
        M.p(rVar, "<this>");
        return obj != null && rVar.contains((Comparable) obj);
    }

    @InterfaceC14422l0(version = "1.1")
    @NotNull
    public static final f<Double> f(double d10, double d11) {
        return new d(d10, d11);
    }

    @InterfaceC14422l0(version = "1.1")
    @NotNull
    public static f<Float> g(float f10, float f11) {
        return new e(f10, f11);
    }

    @NotNull
    public static final <T extends Comparable<? super T>> g<T> h(@NotNull T t10, @NotNull T that) {
        M.p(t10, "<this>");
        M.p(that, "that");
        return new i(t10, that);
    }

    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "1.9")
    @NotNull
    public static final r<Double> i(double d10, double d11) {
        return new p(d10, d11);
    }

    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "1.9")
    @NotNull
    public static final r<Float> j(float f10, float f11) {
        return new q(f10, f11);
    }

    @T0(markerClass = {InterfaceC14441w.class})
    @InterfaceC14422l0(version = "1.9")
    @NotNull
    public static final <T extends Comparable<? super T>> r<T> k(@NotNull T t10, @NotNull T that) {
        M.p(t10, "<this>");
        M.p(that, "that");
        return new h(t10, that);
    }
}
