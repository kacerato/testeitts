package tf;

import Mf.p;
import java.util.Comparator;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class C15420g {

    @t0({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n*L\n1#1,328:1\n*E\n"})
    public static final class a<T> implements Comparator {

        public final Mf.l<T, Comparable<?>> f117374b;

        /* JADX WARN: Multi-variable type inference failed */
        public a(Mf.l<? super T, ? extends Comparable<?>> lVar) {
            this.f117374b = lVar;
        }

        @Override
        public final int compare(T t10, T t11) {
            Mf.l<T, Comparable<?>> lVar = this.f117374b;
            return C15420g.l(lVar.invoke(t10), lVar.invoke(t11));
        }
    }

    @t0({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$3\n*L\n1#1,328:1\n*E\n"})
    public static final class b<T> implements Comparator {

        public final Comparator<? super K> f117375b;

        public final Mf.l<T, K> f117376c;

        /* JADX WARN: Multi-variable type inference failed */
        public b(Comparator<? super K> comparator, Mf.l<? super T, ? extends K> lVar) {
            this.f117375b = comparator;
            this.f117376c = lVar;
        }

        @Override
        public final int compare(T t10, T t11) {
            Comparator<? super K> comparator = this.f117375b;
            Mf.l<T, K> lVar = this.f117376c;
            return comparator.compare(lVar.invoke(t10), lVar.invoke(t11));
        }
    }

    @t0({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1\n*L\n1#1,328:1\n*E\n"})
    public static final class c<T> implements Comparator {

        public final Mf.l<T, Comparable<?>> f117377b;

        /* JADX WARN: Multi-variable type inference failed */
        public c(Mf.l<? super T, ? extends Comparable<?>> lVar) {
            this.f117377b = lVar;
        }

        @Override
        public final int compare(T t10, T t11) {
            Mf.l<T, Comparable<?>> lVar = this.f117377b;
            return C15420g.l(lVar.invoke(t11), lVar.invoke(t10));
        }
    }

    @t0({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$2\n*L\n1#1,328:1\n*E\n"})
    public static final class d<T> implements Comparator {

        public final Comparator<? super K> f117378b;

        public final Mf.l<T, K> f117379c;

        /* JADX WARN: Multi-variable type inference failed */
        public d(Comparator<? super K> comparator, Mf.l<? super T, ? extends K> lVar) {
            this.f117378b = comparator;
            this.f117379c = lVar;
        }

        @Override
        public final int compare(T t10, T t11) {
            Comparator<? super K> comparator = this.f117378b;
            Mf.l<T, K> lVar = this.f117379c;
            return comparator.compare(lVar.invoke(t11), lVar.invoke(t10));
        }
    }

    @t0({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$thenBy$1\n*L\n1#1,328:1\n*E\n"})
    public static final class e<T> implements Comparator {

        public final Comparator<T> f117380b;

        public final Mf.l<T, Comparable<?>> f117381c;

        /* JADX WARN: Multi-variable type inference failed */
        public e(Comparator<T> comparator, Mf.l<? super T, ? extends Comparable<?>> lVar) {
            this.f117380b = comparator;
            this.f117381c = lVar;
        }

        @Override
        public final int compare(T t10, T t11) {
            int compare = this.f117380b.compare(t10, t11);
            if (compare != 0) {
                return compare;
            }
            Mf.l<T, Comparable<?>> lVar = this.f117381c;
            return C15420g.l(lVar.invoke(t10), lVar.invoke(t11));
        }
    }

    @t0({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$thenBy$2\n*L\n1#1,328:1\n*E\n"})
    public static final class f<T> implements Comparator {

        public final Comparator<T> f117382b;

        public final Comparator<? super K> f117383c;

        public final Mf.l<T, K> f117384d;

        /* JADX WARN: Multi-variable type inference failed */
        public f(Comparator<T> comparator, Comparator<? super K> comparator2, Mf.l<? super T, ? extends K> lVar) {
            this.f117382b = comparator;
            this.f117383c = comparator2;
            this.f117384d = lVar;
        }

        @Override
        public final int compare(T t10, T t11) {
            int compare = this.f117382b.compare(t10, t11);
            if (compare != 0) {
                return compare;
            }
            Comparator<? super K> comparator = this.f117383c;
            Mf.l<T, K> lVar = this.f117384d;
            return comparator.compare(lVar.invoke(t10), lVar.invoke(t11));
        }
    }

    @t0({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$thenByDescending$1\n*L\n1#1,328:1\n*E\n"})
    public static final class C2018g<T> implements Comparator {

        public final Comparator<T> f117385b;

        public final Mf.l<T, Comparable<?>> f117386c;

        /* JADX WARN: Multi-variable type inference failed */
        public C2018g(Comparator<T> comparator, Mf.l<? super T, ? extends Comparable<?>> lVar) {
            this.f117385b = comparator;
            this.f117386c = lVar;
        }

        @Override
        public final int compare(T t10, T t11) {
            int compare = this.f117385b.compare(t10, t11);
            if (compare != 0) {
                return compare;
            }
            Mf.l<T, Comparable<?>> lVar = this.f117386c;
            return C15420g.l(lVar.invoke(t11), lVar.invoke(t10));
        }
    }

    @t0({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$thenByDescending$2\n*L\n1#1,328:1\n*E\n"})
    public static final class h<T> implements Comparator {

        public final Comparator<T> f117387b;

        public final Comparator<? super K> f117388c;

        public final Mf.l<T, K> f117389d;

        /* JADX WARN: Multi-variable type inference failed */
        public h(Comparator<T> comparator, Comparator<? super K> comparator2, Mf.l<? super T, ? extends K> lVar) {
            this.f117387b = comparator;
            this.f117388c = comparator2;
            this.f117389d = lVar;
        }

        @Override
        public final int compare(T t10, T t11) {
            int compare = this.f117387b.compare(t10, t11);
            if (compare != 0) {
                return compare;
            }
            Comparator<? super K> comparator = this.f117388c;
            Mf.l<T, K> lVar = this.f117389d;
            return comparator.compare(lVar.invoke(t11), lVar.invoke(t10));
        }
    }

    @t0({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$thenComparator$1\n*L\n1#1,328:1\n*E\n"})
    public static final class i<T> implements Comparator {

        public final Comparator<T> f117390b;

        public final p<T, T, Integer> f117391c;

        /* JADX WARN: Multi-variable type inference failed */
        public i(Comparator<T> comparator, p<? super T, ? super T, Integer> pVar) {
            this.f117390b = comparator;
            this.f117391c = pVar;
        }

        @Override
        public final int compare(T t10, T t11) {
            int compare = this.f117390b.compare(t10, t11);
            return compare != 0 ? compare : this.f117391c.invoke(t10, t11).intValue();
        }
    }

    public static final int A(Comparator comparator, Comparator comparator2, Object obj, Object obj2) {
        int compare = comparator.compare(obj, obj2);
        return compare != 0 ? compare : comparator2.compare(obj, obj2);
    }

    @Ef.f
    public static final <T> Comparator<T> B(Comparator<T> comparator, Mf.l<? super T, ? extends Comparable<?>> selector) {
        M.p(comparator, "<this>");
        M.p(selector, "selector");
        return new e(comparator, selector);
    }

    @Ef.f
    public static final <T, K> Comparator<T> C(Comparator<T> comparator, Comparator<? super K> comparator2, Mf.l<? super T, ? extends K> selector) {
        M.p(comparator, "<this>");
        M.p(comparator2, "comparator");
        M.p(selector, "selector");
        return new f(comparator, comparator2, selector);
    }

    @Ef.f
    public static final <T> Comparator<T> D(Comparator<T> comparator, Mf.l<? super T, ? extends Comparable<?>> selector) {
        M.p(comparator, "<this>");
        M.p(selector, "selector");
        return new C2018g(comparator, selector);
    }

    @Ef.f
    public static final <T, K> Comparator<T> E(Comparator<T> comparator, Comparator<? super K> comparator2, Mf.l<? super T, ? extends K> selector) {
        M.p(comparator, "<this>");
        M.p(comparator2, "comparator");
        M.p(selector, "selector");
        return new h(comparator, comparator2, selector);
    }

    @Ef.f
    public static final <T> Comparator<T> F(Comparator<T> comparator, p<? super T, ? super T, Integer> comparison) {
        M.p(comparator, "<this>");
        M.p(comparison, "comparison");
        return new i(comparator, comparison);
    }

    @NotNull
    public static final <T> Comparator<T> G(@NotNull final Comparator<T> comparator, @NotNull final Comparator<? super T> comparator2) {
        M.p(comparator, "<this>");
        M.p(comparator2, "comparator");
        return new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int H10;
                H10 = C15420g.H(Comparator.this, comparator2, obj, obj2);
                return H10;
            }
        };
    }

    public static final int H(Comparator comparator, Comparator comparator2, Object obj, Object obj2) {
        int compare = comparator.compare(obj, obj2);
        return compare != 0 ? compare : comparator2.compare(obj2, obj);
    }

    @Ef.f
    public static final <T> Comparator<T> f(Mf.l<? super T, ? extends Comparable<?>> selector) {
        M.p(selector, "selector");
        return new a(selector);
    }

    @Ef.f
    public static final <T, K> Comparator<T> g(Comparator<? super K> comparator, Mf.l<? super T, ? extends K> selector) {
        M.p(comparator, "comparator");
        M.p(selector, "selector");
        return new b(comparator, selector);
    }

    @NotNull
    public static final <T> Comparator<T> h(@NotNull final Mf.l<? super T, ? extends Comparable<?>>... selectors) {
        M.p(selectors, "selectors");
        if (selectors.length > 0) {
            return new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    int i10;
                    i10 = C15420g.i(selectors, obj, obj2);
                    return i10;
                }
            };
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    public static final int i(Mf.l[] lVarArr, Object obj, Object obj2) {
        return p(obj, obj2, lVarArr);
    }

    @Ef.f
    public static final <T> Comparator<T> j(Mf.l<? super T, ? extends Comparable<?>> selector) {
        M.p(selector, "selector");
        return new c(selector);
    }

    @Ef.f
    public static final <T, K> Comparator<T> k(Comparator<? super K> comparator, Mf.l<? super T, ? extends K> selector) {
        M.p(comparator, "comparator");
        M.p(selector, "selector");
        return new d(comparator, selector);
    }

    public static <T extends Comparable<?>> int l(@Nullable T t10, @Nullable T t11) {
        if (t10 == t11) {
            return 0;
        }
        if (t10 == null) {
            return -1;
        }
        if (t11 == null) {
            return 1;
        }
        return t10.compareTo(t11);
    }

    @Ef.f
    public static final <T> int m(T t10, T t11, Mf.l<? super T, ? extends Comparable<?>> selector) {
        M.p(selector, "selector");
        return l(selector.invoke(t10), selector.invoke(t11));
    }

    @Ef.f
    public static final <T, K> int n(T t10, T t11, Comparator<? super K> comparator, Mf.l<? super T, ? extends K> selector) {
        M.p(comparator, "comparator");
        M.p(selector, "selector");
        return comparator.compare(selector.invoke(t10), selector.invoke(t11));
    }

    public static <T> int o(T t10, T t11, @NotNull Mf.l<? super T, ? extends Comparable<?>>... selectors) {
        M.p(selectors, "selectors");
        if (selectors.length > 0) {
            return p(t10, t11, selectors);
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    public static final <T> int p(T t10, T t11, Mf.l<? super T, ? extends Comparable<?>>[] lVarArr) {
        for (Mf.l<? super T, ? extends Comparable<?>> lVar : lVarArr) {
            int l10 = l(lVar.invoke(t10), lVar.invoke(t11));
            if (l10 != 0) {
                return l10;
            }
        }
        return 0;
    }

    @NotNull
    public static <T extends Comparable<? super T>> Comparator<T> q() {
        j jVar = j.f117392b;
        M.n(jVar, "null cannot be cast to non-null type java.util.Comparator<T of kotlin.comparisons.ComparisonsKt__ComparisonsKt.naturalOrder>");
        return jVar;
    }

    @Ef.f
    public static final <T extends Comparable<? super T>> Comparator<T> r() {
        return s(q());
    }

    @NotNull
    public static final <T> Comparator<T> s(@NotNull final Comparator<? super T> comparator) {
        M.p(comparator, "comparator");
        return new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int t10;
                t10 = C15420g.t(Comparator.this, obj, obj2);
                return t10;
            }
        };
    }

    public static final int t(Comparator comparator, Object obj, Object obj2) {
        if (obj == obj2) {
            return 0;
        }
        if (obj == null) {
            return -1;
        }
        if (obj2 == null) {
            return 1;
        }
        return comparator.compare(obj, obj2);
    }

    @Ef.f
    public static final <T extends Comparable<? super T>> Comparator<T> u() {
        return v(q());
    }

    @NotNull
    public static final <T> Comparator<T> v(@NotNull final Comparator<? super T> comparator) {
        M.p(comparator, "comparator");
        return new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int w10;
                w10 = C15420g.w(Comparator.this, obj, obj2);
                return w10;
            }
        };
    }

    public static final int w(Comparator comparator, Object obj, Object obj2) {
        if (obj == obj2) {
            return 0;
        }
        if (obj == null) {
            return 1;
        }
        if (obj2 == null) {
            return -1;
        }
        return comparator.compare(obj, obj2);
    }

    @NotNull
    public static <T extends Comparable<? super T>> Comparator<T> x() {
        k kVar = k.f117393b;
        M.n(kVar, "null cannot be cast to non-null type java.util.Comparator<T of kotlin.comparisons.ComparisonsKt__ComparisonsKt.reverseOrder>");
        return kVar;
    }

    @NotNull
    public static final <T> Comparator<T> y(@NotNull Comparator<T> comparator) {
        M.p(comparator, "<this>");
        if (comparator instanceof l) {
            return ((l) comparator).a();
        }
        Comparator<T> comparator2 = j.f117392b;
        if (M.g(comparator, comparator2)) {
            k kVar = k.f117393b;
            M.n(kVar, "null cannot be cast to non-null type java.util.Comparator<T of kotlin.comparisons.ComparisonsKt__ComparisonsKt.reversed>");
            return kVar;
        }
        if (M.g(comparator, k.f117393b)) {
            M.n(comparator2, "null cannot be cast to non-null type java.util.Comparator<T of kotlin.comparisons.ComparisonsKt__ComparisonsKt.reversed>");
        } else {
            comparator2 = new l<>(comparator);
        }
        return comparator2;
    }

    @NotNull
    public static final <T> Comparator<T> z(@NotNull final Comparator<T> comparator, @NotNull final Comparator<? super T> comparator2) {
        M.p(comparator, "<this>");
        M.p(comparator2, "comparator");
        return new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int A10;
                A10 = C15420g.A(Comparator.this, comparator2, obj, obj2);
                return A10;
            }
        };
    }
}
