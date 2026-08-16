package ag;

import Xf.InterfaceC3312m;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.jvm.internal.t0;
import nf.B0;
import nf.F0;
import nf.InterfaceC14394D;
import nf.InterfaceC14412g0;
import nf.InterfaceC14422l0;
import nf.InterfaceC14427o;
import nf.InterfaceC14429p;
import nf.P0;
import nf.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.C0;
import pf.C14968d0;
import pf.C14970e0;
import pf.n0;
import pf.y0;
import pf.z0;

@t0({"SMAP\n_Strings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,2584:1\n131#1,2:2585\n224#1,5:2587\n513#1,5:2593\n513#1,5:2598\n471#1:2603\n1207#1,2:2604\n472#1,2:2606\n1209#1:2608\n474#1:2609\n471#1:2610\n1207#1,2:2611\n472#1,2:2613\n1209#1:2615\n474#1:2616\n1207#1,3:2617\n502#1,2:2620\n502#1,2:2622\n764#1,4:2624\n731#1,4:2628\n748#1,4:2632\n797#1,4:2636\n900#1,5:2640\n942#1,3:2645\n945#1,3:2655\n961#1,3:2658\n964#1,3:2668\n1065#1,3:2685\n1033#1,4:2688\n1021#1:2692\n1207#1,2:2693\n1209#1:2696\n1022#1:2697\n1207#1,3:2698\n1055#1:2701\n1198#1:2702\n1199#1:2704\n1056#1:2705\n1198#1,2:2706\n1207#1,3:2708\n2088#1,2:2711\n2090#1,6:2714\n2112#1,2:2720\n2114#1,6:2723\n2529#1,6:2729\n2559#1,7:2735\n1#2:2592\n1#2:2695\n1#2:2703\n1#2:2713\n1#2:2722\n383#3,7:2648\n383#3,7:2661\n383#3,7:2671\n383#3,7:2678\n*S KotlinDebug\n*F\n+ 1 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n57#1:2585,2\n67#1:2587,5\n428#1:2593,5\n437#1:2598,5\n448#1:2603\n448#1:2604,2\n448#1:2606,2\n448#1:2608\n448#1:2609\n459#1:2610\n459#1:2611,2\n459#1:2613,2\n459#1:2615\n459#1:2616\n471#1:2617,3\n483#1:2620,2\n492#1:2622,2\n688#1:2624,4\n703#1:2628,4\n717#1:2632,4\n783#1:2636,4\n858#1:2640,5\n916#1:2645,3\n916#1:2655,3\n929#1:2658,3\n929#1:2668,3\n990#1:2685,3\n1000#1:2688,4\n1010#1:2692\n1010#1:2693,2\n1010#1:2696\n1010#1:2697\n1021#1:2698,3\n1046#1:2701\n1046#1:2702\n1046#1:2704\n1046#1:2705\n1055#1:2706,2\n1894#1:2708,3\n2182#1:2711,2\n2182#1:2714,6\n2199#1:2720,2\n2199#1:2723,6\n2518#1:2729,6\n2546#1:2735,7\n1010#1:2695\n1046#1:2703\n2182#1:2713\n2199#1:2722\n916#1:2648,7\n929#1:2661,7\n944#1:2671,7\n963#1:2678,7\n*E\n"})
public class X extends Q {

    @t0({"SMAP\nIterables.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iterables.kt\nkotlin/collections/CollectionsKt__IterablesKt$Iterable$1\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,70:1\n2573#2:71\n*E\n"})
    public static final class a implements Iterable<Character>, Nf.a {

        public final CharSequence f32037b;

        public a(CharSequence charSequence) {
            this.f32037b = charSequence;
        }

        @Override
        public Iterator<Character> iterator() {
            return P.W3(this.f32037b);
        }
    }

    @t0({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,730:1\n2581#2:731\n*E\n"})
    public static final class b implements InterfaceC3312m<Character> {

        public final CharSequence f32038a;

        public b(CharSequence charSequence) {
            this.f32038a = charSequence;
        }

        @Override
        public Iterator<Character> iterator() {
            return P.W3(this.f32038a);
        }
    }

    @t0({"SMAP\n_Strings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Strings.kt\nkotlin/text/StringsKt___StringsKt$groupingBy$1\n*L\n1#1,2584:1\n*E\n"})
    public static final class c<K> implements pf.Z<Character, K> {

        public final CharSequence f32039a;

        public final Mf.l<Character, K> f32040b;

        /* JADX WARN: Multi-variable type inference failed */
        public c(CharSequence charSequence, Mf.l<? super Character, ? extends K> lVar) {
            this.f32039a = charSequence;
            this.f32040b = lVar;
        }

        @Override
        public Object a(Character ch2) {
            return c(ch2.charValue());
        }

        @Override
        public Iterator<Character> b() {
            return P.W3(this.f32039a);
        }

        public K c(char c10) {
            return this.f32040b.invoke(Character.valueOf(c10));
        }
    }

    public static final char A7(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        if (charSequence.length() != 0) {
            return charSequence.charAt(0);
        }
        throw new NoSuchElementException("Char sequence is empty.");
    }

    @Lf.j(name = "minByOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <R extends Comparable<? super R>> char A8(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, ? extends R> selector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (charSequence.length() == 0) {
            throw new NoSuchElementException();
        }
        char charAt = charSequence.charAt(0);
        int C32 = P.C3(charSequence);
        if (C32 == 0) {
            return charAt;
        }
        R invoke = selector.invoke(Character.valueOf(charAt));
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                char charAt2 = charSequence.charAt(i10);
                R invoke2 = selector.invoke(Character.valueOf(charAt2));
                if (invoke.compareTo(invoke2) > 0) {
                    charAt = charAt2;
                    invoke = invoke2;
                }
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return charAt;
    }

    @Ef.f
    @Lf.j(name = "sumOfUInt")
    @InterfaceC14422l0(version = "1.5")
    public static final int A9(CharSequence charSequence, Mf.l<? super Character, B0> selector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int o10 = B0.o(0);
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            o10 = B0.o(o10 + selector.invoke(Character.valueOf(charSequence.charAt(i10))).q0());
        }
        return o10;
    }

