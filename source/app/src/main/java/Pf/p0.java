package pf;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import nf.InterfaceC14412g0;
import nf.InterfaceC14427o;
import nf.InterfaceC14429p;

public class p0 extends o0 {
    @Ef.f
    @InterfaceC14427o(message = "Use maxByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final <K, V, R extends Comparable<? super R>> Map.Entry<K, V> L0(Map<? extends K, ? extends V> map, Mf.l<? super Map.Entry<? extends K, ? extends V>, ? extends R> selector) {
        Object obj;
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry<? extends K, ? extends V> next = it.next();
            if (it.hasNext()) {
                R invoke = selector.invoke(next);
                do {
                    Map.Entry<? extends K, ? extends V> next2 = it.next();
                    R invoke2 = selector.invoke(next2);
                    if (invoke.compareTo(invoke2) < 0) {
                        next = next2;
                        invoke = invoke2;
                    }
                } while (it.hasNext());
            }
            obj = next;
        } else {
            obj = null;
        }
        return (Map.Entry) obj;
    }

    @Ef.f
    @InterfaceC14427o(message = "Use maxWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final <K, V> Map.Entry<K, V> M0(Map<? extends K, ? extends V> map, Comparator<? super Map.Entry<? extends K, ? extends V>> comparator) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return (Map.Entry) S.a4(map.entrySet(), comparator);
    }

    @InterfaceC14427o(message = "Use minByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final <K, V, R extends Comparable<? super R>> Map.Entry<K, V> N0(Map<? extends K, ? extends V> map, Mf.l<? super Map.Entry<? extends K, ? extends V>, ? extends R> selector) {
        Object obj;
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry<? extends K, ? extends V> next = it.next();
            if (it.hasNext()) {
                R invoke = selector.invoke(next);
                do {
                    Map.Entry<? extends K, ? extends V> next2 = it.next();
                    R invoke2 = selector.invoke(next2);
                    if (invoke.compareTo(invoke2) > 0) {
                        next = next2;
                        invoke = invoke2;
                    }
                } while (it.hasNext());
            }
            obj = next;
        } else {
            obj = null;
        }
        return (Map.Entry) obj;
    }

    @InterfaceC14427o(message = "Use minWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Map.Entry O0(Map map, Comparator comparator) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return (Map.Entry) S.s4(map.entrySet(), comparator);
    }
}
