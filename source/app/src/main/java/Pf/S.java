package pf;

import Xf.InterfaceC3312m;
import ag.C3643z;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.Set;
import nf.InterfaceC14394D;
import nf.InterfaceC14412g0;
import nf.InterfaceC14422l0;
import nf.InterfaceC14427o;
import nf.InterfaceC14429p;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import tf.C15420g;

@kotlin.jvm.internal.t0({"SMAP\n_Collections.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,3843:1\n296#1,2:3844\n531#1,7:3846\n546#1,6:3853\n873#1,2:3860\n800#1:3862\n1924#1,2:3863\n801#1,2:3865\n1926#1:3867\n803#1:3868\n1924#1,3:3869\n822#1,2:3872\n862#1,2:3874\n1282#1,4:3880\n1249#1,4:3884\n1266#1,4:3888\n1315#1,4:3892\n1480#1,5:3896\n1496#1,5:3901\n1538#1,3:3906\n1541#1,3:3916\n1557#1,3:3919\n1560#1,3:3929\n1661#1,3:3946\n1629#1,4:3949\n1617#1:3953\n1924#1,2:3954\n1926#1:3957\n1618#1:3958\n1924#1,3:3959\n1651#1:3962\n1915#1:3963\n1916#1:3965\n1652#1:3966\n1915#1,2:3967\n1924#1,3:3969\n3013#1,3:3972\n3016#1,6:3976\n3038#1,3:3982\n3041#1,7:3986\n873#1,2:3993\n832#1:3995\n862#1,2:3996\n832#1:3998\n862#1,2:3999\n832#1:4001\n862#1,2:4002\n3562#1,8:4008\n3590#1,7:4016\n3621#1,10:4023\n1#2:3859\n1#2:3956\n1#2:3964\n1#2:3975\n1#2:3985\n37#3,2:3876\n37#3,2:3878\n383#4,7:3909\n383#4,7:3922\n383#4,7:3932\n383#4,7:3939\n32#5,2:4004\n32#5,2:4006\n*S KotlinDebug\n*F\n+ 1 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n175#1:3844,2\n185#1:3846,7\n195#1:3853,6\n777#1:3860,2\n788#1:3862\n788#1:3863,2\n788#1:3865,2\n788#1:3867\n788#1:3868\n800#1:3869,3\n812#1:3872,2\n832#1:3874,2\n1206#1:3880,4\n1221#1:3884,4\n1235#1:3888,4\n1301#1:3892,4\n1391#1:3896,5\n1404#1:3901,5\n1512#1:3906,3\n1512#1:3916,3\n1525#1:3919,3\n1525#1:3929,3\n1586#1:3946,3\n1596#1:3949,4\n1606#1:3953\n1606#1:3954,2\n1606#1:3957\n1606#1:3958\n1617#1:3959,3\n1642#1:3962\n1642#1:3963\n1642#1:3965\n1642#1:3966\n1651#1:3967,2\n2813#1:3969,3\n3113#1:3972,3\n3113#1:3976,6\n3130#1:3982,3\n3130#1:3986,7\n3300#1:3993,2\n3308#1:3995\n3308#1:3996,2\n3318#1:3998\n3318#1:3999,2\n3328#1:4001\n3328#1:4002,2\n3551#1:4008,8\n3579#1:4016,7\n3608#1:4023,10\n1606#1:3956\n1642#1:3964\n3113#1:3975\n3130#1:3985\n1054#1:3876,2\n1101#1:3878,2\n1512#1:3909,7\n1525#1:3922,7\n1540#1:3932,7\n1559#1:3939,7\n3496#1:4004,2\n3538#1:4006,2\n*E\n"})
public class S extends O {