    public static final char B7(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            char charAt = charSequence.charAt(i10);
            if (predicate.invoke(Character.valueOf(charAt)).booleanValue()) {
                return charAt;
            }
        }
        throw new NoSuchElementException("Char sequence contains no character matching the predicate.");
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final double B8(CharSequence charSequence, Mf.l<? super Character, Double> selector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (charSequence.length() == 0) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(Character.valueOf(charSequence.charAt(0))).doubleValue();
        int C32 = P.C3(charSequence);
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                doubleValue = Math.min(doubleValue, selector.invoke(Character.valueOf(charSequence.charAt(i10))).doubleValue());
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return doubleValue;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfULong")
    @InterfaceC14422l0(version = "1.5")
    public static final long B9(CharSequence charSequence, Mf.l<? super Character, F0> selector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        long i10 = F0.i(0L);
        for (int i11 = 0; i11 < charSequence.length(); i11++) {
            i10 = F0.i(i10 + selector.invoke(Character.valueOf(charSequence.charAt(i11))).l0());
        }
        return i10;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final <R> R C7(CharSequence charSequence, Mf.l<? super Character, ? extends R> transform) {
        R r10;
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        int i10 = 0;
        while (true) {
            if (i10 >= charSequence.length()) {
                r10 = null;
                break;
            }
            r10 = transform.invoke(Character.valueOf(charSequence.charAt(i10)));
            if (r10 != null) {
                break;
            }
            i10++;
        }
        if (r10 != null) {
            return r10;
        }
        throw new NoSuchElementException("No element of the char sequence was transformed to a non-null value.");
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final float C8(CharSequence charSequence, Mf.l<? super Character, Float> selector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (charSequence.length() == 0) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(Character.valueOf(charSequence.charAt(0))).floatValue();
        int C32 = P.C3(charSequence);
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                floatValue = Math.min(floatValue, selector.invoke(Character.valueOf(charSequence.charAt(i10))).floatValue());
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return floatValue;
    }

    @NotNull
    public static final CharSequence C9(@NotNull CharSequence charSequence, int i10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        if (i10 >= 0) {
            return charSequence.subSequence(0, Vf.u.D(i10, charSequence.length()));
        }
        throw new IllegalArgumentException(("Requested character count " + i10 + " is less than zero.").toString());
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final <R> R D7(CharSequence charSequence, Mf.l<? super Character, ? extends R> transform) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            R invoke = transform.invoke(Character.valueOf(charSequence.charAt(i10)));
            if (invoke != null) {
                return invoke;
            }
        }
        return null;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R D8(CharSequence charSequence, Mf.l<? super Character, ? extends R> selector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (charSequence.length() == 0) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(Character.valueOf(charSequence.charAt(0)));
        int C32 = P.C3(charSequence);
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                R invoke2 = selector.invoke(Character.valueOf(charSequence.charAt(i10)));
                if (invoke.compareTo(invoke2) > 0) {
                    invoke = invoke2;
                }
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @NotNull
    public static final String D9(@NotNull String str, int i10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        if (i10 >= 0) {
            String substring = str.substring(0, Vf.u.D(i10, str.length()));
            kotlin.jvm.internal.M.o(substring, "substring(...)");
            return substring;
        }
        throw new IllegalArgumentException(("Requested character count " + i10 + " is less than zero.").toString());
    }

    @Nullable
    public static final Character E7(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        if (charSequence.length() == 0) {
            return null;
        }
        return Character.valueOf(charSequence.charAt(0));
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R E8(CharSequence charSequence, Mf.l<? super Character, ? extends R> selector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (charSequence.length() == 0) {
            return null;
        }
        R invoke = selector.invoke(Character.valueOf(charSequence.charAt(0)));
        int C32 = P.C3(charSequence);
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                R invoke2 = selector.invoke(Character.valueOf(charSequence.charAt(i10)));
                if (invoke.compareTo(invoke2) > 0) {
                    invoke = invoke2;
                }
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @NotNull
    public static final CharSequence E9(@NotNull CharSequence charSequence, int i10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        if (i10 >= 0) {
            int length = charSequence.length();
            return charSequence.subSequence(length - Vf.u.D(i10, length), length);
        }
        throw new IllegalArgumentException(("Requested character count " + i10 + " is less than zero.").toString());
    }

    @Nullable
    public static final Character F7(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            char charAt = charSequence.charAt(i10);
            if (predicate.invoke(Character.valueOf(charAt)).booleanValue()) {
                return Character.valueOf(charAt);
            }
        }
        return null;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Double F8(CharSequence charSequence, Mf.l<? super Character, Double> selector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (charSequence.length() == 0) {
            return null;
        }
        double doubleValue = selector.invoke(Character.valueOf(charSequence.charAt(0))).doubleValue();
        int C32 = P.C3(charSequence);
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                doubleValue = Math.min(doubleValue, selector.invoke(Character.valueOf(charSequence.charAt(i10))).doubleValue());
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(doubleValue);
    }

    @NotNull
    public static final String F9(@NotNull String str, int i10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        if (i10 >= 0) {
            int length = str.length();
            String substring = str.substring(length - Vf.u.D(i10, length));
            kotlin.jvm.internal.M.o(substring, "substring(...)");
            return substring;
        }
        throw new IllegalArgumentException(("Requested character count " + i10 + " is less than zero.").toString());
    }

    @NotNull
    public static final <R> List<R> G7(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            pf.M.t0(arrayList, transform.invoke(Character.valueOf(charSequence.charAt(i10))));
        }
        return arrayList;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Float G8(CharSequence charSequence, Mf.l<? super Character, Float> selector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (charSequence.length() == 0) {
            return null;
        }
        float floatValue = selector.invoke(Character.valueOf(charSequence.charAt(0))).floatValue();
        int C32 = P.C3(charSequence);
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                floatValue = Math.min(floatValue, selector.invoke(Character.valueOf(charSequence.charAt(i10))).floatValue());
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(floatValue);
    }

    @NotNull
    public static final CharSequence G9(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int C32 = P.C3(charSequence); -1 < C32; C32--) {
            if (!predicate.invoke(Character.valueOf(charSequence.charAt(C32))).booleanValue()) {
                return charSequence.subSequence(C32 + 1, charSequence.length());
            }
        }
        return charSequence.subSequence(0, charSequence.length());
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "flatMapIndexedIterable")
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> H7(CharSequence charSequence, Mf.p<? super Integer, ? super Character, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        int i11 = 0;
        while (i10 < charSequence.length()) {
            pf.M.t0(arrayList, transform.invoke(Integer.valueOf(i11), Character.valueOf(charSequence.charAt(i10))));
            i10++;
            i11++;
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R H8(CharSequence charSequence, Comparator<? super R> comparator, Mf.l<? super Character, ? extends R> selector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (charSequence.length() == 0) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke(Character.valueOf(charSequence.charAt(0)));
        int C32 = P.C3(charSequence);
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                Object obj2 = (R) selector.invoke(Character.valueOf(charSequence.charAt(i10)));
                if (comparator.compare(obj, obj2) > 0) {
                    obj = (R) obj2;
                }
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    @NotNull
    public static final String H9(@NotNull String str, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int C32 = P.C3(str); -1 < C32; C32--) {
            if (!predicate.invoke(Character.valueOf(str.charAt(C32))).booleanValue()) {
                String substring = str.substring(C32 + 1);
                kotlin.jvm.internal.M.o(substring, "substring(...)");
                return substring;
            }
        }
        return str;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "flatMapIndexedIterableTo")
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <R, C extends Collection<? super R>> C I7(CharSequence charSequence, C destination, Mf.p<? super Integer, ? super Character, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        int i10 = 0;
        int i11 = 0;
        while (i10 < charSequence.length()) {
            pf.M.t0(destination, transform.invoke(Integer.valueOf(i11), Character.valueOf(charSequence.charAt(i10))));
            i10++;
            i11++;
        }
        return destination;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R I8(CharSequence charSequence, Comparator<? super R> comparator, Mf.l<? super Character, ? extends R> selector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (charSequence.length() == 0) {
            return null;
        }
        Object obj = (R) selector.invoke(Character.valueOf(charSequence.charAt(0)));
        int C32 = P.C3(charSequence);
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                Object obj2 = (R) selector.invoke(Character.valueOf(charSequence.charAt(i10)));
                if (comparator.compare(obj, obj2) > 0) {
                    obj = (R) obj2;
                }
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    @NotNull
    public static final CharSequence I9(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!predicate.invoke(Character.valueOf(charSequence.charAt(i10))).booleanValue()) {
                return charSequence.subSequence(0, i10);
            }
        }
        return charSequence.subSequence(0, charSequence.length());
    }

    @InterfaceC14394D
    @NotNull
    public static final <R, C extends Collection<? super R>> C J7(@NotNull CharSequence charSequence, @NotNull C destination, @NotNull Mf.l<? super Character, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            pf.M.t0(destination, transform.invoke(Character.valueOf(charSequence.charAt(i10))));
        }
        return destination;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Character J8(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        if (charSequence.length() == 0) {
            return null;
        }
        char charAt = charSequence.charAt(0);
        int C32 = P.C3(charSequence);
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                char charAt2 = charSequence.charAt(i10);
                if (kotlin.jvm.internal.M.t(charAt, charAt2) > 0) {
                    charAt = charAt2;
                }
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return Character.valueOf(charAt);
    }

    @NotNull
    public static final String J9(@NotNull String str, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!predicate.invoke(Character.valueOf(str.charAt(i10))).booleanValue()) {
                String substring = str.substring(0, i10);
                kotlin.jvm.internal.M.o(substring, "substring(...)");
                return substring;
            }
        }
        return str;
    }

    public static final <R> R K7(@NotNull CharSequence charSequence, R r10, @NotNull Mf.p<? super R, ? super Character, ? extends R> operation) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            r10 = operation.invoke(r10, Character.valueOf(charSequence.charAt(i10)));
        }
        return r10;
    }

    @Lf.j(name = "minOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final char K8(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        if (charSequence.length() == 0) {
            throw new NoSuchElementException();
        }
        char charAt = charSequence.charAt(0);
        int C32 = P.C3(charSequence);
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                char charAt2 = charSequence.charAt(i10);
                if (kotlin.jvm.internal.M.t(charAt, charAt2) > 0) {
                    charAt = charAt2;
                }
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return charAt;
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Character>> C K9(@NotNull CharSequence charSequence, @NotNull C destination) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            destination.add(Character.valueOf(charSequence.charAt(i10)));
        }
        return destination;
    }

    public static final boolean L6(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            if (!predicate.invoke(Character.valueOf(charSequence.charAt(i10))).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    public static final <R> R L7(@NotNull CharSequence charSequence, R r10, @NotNull Mf.q<? super Integer, ? super R, ? super Character, ? extends R> operation) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int i10 = 0;
        int i11 = 0;
        while (i10 < charSequence.length()) {
            r10 = operation.n(Integer.valueOf(i11), r10, Character.valueOf(charSequence.charAt(i10)));
            i10++;
            i11++;
        }
        return r10;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Character L8(@NotNull CharSequence charSequence, @NotNull Comparator<? super Character> comparator) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (charSequence.length() == 0) {
            return null;
        }
        char charAt = charSequence.charAt(0);
        int C32 = P.C3(charSequence);
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                char charAt2 = charSequence.charAt(i10);
                if (comparator.compare(Character.valueOf(charAt), Character.valueOf(charAt2)) > 0) {
                    charAt = charAt2;
                }
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return Character.valueOf(charAt);
    }

    @NotNull
    public static final HashSet<Character> L9(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return (HashSet) K9(charSequence, new HashSet(n0.j(Vf.u.D(charSequence.length(), 128))));
    }

    public static final boolean M6(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return !(charSequence.length() == 0);
    }

    public static final <R> R M7(@NotNull CharSequence charSequence, R r10, @NotNull Mf.p<? super Character, ? super R, ? extends R> operation) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        for (int C32 = P.C3(charSequence); C32 >= 0; C32--) {
            r10 = operation.invoke(Character.valueOf(charSequence.charAt(C32)), r10);
        }
        return r10;
    }

    @Lf.j(name = "minWithOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final char M8(@NotNull CharSequence charSequence, @NotNull Comparator<? super Character> comparator) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (charSequence.length() == 0) {
            throw new NoSuchElementException();
        }
        char charAt = charSequence.charAt(0);
        int C32 = P.C3(charSequence);
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                char charAt2 = charSequence.charAt(i10);
                if (comparator.compare(Character.valueOf(charAt), Character.valueOf(charAt2)) > 0) {
                    charAt = charAt2;
                }
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return charAt;
    }

