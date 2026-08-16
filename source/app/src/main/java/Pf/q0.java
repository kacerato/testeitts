package pf;

import Xf.InterfaceC3312m;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import nf.InterfaceC14394D;
import nf.InterfaceC14422l0;
import nf.P0;
import org.jetbrains.annotations.NotNull;

@kotlin.jvm.internal.t0({"SMAP\n_Maps.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,676:1\n99#1,5:677\n115#1,5:682\n158#1,3:687\n148#1:690\n221#1:691\n222#1:693\n149#1:694\n221#1:695\n222#1:697\n1#2:692\n1#2:696\n2015#3,14:698\n2045#3,14:712\n2439#3,14:726\n2469#3,14:740\n1924#3,3:754\n*S KotlinDebug\n*F\n+ 1 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n78#1:677,5\n91#1:682,5\n129#1:687,3\n139#1:690\n139#1:691\n139#1:693\n139#1:694\n148#1:695\n148#1:697\n139#1:692\n243#1:698,14\n261#1:712,14\n441#1:726,14\n459#1:740,14\n656#1:754,3\n*E\n"})
public class q0 extends p0 {
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <K, V> Float A1(Map<? extends K, ? extends V> map, Mf.l<? super Map.Entry<? extends K, ? extends V>, Float> selector) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        float floatValue = selector.invoke(it.next()).floatValue();
        while (it.hasNext()) {
            floatValue = Math.min(floatValue, selector.invoke(it.next()).floatValue());
        }
        return Float.valueOf(floatValue);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <K, V, R> R B1(Map<? extends K, ? extends V> map, Comparator<? super R> comparator, Mf.l<? super Map.Entry<? extends K, ? extends V>, ? extends R> selector) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke(it.next());
        while (it.hasNext()) {
            Object obj2 = (R) selector.invoke(it.next());
            if (comparator.compare(obj, obj2) > 0) {
                obj = (R) obj2;
            }
        }
        return (R) obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <K, V, R> R C1(Map<? extends K, ? extends V> map, Comparator<? super R> comparator, Mf.l<? super Map.Entry<? extends K, ? extends V>, ? extends R> selector) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        Object obj = (R) selector.invoke(it.next());
        while (it.hasNext()) {
            Object obj2 = (R) selector.invoke(it.next());
            if (comparator.compare(obj, obj2) > 0) {
                obj = (Object) obj2;
            }
        }
        return obj;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <K, V> Map.Entry<K, V> D1(Map<? extends K, ? extends V> map, Comparator<? super Map.Entry<? extends K, ? extends V>> comparator) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return (Map.Entry) S.s4(map.entrySet(), comparator);
    }

    @Ef.f
    @Lf.j(name = "minWithOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <K, V> Map.Entry<K, V> E1(Map<? extends K, ? extends V> map, Comparator<? super Map.Entry<? extends K, ? extends V>> comparator) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return (Map.Entry) S.t4(map.entrySet(), comparator);
    }

    public static final <K, V> boolean F1(@NotNull Map<? extends K, ? extends V> map) {
        kotlin.jvm.internal.M.p(map, "<this>");
        return map.isEmpty();
    }

    public static final <K, V> boolean G1(@NotNull Map<? extends K, ? extends V> map, @NotNull Mf.l<? super Map.Entry<? extends K, ? extends V>, Boolean> predicate) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        if (map.isEmpty()) {
            return true;
        }
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            if (predicate.invoke(it.next()).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @InterfaceC14422l0(version = "1.1")
    @NotNull
    public static final <K, V, M extends Map<? extends K, ? extends V>> M H1(@NotNull M m10, @NotNull Mf.l<? super Map.Entry<? extends K, ? extends V>, P0> action) {
        kotlin.jvm.internal.M.p(m10, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        Iterator<Map.Entry<K, V>> it = m10.entrySet().iterator();
        while (it.hasNext()) {
            action.invoke(it.next());
        }
        return m10;
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <K, V, M extends Map<? extends K, ? extends V>> M I1(@NotNull M m10, @NotNull Mf.p<? super Integer, ? super Map.Entry<? extends K, ? extends V>, P0> action) {
        kotlin.jvm.internal.M.p(m10, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        int i10 = 0;
        for (Map.Entry<K, V> entry : m10.entrySet()) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                H.b0();
            }
            action.invoke(Integer.valueOf(i10), entry);
            i10 = i11;
        }
        return m10;
    }

    @NotNull
    public static final <K, V> List<nf.Z<K, V>> J1(@NotNull Map<? extends K, ? extends V> map) {
        kotlin.jvm.internal.M.p(map, "<this>");
        if (map.size() == 0) {
            return H.J();
        }
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            return H.J();
        }
        Map.Entry<? extends K, ? extends V> next = it.next();
        if (!it.hasNext()) {
            return G.l(new nf.Z(next.getKey(), next.getValue()));
        }
        ArrayList arrayList = new ArrayList(map.size());
        arrayList.add(new nf.Z(next.getKey(), next.getValue()));
        do {
            Map.Entry<? extends K, ? extends V> next2 = it.next();
            arrayList.add(new nf.Z(next2.getKey(), next2.getValue()));
        } while (it.hasNext());
        return arrayList;
    }

    public static final <K, V> boolean P0(@NotNull Map<? extends K, ? extends V> map, @NotNull Mf.l<? super Map.Entry<? extends K, ? extends V>, Boolean> predicate) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        if (map.isEmpty()) {
            return true;
        }
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            if (!predicate.invoke(it.next()).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    public static final <K, V> boolean Q0(@NotNull Map<? extends K, ? extends V> map) {
        kotlin.jvm.internal.M.p(map, "<this>");
        return !map.isEmpty();
    }

    public static final <K, V> boolean R0(@NotNull Map<? extends K, ? extends V> map, @NotNull Mf.l<? super Map.Entry<? extends K, ? extends V>, Boolean> predicate) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        if (map.isEmpty()) {
            return false;
        }
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            if (predicate.invoke(it.next()).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @Ef.f
    public static final <K, V> Iterable<Map.Entry<K, V>> S0(Map<? extends K, ? extends V> map) {
        kotlin.jvm.internal.M.p(map, "<this>");
        return map.entrySet();
    }

    @NotNull
    public static final <K, V> InterfaceC3312m<Map.Entry<K, V>> T0(@NotNull Map<? extends K, ? extends V> map) {
        kotlin.jvm.internal.M.p(map, "<this>");
        return S.E1(map.entrySet());
    }

    @Ef.f
    public static final <K, V> int U0(Map<? extends K, ? extends V> map) {
        kotlin.jvm.internal.M.p(map, "<this>");
        return map.size();
    }

    public static final <K, V> int V0(@NotNull Map<? extends K, ? extends V> map, @NotNull Mf.l<? super Map.Entry<? extends K, ? extends V>, Boolean> predicate) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int i10 = 0;
        if (map.isEmpty()) {
            return 0;
        }
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            if (predicate.invoke(it.next()).booleanValue()) {
                i10++;
            }
        }
        return i10;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final <K, V, R> R W0(Map<? extends K, ? extends V> map, Mf.l<? super Map.Entry<? extends K, ? extends V>, ? extends R> transform) {
        R r10;
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                r10 = null;
                break;
            }
            r10 = transform.invoke(it.next());
            if (r10 != null) {
                break;
            }
        }
        if (r10 != null) {
            return r10;
        }
        throw new NoSuchElementException("No element of the map was transformed to a non-null value.");
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final <K, V, R> R X0(Map<? extends K, ? extends V> map, Mf.l<? super Map.Entry<? extends K, ? extends V>, ? extends R> transform) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            R invoke = transform.invoke(it.next());
            if (invoke != null) {
                return invoke;
            }
        }
        return null;
    }

    @NotNull
    public static final <K, V, R> List<R> Y0(@NotNull Map<? extends K, ? extends V> map, @NotNull Mf.l<? super Map.Entry<? extends K, ? extends V>, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            M.t0(arrayList, transform.invoke(it.next()));
        }
        return arrayList;
    }

    @nf.Y
    @NotNull
    @Lf.j(name = "flatMapSequence")
    @InterfaceC14422l0(version = "1.4")
    public static final <K, V, R> List<R> Z0(@NotNull Map<? extends K, ? extends V> map, @NotNull Mf.l<? super Map.Entry<? extends K, ? extends V>, ? extends InterfaceC3312m<? extends R>> transform) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            M.s0(arrayList, transform.invoke(it.next()));
        }
        return arrayList;
    }

    @nf.Y
    @NotNull
    @Lf.j(name = "flatMapSequenceTo")
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <K, V, R, C extends Collection<? super R>> C a1(@NotNull Map<? extends K, ? extends V> map, @NotNull C destination, @NotNull Mf.l<? super Map.Entry<? extends K, ? extends V>, ? extends InterfaceC3312m<? extends R>> transform) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            M.s0(destination, transform.invoke(it.next()));
        }
        return destination;
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, V, R, C extends Collection<? super R>> C b1(@NotNull Map<? extends K, ? extends V> map, @NotNull C destination, @NotNull Mf.l<? super Map.Entry<? extends K, ? extends V>, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            M.t0(destination, transform.invoke(it.next()));
        }
        return destination;
    }

    @Ef.e
    public static final <K, V> void c1(@NotNull Map<? extends K, ? extends V> map, @NotNull Mf.l<? super Map.Entry<? extends K, ? extends V>, P0> action) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            action.invoke(it.next());
        }
    }

    @NotNull
    public static final <K, V, R> List<R> d1(@NotNull Map<? extends K, ? extends V> map, @NotNull Mf.l<? super Map.Entry<? extends K, ? extends V>, ? extends R> transform) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList(map.size());
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.add(transform.invoke(it.next()));
        }
        return arrayList;
    }

    @NotNull
    public static final <K, V, R> List<R> e1(@NotNull Map<? extends K, ? extends V> map, @NotNull Mf.l<? super Map.Entry<? extends K, ? extends V>, ? extends R> transform) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            R invoke = transform.invoke(it.next());
            if (invoke != null) {
                arrayList.add(invoke);
            }
        }
        return arrayList;
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, V, R, C extends Collection<? super R>> C f1(@NotNull Map<? extends K, ? extends V> map, @NotNull C destination, @NotNull Mf.l<? super Map.Entry<? extends K, ? extends V>, ? extends R> transform) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            R invoke = transform.invoke(it.next());
            if (invoke != null) {
                destination.add(invoke);
            }
        }
        return destination;
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, V, R, C extends Collection<? super R>> C g1(@NotNull Map<? extends K, ? extends V> map, @NotNull C destination, @NotNull Mf.l<? super Map.Entry<? extends K, ? extends V>, ? extends R> transform) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            destination.add(transform.invoke(it.next()));
        }
        return destination;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <K, V, R extends Comparable<? super R>> Map.Entry<K, V> h1(Map<? extends K, ? extends V> map, Mf.l<? super Map.Entry<? extends K, ? extends V>, ? extends R> selector) {
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
    @Lf.j(name = "maxByOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <K, V, R extends Comparable<? super R>> Map.Entry<K, V> i1(Map<? extends K, ? extends V> map, Mf.l<? super Map.Entry<? extends K, ? extends V>, ? extends R> selector) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
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
        return next;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <K, V> double j1(Map<? extends K, ? extends V> map, Mf.l<? super Map.Entry<? extends K, ? extends V>, Double> selector) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(it.next()).doubleValue();
        while (it.hasNext()) {
            doubleValue = Math.max(doubleValue, selector.invoke(it.next()).doubleValue());
        }
        return doubleValue;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <K, V> float k1(Map<? extends K, ? extends V> map, Mf.l<? super Map.Entry<? extends K, ? extends V>, Float> selector) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(it.next()).floatValue();
        while (it.hasNext()) {
            floatValue = Math.max(floatValue, selector.invoke(it.next()).floatValue());
        }
        return floatValue;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <K, V, R extends Comparable<? super R>> R l1(Map<? extends K, ? extends V> map, Mf.l<? super Map.Entry<? extends K, ? extends V>, ? extends R> selector) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(it.next());
        while (it.hasNext()) {
            R invoke2 = selector.invoke(it.next());
            if (invoke.compareTo(invoke2) < 0) {
                invoke = invoke2;
            }
        }
        return invoke;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <K, V, R extends Comparable<? super R>> R m1(Map<? extends K, ? extends V> map, Mf.l<? super Map.Entry<? extends K, ? extends V>, ? extends R> selector) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        R invoke = selector.invoke(it.next());
        while (it.hasNext()) {
            R invoke2 = selector.invoke(it.next());
            if (invoke.compareTo(invoke2) < 0) {
                invoke = invoke2;
            }
        }
        return invoke;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <K, V> Double n1(Map<? extends K, ? extends V> map, Mf.l<? super Map.Entry<? extends K, ? extends V>, Double> selector) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        double doubleValue = selector.invoke(it.next()).doubleValue();
        while (it.hasNext()) {
            doubleValue = Math.max(doubleValue, selector.invoke(it.next()).doubleValue());
        }
        return Double.valueOf(doubleValue);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <K, V> Float o1(Map<? extends K, ? extends V> map, Mf.l<? super Map.Entry<? extends K, ? extends V>, Float> selector) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        float floatValue = selector.invoke(it.next()).floatValue();
        while (it.hasNext()) {
            floatValue = Math.max(floatValue, selector.invoke(it.next()).floatValue());
        }
        return Float.valueOf(floatValue);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <K, V, R> R p1(Map<? extends K, ? extends V> map, Comparator<? super R> comparator, Mf.l<? super Map.Entry<? extends K, ? extends V>, ? extends R> selector) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke(it.next());
        while (it.hasNext()) {
            Object obj2 = (R) selector.invoke(it.next());
            if (comparator.compare(obj, obj2) < 0) {
                obj = (R) obj2;
            }
        }
        return (R) obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <K, V, R> R q1(Map<? extends K, ? extends V> map, Comparator<? super R> comparator, Mf.l<? super Map.Entry<? extends K, ? extends V>, ? extends R> selector) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        Object obj = (R) selector.invoke(it.next());
        while (it.hasNext()) {
            Object obj2 = (R) selector.invoke(it.next());
            if (comparator.compare(obj, obj2) < 0) {
                obj = (Object) obj2;
            }
        }
        return obj;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <K, V> Map.Entry<K, V> r1(Map<? extends K, ? extends V> map, Comparator<? super Map.Entry<? extends K, ? extends V>> comparator) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return (Map.Entry) S.a4(map.entrySet(), comparator);
    }

    @Ef.f
    @Lf.j(name = "maxWithOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <K, V> Map.Entry<K, V> s1(Map<? extends K, ? extends V> map, Comparator<? super Map.Entry<? extends K, ? extends V>> comparator) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return (Map.Entry) S.b4(map.entrySet(), comparator);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <K, V, R extends Comparable<? super R>> Map.Entry<K, V> t1(Map<? extends K, ? extends V> map, Mf.l<? super Map.Entry<? extends K, ? extends V>, ? extends R> selector) {
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

    @Ef.f
    @Lf.j(name = "minByOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <K, V, R extends Comparable<? super R>> Map.Entry<K, V> u1(Map<? extends K, ? extends V> map, Mf.l<? super Map.Entry<? extends K, ? extends V>, ? extends R> selector) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
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
        return next;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <K, V> double v1(Map<? extends K, ? extends V> map, Mf.l<? super Map.Entry<? extends K, ? extends V>, Double> selector) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(it.next()).doubleValue();
        while (it.hasNext()) {
            doubleValue = Math.min(doubleValue, selector.invoke(it.next()).doubleValue());
        }
        return doubleValue;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <K, V> float w1(Map<? extends K, ? extends V> map, Mf.l<? super Map.Entry<? extends K, ? extends V>, Float> selector) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(it.next()).floatValue();
        while (it.hasNext()) {
            floatValue = Math.min(floatValue, selector.invoke(it.next()).floatValue());
        }
        return floatValue;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <K, V, R extends Comparable<? super R>> R x1(Map<? extends K, ? extends V> map, Mf.l<? super Map.Entry<? extends K, ? extends V>, ? extends R> selector) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(it.next());
        while (it.hasNext()) {
            R invoke2 = selector.invoke(it.next());
            if (invoke.compareTo(invoke2) > 0) {
                invoke = invoke2;
            }
        }
        return invoke;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <K, V, R extends Comparable<? super R>> R y1(Map<? extends K, ? extends V> map, Mf.l<? super Map.Entry<? extends K, ? extends V>, ? extends R> selector) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        R invoke = selector.invoke(it.next());
        while (it.hasNext()) {
            R invoke2 = selector.invoke(it.next());
            if (invoke.compareTo(invoke2) > 0) {
                invoke = invoke2;
            }
        }
        return invoke;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <K, V> Double z1(Map<? extends K, ? extends V> map, Mf.l<? super Map.Entry<? extends K, ? extends V>, Double> selector) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        double doubleValue = selector.invoke(it.next()).doubleValue();
        while (it.hasNext()) {
            doubleValue = Math.min(doubleValue, selector.invoke(it.next()).doubleValue());
        }
        return Double.valueOf(doubleValue);
    }
}