    @kotlin.jvm.internal.t0({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,730:1\n3684#2:731\n*E\n"})
    public static final class a<T> implements InterfaceC3312m<T> {

        public final Iterable f103828a;

        public a(Iterable iterable) {
            this.f103828a = iterable;
        }

        @Override
        public Iterator<T> iterator() {
            return this.f103828a.iterator();
        }
    }

    @kotlin.jvm.internal.t0({"SMAP\n_Collections.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt$groupingBy$1\n*L\n1#1,3843:1\n*E\n"})
    public static final class b<K, T> implements Z<T, K> {

        public final Iterable<T> f103829a;

        public final Mf.l<T, K> f103830b;

        /* JADX WARN: Multi-variable type inference failed */
        public b(Iterable<? extends T> iterable, Mf.l<? super T, ? extends K> lVar) {
            this.f103829a = iterable;
            this.f103830b = lVar;
        }

        @Override
        public K a(T t10) {
            return this.f103830b.invoke(t10);
        }

        @Override
        public Iterator<T> b() {
            return this.f103829a.iterator();
        }
    }

    public static final <T> boolean A1(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        if ((iterable instanceof Collection) && ((Collection) iterable).isEmpty()) {
            return true;
        }
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            if (!predicate.invoke(it.next()).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, C extends Collection<? super T>> C A2(@NotNull Iterable<? extends T> iterable, @NotNull C destination, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (T t10 : iterable) {
            if (predicate.invoke(t10).booleanValue()) {
                destination.add(t10);
            }
        }
        return destination;
    }

    @Nullable
    public static final <T> T A3(@NotNull List<? extends T> list) {
        kotlin.jvm.internal.M.p(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.get(list.size() - 1);
    }

    public static final <T> boolean A4(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        if ((iterable instanceof Collection) && ((Collection) iterable).isEmpty()) {
            return true;
        }
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            if (predicate.invoke(it.next()).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public static <T> Set<T> A5(@NotNull Iterable<? extends T> iterable, @NotNull Iterable<? extends T> other) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        Collection v02 = M.v0(other);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (T t10 : iterable) {
            if (!v02.contains(t10)) {
                linkedHashSet.add(t10);
            }
        }
        return linkedHashSet;
    }

    public static final <T> boolean B1(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        return iterable instanceof Collection ? !((Collection) iterable).isEmpty() : iterable.iterator().hasNext();
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
    @Ef.f
    public static final <T> T B2(Iterable<? extends T> iterable, Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (T t10 : iterable) {
            if (predicate.invoke(t10).booleanValue()) {
                return t10;
            }
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
    @Nullable
    public static final <T> T B3(@NotNull List<? extends T> list, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(list, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ListIterator<? extends T> listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            T previous = listIterator.previous();
            if (predicate.invoke(previous).booleanValue()) {
                return previous;
            }
        }
        return null;
    }

    @InterfaceC14422l0(version = "1.1")
    @NotNull
    public static final <T, C extends Iterable<? extends T>> C B4(@NotNull C c10, @NotNull Mf.l<? super T, P0> action) {
        kotlin.jvm.internal.M.p(c10, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        Iterator<T> it = c10.iterator();
        while (it.hasNext()) {
            action.invoke(it.next());
        }
        return c10;
    }

    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    public static final <T> int B5(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, Integer> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = iterable.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 += selector.invoke(it.next()).intValue();
        }
        return i10;
    }

    public static final <T> boolean C1(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        if ((iterable instanceof Collection) && ((Collection) iterable).isEmpty()) {
            return false;
        }
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            if (predicate.invoke(it.next()).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
    @Ef.f
    public static final <T> T C2(Iterable<? extends T> iterable, Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        T t10 = null;
        for (T t11 : iterable) {
            if (predicate.invoke(t11).booleanValue()) {
                t10 = t11;
            }
        }
        return t10;
    }

    @NotNull
    public static final <T, R> List<R> C3(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, ? extends R> transform) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList(I.d0(iterable, 10));
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(transform.invoke(it.next()));
        }
        return arrayList;
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <T, C extends Iterable<? extends T>> C C4(@NotNull C c10, @NotNull Mf.p<? super Integer, ? super T, P0> action) {
        kotlin.jvm.internal.M.p(c10, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        int i10 = 0;
        for (T t10 : c10) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                H.b0();
            }
            action.invoke(Integer.valueOf(i10), t10);
            i10 = i11;
        }
        return c10;
    }

    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    public static final <T> double C5(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, Double> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = iterable.iterator();
        double d10 = 0.0d;
        while (it.hasNext()) {
            d10 += selector.invoke(it.next()).doubleValue();
        }
        return d10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    public static final <T> Iterable<T> D1(Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        return iterable;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [T, java.lang.Object] */
    @Ef.f
    public static final <T> T D2(List<? extends T> list, Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(list, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ListIterator<? extends T> listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            T previous = listIterator.previous();
            if (predicate.invoke(previous).booleanValue()) {
                return previous;
            }
        }
        return null;
    }

    @NotNull
    public static final <T, R> List<R> D3(@NotNull Iterable<? extends T> iterable, @NotNull Mf.p<? super Integer, ? super T, ? extends R> transform) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList(I.d0(iterable, 10));
        int i10 = 0;
        for (T t10 : iterable) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                H.b0();
            }
            arrayList.add(transform.invoke(Integer.valueOf(i10), t10));
            i10 = i11;
        }
        return arrayList;
    }

    @NotNull
    public static final <T> nf.Z<List<T>, List<T>> D4(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (T t10 : iterable) {
            if (predicate.invoke(t10).booleanValue()) {
                arrayList.add(t10);
            } else {
                arrayList2.add(t10);
            }
        }
        return new nf.Z<>(arrayList, arrayList2);
    }

    @Lf.j(name = "sumOfByte")
    public static final int D5(@NotNull Iterable<Byte> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        Iterator<Byte> it = iterable.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 += it.next().byteValue();
        }
        return i10;
    }

    @NotNull
    public static <T> InterfaceC3312m<T> E1(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        return new a(iterable);
    }

    public static final <T> T E2(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        if (iterable instanceof List) {
            return (T) G2((List) iterable);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        throw new NoSuchElementException("Collection is empty.");
    }

    @NotNull
    public static final <T, R> List<R> E3(@NotNull Iterable<? extends T> iterable, @NotNull Mf.p<? super Integer, ? super T, ? extends R> transform) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        for (T t10 : iterable) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                H.b0();
            }
            R invoke = transform.invoke(Integer.valueOf(i10), t10);
            if (invoke != null) {
                arrayList.add(invoke);
            }
            i10 = i11;
        }
        return arrayList;
    }

    @NotNull
    public static final <T> List<T> E4(@NotNull Iterable<? extends T> iterable, @NotNull InterfaceC3312m<? extends T> elements) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        ArrayList arrayList = new ArrayList();
        M.t0(arrayList, iterable);
        M.s0(arrayList, elements);
        return arrayList;
    }

    @Lf.j(name = "sumOfDouble")
    public static final double E5(@NotNull Iterable<Double> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        Iterator<Double> it = iterable.iterator();
        double d10 = 0.0d;
        while (it.hasNext()) {
            d10 += it.next().doubleValue();
        }
        return d10;
    }

    @NotNull
    public static final <T, K, V> Map<K, V> F1(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, ? extends nf.Z<? extends K, ? extends V>> transform) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(I.d0(iterable, 10)), 16));
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            nf.Z<? extends K, ? extends V> invoke = transform.invoke(it.next());
            linkedHashMap.put(invoke.e(), invoke.f());
        }
        return linkedHashMap;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
    public static final <T> T F2(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (T t10 : iterable) {
            if (predicate.invoke(t10).booleanValue()) {
                return t10;
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, R, C extends Collection<? super R>> C F3(@NotNull Iterable<? extends T> iterable, @NotNull C destination, @NotNull Mf.p<? super Integer, ? super T, ? extends R> transform) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        int i10 = 0;
        for (T t10 : iterable) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                H.b0();
            }
            R invoke = transform.invoke(Integer.valueOf(i10), t10);
            if (invoke != null) {
                destination.add(invoke);
            }
            i10 = i11;
        }
        return destination;
    }

    @NotNull
    public static final <T> List<T> F4(@NotNull Iterable<? extends T> iterable, @NotNull Iterable<? extends T> elements) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        if (iterable instanceof Collection) {
            return J4((Collection) iterable, elements);
        }
        ArrayList arrayList = new ArrayList();
        M.t0(arrayList, iterable);
        M.t0(arrayList, elements);
        return arrayList;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfDouble")
    @InterfaceC14422l0(version = "1.4")
    public static final <T> double F5(Iterable<? extends T> iterable, Mf.l<? super T, Double> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = iterable.iterator();
        double d10 = 0.0d;
        while (it.hasNext()) {
            d10 += selector.invoke(it.next()).doubleValue();
        }
        return d10;
    }

    @NotNull
    public static final <T, K> Map<K, T> G1(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(I.d0(iterable, 10)), 16));
        for (T t10 : iterable) {
            linkedHashMap.put(keySelector.invoke(t10), t10);
        }
        return linkedHashMap;
    }

    public static <T> T G2(@NotNull List<? extends T> list) {
        kotlin.jvm.internal.M.p(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(0);
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, R, C extends Collection<? super R>> C G3(@NotNull Iterable<? extends T> iterable, @NotNull C destination, @NotNull Mf.p<? super Integer, ? super T, ? extends R> transform) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        int i10 = 0;
        for (T t10 : iterable) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                H.b0();
            }
            destination.add(transform.invoke(Integer.valueOf(i10), t10));
            i10 = i11;
        }
        return destination;
    }

    @NotNull
    public static final <T> List<T> G4(@NotNull Iterable<? extends T> iterable, T t10) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        if (iterable instanceof Collection) {
            return K4((Collection) iterable, t10);
        }
        ArrayList arrayList = new ArrayList();
        M.t0(arrayList, iterable);
        arrayList.add(t10);
        return arrayList;
    }

    @Lf.j(name = "sumOfFloat")
    public static final float G5(@NotNull Iterable<Float> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        Iterator<Float> it = iterable.iterator();
        float f10 = 0.0f;
        while (it.hasNext()) {
            f10 += it.next().floatValue();
        }
        return f10;
    }

    @NotNull
    public static final <T, K, V> Map<K, V> H1(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, ? extends K> keySelector, @NotNull Mf.l<? super T, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(I.d0(iterable, 10)), 16));
        for (T t10 : iterable) {
            linkedHashMap.put(keySelector.invoke(t10), valueTransform.invoke(t10));
        }
        return linkedHashMap;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final <T, R> R H2(Iterable<? extends T> iterable, Mf.l<? super T, ? extends R> transform) {
        R r10;
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        Iterator<? extends T> it = iterable.iterator();
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
        throw new NoSuchElementException("No element of the collection was transformed to a non-null value.");
    }

    @NotNull
    public static final <T, R> List<R> H3(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, ? extends R> transform) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            R invoke = transform.invoke(it.next());
            if (invoke != null) {
                arrayList.add(invoke);
            }
        }
        return arrayList;
    }

    @NotNull
    public static final <T> List<T> H4(@NotNull Iterable<? extends T> iterable, @NotNull T[] elements) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        if (iterable instanceof Collection) {
            return L4((Collection) iterable, elements);
        }
        ArrayList arrayList = new ArrayList();
        M.t0(arrayList, iterable);
        M.u0(arrayList, elements);
        return arrayList;
    }

    @Lf.j(name = "sumOfInt")
    public static final int H5(@NotNull Iterable<Integer> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        Iterator<Integer> it = iterable.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 += it.next().intValue();
        }
        return i10;
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, K, M extends Map<? super K, ? super T>> M I1(@NotNull Iterable<? extends T> iterable, @NotNull M destination, @NotNull Mf.l<? super T, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        for (T t10 : iterable) {
            destination.put(keySelector.invoke(t10), t10);
        }
        return destination;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final <T, R> R I2(Iterable<? extends T> iterable, Mf.l<? super T, ? extends R> transform) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            R invoke = transform.invoke(it.next());
            if (invoke != null) {
                return invoke;
            }
        }
        return null;
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, R, C extends Collection<? super R>> C I3(@NotNull Iterable<? extends T> iterable, @NotNull C destination, @NotNull Mf.l<? super T, ? extends R> transform) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            R invoke = transform.invoke(it.next());
            if (invoke != null) {
                destination.add(invoke);
            }
        }
        return destination;
    }

    @NotNull
    public static final <T> List<T> I4(@NotNull Collection<? extends T> collection, @NotNull InterfaceC3312m<? extends T> elements) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        ArrayList arrayList = new ArrayList(collection.size() + 10);
        arrayList.addAll(collection);
        M.s0(arrayList, elements);
        return arrayList;
    }

    @Ef.f
    @Lf.j(name = "sumOfInt")
    @InterfaceC14422l0(version = "1.4")
    public static final <T> int I5(Iterable<? extends T> iterable, Mf.l<? super T, Integer> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = iterable.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 += selector.invoke(it.next()).intValue();
        }
        return i10;
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, K, V, M extends Map<? super K, ? super V>> M J1(@NotNull Iterable<? extends T> iterable, @NotNull M destination, @NotNull Mf.l<? super T, ? extends K> keySelector, @NotNull Mf.l<? super T, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        for (T t10 : iterable) {
            destination.put(keySelector.invoke(t10), valueTransform.invoke(t10));
        }
        return destination;
    }

    @Nullable
    public static final <T> T J2(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.isEmpty()) {
                return null;
            }
            return (T) list.get(0);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, R, C extends Collection<? super R>> C J3(@NotNull Iterable<? extends T> iterable, @NotNull C destination, @NotNull Mf.l<? super T, ? extends R> transform) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            destination.add(transform.invoke(it.next()));
        }
        return destination;
    }

    @NotNull
    public static final <T> List<T> J4(@NotNull Collection<? extends T> collection, @NotNull Iterable<? extends T> elements) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        if (!(elements instanceof Collection)) {
            ArrayList arrayList = new ArrayList(collection);
            M.t0(arrayList, elements);
            return arrayList;
        }
        Collection collection2 = (Collection) elements;
        ArrayList arrayList2 = new ArrayList(collection.size() + collection2.size());
        arrayList2.addAll(collection);
        arrayList2.addAll(collection2);
        return arrayList2;
    }

    @Lf.j(name = "sumOfLong")
    public static final long J5(@NotNull Iterable<Long> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        Iterator<Long> it = iterable.iterator();
        long j10 = 0;
        while (it.hasNext()) {
            j10 += it.next().longValue();
        }
        return j10;
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, K, V, M extends Map<? super K, ? super V>> M K1(@NotNull Iterable<? extends T> iterable, @NotNull M destination, @NotNull Mf.l<? super T, ? extends nf.Z<? extends K, ? extends V>> transform) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            nf.Z<? extends K, ? extends V> invoke = transform.invoke(it.next());
            destination.put(invoke.e(), invoke.f());
        }
        return destination;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
    @Nullable
    public static final <T> T K2(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (T t10 : iterable) {
            if (predicate.invoke(t10).booleanValue()) {
                return t10;
            }
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [T] */
    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <T, R extends Comparable<? super R>> T K3(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        if (!it.hasNext()) {
            return next;
        }
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
        return (T) next;
    }

    @NotNull
    public static <T> List<T> K4(@NotNull Collection<? extends T> collection, T t10) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        ArrayList arrayList = new ArrayList(collection.size() + 1);
        arrayList.addAll(collection);
        arrayList.add(t10);
        return arrayList;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfLong")
    @InterfaceC14422l0(version = "1.4")
    public static final <T> long K5(Iterable<? extends T> iterable, Mf.l<? super T, Long> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = iterable.iterator();
        long j10 = 0;
        while (it.hasNext()) {
            j10 += selector.invoke(it.next()).longValue();
        }
        return j10;
    }

    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final <K, V> Map<K, V> L1(@NotNull Iterable<? extends K> iterable, @NotNull Mf.l<? super K, ? extends V> valueSelector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(valueSelector, "valueSelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(I.d0(iterable, 10)), 16));
        for (K k10 : iterable) {
            linkedHashMap.put(k10, valueSelector.invoke(k10));
        }
        return linkedHashMap;
    }

    @Nullable
    public static <T> T L2(@NotNull List<? extends T> list) {
        kotlin.jvm.internal.M.p(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [T] */
    @Lf.j(name = "maxByOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <T, R extends Comparable<? super R>> T L3(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        T next = it.next();
        if (!it.hasNext()) {
            return next;
        }
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
        return (T) next;
    }

    @NotNull
    public static final <T> List<T> L4(@NotNull Collection<? extends T> collection, @NotNull T[] elements) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        ArrayList arrayList = new ArrayList(collection.size() + elements.length);
        arrayList.addAll(collection);
        M.u0(arrayList, elements);
        return arrayList;
    }

    @Lf.j(name = "sumOfShort")
    public static final int L5(@NotNull Iterable<Short> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        Iterator<Short> it = iterable.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 += it.next().shortValue();
        }
        return i10;
    }

    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M M1(@NotNull Iterable<? extends K> iterable, @NotNull M destination, @NotNull Mf.l<? super K, ? extends V> valueSelector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(valueSelector, "valueSelector");
        for (K k10 : iterable) {
            destination.put(k10, valueSelector.invoke(k10));
        }
        return destination;
    }

    @NotNull
    public static final <T, R> List<R> M2(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            M.t0(arrayList, transform.invoke(it.next()));
        }
        return arrayList;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T> double M3(Iterable<? extends T> iterable, Mf.l<? super T, Double> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = iterable.iterator();
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
    public static final <T> List<T> M4(Iterable<? extends T> iterable, T t10) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        return G4(iterable, t10);
    }

    @Ef.f
    @Lf.j(name = "sumOfUInt")
    @InterfaceC14422l0(version = "1.5")
    public static final <T> int M5(Iterable<? extends T> iterable, Mf.l<? super T, nf.B0> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int o10 = nf.B0.o(0);
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            o10 = nf.B0.o(o10 + selector.invoke(it.next()).q0());
        }
        return o10;
    }

    @Lf.j(name = "averageOfByte")
    public static final double N1(@NotNull Iterable<Byte> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        Iterator<Byte> it = iterable.iterator();
        double d10 = 0.0d;
        int i10 = 0;
        while (it.hasNext()) {
            d10 += it.next().byteValue();
            i10++;
            if (i10 < 0) {
                H.a0();
            }
        }
        if (i10 == 0) {
            return Double.NaN;
        }
        return d10 / i10;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "flatMapIndexedIterable")
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R> List<R> N2(Iterable<? extends T> iterable, Mf.p<? super Integer, ? super T, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        for (T t10 : iterable) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                H.b0();
            }
            M.t0(arrayList, transform.invoke(Integer.valueOf(i10), t10));
            i10 = i11;
        }
        return arrayList;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T> float N3(Iterable<? extends T> iterable, Mf.l<? super T, Float> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = iterable.iterator();
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
    public static final <T> List<T> N4(Collection<? extends T> collection, T t10) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        return K4(collection, t10);
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfULong")
    @InterfaceC14422l0(version = "1.5")
    public static final <T> long N5(Iterable<? extends T> iterable, Mf.l<? super T, nf.F0> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        long i10 = nf.F0.i(0L);
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            i10 = nf.F0.i(i10 + selector.invoke(it.next()).l0());
        }
        return i10;
    }

    @Lf.j(name = "averageOfDouble")
    public static final double O1(@NotNull Iterable<Double> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        Iterator<Double> it = iterable.iterator();
        double d10 = 0.0d;
        int i10 = 0;
        while (it.hasNext()) {
            d10 += it.next().doubleValue();
            i10++;
            if (i10 < 0) {
                H.a0();
            }
        }
        if (i10 == 0) {
            return Double.NaN;
        }
        return d10 / i10;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "flatMapIndexedIterableTo")
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R, C extends Collection<? super R>> C O2(Iterable<? extends T> iterable, C destination, Mf.p<? super Integer, ? super T, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        int i10 = 0;
        for (T t10 : iterable) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                H.b0();
            }
            M.t0(destination, transform.invoke(Integer.valueOf(i10), t10));
            i10 = i11;
        }
        return destination;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R extends Comparable<? super R>> R O3(Iterable<? extends T> iterable, Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = iterable.iterator();
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
    @InterfaceC14422l0(version = "1.3")
    public static final <T> T O4(Collection<? extends T> collection) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        return (T) P4(collection, Tf.f.f24956b);
    }

    @NotNull
    public static final <T> List<T> O5(@NotNull Iterable<? extends T> iterable, int i10) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return H.J();
        }
        if (iterable instanceof Collection) {
            if (i10 >= ((Collection) iterable).size()) {
                return a6(iterable);
            }
            if (i10 == 1) {
                return G.l(E2(iterable));
            }
        }
        ArrayList arrayList = new ArrayList(i10);
        Iterator<? extends T> it = iterable.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            arrayList.add(it.next());
            i11++;
            if (i11 == i10) {
                break;
            }
        }
        return H.V(arrayList);
    }

    @Lf.j(name = "averageOfFloat")
    public static final double P1(@NotNull Iterable<Float> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        Iterator<Float> it = iterable.iterator();
        double d10 = 0.0d;
        int i10 = 0;
        while (it.hasNext()) {
            d10 += it.next().floatValue();
            i10++;
            if (i10 < 0) {
                H.a0();
            }
        }
        if (i10 == 0) {
            return Double.NaN;
        }
        return d10 / i10;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "flatMapIndexedSequence")
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R> List<R> P2(Iterable<? extends T> iterable, Mf.p<? super Integer, ? super T, ? extends InterfaceC3312m<? extends R>> transform) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        for (T t10 : iterable) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                H.b0();
            }
            M.s0(arrayList, transform.invoke(Integer.valueOf(i10), t10));
            i10 = i11;
        }
        return arrayList;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R extends Comparable<? super R>> R P3(Iterable<? extends T> iterable, Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = iterable.iterator();
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

    @InterfaceC14422l0(version = "1.3")
    public static final <T> T P4(@NotNull Collection<? extends T> collection, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        if (collection.isEmpty()) {
            throw new NoSuchElementException("Collection is empty.");
        }
        return (T) k2(collection, random.m(collection.size()));
    }

    @NotNull
    public static final <T> List<T> P5(@NotNull List<? extends T> list, int i10) {
        kotlin.jvm.internal.M.p(list, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return H.J();
        }
        int size = list.size();
        if (i10 >= size) {
            return a6(list);
        }
        if (i10 == 1) {
            return G.l(u3(list));
        }
        ArrayList arrayList = new ArrayList(i10);
        if (list instanceof RandomAccess) {
            for (int i11 = size - i10; i11 < size; i11++) {
                arrayList.add(list.get(i11));
            }
        } else {
            ListIterator<? extends T> listIterator = list.listIterator(size - i10);
            while (listIterator.hasNext()) {
                arrayList.add(listIterator.next());
            }
        }
        return arrayList;
    }

    @Lf.j(name = "averageOfInt")
    public static final double Q1(@NotNull Iterable<Integer> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        Iterator<Integer> it = iterable.iterator();
        double d10 = 0.0d;
        int i10 = 0;
        while (it.hasNext()) {
            d10 += it.next().intValue();
            i10++;
            if (i10 < 0) {
                H.a0();
            }
        }
        if (i10 == 0) {
            return Double.NaN;
        }
        return d10 / i10;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "flatMapIndexedSequenceTo")
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R, C extends Collection<? super R>> C Q2(Iterable<? extends T> iterable, C destination, Mf.p<? super Integer, ? super T, ? extends InterfaceC3312m<? extends R>> transform) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        int i10 = 0;
        for (T t10 : iterable) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                H.b0();
            }
            M.s0(destination, transform.invoke(Integer.valueOf(i10), t10));
            i10 = i11;
        }
        return destination;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T> Double Q3(Iterable<? extends T> iterable, Mf.l<? super T, Double> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = iterable.iterator();
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
    @InterfaceC14422l0(version = "1.4")
    public static final <T> T Q4(Collection<? extends T> collection) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        return (T) R4(collection, Tf.f.f24956b);
    }

    @NotNull
    public static final <T> List<T> Q5(@NotNull List<? extends T> list, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(list, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        if (list.isEmpty()) {
            return H.J();
        }
        ListIterator<? extends T> listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            if (!predicate.invoke(listIterator.previous()).booleanValue()) {
                listIterator.next();
                int size = list.size() - listIterator.nextIndex();
                if (size == 0) {
                    return H.J();
                }
                ArrayList arrayList = new ArrayList(size);
                while (listIterator.hasNext()) {
                    arrayList.add(listIterator.next());
                }
                return arrayList;
            }
        }
        return a6(list);
    }

    @Lf.j(name = "averageOfLong")
    public static final double R1(@NotNull Iterable<Long> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        Iterator<Long> it = iterable.iterator();
        double d10 = 0.0d;
        int i10 = 0;
        while (it.hasNext()) {
            d10 += it.next().longValue();
            i10++;
            if (i10 < 0) {
                H.a0();
            }
        }
        if (i10 == 0) {
            return Double.NaN;
        }
        return d10 / i10;
    }

    @nf.Y
    @NotNull
    @Lf.j(name = "flatMapSequence")
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R> List<R> R2(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, ? extends InterfaceC3312m<? extends R>> transform) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            M.s0(arrayList, transform.invoke(it.next()));
        }
        return arrayList;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T> Float R3(Iterable<? extends T> iterable, Mf.l<? super T, Float> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        float floatValue = selector.invoke(it.next()).floatValue();
        while (it.hasNext()) {
            floatValue = Math.max(floatValue, selector.invoke(it.next()).floatValue());
        }
        return Float.valueOf(floatValue);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <T> T R4(@NotNull Collection<? extends T> collection, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        if (collection.isEmpty()) {
            return null;
        }
        return (T) k2(collection, random.m(collection.size()));
    }

    @NotNull
    public static final <T> List<T> R5(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        for (T t10 : iterable) {
            if (!predicate.invoke(t10).booleanValue()) {
                break;
            }
            arrayList.add(t10);
        }
        return arrayList;
    }

    @Lf.j(name = "averageOfShort")
    public static final double S1(@NotNull Iterable<Short> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        Iterator<Short> it = iterable.iterator();
        double d10 = 0.0d;
        int i10 = 0;
        while (it.hasNext()) {
            d10 += it.next().shortValue();
            i10++;
            if (i10 < 0) {
                H.a0();
            }
        }
        if (i10 == 0) {
            return Double.NaN;
        }
        return d10 / i10;
    }

    @nf.Y
    @NotNull
    @Lf.j(name = "flatMapSequenceTo")
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R, C extends Collection<? super R>> C S2(@NotNull Iterable<? extends T> iterable, @NotNull C destination, @NotNull Mf.l<? super T, ? extends InterfaceC3312m<? extends R>> transform) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            M.s0(destination, transform.invoke(it.next()));
        }
        return destination;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R> R S3(Iterable<? extends T> iterable, Comparator<? super R> comparator, Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke((T) it.next());
        while (it.hasNext()) {
            Object obj2 = (R) selector.invoke((T) it.next());
            if (comparator.compare(obj, obj2) < 0) {
                obj = (R) obj2;
            }
        }
        return (R) obj;
    }

    public static final <S, T extends S> S S4(@NotNull Iterable<? extends T> iterable, @NotNull Mf.p<? super S, ? super T, ? extends S> operation) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            throw new UnsupportedOperationException("Empty collection can't be reduced.");
        }
        S next = it.next();
        while (it.hasNext()) {
            next = operation.invoke(next, it.next());
        }
        return next;
    }

    @NotNull
    public static final boolean[] S5(@NotNull Collection<Boolean> collection) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        boolean[] zArr = new boolean[collection.size()];
        Iterator<Boolean> it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            zArr[i10] = it.next().booleanValue();
            i10++;
        }
        return zArr;
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final <T> List<List<T>> T1(@NotNull Iterable<? extends T> iterable, int i10) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        return i6(iterable, i10, i10, true);
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, R, C extends Collection<? super R>> C T2(@NotNull Iterable<? extends T> iterable, @NotNull C destination, @NotNull Mf.l<? super T, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            M.t0(destination, transform.invoke(it.next()));
        }
        return destination;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R> R T3(Iterable<? extends T> iterable, Comparator<? super R> comparator, Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        Object obj = (R) selector.invoke((T) it.next());
        while (it.hasNext()) {
            Object obj2 = (R) selector.invoke((T) it.next());
            if (comparator.compare(obj, obj2) < 0) {
                obj = (R) obj2;
            }
        }
        return (R) obj;
    }

    public static final <S, T extends S> S T4(@NotNull Iterable<? extends T> iterable, @NotNull Mf.q<? super Integer, ? super S, ? super T, ? extends S> operation) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            throw new UnsupportedOperationException("Empty collection can't be reduced.");
        }
        S next = it.next();
        int i10 = 1;
        while (it.hasNext()) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                H.b0();
            }
            next = operation.n(Integer.valueOf(i10), next, it.next());
            i10 = i11;
        }
        return next;
    }

    @NotNull
    public static final byte[] T5(@NotNull Collection<Byte> collection) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        byte[] bArr = new byte[collection.size()];
        Iterator<Byte> it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            bArr[i10] = it.next().byteValue();
            i10++;
        }
        return bArr;
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final <T, R> List<R> U1(@NotNull Iterable<? extends T> iterable, int i10, @NotNull Mf.l<? super List<? extends T>, ? extends R> transform) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        return j6(iterable, i10, i10, true, transform);
    }

    public static final <T, R> R U2(@NotNull Iterable<? extends T> iterable, R r10, @NotNull Mf.p<? super R, ? super T, ? extends R> operation) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            r10 = operation.invoke(r10, it.next());
        }
        return r10;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <T extends Comparable<? super T>> T U3(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (next.compareTo(next2) < 0) {
                next = next2;
            }
        }
        return next;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <S, T extends S> S U4(@NotNull Iterable<? extends T> iterable, @NotNull Mf.q<? super Integer, ? super S, ? super T, ? extends S> operation) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        S next = it.next();
        int i10 = 1;
        while (it.hasNext()) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                H.b0();
            }
            next = operation.n(Integer.valueOf(i10), next, it.next());
            i10 = i11;
        }
        return next;
    }

    @NotNull
    public static final char[] U5(@NotNull Collection<Character> collection) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        char[] cArr = new char[collection.size()];
        Iterator<Character> it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            cArr[i10] = it.next().charValue();
            i10++;
        }
        return cArr;
    }

    @Ef.f
    public static final <T> T V1(List<? extends T> list) {
        kotlin.jvm.internal.M.p(list, "<this>");
        return list.get(0);
    }

    public static final <T, R> R V2(@NotNull Iterable<? extends T> iterable, R r10, @NotNull Mf.q<? super Integer, ? super R, ? super T, ? extends R> operation) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int i10 = 0;
        for (T t10 : iterable) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                H.b0();
            }
            r10 = operation.n(Integer.valueOf(i10), r10, t10);
            i10 = i11;
        }
        return r10;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Double V3(@NotNull Iterable<Double> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        Iterator<Double> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        double doubleValue = it.next().doubleValue();
        while (it.hasNext()) {
            doubleValue = Math.max(doubleValue, it.next().doubleValue());
        }
        return Double.valueOf(doubleValue);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <S, T extends S> S V4(@NotNull Iterable<? extends T> iterable, @NotNull Mf.p<? super S, ? super T, ? extends S> operation) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        S next = it.next();
        while (it.hasNext()) {
            next = operation.invoke(next, it.next());
        }
        return next;
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, C extends Collection<? super T>> C V5(@NotNull Iterable<? extends T> iterable, @NotNull C destination) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            destination.add(it.next());
        }
        return destination;
    }

    @Ef.f
    public static final <T> T W1(List<? extends T> list) {
        kotlin.jvm.internal.M.p(list, "<this>");
        return list.get(1);
    }

    public static final <T, R> R W2(@NotNull List<? extends T> list, R r10, @NotNull Mf.p<? super T, ? super R, ? extends R> operation) {
        kotlin.jvm.internal.M.p(list, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (!list.isEmpty()) {
            ListIterator<? extends T> listIterator = list.listIterator(list.size());
            while (listIterator.hasPrevious()) {
                r10 = operation.invoke(listIterator.previous(), r10);
            }
        }
        return r10;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Float W3(@NotNull Iterable<Float> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        Iterator<Float> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        float floatValue = it.next().floatValue();
        while (it.hasNext()) {
            floatValue = Math.max(floatValue, it.next().floatValue());
        }
        return Float.valueOf(floatValue);
    }

    public static final <S, T extends S> S W4(@NotNull List<? extends T> list, @NotNull Mf.p<? super T, ? super S, ? extends S> operation) {
        kotlin.jvm.internal.M.p(list, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        ListIterator<? extends T> listIterator = list.listIterator(list.size());
        if (!listIterator.hasPrevious()) {
            throw new UnsupportedOperationException("Empty list can't be reduced.");
        }
        S previous = listIterator.previous();
        while (listIterator.hasPrevious()) {
            previous = operation.invoke(listIterator.previous(), previous);
        }
        return previous;
    }

    @NotNull
    public static final double[] W5(@NotNull Collection<Double> collection) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        double[] dArr = new double[collection.size()];
        Iterator<Double> it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            dArr[i10] = it.next().doubleValue();
            i10++;
        }
        return dArr;
    }

    @Ef.f
    public static final <T> T X1(List<? extends T> list) {
        kotlin.jvm.internal.M.p(list, "<this>");
        return list.get(2);
    }

    public static final <T, R> R X2(@NotNull List<? extends T> list, R r10, @NotNull Mf.q<? super Integer, ? super T, ? super R, ? extends R> operation) {
        kotlin.jvm.internal.M.p(list, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (!list.isEmpty()) {
            ListIterator<? extends T> listIterator = list.listIterator(list.size());
            while (listIterator.hasPrevious()) {
                r10 = operation.n(Integer.valueOf(listIterator.previousIndex()), listIterator.previous(), r10);
            }
        }
        return r10;
    }

    @Lf.j(name = "maxOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final double X3(@NotNull Iterable<Double> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        Iterator<Double> it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        double doubleValue = it.next().doubleValue();
        while (it.hasNext()) {
            doubleValue = Math.max(doubleValue, it.next().doubleValue());
        }
        return doubleValue;
    }

    public static final <S, T extends S> S X4(@NotNull List<? extends T> list, @NotNull Mf.q<? super Integer, ? super T, ? super S, ? extends S> operation) {
        kotlin.jvm.internal.M.p(list, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        ListIterator<? extends T> listIterator = list.listIterator(list.size());
        if (!listIterator.hasPrevious()) {
            throw new UnsupportedOperationException("Empty list can't be reduced.");
        }
        S previous = listIterator.previous();
        while (listIterator.hasPrevious()) {
            previous = operation.n(Integer.valueOf(listIterator.previousIndex()), listIterator.previous(), previous);
        }
        return previous;
    }

    @NotNull
    public static final float[] X5(@NotNull Collection<Float> collection) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        float[] fArr = new float[collection.size()];
        Iterator<Float> it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            fArr[i10] = it.next().floatValue();
            i10++;
        }
        return fArr;
    }

    @Ef.f
    public static final <T> T Y1(List<? extends T> list) {
        kotlin.jvm.internal.M.p(list, "<this>");
        return list.get(3);
    }

    @Ef.e
    public static final <T> void Y2(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, P0> action) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            action.invoke(it.next());
        }
    }

    @Lf.j(name = "maxOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final float Y3(@NotNull Iterable<Float> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        Iterator<Float> it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        float floatValue = it.next().floatValue();
        while (it.hasNext()) {
            floatValue = Math.max(floatValue, it.next().floatValue());
        }
        return floatValue;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <S, T extends S> S Y4(@NotNull List<? extends T> list, @NotNull Mf.q<? super Integer, ? super T, ? super S, ? extends S> operation) {
        kotlin.jvm.internal.M.p(list, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        ListIterator<? extends T> listIterator = list.listIterator(list.size());
        if (!listIterator.hasPrevious()) {
            return null;
        }
        S previous = listIterator.previous();
        while (listIterator.hasPrevious()) {
            previous = operation.n(Integer.valueOf(listIterator.previousIndex()), listIterator.previous(), previous);
        }
        return previous;
    }

    @NotNull
    public static final <T> HashSet<T> Y5(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        return (HashSet) V5(iterable, new HashSet(n0.j(I.d0(iterable, 12))));
    }

    @Ef.f
    public static final <T> T Z1(List<? extends T> list) {
        kotlin.jvm.internal.M.p(list, "<this>");
        return list.get(4);
    }

    public static final <T> void Z2(@NotNull Iterable<? extends T> iterable, @NotNull Mf.p<? super Integer, ? super T, P0> action) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        int i10 = 0;
        for (T t10 : iterable) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                H.b0();
            }
            action.invoke(Integer.valueOf(i10), t10);
            i10 = i11;
        }
    }

    @Lf.j(name = "maxOrThrow")
    @InterfaceC14422l0(version = "1.7")
    @NotNull
    public static final <T extends Comparable<? super T>> T Z3(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (next.compareTo(next2) < 0) {
                next = next2;
            }
        }
        return next;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <S, T extends S> S Z4(@NotNull List<? extends T> list, @NotNull Mf.p<? super T, ? super S, ? extends S> operation) {
        kotlin.jvm.internal.M.p(list, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        ListIterator<? extends T> listIterator = list.listIterator(list.size());
        if (!listIterator.hasPrevious()) {
            return null;
        }
        S previous = listIterator.previous();
        while (listIterator.hasPrevious()) {
            previous = operation.invoke(listIterator.previous(), previous);
        }
        return previous;
    }

    @NotNull
    public static int[] Z5(@NotNull Collection<Integer> collection) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        int[] iArr = new int[collection.size()];
        Iterator<Integer> it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            iArr[i10] = it.next().intValue();
            i10++;
        }
        return iArr;
    }

    public static <T> boolean a2(@NotNull Iterable<? extends T> iterable, T t10) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        return iterable instanceof Collection ? ((Collection) iterable).contains(t10) : h3(iterable, t10) >= 0;
    }

    @Ef.f
    public static final <T> T a3(List<? extends T> list, int i10, Mf.l<? super Integer, ? extends T> defaultValue) {
        kotlin.jvm.internal.M.p(list, "<this>");
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        return (i10 < 0 || i10 >= list.size()) ? defaultValue.invoke(Integer.valueOf(i10)) : list.get(i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <T> T a4(@NotNull Iterable<? extends T> iterable, @NotNull Comparator<? super T> comparator) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        Object obj = (T) it.next();
        while (it.hasNext()) {
            Object obj2 = (T) it.next();
            if (comparator.compare(obj, obj2) < 0) {
                obj = (T) obj2;
            }
        }
        return (T) obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> Iterable<T> a5(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("null element found in " + ((Object) iterable) + '.');
            }
        }
        return iterable;
    }

    @NotNull
    public static <T> List<T> a6(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            return H.V(c6(iterable));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return H.J();
        }
        if (size != 1) {
            return d6(collection);
        }
        return G.l(iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next());
    }

    public static final <T> int b2(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        if (iterable instanceof Collection) {
            return ((Collection) iterable).size();
        }
        Iterator<? extends T> it = iterable.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            it.next();
            i10++;
            if (i10 < 0) {
                H.a0();
            }
        }
        return i10;
    }

    @Nullable
    public static <T> T b3(@NotNull List<? extends T> list, int i10) {
        kotlin.jvm.internal.M.p(list, "<this>");
        if (i10 < 0 || i10 >= list.size()) {
            return null;
        }
        return list.get(i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Lf.j(name = "maxWithOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <T> T b4(@NotNull Iterable<? extends T> iterable, @NotNull Comparator<? super T> comparator) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        Object obj = (T) it.next();
        while (it.hasNext()) {
            Object obj2 = (T) it.next();
            if (comparator.compare(obj, obj2) < 0) {
                obj = (T) obj2;
            }
        }
        return (T) obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> List<T> b5(@NotNull List<? extends T> list) {
        kotlin.jvm.internal.M.p(list, "<this>");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("null element found in " + ((Object) list) + '.');
            }
        }
        return list;
    }

    @NotNull
    public static final long[] b6(@NotNull Collection<Long> collection) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        long[] jArr = new long[collection.size()];
        Iterator<Long> it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            jArr[i10] = it.next().longValue();
            i10++;
        }
        return jArr;
    }

    public static final <T> int c2(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int i10 = 0;
        if ((iterable instanceof Collection) && ((Collection) iterable).isEmpty()) {
            return 0;
        }
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            if (predicate.invoke(it.next()).booleanValue() && (i10 = i10 + 1) < 0) {
                H.a0();
            }
        }
        return i10;
    }

    @NotNull
    public static final <T, K> Map<K, List<T>> c3(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (T t10 : iterable) {
            K invoke = keySelector.invoke(t10);
            Object obj = linkedHashMap.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                linkedHashMap.put(invoke, obj);
            }
            ((List) obj).add(t10);
        }
        return linkedHashMap;
    }

    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [T] */
    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <T, R extends Comparable<? super R>> T c4(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        if (!it.hasNext()) {
            return next;
        }
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
        return (T) next;
    }

    @NotNull
    public static final <T> List<T> c5(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        if ((iterable instanceof Collection) && ((Collection) iterable).size() <= 1) {
            return a6(iterable);
        }
        List<T> c62 = c6(iterable);
        O.t1(c62);
        return c62;
    }

    @NotNull
    public static final <T> List<T> c6(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        return iterable instanceof Collection ? d6((Collection) iterable) : (List) V5(iterable, new ArrayList());
    }

    @Ef.f
    public static final <T> int d2(Collection<? extends T> collection) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        return collection.size();
    }

    @NotNull
    public static final <T, K, V> Map<K, List<V>> d3(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, ? extends K> keySelector, @NotNull Mf.l<? super T, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (T t10 : iterable) {
            K invoke = keySelector.invoke(t10);
            List<V> list = linkedHashMap.get(invoke);
            if (list == null) {
                list = new ArrayList<>();
                linkedHashMap.put(invoke, list);
            }
            list.add(valueTransform.invoke(t10));
        }
        return linkedHashMap;
    }

    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [T] */
    @Lf.j(name = "minByOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <T, R extends Comparable<? super R>> T d4(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        T next = it.next();
        if (!it.hasNext()) {
            return next;
        }
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
        return (T) next;
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <T, R> List<R> d5(@NotNull Iterable<? extends T> iterable, R r10, @NotNull Mf.p<? super R, ? super T, ? extends R> operation) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int d02 = I.d0(iterable, 9);
        if (d02 == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(d02 + 1);
        arrayList.add(r10);
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            r10 = operation.invoke(r10, it.next());
            arrayList.add(r10);
        }
        return arrayList;
    }

    @NotNull
    public static <T> List<T> d6(@NotNull Collection<? extends T> collection) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        return new ArrayList(collection);
    }

    @NotNull
    public static final <T> List<T> e2(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        return a6(e6(iterable));
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, K, M extends Map<? super K, List<T>>> M e3(@NotNull Iterable<? extends T> iterable, @NotNull M destination, @NotNull Mf.l<? super T, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        for (T t10 : iterable) {
            K invoke = keySelector.invoke(t10);
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(t10);
        }
        return destination;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T> double e4(Iterable<? extends T> iterable, Mf.l<? super T, Double> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(it.next()).doubleValue();
        while (it.hasNext()) {
            doubleValue = Math.min(doubleValue, selector.invoke(it.next()).doubleValue());
        }
        return doubleValue;
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <T, R> List<R> e5(@NotNull Iterable<? extends T> iterable, R r10, @NotNull Mf.q<? super Integer, ? super R, ? super T, ? extends R> operation) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int d02 = I.d0(iterable, 9);
        if (d02 == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(d02 + 1);
        arrayList.add(r10);
        Iterator<? extends T> it = iterable.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            r10 = operation.n(Integer.valueOf(i10), r10, it.next());
            arrayList.add(r10);
            i10++;
        }
        return arrayList;
    }

    @NotNull
    public static <T> Set<T> e6(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        return iterable instanceof Collection ? new LinkedHashSet((Collection) iterable) : (Set) V5(iterable, new LinkedHashSet());
    }

    @NotNull
    public static final <T, K> List<T> f2(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, ? extends K> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        for (T t10 : iterable) {
            if (hashSet.add(selector.invoke(t10))) {
                arrayList.add(t10);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC14394D
    @NotNull
    public static final <T, K, V, M extends Map<? super K, List<V>>> M f3(@NotNull Iterable<? extends T> iterable, @NotNull M destination, @NotNull Mf.l<? super T, ? extends K> keySelector, @NotNull Mf.l<? super T, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        for (T t10 : iterable) {
            K invoke = keySelector.invoke(t10);
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(valueTransform.invoke(t10));
        }
        return destination;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T> float f4(Iterable<? extends T> iterable, Mf.l<? super T, Float> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(it.next()).floatValue();
        while (it.hasNext()) {
            floatValue = Math.min(floatValue, selector.invoke(it.next()).floatValue());
        }
        return floatValue;
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <S, T extends S> List<S> f5(@NotNull Iterable<? extends T> iterable, @NotNull Mf.p<? super S, ? super T, ? extends S> operation) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return H.J();
        }
        S next = it.next();
        ArrayList arrayList = new ArrayList(I.d0(iterable, 10));
        arrayList.add(next);
        while (it.hasNext()) {
            next = operation.invoke(next, it.next());
            arrayList.add(next);
        }
        return arrayList;
    }

    @NotNull
    public static <T> Set<T> f6(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            return z0.r((Set) V5(iterable, new LinkedHashSet()));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return z0.k();
        }
        if (size != 1) {
            return (Set) V5(iterable, new LinkedHashSet(n0.j(collection.size())));
        }
        return y0.f(iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next());
    }

    @NotNull
    public static <T> List<T> g2(@NotNull Iterable<? extends T> iterable, int i10) {
        ArrayList arrayList;
        kotlin.jvm.internal.M.p(iterable, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return a6(iterable);
        }
        if (iterable instanceof Collection) {
            int size = ((Collection) iterable).size() - i10;
            if (size <= 0) {
                return H.J();
            }
            if (size == 1) {
                return G.l(s3(iterable));
            }
            arrayList = new ArrayList(size);
            if (iterable instanceof List) {
                if (iterable instanceof RandomAccess) {
                    List list = (List) iterable;
                    int size2 = list.size();
                    while (i10 < size2) {
                        arrayList.add(list.get(i10));
                        i10++;
                    }
                } else {
                    ListIterator listIterator = ((List) iterable).listIterator(i10);
                    while (listIterator.hasNext()) {
                        arrayList.add(listIterator.next());
                    }
                }
                return arrayList;
            }
        } else {
            arrayList = new ArrayList();
        }
        int i11 = 0;
        for (T t10 : iterable) {
            if (i11 >= i10) {
                arrayList.add(t10);
            } else {
                i11++;
            }
        }
        return H.V(arrayList);
    }

    @InterfaceC14422l0(version = "1.1")
    @NotNull
    public static final <T, K> Z<T, K> g3(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        return new b(iterable, keySelector);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R extends Comparable<? super R>> R g4(Iterable<? extends T> iterable, Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = iterable.iterator();
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

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <S, T extends S> List<S> g5(@NotNull Iterable<? extends T> iterable, @NotNull Mf.q<? super Integer, ? super S, ? super T, ? extends S> operation) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return H.J();
        }
        S next = it.next();
        ArrayList arrayList = new ArrayList(I.d0(iterable, 10));
        arrayList.add(next);
        int i10 = 1;
        while (it.hasNext()) {
            next = operation.n(Integer.valueOf(i10), next, it.next());
            arrayList.add(next);
            i10++;
        }
        return arrayList;
    }

    @NotNull
    public static final short[] g6(@NotNull Collection<Short> collection) {
        kotlin.jvm.internal.M.p(collection, "<this>");
        short[] sArr = new short[collection.size()];
        Iterator<Short> it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            sArr[i10] = it.next().shortValue();
            i10++;
        }
        return sArr;
    }

    @NotNull
    public static final <T> List<T> h2(@NotNull List<? extends T> list, int i10) {
        kotlin.jvm.internal.M.p(list, "<this>");
        if (i10 >= 0) {
            return O5(list, Vf.u.w(list.size() - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    public static final <T> int h3(@NotNull Iterable<? extends T> iterable, T t10) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        if (iterable instanceof List) {
            return ((List) iterable).indexOf(t10);
        }
        int i10 = 0;
        for (T t11 : iterable) {
            if (i10 < 0) {
                H.b0();
            }
            if (kotlin.jvm.internal.M.g(t10, t11)) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R extends Comparable<? super R>> R h4(Iterable<? extends T> iterable, Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = iterable.iterator();
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

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <T, R> List<R> h5(@NotNull Iterable<? extends T> iterable, R r10, @NotNull Mf.p<? super R, ? super T, ? extends R> operation) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int d02 = I.d0(iterable, 9);
        if (d02 == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(d02 + 1);
        arrayList.add(r10);
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            r10 = operation.invoke(r10, it.next());
            arrayList.add(r10);
        }
        return arrayList;
    }

    @NotNull
    public static <T> Set<T> h6(@NotNull Iterable<? extends T> iterable, @NotNull Iterable<? extends T> other) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        Set<T> e62 = e6(iterable);
        M.t0(e62, other);
        return e62;
    }

    @NotNull
    public static final <T> List<T> i2(@NotNull List<? extends T> list, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(list, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        if (!list.isEmpty()) {
            ListIterator<? extends T> listIterator = list.listIterator(list.size());
            while (listIterator.hasPrevious()) {
                if (!predicate.invoke(listIterator.previous()).booleanValue()) {
                    return O5(list, listIterator.nextIndex() + 1);
                }
            }
        }
        return H.J();
    }

    public static final <T> int i3(@NotNull List<? extends T> list, T t10) {
        kotlin.jvm.internal.M.p(list, "<this>");
        return list.indexOf(t10);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T> Double i4(Iterable<? extends T> iterable, Mf.l<? super T, Double> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        double doubleValue = selector.invoke(it.next()).doubleValue();
        while (it.hasNext()) {
            doubleValue = Math.min(doubleValue, selector.invoke(it.next()).doubleValue());
        }
        return Double.valueOf(doubleValue);
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <T, R> List<R> i5(@NotNull Iterable<? extends T> iterable, R r10, @NotNull Mf.q<? super Integer, ? super R, ? super T, ? extends R> operation) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int d02 = I.d0(iterable, 9);
        if (d02 == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(d02 + 1);
        arrayList.add(r10);
        Iterator<? extends T> it = iterable.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            r10 = operation.n(Integer.valueOf(i10), r10, it.next());
            arrayList.add(r10);
            i10++;
        }
        return arrayList;
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final <T> List<List<T>> i6(@NotNull Iterable<? extends T> iterable, int i10, int i11, boolean z10) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        C0.a(i10, i11);
        if (!(iterable instanceof RandomAccess) || !(iterable instanceof List)) {
            ArrayList arrayList = new ArrayList();
            Iterator b10 = C0.b(iterable.iterator(), i10, i11, z10, false);
            while (b10.hasNext()) {
                arrayList.add((List) b10.next());
            }
            return arrayList;
        }
        List list = (List) iterable;
        int size = list.size();
        ArrayList arrayList2 = new ArrayList((size / i11) + (size % i11 == 0 ? 0 : 1));
        int i12 = 0;
        while (i12 >= 0 && i12 < size) {
            int D10 = Vf.u.D(i10, size - i12);
            if (D10 < i10 && !z10) {
                break;
            }
            ArrayList arrayList3 = new ArrayList(D10);
            for (int i13 = 0; i13 < D10; i13++) {
                arrayList3.add(list.get(i13 + i12));
            }
            arrayList2.add(arrayList3);
            i12 += i11;
        }
        return arrayList2;
    }

    @NotNull
    public static final <T> List<T> j2(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        boolean z10 = false;
        for (T t10 : iterable) {
            if (z10) {
                arrayList.add(t10);
            } else if (!predicate.invoke(t10).booleanValue()) {
                arrayList.add(t10);
                z10 = true;
            }
        }
        return arrayList;
    }

    public static final <T> int j3(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int i10 = 0;
        for (T t10 : iterable) {
            if (i10 < 0) {
                H.b0();
            }
            if (predicate.invoke(t10).booleanValue()) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T> Float j4(Iterable<? extends T> iterable, Mf.l<? super T, Float> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        float floatValue = selector.invoke(it.next()).floatValue();
        while (it.hasNext()) {
            floatValue = Math.min(floatValue, selector.invoke(it.next()).floatValue());
        }
        return Float.valueOf(floatValue);
    }

    @InterfaceC14422l0(version = "1.3")
    public static final <T> void j5(@NotNull List<T> list, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(list, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        for (int L10 = H.L(list); L10 > 0; L10--) {
            int m10 = random.m(L10 + 1);
            list.set(m10, list.set(L10, list.get(m10)));
        }
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final <T, R> List<R> j6(@NotNull Iterable<? extends T> iterable, int i10, int i11, boolean z10, @NotNull Mf.l<? super List<? extends T>, ? extends R> transform) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        C0.a(i10, i11);
        if (!(iterable instanceof RandomAccess) || !(iterable instanceof List)) {
            ArrayList arrayList = new ArrayList();
            Iterator b10 = C0.b(iterable.iterator(), i10, i11, z10, true);
            while (b10.hasNext()) {
                arrayList.add(transform.invoke((List) b10.next()));
            }
            return arrayList;
        }
        List list = (List) iterable;
        int size = list.size();
        int i12 = 0;
        ArrayList arrayList2 = new ArrayList((size / i11) + (size % i11 == 0 ? 0 : 1));
        r0 r0Var = new r0(list);
        while (i12 >= 0 && i12 < size) {
            int D10 = Vf.u.D(i10, size - i12);
            if (!z10 && D10 < i10) {
                break;
            }
            r0Var.e(i12, D10 + i12);
            arrayList2.add(transform.invoke(r0Var));
            i12 += i11;
        }
        return arrayList2;
    }

    public static final <T> T k2(@NotNull Iterable<? extends T> iterable, final int i10) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        return iterable instanceof List ? (T) ((List) iterable).get(i10) : (T) n2(iterable, i10, new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                Object m22;
                m22 = S.m2(i10, ((Integer) obj).intValue());
                return m22;
            }
        });
    }

    public static final <T> int k3(@NotNull List<? extends T> list, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(list, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        Iterator<? extends T> it = list.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (predicate.invoke(it.next()).booleanValue()) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R> R k4(Iterable<? extends T> iterable, Comparator<? super R> comparator, Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke((T) it.next());
        while (it.hasNext()) {
            Object obj2 = (R) selector.invoke((T) it.next());
            if (comparator.compare(obj, obj2) > 0) {
                obj = (R) obj2;
            }
        }
        return (R) obj;
    }

    public static <T> T k5(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        if (iterable instanceof List) {
            return (T) m5((List) iterable);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException("Collection is empty.");
        }
        T next = it.next();
        if (it.hasNext()) {
            throw new IllegalArgumentException("Collection has more than one element.");
        }
        return next;
    }

    public static List k6(Iterable iterable, int i10, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 1;
        }
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        return i6(iterable, i10, i11, z10);
    }

    @Ef.f
    public static final <T> T l2(List<? extends T> list, int i10) {
        kotlin.jvm.internal.M.p(list, "<this>");
        return list.get(i10);
    }

    public static final <T> int l3(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int i10 = -1;
        int i11 = 0;
        for (T t10 : iterable) {
            if (i11 < 0) {
                H.b0();
            }
            if (predicate.invoke(t10).booleanValue()) {
                i10 = i11;
            }
            i11++;
        }
        return i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R> R l4(Iterable<? extends T> iterable, Comparator<? super R> comparator, Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        Object obj = (R) selector.invoke((T) it.next());
        while (it.hasNext()) {
            Object obj2 = (R) selector.invoke((T) it.next());
            if (comparator.compare(obj, obj2) > 0) {
                obj = (R) obj2;
            }
        }
        return (R) obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object] */
    public static final <T> T l5(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        T t10 = null;
        boolean z10 = false;
        for (T t11 : iterable) {
            if (predicate.invoke(t11).booleanValue()) {
                if (z10) {
                    throw new IllegalArgumentException("Collection contains more than one matching element.");
                }
                z10 = true;
                t10 = t11;
            }
        }
        if (z10) {
            return t10;
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }

    public static List l6(Iterable iterable, int i10, int i11, boolean z10, Mf.l lVar, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 1;
        }
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        return j6(iterable, i10, i11, z10, lVar);
    }

    public static final Object m2(int i10, int i11) {
        throw new IndexOutOfBoundsException("Collection doesn't contain element at index " + i10 + '.');
    }

    public static final <T> int m3(@NotNull List<? extends T> list, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(list, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ListIterator<? extends T> listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            if (predicate.invoke(listIterator.previous()).booleanValue()) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static <T extends Comparable<? super T>> T m4(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (next.compareTo(next2) > 0) {
                next = next2;
            }
        }
        return next;
    }

    public static final <T> T m5(@NotNull List<? extends T> list) {
        kotlin.jvm.internal.M.p(list, "<this>");
        int size = list.size();
        if (size == 0) {
            throw new NoSuchElementException("List is empty.");
        }
        if (size == 1) {
            return list.get(0);
        }
        throw new IllegalArgumentException("List has more than one element.");
    }

    @NotNull
    public static final <T> Iterable<C14968d0<T>> m6(@NotNull final Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        return new C14970e0(new Mf.a() {
            @Override
            public final Object invoke() {
                Iterator n62;
                n62 = S.n6(Iterable.this);
                return n62;
            }
        });
    }

    public static final <T> T n2(@NotNull Iterable<? extends T> iterable, int i10, @NotNull Mf.l<? super Integer, ? extends T> defaultValue) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        if (iterable instanceof List) {
            List list = (List) iterable;
            return (i10 < 0 || i10 >= list.size()) ? defaultValue.invoke(Integer.valueOf(i10)) : (T) list.get(i10);
        }
        if (i10 < 0) {
            return defaultValue.invoke(Integer.valueOf(i10));
        }
        int i11 = 0;
        for (T t10 : iterable) {
            int i12 = i11 + 1;
            if (i10 == i11) {
                return t10;
            }
            i11 = i12;
        }
        return defaultValue.invoke(Integer.valueOf(i10));
    }

    @NotNull
    public static <T> Set<T> n3(@NotNull Iterable<? extends T> iterable, @NotNull Iterable<? extends T> other) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        Collection v02 = M.v0(other);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (T t10 : iterable) {
            if (v02.contains(t10)) {
                linkedHashSet.add(t10);
            }
        }
        return linkedHashSet;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Double n4(@NotNull Iterable<Double> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        Iterator<Double> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        double doubleValue = it.next().doubleValue();
        while (it.hasNext()) {
            doubleValue = Math.min(doubleValue, it.next().doubleValue());
        }
        return Double.valueOf(doubleValue);
    }

    @Nullable
    public static final <T> T n5(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.size() == 1) {
                return (T) list.get(0);
            }
            return null;
        }
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        if (it.hasNext()) {
            return null;
        }
        return next;
    }

    public static final Iterator n6(Iterable iterable) {
        return iterable.iterator();
    }

    @Ef.f
    public static final <T> T o2(List<? extends T> list, int i10, Mf.l<? super Integer, ? extends T> defaultValue) {
        kotlin.jvm.internal.M.p(list, "<this>");
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        return (i10 < 0 || i10 >= list.size()) ? defaultValue.invoke(Integer.valueOf(i10)) : list.get(i10);
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, A extends Appendable> A o3(@NotNull Iterable<? extends T> iterable, @NotNull A buffer, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable Mf.l<? super T, ? extends CharSequence> lVar) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(buffer, "buffer");
        kotlin.jvm.internal.M.p(separator, "separator");
        kotlin.jvm.internal.M.p(prefix, "prefix");
        kotlin.jvm.internal.M.p(postfix, "postfix");
        kotlin.jvm.internal.M.p(truncated, "truncated");
        buffer.append(prefix);
        int i11 = 0;
        for (T t10 : iterable) {
            i11++;
            if (i11 > 1) {
                buffer.append(separator);
            }
            if (i10 >= 0 && i11 > i10) {
                break;
            }
            C3643z.b(buffer, t10, lVar);
        }
        if (i10 >= 0 && i11 > i10) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Float o4(@NotNull Iterable<Float> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        Iterator<Float> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        float floatValue = it.next().floatValue();
        while (it.hasNext()) {
            floatValue = Math.min(floatValue, it.next().floatValue());
        }
        return Float.valueOf(floatValue);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object] */
    @Nullable
    public static final <T> T o5(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        boolean z10 = false;
        T t10 = null;
        for (T t11 : iterable) {
            if (predicate.invoke(t11).booleanValue()) {
                if (z10) {
                    return null;
                }
                z10 = true;
                t10 = t11;
            }
        }
        if (z10) {
            return t10;
        }
        return null;
    }

    @NotNull
    public static <T, R> List<nf.Z<T, R>> o6(@NotNull Iterable<? extends T> iterable, @NotNull Iterable<? extends R> other) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        Iterator<? extends T> it = iterable.iterator();
        Iterator<? extends R> it2 = other.iterator();
        ArrayList arrayList = new ArrayList(Math.min(I.d0(iterable, 10), I.d0(other, 10)));
        while (it.hasNext() && it2.hasNext()) {
            arrayList.add(nf.v0.a(it.next(), it2.next()));
        }
        return arrayList;
    }

    @Nullable
    public static final <T> T p2(@NotNull Iterable<? extends T> iterable, int i10) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        if (iterable instanceof List) {
            return (T) b3((List) iterable, i10);
        }
        if (i10 < 0) {
            return null;
        }
        int i11 = 0;
        for (T t10 : iterable) {
            int i12 = i11 + 1;
            if (i10 == i11) {
                return t10;
            }
            i11 = i12;
        }
        return null;
    }

    @Lf.j(name = "minOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final double p4(@NotNull Iterable<Double> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        Iterator<Double> it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        double doubleValue = it.next().doubleValue();
        while (it.hasNext()) {
            doubleValue = Math.min(doubleValue, it.next().doubleValue());
        }
        return doubleValue;
    }

    @Nullable
    public static <T> T p5(@NotNull List<? extends T> list) {
        kotlin.jvm.internal.M.p(list, "<this>");
        if (list.size() == 1) {
            return list.get(0);
        }
        return null;
    }

    @NotNull
    public static final <T, R, V> List<V> p6(@NotNull Iterable<? extends T> iterable, @NotNull Iterable<? extends R> other, @NotNull Mf.p<? super T, ? super R, ? extends V> transform) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        kotlin.jvm.internal.M.p(transform, "transform");
        Iterator<? extends T> it = iterable.iterator();
        Iterator<? extends R> it2 = other.iterator();
        ArrayList arrayList = new ArrayList(Math.min(I.d0(iterable, 10), I.d0(other, 10)));
        while (it.hasNext() && it2.hasNext()) {
            arrayList.add(transform.invoke(it.next(), it2.next()));
        }
        return arrayList;
    }

    @Ef.f
    public static final <T> T q2(List<? extends T> list, int i10) {
        kotlin.jvm.internal.M.p(list, "<this>");
        return (T) b3(list, i10);
    }

    @NotNull
    public static final <T> String q3(@NotNull Iterable<? extends T> iterable, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable Mf.l<? super T, ? extends CharSequence> lVar) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(separator, "separator");
        kotlin.jvm.internal.M.p(prefix, "prefix");
        kotlin.jvm.internal.M.p(postfix, "postfix");
        kotlin.jvm.internal.M.p(truncated, "truncated");
        return ((StringBuilder) o3(iterable, new StringBuilder(), separator, prefix, postfix, i10, truncated, lVar)).toString();
    }

    @Lf.j(name = "minOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final float q4(@NotNull Iterable<Float> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        Iterator<Float> it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        float floatValue = it.next().floatValue();
        while (it.hasNext()) {
            floatValue = Math.min(floatValue, it.next().floatValue());
        }
        return floatValue;
    }

    @NotNull
    public static final <T> List<T> q5(@NotNull List<? extends T> list, @NotNull Vf.l indices) {
        kotlin.jvm.internal.M.p(list, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        return indices.isEmpty() ? H.J() : a6(list.subList(indices.getStart().intValue(), indices.getEndInclusive().intValue() + 1));
    }

    @NotNull
    public static final <T, R> List<nf.Z<T, R>> q6(@NotNull Iterable<? extends T> iterable, @NotNull R[] other) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        int length = other.length;
        ArrayList arrayList = new ArrayList(Math.min(I.d0(iterable, 10), length));
        int i10 = 0;
        for (T t10 : iterable) {
            if (i10 >= length) {
                break;
            }
            arrayList.add(nf.v0.a(t10, other[i10]));
            i10++;
        }
        return arrayList;
    }

    @NotNull
    public static final <T> List<T> r2(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        for (T t10 : iterable) {
            if (predicate.invoke(t10).booleanValue()) {
                arrayList.add(t10);
            }
        }
        return arrayList;
    }

    public static String r3(Iterable iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, Mf.l lVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i11 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i11 & 4) == 0 ? charSequence3 : "";
        if ((i11 & 8) != 0) {
            i10 = -1;
        }
        int i12 = i10;
        if ((i11 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i11 & 32) != 0) {
            lVar = null;
        }
        return q3(iterable, charSequence, charSequence5, charSequence6, i12, charSequence7, lVar);
    }

    @Lf.j(name = "minOrThrow")
    @InterfaceC14422l0(version = "1.7")
    @NotNull
    public static final <T extends Comparable<? super T>> T r4(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (next.compareTo(next2) > 0) {
                next = next2;
            }
        }
        return next;
    }

    @NotNull
    public static final <T> List<T> r5(@NotNull List<? extends T> list, @NotNull Iterable<Integer> indices) {
        kotlin.jvm.internal.M.p(list, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        int d02 = I.d0(indices, 10);
        if (d02 == 0) {
            return H.J();
        }
        ArrayList arrayList = new ArrayList(d02);
        Iterator<Integer> it = indices.iterator();
        while (it.hasNext()) {
            arrayList.add(list.get(it.next().intValue()));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T, R, V> List<V> r6(@NotNull Iterable<? extends T> iterable, @NotNull R[] other, @NotNull Mf.p<? super T, ? super R, ? extends V> transform) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = other.length;
        ArrayList arrayList = new ArrayList(Math.min(I.d0(iterable, 10), length));
        int i10 = 0;
        for (T t10 : iterable) {
            if (i10 >= length) {
                break;
            }
            arrayList.add(transform.invoke(t10, other[i10]));
            i10++;
        }
        return arrayList;
    }

    @NotNull
    public static final <T> List<T> s2(@NotNull Iterable<? extends T> iterable, @NotNull Mf.p<? super Integer, ? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        for (T t10 : iterable) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                H.b0();
            }
            if (predicate.invoke(Integer.valueOf(i10), t10).booleanValue()) {
                arrayList.add(t10);
            }
            i10 = i11;
        }
        return arrayList;
    }

    public static final <T> T s3(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        if (iterable instanceof List) {
            return (T) u3((List) iterable);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException("Collection is empty.");
        }
        T next = it.next();
        while (it.hasNext()) {
            next = it.next();
        }
        return next;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <T> T s4(@NotNull Iterable<? extends T> iterable, @NotNull Comparator<? super T> comparator) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        Object obj = (T) it.next();
        while (it.hasNext()) {
            Object obj2 = (T) it.next();
            if (comparator.compare(obj, obj2) > 0) {
                obj = (T) obj2;
            }
        }
        return (T) obj;
    }

    public static final <T, R extends Comparable<? super R>> void s5(@NotNull List<T> list, @NotNull Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(list, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (list.size() > 1) {
            L.r0(list, new C15420g.a(selector));
        }
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final <T> List<nf.Z<T, T>> s6(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return H.J();
        }
        ArrayList arrayList = new ArrayList();
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            arrayList.add(nf.v0.a(next, next2));
            next = next2;
        }
        return arrayList;
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, C extends Collection<? super T>> C t2(@NotNull Iterable<? extends T> iterable, @NotNull C destination, @NotNull Mf.p<? super Integer, ? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int i10 = 0;
        for (T t10 : iterable) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                H.b0();
            }
            if (predicate.invoke(Integer.valueOf(i10), t10).booleanValue()) {
                destination.add(t10);
            }
            i10 = i11;
        }
        return destination;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object] */
    public static final <T> T t3(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        T t10 = null;
        boolean z10 = false;
        for (T t11 : iterable) {
            if (predicate.invoke(t11).booleanValue()) {
                z10 = true;
                t10 = t11;
            }
        }
        if (z10) {
            return t10;
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Lf.j(name = "minWithOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <T> T t4(@NotNull Iterable<? extends T> iterable, @NotNull Comparator<? super T> comparator) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        Object obj = (T) it.next();
        while (it.hasNext()) {
            Object obj2 = (T) it.next();
            if (comparator.compare(obj, obj2) > 0) {
                obj = (T) obj2;
            }
        }
        return (T) obj;
    }

    public static final <T, R extends Comparable<? super R>> void t5(@NotNull List<T> list, @NotNull Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(list, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (list.size() > 1) {
            L.r0(list, new C15420g.c(selector));
        }
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final <T, R> List<R> t6(@NotNull Iterable<? extends T> iterable, @NotNull Mf.p<? super T, ? super T, ? extends R> transform) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return H.J();
        }
        ArrayList arrayList = new ArrayList();
        A0.a next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            arrayList.add(transform.invoke(next, next2));
            next = next2;
        }
        return arrayList;
    }

    public static final <R> List<R> u2(Iterable<?> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        ArrayList arrayList = new ArrayList();
        for (Object obj : iterable) {
            kotlin.jvm.internal.M.y(3, "R");
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static <T> T u3(@NotNull List<? extends T> list) {
        kotlin.jvm.internal.M.p(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(H.L(list));
    }

    @NotNull
    public static final <T> List<T> u4(@NotNull Iterable<? extends T> iterable, @NotNull InterfaceC3312m<? extends T> elements) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        List I32 = Xf.K.I3(elements);
        if (I32.isEmpty()) {
            return a6(iterable);
        }
        ArrayList arrayList = new ArrayList();
        for (T t10 : iterable) {
            if (!I32.contains(t10)) {
                arrayList.add(t10);
            }
        }
        return arrayList;
    }

    public static final <T extends Comparable<? super T>> void u5(@NotNull List<T> list) {
        kotlin.jvm.internal.M.p(list, "<this>");
        L.r0(list, C15420g.x());
    }

    @InterfaceC14394D
    public static final <R, C extends Collection<? super R>> C v2(Iterable<?> iterable, C destination) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        for (Object obj : iterable) {
            kotlin.jvm.internal.M.y(3, "R");
            if (obj != null) {
                destination.add(obj);
            }
        }
        return destination;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
    public static final <T> T v3(@NotNull List<? extends T> list, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(list, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ListIterator<? extends T> listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            T previous = listIterator.previous();
            if (predicate.invoke(previous).booleanValue()) {
                return previous;
            }
        }
        throw new NoSuchElementException("List contains no element matching the predicate.");
    }

    @NotNull
    public static final <T> List<T> v4(@NotNull Iterable<? extends T> iterable, @NotNull Iterable<? extends T> elements) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        Collection v02 = M.v0(elements);
        if (v02.isEmpty()) {
            return a6(iterable);
        }
        ArrayList arrayList = new ArrayList();
        for (T t10 : iterable) {
            if (!v02.contains(t10)) {
                arrayList.add(t10);
            }
        }
        return arrayList;
    }

    @NotNull
    public static final <T extends Comparable<? super T>> List<T> v5(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            List<T> c62 = c6(iterable);
            L.o0(c62);
            return c62;
        }
        Collection collection = (Collection) iterable;
        if (collection.size() <= 1) {
            return a6(iterable);
        }
        Object[] array = collection.toArray(new Comparable[0]);
        C14985q.U3((Comparable[]) array);
        return C14985q.t(array);
    }

    @NotNull
    public static final <T> List<T> w2(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        for (T t10 : iterable) {
            if (!predicate.invoke(t10).booleanValue()) {
                arrayList.add(t10);
            }
        }
        return arrayList;
    }

    public static final <T> int w3(@NotNull Iterable<? extends T> iterable, T t10) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        if (iterable instanceof List) {
            return ((List) iterable).lastIndexOf(t10);
        }
        int i10 = -1;
        int i11 = 0;
        for (T t11 : iterable) {
            if (i11 < 0) {
                H.b0();
            }
            if (kotlin.jvm.internal.M.g(t10, t11)) {
                i10 = i11;
            }
            i11++;
        }
        return i10;
    }

    @NotNull
    public static final <T> List<T> w4(@NotNull Iterable<? extends T> iterable, T t10) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        ArrayList arrayList = new ArrayList(I.d0(iterable, 10));
        boolean z10 = false;
        for (T t11 : iterable) {
            boolean z11 = true;
            if (!z10 && kotlin.jvm.internal.M.g(t11, t10)) {
                z10 = true;
                z11 = false;
            }
            if (z11) {
                arrayList.add(t11);
            }
        }
        return arrayList;
    }

    @NotNull
    public static final <T, R extends Comparable<? super R>> List<T> w5(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        return z5(iterable, new C15420g.a(selector));
    }

    @NotNull
    public static <T> List<T> x2(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        return (List) y2(iterable, new ArrayList());
    }

    public static final <T> int x3(@NotNull List<? extends T> list, T t10) {
        kotlin.jvm.internal.M.p(list, "<this>");
        return list.lastIndexOf(t10);
    }

    @NotNull
    public static final <T> List<T> x4(@NotNull Iterable<? extends T> iterable, @NotNull T[] elements) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        if (elements.length == 0) {
            return a6(iterable);
        }
        ArrayList arrayList = new ArrayList();
        for (T t10 : iterable) {
            if (!C14960A.B8(elements, t10)) {
                arrayList.add(t10);
            }
        }
        return arrayList;
    }

    @NotNull
    public static final <T, R extends Comparable<? super R>> List<T> x5(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        return z5(iterable, new C15420g.c(selector));
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super T>, T> C y2(@NotNull Iterable<? extends T> iterable, @NotNull C destination) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        for (T t10 : iterable) {
            if (t10 != null) {
                destination.add(t10);
            }
        }
        return destination;
    }

    @Nullable
    public static final <T> T y3(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.isEmpty()) {
                return null;
            }
            return (T) list.get(list.size() - 1);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        while (it.hasNext()) {
            next = it.next();
        }
        return next;
    }

    @Ef.f
    public static final <T> List<T> y4(Iterable<? extends T> iterable, T t10) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        return w4(iterable, t10);
    }

    @NotNull
    public static final <T extends Comparable<? super T>> List<T> y5(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        return z5(iterable, C15420g.x());
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, C extends Collection<? super T>> C z2(@NotNull Iterable<? extends T> iterable, @NotNull C destination, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (T t10 : iterable) {
            if (!predicate.invoke(t10).booleanValue()) {
                destination.add(t10);
            }
        }
        return destination;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
    @Nullable
    public static final <T> T z3(@NotNull Iterable<? extends T> iterable, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        T t10 = null;
        for (T t11 : iterable) {
            if (predicate.invoke(t11).booleanValue()) {
                t10 = t11;
            }
        }
        return t10;
    }

    public static final <T> boolean z4(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        return iterable instanceof Collection ? ((Collection) iterable).isEmpty() : !iterable.iterator().hasNext();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> List<T> z5(@NotNull Iterable<? extends T> iterable, @NotNull Comparator<? super T> comparator) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (!(iterable instanceof Collection)) {
            List<T> c62 = c6(iterable);
            L.r0(c62, comparator);
            return c62;
        }
        Collection collection = (Collection) iterable;
        if (collection.size() <= 1) {
            return a6(iterable);
        }
        Object[] array = collection.toArray(new Object[0]);
        C14985q.h4(array, comparator);
        return C14985q.t(array);
    }
}