    @NotNull
    public static final List<Character> M9(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        int length = charSequence.length();
        return length != 0 ? length != 1 ? N9(charSequence) : pf.G.l(Character.valueOf(charSequence.charAt(0))) : pf.H.J();
    }

    public static final boolean N6(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            if (predicate.invoke(Character.valueOf(charSequence.charAt(i10))).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public static final <R> R N7(@NotNull CharSequence charSequence, R r10, @NotNull Mf.q<? super Integer, ? super Character, ? super R, ? extends R> operation) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        for (int C32 = P.C3(charSequence); C32 >= 0; C32--) {
            r10 = operation.n(Integer.valueOf(C32), Character.valueOf(charSequence.charAt(C32)), r10);
        }
        return r10;
    }

    public static final boolean N8(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return charSequence.length() == 0;
    }

    @NotNull
    public static final List<Character> N9(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return (List) K9(charSequence, new ArrayList(charSequence.length()));
    }

    @NotNull
    public static final Iterable<Character> O6(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return ((charSequence instanceof String) && charSequence.length() == 0) ? pf.H.J() : new a(charSequence);
    }

    public static final void O7(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, P0> action) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            action.invoke(Character.valueOf(charSequence.charAt(i10)));
        }
    }

    public static final boolean O8(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            if (predicate.invoke(Character.valueOf(charSequence.charAt(i10))).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public static final Set<Character> O9(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        int length = charSequence.length();
        return length != 0 ? length != 1 ? (Set) K9(charSequence, new LinkedHashSet(n0.j(Vf.u.D(charSequence.length(), 128)))) : y0.f(Character.valueOf(charSequence.charAt(0))) : z0.k();
    }

    @NotNull
    public static final InterfaceC3312m<Character> P6(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return ((charSequence instanceof String) && charSequence.length() == 0) ? Xf.x.l() : new b(charSequence);
    }

    public static final void P7(@NotNull CharSequence charSequence, @NotNull Mf.p<? super Integer, ? super Character, P0> action) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        int i10 = 0;
        int i11 = 0;
        while (i10 < charSequence.length()) {
            action.invoke(Integer.valueOf(i11), Character.valueOf(charSequence.charAt(i10)));
            i10++;
            i11++;
        }
    }

    @InterfaceC14422l0(version = "1.1")
    @NotNull
    public static final <S extends CharSequence> S P8(@NotNull S s10, @NotNull Mf.l<? super Character, P0> action) {
        kotlin.jvm.internal.M.p(s10, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        for (int i10 = 0; i10 < s10.length(); i10++) {
            action.invoke(Character.valueOf(s10.charAt(i10)));
        }
        return s10;
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final List<String> P9(@NotNull CharSequence charSequence, int i10, int i11, boolean z10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return Q9(charSequence, i10, i11, z10, new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                String T92;
                T92 = X.T9((CharSequence) obj);
                return T92;
            }
        });
    }

    @NotNull
    public static final <K, V> Map<K, V> Q6(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, ? extends nf.Z<? extends K, ? extends V>> transform) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(charSequence.length()), 16));
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            nf.Z<? extends K, ? extends V> invoke = transform.invoke(Character.valueOf(charSequence.charAt(i10)));
            linkedHashMap.put(invoke.e(), invoke.f());
        }
        return linkedHashMap;
    }

    @Ef.f
    public static final char Q7(CharSequence charSequence, int i10, Mf.l<? super Integer, Character> defaultValue) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        return (i10 < 0 || i10 >= charSequence.length()) ? defaultValue.invoke(Integer.valueOf(i10)).charValue() : charSequence.charAt(i10);
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <S extends CharSequence> S Q8(@NotNull S s10, @NotNull Mf.p<? super Integer, ? super Character, P0> action) {
        kotlin.jvm.internal.M.p(s10, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        int i10 = 0;
        int i11 = 0;
        while (i10 < s10.length()) {
            action.invoke(Integer.valueOf(i11), Character.valueOf(s10.charAt(i10)));
            i10++;
            i11++;
        }
        return s10;
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final <R> List<R> Q9(@NotNull CharSequence charSequence, int i10, int i11, boolean z10, @NotNull Mf.l<? super CharSequence, ? extends R> transform) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        C0.a(i10, i11);
        int length = charSequence.length();
        int i12 = 0;
        ArrayList arrayList = new ArrayList((length / i11) + (length % i11 == 0 ? 0 : 1));
        while (i12 >= 0 && i12 < length) {
            int i13 = i12 + i10;
            if (i13 < 0 || i13 > length) {
                if (!z10) {
                    break;
                }
                i13 = length;
            }
            arrayList.add(transform.invoke(charSequence.subSequence(i12, i13)));
            i12 += i11;
        }
        return arrayList;
    }

    @NotNull
    public static final <K> Map<K, Character> R6(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(charSequence.length()), 16));
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            char charAt = charSequence.charAt(i10);
            linkedHashMap.put(keySelector.invoke(Character.valueOf(charAt)), Character.valueOf(charAt));
        }
        return linkedHashMap;
    }

    @Nullable
    public static final Character R7(@NotNull CharSequence charSequence, int i10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        if (i10 < 0 || i10 >= charSequence.length()) {
            return null;
        }
        return Character.valueOf(charSequence.charAt(i10));
    }

    @NotNull
    public static final nf.Z<CharSequence, CharSequence> R8(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            char charAt = charSequence.charAt(i10);
            if (predicate.invoke(Character.valueOf(charAt)).booleanValue()) {
                sb2.append(charAt);
            } else {
                sb3.append(charAt);
            }
        }
        return new nf.Z<>(sb2, sb3);
    }

    public static List R9(CharSequence charSequence, int i10, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 1;
        }
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        return P9(charSequence, i10, i11, z10);
    }

    @NotNull
    public static final <K, V> Map<K, V> S6(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, ? extends K> keySelector, @NotNull Mf.l<? super Character, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(charSequence.length()), 16));
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            char charAt = charSequence.charAt(i10);
            linkedHashMap.put(keySelector.invoke(Character.valueOf(charAt)), valueTransform.invoke(Character.valueOf(charAt)));
        }
        return linkedHashMap;
    }

    @NotNull
    public static final <K> Map<K, List<Character>> S7(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            char charAt = charSequence.charAt(i10);
            K invoke = keySelector.invoke(Character.valueOf(charAt));
            Object obj = linkedHashMap.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                linkedHashMap.put(invoke, obj);
            }
            ((List) obj).add(Character.valueOf(charAt));
        }
        return linkedHashMap;
    }

    @NotNull
    public static final nf.Z<String, String> S8(@NotNull String str, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = str.charAt(i10);
            if (predicate.invoke(Character.valueOf(charAt)).booleanValue()) {
                sb2.append(charAt);
            } else {
                sb3.append(charAt);
            }
        }
        return new nf.Z<>(sb2.toString(), sb3.toString());
    }

    public static List S9(CharSequence charSequence, int i10, int i11, boolean z10, Mf.l lVar, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 1;
        }
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        return Q9(charSequence, i10, i11, z10, lVar);
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, M extends Map<? super K, ? super Character>> M T6(@NotNull CharSequence charSequence, @NotNull M destination, @NotNull Mf.l<? super Character, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            char charAt = charSequence.charAt(i10);
            destination.put(keySelector.invoke(Character.valueOf(charAt)), Character.valueOf(charAt));
        }
        return destination;
    }

    @NotNull
    public static final <K, V> Map<K, List<V>> T7(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, ? extends K> keySelector, @NotNull Mf.l<? super Character, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            char charAt = charSequence.charAt(i10);
            K invoke = keySelector.invoke(Character.valueOf(charAt));
            List<V> list = linkedHashMap.get(invoke);
            if (list == null) {
                list = new ArrayList<>();
                linkedHashMap.put(invoke, list);
            }
            list.add(valueTransform.invoke(Character.valueOf(charAt)));
        }
        return linkedHashMap;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final char T8(CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return U8(charSequence, Tf.f.f24956b);
    }

    public static final String T9(CharSequence it) {
        kotlin.jvm.internal.M.p(it, "it");
        return it.toString();
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M U6(@NotNull CharSequence charSequence, @NotNull M destination, @NotNull Mf.l<? super Character, ? extends K> keySelector, @NotNull Mf.l<? super Character, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            char charAt = charSequence.charAt(i10);
            destination.put(keySelector.invoke(Character.valueOf(charAt)), valueTransform.invoke(Character.valueOf(charAt)));
        }
        return destination;
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, M extends Map<? super K, List<Character>>> M U7(@NotNull CharSequence charSequence, @NotNull M destination, @NotNull Mf.l<? super Character, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            char charAt = charSequence.charAt(i10);
            K invoke = keySelector.invoke(Character.valueOf(charAt));
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(Character.valueOf(charAt));
        }
        return destination;
    }

    @InterfaceC14422l0(version = "1.3")
    public static char U8(@NotNull CharSequence charSequence, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        if (charSequence.length() != 0) {
            return charSequence.charAt(random.m(charSequence.length()));
        }
        throw new NoSuchElementException("Char sequence is empty.");
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final InterfaceC3312m<String> U9(@NotNull CharSequence charSequence, int i10, int i11, boolean z10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return V9(charSequence, i10, i11, z10, new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                String Y92;
                Y92 = X.Y9((CharSequence) obj);
                return Y92;
            }
        });
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M V6(@NotNull CharSequence charSequence, @NotNull M destination, @NotNull Mf.l<? super Character, ? extends nf.Z<? extends K, ? extends V>> transform) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            nf.Z<? extends K, ? extends V> invoke = transform.invoke(Character.valueOf(charSequence.charAt(i10)));
            destination.put(invoke.e(), invoke.f());
        }
        return destination;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, List<V>>> M V7(@NotNull CharSequence charSequence, @NotNull M destination, @NotNull Mf.l<? super Character, ? extends K> keySelector, @NotNull Mf.l<? super Character, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            char charAt = charSequence.charAt(i10);
            K invoke = keySelector.invoke(Character.valueOf(charAt));
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(valueTransform.invoke(Character.valueOf(charAt)));
        }
        return destination;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final Character V8(CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return W8(charSequence, Tf.f.f24956b);
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final <R> InterfaceC3312m<R> V9(@NotNull final CharSequence charSequence, final int i10, int i11, boolean z10, @NotNull final Mf.l<? super CharSequence, ? extends R> transform) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        C0.a(i10, i11);
        return Xf.K.N1(pf.S.E1(Vf.u.D1(z10 ? P.B3(charSequence) : Vf.u.Y1(0, (charSequence.length() - i10) + 1), i11)), new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                Object Z92;
                Z92 = X.Z9(i10, charSequence, transform, ((Integer) obj).intValue());
                return Z92;
            }
        });
    }

    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final <V> Map<Character, V> W6(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, ? extends V> valueSelector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(valueSelector, "valueSelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(Vf.u.D(charSequence.length(), 128)), 16));
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            char charAt = charSequence.charAt(i10);
            linkedHashMap.put(Character.valueOf(charAt), valueSelector.invoke(Character.valueOf(charAt)));
        }
        return linkedHashMap;
    }

    @InterfaceC14422l0(version = "1.1")
    @NotNull
    public static final <K> pf.Z<Character, K> W7(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        return new c(charSequence, keySelector);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Character W8(@NotNull CharSequence charSequence, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        if (charSequence.length() == 0) {
            return null;
        }
        return Character.valueOf(charSequence.charAt(random.m(charSequence.length())));
    }

    public static InterfaceC3312m W9(CharSequence charSequence, int i10, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 1;
        }
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        return U9(charSequence, i10, i11, z10);
    }

    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final <V, M extends Map<? super Character, ? super V>> M X6(@NotNull CharSequence charSequence, @NotNull M destination, @NotNull Mf.l<? super Character, ? extends V> valueSelector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(valueSelector, "valueSelector");
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            char charAt = charSequence.charAt(i10);
            destination.put(Character.valueOf(charAt), valueSelector.invoke(Character.valueOf(charAt)));
        }
        return destination;
    }

    public static final int X7(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (predicate.invoke(Character.valueOf(charSequence.charAt(i10))).booleanValue()) {
                return i10;
            }
        }
        return -1;
    }

    public static final char X8(@NotNull CharSequence charSequence, @NotNull Mf.p<? super Character, ? super Character, Character> operation) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (charSequence.length() == 0) {
            throw new UnsupportedOperationException("Empty char sequence can't be reduced.");
        }
        char charAt = charSequence.charAt(0);
        int C32 = P.C3(charSequence);
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                charAt = operation.invoke(Character.valueOf(charAt), Character.valueOf(charSequence.charAt(i10))).charValue();
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return charAt;
    }

    public static InterfaceC3312m X9(CharSequence charSequence, int i10, int i11, boolean z10, Mf.l lVar, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 1;
        }
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        return V9(charSequence, i10, i11, z10, lVar);
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final List<String> Y6(@NotNull CharSequence charSequence, int i10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return P9(charSequence, i10, i10, true);
    }

    public static final int Y7(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = charSequence.length() - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                if (predicate.invoke(Character.valueOf(charSequence.charAt(length))).booleanValue()) {
                    return length;
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
        }
        return -1;
    }

    public static final char Y8(@NotNull CharSequence charSequence, @NotNull Mf.q<? super Integer, ? super Character, ? super Character, Character> operation) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (charSequence.length() == 0) {
            throw new UnsupportedOperationException("Empty char sequence can't be reduced.");
        }
        char charAt = charSequence.charAt(0);
        int C32 = P.C3(charSequence);
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                charAt = operation.n(Integer.valueOf(i10), Character.valueOf(charAt), Character.valueOf(charSequence.charAt(i10))).charValue();
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return charAt;
    }

    public static final String Y9(CharSequence it) {
        kotlin.jvm.internal.M.p(it, "it");
        return it.toString();
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final <R> List<R> Z6(@NotNull CharSequence charSequence, int i10, @NotNull Mf.l<? super CharSequence, ? extends R> transform) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        return Q9(charSequence, i10, i10, true, transform);
    }

    public static char Z7(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        if (charSequence.length() != 0) {
            return charSequence.charAt(P.C3(charSequence));
        }
        throw new NoSuchElementException("Char sequence is empty.");
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Character Z8(@NotNull CharSequence charSequence, @NotNull Mf.q<? super Integer, ? super Character, ? super Character, Character> operation) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (charSequence.length() == 0) {
            return null;
        }
        char charAt = charSequence.charAt(0);
        int C32 = P.C3(charSequence);
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                charAt = operation.n(Integer.valueOf(i10), Character.valueOf(charAt), Character.valueOf(charSequence.charAt(i10))).charValue();
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return Character.valueOf(charAt);
    }

    public static final Object Z9(int i10, CharSequence charSequence, Mf.l lVar, int i11) {
        int i12 = i10 + i11;
        if (i12 < 0 || i12 > charSequence.length()) {
            i12 = charSequence.length();
        }
        return lVar.invoke(charSequence.subSequence(i11, i12));
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final InterfaceC3312m<String> a7(@NotNull CharSequence charSequence, int i10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return b7(charSequence, i10, new Mf.l() {
            @Override
            public final Object invoke(Object obj) {
                String c72;
                c72 = X.c7((CharSequence) obj);
                return c72;
            }
        });
    }

    public static final char a8(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = charSequence.length() - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                char charAt = charSequence.charAt(length);
                if (!predicate.invoke(Character.valueOf(charAt)).booleanValue()) {
                    if (i10 < 0) {
                        break;
                    }
                    length = i10;
                } else {
                    return charAt;
                }
            }
        }
        throw new NoSuchElementException("Char sequence contains no character matching the predicate.");
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Character a9(@NotNull CharSequence charSequence, @NotNull Mf.p<? super Character, ? super Character, Character> operation) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (charSequence.length() == 0) {
            return null;
        }
        char charAt = charSequence.charAt(0);
        int C32 = P.C3(charSequence);
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                charAt = operation.invoke(Character.valueOf(charAt), Character.valueOf(charSequence.charAt(i10))).charValue();
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return Character.valueOf(charAt);
    }

    @NotNull
    public static final Iterable<C14968d0<Character>> aa(@NotNull final CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return new C14970e0(new Mf.a() {
            @Override
            public final Object invoke() {
                Iterator ba2;
                ba2 = X.ba(CharSequence.this);
                return ba2;
            }
        });
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final <R> InterfaceC3312m<R> b7(@NotNull CharSequence charSequence, int i10, @NotNull Mf.l<? super CharSequence, ? extends R> transform) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        return V9(charSequence, i10, i10, true, transform);
    }

    @Nullable
    public static final Character b8(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        if (charSequence.length() == 0) {
            return null;
        }
        return Character.valueOf(charSequence.charAt(charSequence.length() - 1));
    }

    public static final char b9(@NotNull CharSequence charSequence, @NotNull Mf.p<? super Character, ? super Character, Character> operation) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int C32 = P.C3(charSequence);
        if (C32 < 0) {
            throw new UnsupportedOperationException("Empty char sequence can't be reduced.");
        }
        char charAt = charSequence.charAt(C32);
        for (int i10 = C32 - 1; i10 >= 0; i10--) {
            charAt = operation.invoke(Character.valueOf(charSequence.charAt(i10)), Character.valueOf(charAt)).charValue();
        }
        return charAt;
    }

    public static final Iterator ba(CharSequence charSequence) {
        return P.W3(charSequence);
    }

    public static final String c7(CharSequence it) {
        kotlin.jvm.internal.M.p(it, "it");
        return it.toString();
    }

    @Nullable
    public static final Character c8(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = charSequence.length() - 1;
        if (length < 0) {
            return null;
        }
        while (true) {
            int i10 = length - 1;
            char charAt = charSequence.charAt(length);
            if (predicate.invoke(Character.valueOf(charAt)).booleanValue()) {
                return Character.valueOf(charAt);
            }
            if (i10 < 0) {
                return null;
            }
            length = i10;
        }
    }

    public static final char c9(@NotNull CharSequence charSequence, @NotNull Mf.q<? super Integer, ? super Character, ? super Character, Character> operation) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int C32 = P.C3(charSequence);
        if (C32 < 0) {
            throw new UnsupportedOperationException("Empty char sequence can't be reduced.");
        }
        char charAt = charSequence.charAt(C32);
        for (int i10 = C32 - 1; i10 >= 0; i10--) {
            charAt = operation.n(Integer.valueOf(i10), Character.valueOf(charSequence.charAt(i10)), Character.valueOf(charAt)).charValue();
        }
        return charAt;
    }

    @NotNull
    public static final List<nf.Z<Character, Character>> ca(@NotNull CharSequence charSequence, @NotNull CharSequence other) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        int min = Math.min(charSequence.length(), other.length());
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(v0.a(Character.valueOf(charSequence.charAt(i10)), Character.valueOf(other.charAt(i10))));
        }
        return arrayList;
    }

    @Ef.f
    public static final int d7(CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return charSequence.length();
    }

    @NotNull
    public static final <R> List<R> d8(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, ? extends R> transform) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList(charSequence.length());
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            arrayList.add(transform.invoke(Character.valueOf(charSequence.charAt(i10))));
        }
        return arrayList;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Character d9(@NotNull CharSequence charSequence, @NotNull Mf.q<? super Integer, ? super Character, ? super Character, Character> operation) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int C32 = P.C3(charSequence);
        if (C32 < 0) {
            return null;
        }
        char charAt = charSequence.charAt(C32);
        for (int i10 = C32 - 1; i10 >= 0; i10--) {
            charAt = operation.n(Integer.valueOf(i10), Character.valueOf(charSequence.charAt(i10)), Character.valueOf(charAt)).charValue();
        }
        return Character.valueOf(charAt);
    }

    @NotNull
    public static final <V> List<V> da(@NotNull CharSequence charSequence, @NotNull CharSequence other, @NotNull Mf.p<? super Character, ? super Character, ? extends V> transform) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        kotlin.jvm.internal.M.p(transform, "transform");
        int min = Math.min(charSequence.length(), other.length());
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(transform.invoke(Character.valueOf(charSequence.charAt(i10)), Character.valueOf(other.charAt(i10))));
        }
        return arrayList;
    }

    public static final int e7(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int i10 = 0;
        for (int i11 = 0; i11 < charSequence.length(); i11++) {
            if (predicate.invoke(Character.valueOf(charSequence.charAt(i11))).booleanValue()) {
                i10++;
            }
        }
        return i10;
    }

    @NotNull
    public static final <R> List<R> e8(@NotNull CharSequence charSequence, @NotNull Mf.p<? super Integer, ? super Character, ? extends R> transform) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList(charSequence.length());
        int i10 = 0;
        int i11 = 0;
        while (i10 < charSequence.length()) {
            arrayList.add(transform.invoke(Integer.valueOf(i11), Character.valueOf(charSequence.charAt(i10))));
            i10++;
            i11++;
        }
        return arrayList;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Character e9(@NotNull CharSequence charSequence, @NotNull Mf.p<? super Character, ? super Character, Character> operation) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int C32 = P.C3(charSequence);
        if (C32 < 0) {
            return null;
        }
        char charAt = charSequence.charAt(C32);
        for (int i10 = C32 - 1; i10 >= 0; i10--) {
            charAt = operation.invoke(Character.valueOf(charSequence.charAt(i10)), Character.valueOf(charAt)).charValue();
        }
        return Character.valueOf(charAt);
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final List<nf.Z<Character, Character>> ea(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        int length = charSequence.length() - 1;
        if (length < 1) {
            return pf.H.J();
        }
        ArrayList arrayList = new ArrayList(length);
        int i10 = 0;
        while (i10 < length) {
            char charAt = charSequence.charAt(i10);
            i10++;
            arrayList.add(v0.a(Character.valueOf(charAt), Character.valueOf(charSequence.charAt(i10))));
        }
        return arrayList;
    }

    @NotNull
    public static final CharSequence f7(@NotNull CharSequence charSequence, int i10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        if (i10 >= 0) {
            return charSequence.subSequence(Vf.u.D(i10, charSequence.length()), charSequence.length());
        }
        throw new IllegalArgumentException(("Requested character count " + i10 + " is less than zero.").toString());
    }

    @NotNull
    public static final <R> List<R> f8(@NotNull CharSequence charSequence, @NotNull Mf.p<? super Integer, ? super Character, ? extends R> transform) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        int i11 = 0;
        while (i10 < charSequence.length()) {
            int i12 = i11 + 1;
            R invoke = transform.invoke(Integer.valueOf(i11), Character.valueOf(charSequence.charAt(i10)));
            if (invoke != null) {
                arrayList.add(invoke);
            }
            i10++;
            i11 = i12;
        }
        return arrayList;
    }

    @NotNull
    public static final CharSequence f9(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return new StringBuilder(charSequence).reverse();
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final <R> List<R> fa(@NotNull CharSequence charSequence, @NotNull Mf.p<? super Character, ? super Character, ? extends R> transform) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = charSequence.length() - 1;
        if (length < 1) {
            return pf.H.J();
        }
        ArrayList arrayList = new ArrayList(length);
        int i10 = 0;
        while (i10 < length) {
            Character valueOf = Character.valueOf(charSequence.charAt(i10));
            i10++;
            arrayList.add(transform.invoke(valueOf, Character.valueOf(charSequence.charAt(i10))));
        }
        return arrayList;
    }

    @NotNull
    public static final String g7(@NotNull String str, int i10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        if (i10 >= 0) {
            String substring = str.substring(Vf.u.D(i10, str.length()));
            kotlin.jvm.internal.M.o(substring, "substring(...)");
            return substring;
        }
        throw new IllegalArgumentException(("Requested character count " + i10 + " is less than zero.").toString());
    }

    @InterfaceC14394D
    @NotNull
    public static final <R, C extends Collection<? super R>> C g8(@NotNull CharSequence charSequence, @NotNull C destination, @NotNull Mf.p<? super Integer, ? super Character, ? extends R> transform) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        int i10 = 0;
        int i11 = 0;
        while (i10 < charSequence.length()) {
            int i12 = i11 + 1;
            R invoke = transform.invoke(Integer.valueOf(i11), Character.valueOf(charSequence.charAt(i10)));
            if (invoke != null) {
                destination.add(invoke);
            }
            i10++;
            i11 = i12;
        }
        return destination;
    }

    @Ef.f
    public static final String g9(String str) {
        kotlin.jvm.internal.M.p(str, "<this>");
        return f9(str).toString();
    }

    @NotNull
    public static final CharSequence h7(@NotNull CharSequence charSequence, int i10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        if (i10 >= 0) {
            return C9(charSequence, Vf.u.w(charSequence.length() - i10, 0));
        }
        throw new IllegalArgumentException(("Requested character count " + i10 + " is less than zero.").toString());
    }

    @InterfaceC14394D
    @NotNull
    public static final <R, C extends Collection<? super R>> C h8(@NotNull CharSequence charSequence, @NotNull C destination, @NotNull Mf.p<? super Integer, ? super Character, ? extends R> transform) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        int i10 = 0;
        int i11 = 0;
        while (i10 < charSequence.length()) {
            destination.add(transform.invoke(Integer.valueOf(i11), Character.valueOf(charSequence.charAt(i10))));
            i10++;
            i11++;
        }
        return destination;
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <R> List<R> h9(@NotNull CharSequence charSequence, R r10, @NotNull Mf.p<? super R, ? super Character, ? extends R> operation) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (charSequence.length() == 0) {
            return pf.G.l(r10);
        }
        ArrayList arrayList = new ArrayList(charSequence.length() + 1);
        arrayList.add(r10);
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            r10 = operation.invoke(r10, Character.valueOf(charSequence.charAt(i10)));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @NotNull
    public static String i7(@NotNull String str, int i10) {
        kotlin.jvm.internal.M.p(str, "<this>");
        if (i10 >= 0) {
            return D9(str, Vf.u.w(str.length() - i10, 0));
        }
        throw new IllegalArgumentException(("Requested character count " + i10 + " is less than zero.").toString());
    }

    @NotNull
    public static final <R> List<R> i8(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, ? extends R> transform) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            R invoke = transform.invoke(Character.valueOf(charSequence.charAt(i10)));
            if (invoke != null) {
                arrayList.add(invoke);
            }
        }
        return arrayList;
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <R> List<R> i9(@NotNull CharSequence charSequence, R r10, @NotNull Mf.q<? super Integer, ? super R, ? super Character, ? extends R> operation) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (charSequence.length() == 0) {
            return pf.G.l(r10);
        }
        ArrayList arrayList = new ArrayList(charSequence.length() + 1);
        arrayList.add(r10);
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            r10 = operation.n(Integer.valueOf(i10), r10, Character.valueOf(charSequence.charAt(i10)));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @NotNull
    public static final CharSequence j7(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int C32 = P.C3(charSequence); -1 < C32; C32--) {
            if (!predicate.invoke(Character.valueOf(charSequence.charAt(C32))).booleanValue()) {
                return charSequence.subSequence(0, C32 + 1);
            }
        }
        return "";
    }

    @InterfaceC14394D
    @NotNull
    public static final <R, C extends Collection<? super R>> C j8(@NotNull CharSequence charSequence, @NotNull C destination, @NotNull Mf.l<? super Character, ? extends R> transform) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            R invoke = transform.invoke(Character.valueOf(charSequence.charAt(i10)));
            if (invoke != null) {
                destination.add(invoke);
            }
        }
        return destination;
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final List<Character> j9(@NotNull CharSequence charSequence, @NotNull Mf.p<? super Character, ? super Character, Character> operation) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (charSequence.length() == 0) {
            return pf.H.J();
        }
        char charAt = charSequence.charAt(0);
        ArrayList arrayList = new ArrayList(charSequence.length());
        arrayList.add(Character.valueOf(charAt));
        int length = charSequence.length();
        int i10 = 1;
        while (i10 < length) {
            Character invoke = operation.invoke(Character.valueOf(charAt), Character.valueOf(charSequence.charAt(i10)));
            char charValue = invoke.charValue();
            arrayList.add(invoke);
            i10++;
            charAt = charValue;
        }
        return arrayList;
    }

    @NotNull
    public static final String k7(@NotNull String str, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int C32 = P.C3(str); -1 < C32; C32--) {
            if (!predicate.invoke(Character.valueOf(str.charAt(C32))).booleanValue()) {
                String substring = str.substring(0, C32 + 1);
                kotlin.jvm.internal.M.o(substring, "substring(...)");
                return substring;
            }
        }
        return "";
    }

    @InterfaceC14394D
    @NotNull
    public static final <R, C extends Collection<? super R>> C k8(@NotNull CharSequence charSequence, @NotNull C destination, @NotNull Mf.l<? super Character, ? extends R> transform) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            destination.add(transform.invoke(Character.valueOf(charSequence.charAt(i10))));
        }
        return destination;
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final List<Character> k9(@NotNull CharSequence charSequence, @NotNull Mf.q<? super Integer, ? super Character, ? super Character, Character> operation) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (charSequence.length() == 0) {
            return pf.H.J();
        }
        char charAt = charSequence.charAt(0);
        ArrayList arrayList = new ArrayList(charSequence.length());
        arrayList.add(Character.valueOf(charAt));
        int length = charSequence.length();
        int i10 = 1;
        while (i10 < length) {
            Character n10 = operation.n(Integer.valueOf(i10), Character.valueOf(charAt), Character.valueOf(charSequence.charAt(i10)));
            char charValue = n10.charValue();
            arrayList.add(n10);
            i10++;
            charAt = charValue;
        }
        return arrayList;
    }

    @NotNull
    public static final CharSequence l7(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!predicate.invoke(Character.valueOf(charSequence.charAt(i10))).booleanValue()) {
                return charSequence.subSequence(i10, charSequence.length());
            }
        }
        return "";
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <R extends Comparable<? super R>> Character l8(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, ? extends R> selector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (charSequence.length() == 0) {
            return null;
        }
        char charAt = charSequence.charAt(0);
        int C32 = P.C3(charSequence);
        if (C32 == 0) {
            return Character.valueOf(charAt);
        }
        R invoke = selector.invoke(Character.valueOf(charAt));
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                char charAt2 = charSequence.charAt(i10);
                R invoke2 = selector.invoke(Character.valueOf(charAt2));
                if (invoke.compareTo(invoke2) < 0) {
                    charAt = charAt2;
                    invoke = invoke2;
                }
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return Character.valueOf(charAt);
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <R> List<R> l9(@NotNull CharSequence charSequence, R r10, @NotNull Mf.p<? super R, ? super Character, ? extends R> operation) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (charSequence.length() == 0) {
            return pf.G.l(r10);
        }
        ArrayList arrayList = new ArrayList(charSequence.length() + 1);
        arrayList.add(r10);
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            r10 = operation.invoke(r10, Character.valueOf(charSequence.charAt(i10)));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @NotNull
    public static final String m7(@NotNull String str, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!predicate.invoke(Character.valueOf(str.charAt(i10))).booleanValue()) {
                String substring = str.substring(i10);
                kotlin.jvm.internal.M.o(substring, "substring(...)");
                return substring;
            }
        }
        return "";
    }

    @Lf.j(name = "maxByOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <R extends Comparable<? super R>> char m8(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, ? extends R> selector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (charSequence.length() == 0) {
            throw new NoSuchElementException();
        }
        char charAt = charSequence.charAt(0);
        int C32 = P.C3(charSequence);
        if (C32 == 0) {
            return charAt;
        }
        R invoke = selector.invoke(Character.valueOf(charAt));
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                char charAt2 = charSequence.charAt(i10);
                R invoke2 = selector.invoke(Character.valueOf(charAt2));
                if (invoke.compareTo(invoke2) < 0) {
                    charAt = charAt2;
                    invoke = invoke2;
                }
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return charAt;
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <R> List<R> m9(@NotNull CharSequence charSequence, R r10, @NotNull Mf.q<? super Integer, ? super R, ? super Character, ? extends R> operation) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (charSequence.length() == 0) {
            return pf.G.l(r10);
        }
        ArrayList arrayList = new ArrayList(charSequence.length() + 1);
        arrayList.add(r10);
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            r10 = operation.n(Integer.valueOf(i10), r10, Character.valueOf(charSequence.charAt(i10)));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @Ef.f
    public static final char n7(CharSequence charSequence, int i10, Mf.l<? super Integer, Character> defaultValue) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        return (i10 < 0 || i10 >= charSequence.length()) ? defaultValue.invoke(Integer.valueOf(i10)).charValue() : charSequence.charAt(i10);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final double n8(CharSequence charSequence, Mf.l<? super Character, Double> selector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (charSequence.length() == 0) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(Character.valueOf(charSequence.charAt(0))).doubleValue();
        int C32 = P.C3(charSequence);
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                doubleValue = Math.max(doubleValue, selector.invoke(Character.valueOf(charSequence.charAt(i10))).doubleValue());
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return doubleValue;
    }

    public static final char n9(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        int length = charSequence.length();
        if (length == 0) {
            throw new NoSuchElementException("Char sequence is empty.");
        }
        if (length == 1) {
            return charSequence.charAt(0);
        }
        throw new IllegalArgumentException("Char sequence has more than one element.");
    }

    @Ef.f
    public static final Character o7(CharSequence charSequence, int i10) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        return R7(charSequence, i10);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final float o8(CharSequence charSequence, Mf.l<? super Character, Float> selector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (charSequence.length() == 0) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(Character.valueOf(charSequence.charAt(0))).floatValue();
        int C32 = P.C3(charSequence);
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                floatValue = Math.max(floatValue, selector.invoke(Character.valueOf(charSequence.charAt(i10))).floatValue());
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return floatValue;
    }

    public static final char o9(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        Character ch2 = null;
        boolean z10 = false;
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            char charAt = charSequence.charAt(i10);
            if (predicate.invoke(Character.valueOf(charAt)).booleanValue()) {
                if (z10) {
                    throw new IllegalArgumentException("Char sequence contains more than one matching element.");
                }
                ch2 = Character.valueOf(charAt);
                z10 = true;
            }
        }
        if (!z10) {
            throw new NoSuchElementException("Char sequence contains no character matching the predicate.");
        }
        kotlin.jvm.internal.M.n(ch2, "null cannot be cast to non-null type kotlin.Char");
        return ch2.charValue();
    }

    @NotNull
    public static final CharSequence p7(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        StringBuilder sb2 = new StringBuilder();
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = charSequence.charAt(i10);
            if (predicate.invoke(Character.valueOf(charAt)).booleanValue()) {
                sb2.append(charAt);
            }
        }
        return sb2;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R p8(CharSequence charSequence, Mf.l<? super Character, ? extends R> selector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (charSequence.length() == 0) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(Character.valueOf(charSequence.charAt(0)));
        int C32 = P.C3(charSequence);
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                R invoke2 = selector.invoke(Character.valueOf(charSequence.charAt(i10)));
                if (invoke.compareTo(invoke2) < 0) {
                    invoke = invoke2;
                }
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @Nullable
    public static final Character p9(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        if (charSequence.length() == 1) {
            return Character.valueOf(charSequence.charAt(0));
        }
        return null;
    }

    @NotNull
    public static final String q7(@NotNull String str, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        StringBuilder sb2 = new StringBuilder();
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = str.charAt(i10);
            if (predicate.invoke(Character.valueOf(charAt)).booleanValue()) {
                sb2.append(charAt);
            }
        }
        return sb2.toString();
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R q8(CharSequence charSequence, Mf.l<? super Character, ? extends R> selector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (charSequence.length() == 0) {
            return null;
        }
        R invoke = selector.invoke(Character.valueOf(charSequence.charAt(0)));
        int C32 = P.C3(charSequence);
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                R invoke2 = selector.invoke(Character.valueOf(charSequence.charAt(i10)));
                if (invoke.compareTo(invoke2) < 0) {
                    invoke = invoke2;
                }
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @Nullable
    public static final Character q9(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        Character ch2 = null;
        boolean z10 = false;
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            char charAt = charSequence.charAt(i10);
            if (predicate.invoke(Character.valueOf(charAt)).booleanValue()) {
                if (z10) {
                    return null;
                }
                ch2 = Character.valueOf(charAt);
                z10 = true;
            }
        }
        if (z10) {
            return ch2;
        }
        return null;
    }

    @NotNull
    public static final CharSequence r7(@NotNull CharSequence charSequence, @NotNull Mf.p<? super Integer, ? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        int i11 = 0;
        while (i10 < charSequence.length()) {
            char charAt = charSequence.charAt(i10);
            int i12 = i11 + 1;
            if (predicate.invoke(Integer.valueOf(i11), Character.valueOf(charAt)).booleanValue()) {
                sb2.append(charAt);
            }
            i10++;
            i11 = i12;
        }
        return sb2;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Double r8(CharSequence charSequence, Mf.l<? super Character, Double> selector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (charSequence.length() == 0) {
            return null;
        }
        double doubleValue = selector.invoke(Character.valueOf(charSequence.charAt(0))).doubleValue();
        int C32 = P.C3(charSequence);
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                doubleValue = Math.max(doubleValue, selector.invoke(Character.valueOf(charSequence.charAt(i10))).doubleValue());
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(doubleValue);
    }

    @NotNull
    public static final CharSequence r9(@NotNull CharSequence charSequence, @NotNull Vf.l indices) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        return indices.isEmpty() ? "" : P.G5(charSequence, indices);
    }

    @NotNull
    public static final String s7(@NotNull String str, @NotNull Mf.p<? super Integer, ? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        int i11 = 0;
        while (i10 < str.length()) {
            char charAt = str.charAt(i10);
            int i12 = i11 + 1;
            if (predicate.invoke(Integer.valueOf(i11), Character.valueOf(charAt)).booleanValue()) {
                sb2.append(charAt);
            }
            i10++;
            i11 = i12;
        }
        return sb2.toString();
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Float s8(CharSequence charSequence, Mf.l<? super Character, Float> selector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (charSequence.length() == 0) {
            return null;
        }
        float floatValue = selector.invoke(Character.valueOf(charSequence.charAt(0))).floatValue();
        int C32 = P.C3(charSequence);
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                floatValue = Math.max(floatValue, selector.invoke(Character.valueOf(charSequence.charAt(i10))).floatValue());
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(floatValue);
    }

    @NotNull
    public static final CharSequence s9(@NotNull CharSequence charSequence, @NotNull Iterable<Integer> indices) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        int d02 = pf.I.d0(indices, 10);
        if (d02 == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder(d02);
        Iterator<Integer> it = indices.iterator();
        while (it.hasNext()) {
            sb2.append(charSequence.charAt(it.next().intValue()));
        }
        return sb2;
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Appendable> C t7(@NotNull CharSequence charSequence, @NotNull C destination, @NotNull Mf.p<? super Integer, ? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int i10 = 0;
        int i11 = 0;
        while (i10 < charSequence.length()) {
            char charAt = charSequence.charAt(i10);
            int i12 = i11 + 1;
            if (predicate.invoke(Integer.valueOf(i11), Character.valueOf(charAt)).booleanValue()) {
                destination.append(charAt);
            }
            i10++;
            i11 = i12;
        }
        return destination;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R t8(CharSequence charSequence, Comparator<? super R> comparator, Mf.l<? super Character, ? extends R> selector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (charSequence.length() == 0) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke(Character.valueOf(charSequence.charAt(0)));
        int C32 = P.C3(charSequence);
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                Object obj2 = (R) selector.invoke(Character.valueOf(charSequence.charAt(i10)));
                if (comparator.compare(obj, obj2) < 0) {
                    obj = (R) obj2;
                }
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    @NotNull
    public static final String t9(@NotNull String str, @NotNull Vf.l indices) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        return indices.isEmpty() ? "" : P.K5(str, indices);
    }

    @NotNull
    public static final CharSequence u7(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            char charAt = charSequence.charAt(i10);
            if (!predicate.invoke(Character.valueOf(charAt)).booleanValue()) {
                sb2.append(charAt);
            }
        }
        return sb2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R u8(CharSequence charSequence, Comparator<? super R> comparator, Mf.l<? super Character, ? extends R> selector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (charSequence.length() == 0) {
            return null;
        }
        Object obj = (R) selector.invoke(Character.valueOf(charSequence.charAt(0)));
        int C32 = P.C3(charSequence);
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                Object obj2 = (R) selector.invoke(Character.valueOf(charSequence.charAt(i10)));
                if (comparator.compare(obj, obj2) < 0) {
                    obj = (R) obj2;
                }
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    @Ef.f
    public static final String u9(String str, Iterable<Integer> indices) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        return s9(str, indices).toString();
    }

    @NotNull
    public static final String v7(@NotNull String str, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(str, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if (!predicate.invoke(Character.valueOf(charAt)).booleanValue()) {
                sb2.append(charAt);
            }
        }
        return sb2.toString();
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Character v8(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        if (charSequence.length() == 0) {
            return null;
        }
        char charAt = charSequence.charAt(0);
        int C32 = P.C3(charSequence);
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                char charAt2 = charSequence.charAt(i10);
                if (kotlin.jvm.internal.M.t(charAt, charAt2) < 0) {
                    charAt = charAt2;
                }
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return Character.valueOf(charAt);
    }

    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    public static final int v9(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, Integer> selector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int i10 = 0;
        for (int i11 = 0; i11 < charSequence.length(); i11++) {
            i10 += selector.invoke(Character.valueOf(charSequence.charAt(i11))).intValue();
        }
        return i10;
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Appendable> C w7(@NotNull CharSequence charSequence, @NotNull C destination, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            char charAt = charSequence.charAt(i10);
            if (!predicate.invoke(Character.valueOf(charAt)).booleanValue()) {
                destination.append(charAt);
            }
        }
        return destination;
    }

    @Lf.j(name = "maxOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final char w8(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        if (charSequence.length() == 0) {
            throw new NoSuchElementException();
        }
        char charAt = charSequence.charAt(0);
        int C32 = P.C3(charSequence);
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                char charAt2 = charSequence.charAt(i10);
                if (kotlin.jvm.internal.M.t(charAt, charAt2) < 0) {
                    charAt = charAt2;
                }
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return charAt;
    }

    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    public static final double w9(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, Double> selector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        double d10 = 0.0d;
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            d10 += selector.invoke(Character.valueOf(charSequence.charAt(i10))).doubleValue();
        }
        return d10;
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Appendable> C x7(@NotNull CharSequence charSequence, @NotNull C destination, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = charSequence.charAt(i10);
            if (predicate.invoke(Character.valueOf(charAt)).booleanValue()) {
                destination.append(charAt);
            }
        }
        return destination;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Character x8(@NotNull CharSequence charSequence, @NotNull Comparator<? super Character> comparator) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (charSequence.length() == 0) {
            return null;
        }
        char charAt = charSequence.charAt(0);
        int C32 = P.C3(charSequence);
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                char charAt2 = charSequence.charAt(i10);
                if (comparator.compare(Character.valueOf(charAt), Character.valueOf(charAt2)) < 0) {
                    charAt = charAt2;
                }
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return Character.valueOf(charAt);
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfDouble")
    @InterfaceC14422l0(version = "1.4")
    public static final double x9(CharSequence charSequence, Mf.l<? super Character, Double> selector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        double d10 = 0.0d;
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            d10 += selector.invoke(Character.valueOf(charSequence.charAt(i10))).doubleValue();
        }
        return d10;
    }

    @Ef.f
    public static final Character y7(CharSequence charSequence, Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            char charAt = charSequence.charAt(i10);
            if (predicate.invoke(Character.valueOf(charAt)).booleanValue()) {
                return Character.valueOf(charAt);
            }
        }
        return null;
    }

    @Lf.j(name = "maxWithOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final char y8(@NotNull CharSequence charSequence, @NotNull Comparator<? super Character> comparator) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (charSequence.length() == 0) {
            throw new NoSuchElementException();
        }
        char charAt = charSequence.charAt(0);
        int C32 = P.C3(charSequence);
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                char charAt2 = charSequence.charAt(i10);
                if (comparator.compare(Character.valueOf(charAt), Character.valueOf(charAt2)) < 0) {
                    charAt = charAt2;
                }
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return charAt;
    }

    @Ef.f
    @Lf.j(name = "sumOfInt")
    @InterfaceC14422l0(version = "1.4")
    public static final int y9(CharSequence charSequence, Mf.l<? super Character, Integer> selector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int i10 = 0;
        for (int i11 = 0; i11 < charSequence.length(); i11++) {
            i10 += selector.invoke(Character.valueOf(charSequence.charAt(i11))).intValue();
        }
        return i10;
    }

    @Ef.f
    public static final Character z7(CharSequence charSequence, Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = charSequence.length() - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                char charAt = charSequence.charAt(length);
                if (predicate.invoke(Character.valueOf(charAt)).booleanValue()) {
                    return Character.valueOf(charAt);
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
        }
        return null;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <R extends Comparable<? super R>> Character z8(@NotNull CharSequence charSequence, @NotNull Mf.l<? super Character, ? extends R> selector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (charSequence.length() == 0) {
            return null;
        }
        char charAt = charSequence.charAt(0);
        int C32 = P.C3(charSequence);
        if (C32 == 0) {
            return Character.valueOf(charAt);
        }
        R invoke = selector.invoke(Character.valueOf(charAt));
        int i10 = 1;
        if (1 <= C32) {
            while (true) {
                char charAt2 = charSequence.charAt(i10);
                R invoke2 = selector.invoke(Character.valueOf(charAt2));
                if (invoke.compareTo(invoke2) > 0) {
                    charAt = charAt2;
                    invoke = invoke2;
                }
                if (i10 == C32) {
                    break;
                }
                i10++;
            }
        }
        return Character.valueOf(charAt);
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfLong")
    @InterfaceC14422l0(version = "1.4")
    public static final long z9(CharSequence charSequence, Mf.l<? super Character, Long> selector) {
        kotlin.jvm.internal.M.p(charSequence, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        long j10 = 0;
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            j10 += selector.invoke(Character.valueOf(charSequence.charAt(i10))).longValue();
        }
        return j10;
    }
}
