package Xf;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.SortedSet;
import java.util.TreeSet;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14394D;
import nf.InterfaceC14412g0;
import nf.InterfaceC14422l0;
import nf.InterfaceC14427o;
import nf.InterfaceC14429p;
import nf.Y;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\n_SequencesJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _SequencesJvm.kt\nkotlin/sequences/SequencesKt___SequencesJvmKt\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,173:1\n1484#2,14:174\n1944#2,14:188\n*S KotlinDebug\n*F\n+ 1 _SequencesJvm.kt\nkotlin/sequences/SequencesKt___SequencesJvmKt\n*L\n90#1:174,14\n127#1:188,14\n*E\n"})
public class z extends x {
    @NotNull
    public static final <R> InterfaceC3312m<R> H(@NotNull InterfaceC3312m<?> interfaceC3312m, @NotNull final Class<R> klass) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(klass, "klass");
        InterfaceC3312m<R> P02 = K.P0(interfaceC3312m, new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                boolean I10;
                I10 = z.I(Class.this, obj);
                return Boolean.valueOf(I10);
            }
        });
        kotlin.jvm.internal.M.n(P02, "null cannot be cast to non-null type kotlin.sequences.Sequence<R of kotlin.sequences.SequencesKt___SequencesJvmKt.filterIsInstance>");
        return P02;
    }

    public static final boolean I(Class cls, Object obj) {
        return cls.isInstance(obj);
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super R>, R> C J(@NotNull InterfaceC3312m<?> interfaceC3312m, @NotNull C destination, @NotNull Class<R> klass) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(klass, "klass");
        for (Object obj : interfaceC3312m) {
            if (klass.isInstance(obj)) {
                destination.add(obj);
            }
        }
        return destination;
    }

    @InterfaceC14427o(message = "Use maxOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxOrNull()", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Comparable K(InterfaceC3312m interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return K.f2(interfaceC3312m);
    }

    @InterfaceC14427o(message = "Use maxOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxOrNull()", imports = {}))
    @InterfaceC14422l0(version = "1.1")
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Double L(InterfaceC3312m interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return K.g2(interfaceC3312m);
    }

    @InterfaceC14427o(message = "Use maxOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxOrNull()", imports = {}))
    @InterfaceC14422l0(version = "1.1")
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Float M(InterfaceC3312m interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return K.h2(interfaceC3312m);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7 */
    @InterfaceC14427o(message = "Use maxByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final <T, R extends Comparable<? super R>> T N(InterfaceC3312m<? extends T> interfaceC3312m, Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        if (it.hasNext()) {
            R invoke = selector.invoke(next);
            do {
                T next2 = it.next();
                R invoke2 = selector.invoke(next2);
                next = next;
                if (invoke.compareTo(invoke2) < 0) {
                    invoke = invoke2;
                    next = next2;
                }
            } while (it.hasNext());
        }
        return next;
    }

    @InterfaceC14427o(message = "Use maxWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Object O(InterfaceC3312m interfaceC3312m, Comparator comparator) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return K.l2(interfaceC3312m, comparator);
    }

    @InterfaceC14427o(message = "Use minOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minOrNull()", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Comparable P(InterfaceC3312m interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return K.x2(interfaceC3312m);
    }

    @InterfaceC14427o(message = "Use minOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minOrNull()", imports = {}))
    @InterfaceC14422l0(version = "1.1")
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Double Q(InterfaceC3312m interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return K.y2(interfaceC3312m);
    }

    @InterfaceC14427o(message = "Use minOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minOrNull()", imports = {}))
    @InterfaceC14422l0(version = "1.1")
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Float R(InterfaceC3312m interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return K.z2(interfaceC3312m);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7 */
    @InterfaceC14427o(message = "Use minByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final <T, R extends Comparable<? super R>> T S(InterfaceC3312m<? extends T> interfaceC3312m, Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        if (it.hasNext()) {
            R invoke = selector.invoke(next);
            do {
                T next2 = it.next();
                R invoke2 = selector.invoke(next2);
                next = next;
                if (invoke.compareTo(invoke2) > 0) {
                    invoke = invoke2;
                    next = next2;
                }
            } while (it.hasNext());
        }
        return next;
    }

    @InterfaceC14427o(message = "Use minWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Object T(InterfaceC3312m interfaceC3312m, Comparator comparator) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return K.D2(interfaceC3312m, comparator);
    }

    @Y
    @Ef.f
    @Lf.j(name = "sumOfBigDecimal")
    @InterfaceC14422l0(version = "1.4")
    public static final <T> BigDecimal U(InterfaceC3312m<? extends T> interfaceC3312m, Mf.l<? super T, ? extends BigDecimal> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        BigDecimal valueOf = BigDecimal.valueOf(0L);
        kotlin.jvm.internal.M.o(valueOf, "valueOf(...)");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        while (it.hasNext()) {
            valueOf = valueOf.add(selector.invoke(it.next()));
            kotlin.jvm.internal.M.o(valueOf, "add(...)");
        }
        return valueOf;
    }

    @Y
    @Ef.f
    @Lf.j(name = "sumOfBigInteger")
    @InterfaceC14422l0(version = "1.4")
    public static final <T> BigInteger V(InterfaceC3312m<? extends T> interfaceC3312m, Mf.l<? super T, ? extends BigInteger> selector) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        BigInteger valueOf = BigInteger.valueOf(0L);
        kotlin.jvm.internal.M.o(valueOf, "valueOf(...)");
        Iterator<? extends T> it = interfaceC3312m.iterator();
        while (it.hasNext()) {
            valueOf = valueOf.add(selector.invoke(it.next()));
            kotlin.jvm.internal.M.o(valueOf, "add(...)");
        }
        return valueOf;
    }

    @NotNull
    public static final <T extends Comparable<? super T>> SortedSet<T> W(@NotNull InterfaceC3312m<? extends T> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return (SortedSet) K.G3(interfaceC3312m, new TreeSet());
    }

    @NotNull
    public static final <T> SortedSet<T> X(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, @NotNull Comparator<? super T> comparator) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return (SortedSet) K.G3(interfaceC3312m, new TreeSet(comparator));
    }
}
