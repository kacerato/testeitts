package pf;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Random;
import kotlin.NotImplementedError;
import nf.EnumC14431q;
import nf.InterfaceC14412g0;
import nf.InterfaceC14422l0;
import nf.InterfaceC14427o;
import org.jetbrains.annotations.NotNull;

public class L extends K {
    @Ef.f
    @InterfaceC14422l0(version = "1.2")
    public static final <T> void l0(List<T> list, T t10) {
        kotlin.jvm.internal.M.p(list, "<this>");
        Collections.fill(list, t10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.2")
    public static final <T> void m0(List<T> list) {
        kotlin.jvm.internal.M.p(list, "<this>");
        Collections.shuffle(list);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.2")
    public static final <T> void n0(List<T> list, Random random) {
        kotlin.jvm.internal.M.p(list, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        Collections.shuffle(list, random);
    }

    public static <T extends Comparable<? super T>> void o0(@NotNull List<T> list) {
        kotlin.jvm.internal.M.p(list, "<this>");
        if (list.size() > 1) {
            Collections.sort(list);
        }
    }

    @Ef.f
    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Use sortWith(Comparator(comparison)) instead.", replaceWith = @InterfaceC14412g0(expression = "this.sortWith(Comparator(comparison))", imports = {}))
    public static final <T> void p0(List<T> list, Mf.p<? super T, ? super T, Integer> comparison) {
        kotlin.jvm.internal.M.p(list, "<this>");
        kotlin.jvm.internal.M.p(comparison, "comparison");
        throw new NotImplementedError(null, 1, null);
    }

    @Ef.f
    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Use sortWith(comparator) instead.", replaceWith = @InterfaceC14412g0(expression = "this.sortWith(comparator)", imports = {}))
    public static final <T> void q0(List<T> list, Comparator<? super T> comparator) {
        kotlin.jvm.internal.M.p(list, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        throw new NotImplementedError(null, 1, null);
    }

    public static <T> void r0(@NotNull List<T> list, @NotNull Comparator<? super T> comparator) {
        kotlin.jvm.internal.M.p(list, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (list.size() > 1) {
            Collections.sort(list, comparator);
        }
    }
}
