package pf;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.SortedSet;
import java.util.TreeSet;
import nf.InterfaceC14394D;
import nf.InterfaceC14412g0;
import nf.InterfaceC14422l0;
import nf.InterfaceC14427o;
import nf.InterfaceC14429p;
import org.jetbrains.annotations.NotNull;

@kotlin.jvm.internal.t0({"SMAP\n_CollectionsJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _CollectionsJvm.kt\nkotlin/collections/CollectionsKt___CollectionsJvmKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,169:1\n2045#2,14:170\n2469#2,14:184\n*S KotlinDebug\n*F\n+ 1 _CollectionsJvm.kt\nkotlin/collections/CollectionsKt___CollectionsJvmKt\n*L\n90#1:170,14\n127#1:184,14\n*E\n"})
public class O extends N {
    @NotNull
    public static final <R> List<R> h1(@NotNull Iterable<?> iterable, @NotNull Class<R> klass) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(klass, "klass");
        return (List) i1(iterable, new ArrayList(), klass);
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super R>, R> C i1(@NotNull Iterable<?> iterable, @NotNull C destination, @NotNull Class<R> klass) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(klass, "klass");
        for (Object obj : iterable) {
            if (klass.isInstance(obj)) {
                destination.add(obj);
            }
        }
        return destination;
    }

    @InterfaceC14427o(message = "Use maxOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxOrNull()", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Comparable j1(Iterable iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        return S.U3(iterable);
    }

    @InterfaceC14427o(message = "Use maxOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxOrNull()", imports = {}))
    @InterfaceC14422l0(version = "1.1")
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Double k1(Iterable iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        return S.V3(iterable);
    }

    @InterfaceC14427o(message = "Use maxOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxOrNull()", imports = {}))
    @InterfaceC14422l0(version = "1.1")
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Float l1(Iterable iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        return S.W3(iterable);
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
    public static final <T, R extends Comparable<? super R>> T m1(Iterable<? extends T> iterable, Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = iterable.iterator();
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
    public static final Object n1(Iterable iterable, Comparator comparator) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return S.a4(iterable, comparator);
    }

    @InterfaceC14427o(message = "Use minOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minOrNull()", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Comparable o1(Iterable iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        return S.m4(iterable);
    }

    @InterfaceC14427o(message = "Use minOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minOrNull()", imports = {}))
    @InterfaceC14422l0(version = "1.1")
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Double p1(Iterable iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        return S.n4(iterable);
    }

    @InterfaceC14427o(message = "Use minOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minOrNull()", imports = {}))
    @InterfaceC14422l0(version = "1.1")
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Float q1(Iterable iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        return S.o4(iterable);
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
    public static final <T, R extends Comparable<? super R>> T r1(Iterable<? extends T> iterable, Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = iterable.iterator();
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
    public static final Object s1(Iterable iterable, Comparator comparator) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return S.s4(iterable, comparator);
    }

    public static <T> void t1(@NotNull List<T> list) {
        kotlin.jvm.internal.M.p(list, "<this>");
        Collections.reverse(list);
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfBigDecimal")
    @InterfaceC14422l0(version = "1.4")
    public static final <T> BigDecimal u1(Iterable<? extends T> iterable, Mf.l<? super T, ? extends BigDecimal> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        BigDecimal valueOf = BigDecimal.valueOf(0L);
        kotlin.jvm.internal.M.o(valueOf, "valueOf(...)");
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            valueOf = valueOf.add(selector.invoke(it.next()));
            kotlin.jvm.internal.M.o(valueOf, "add(...)");
        }
        return valueOf;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfBigInteger")
    @InterfaceC14422l0(version = "1.4")
    public static final <T> BigInteger v1(Iterable<? extends T> iterable, Mf.l<? super T, ? extends BigInteger> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        BigInteger valueOf = BigInteger.valueOf(0L);
        kotlin.jvm.internal.M.o(valueOf, "valueOf(...)");
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            valueOf = valueOf.add(selector.invoke(it.next()));
            kotlin.jvm.internal.M.o(valueOf, "add(...)");
        }
        return valueOf;
    }

    @NotNull
    public static final <T extends Comparable<? super T>> SortedSet<T> w1(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        return (SortedSet) S.V5(iterable, new TreeSet());
    }

    @NotNull
    public static final <T> SortedSet<T> x1(@NotNull Iterable<? extends T> iterable, @NotNull Comparator<? super T> comparator) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return (SortedSet) S.V5(iterable, new TreeSet(comparator));
    }
}
