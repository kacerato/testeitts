package pf;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import java.util.SortedSet;
import java.util.TreeSet;
import nf.InterfaceC14394D;
import nf.InterfaceC14410f0;
import nf.InterfaceC14412g0;
import nf.InterfaceC14422l0;
import nf.InterfaceC14427o;
import nf.InterfaceC14429p;
import org.jetbrains.annotations.NotNull;

@kotlin.jvm.internal.t0({"SMAP\n_ArraysJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _ArraysJvm.kt\nkotlin/collections/ArraysKt___ArraysJvmKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,3061:1\n14739#2,14:3062\n14769#2,14:3076\n14799#2,14:3090\n14829#2,14:3104\n14859#2,14:3118\n14889#2,14:3132\n14919#2,14:3146\n14949#2,14:3160\n14979#2,14:3174\n17711#2,14:3188\n17741#2,14:3202\n17771#2,14:3216\n17801#2,14:3230\n17831#2,14:3244\n17861#2,14:3258\n17891#2,14:3272\n17921#2,14:3286\n17951#2,14:3300\n*S KotlinDebug\n*F\n+ 1 _ArraysJvm.kt\nkotlin/collections/ArraysKt___ArraysJvmKt\n*L\n2453#1:3062,14\n2460#1:3076,14\n2467#1:3090,14\n2474#1:3104,14\n2481#1:3118,14\n2488#1:3132,14\n2495#1:3146,14\n2502#1:3160,14\n2509#1:3174,14\n2651#1:3188,14\n2658#1:3202,14\n2665#1:3216,14\n2672#1:3230,14\n2679#1:3244,14\n2686#1:3258,14\n2693#1:3272,14\n2700#1:3286,14\n2707#1:3300,14\n*E\n"})
public class C14985q extends C14984p {

    public static final class a extends AbstractC14967d<Byte> implements RandomAccess {

        public final byte[] f103874d;

        public a(byte[] bArr) {
            this.f103874d = bArr;
        }

        @Override
        public int b() {
            return this.f103874d.length;
        }

        @Override
        public final boolean contains(Object obj) {
            if (obj instanceof Byte) {
                return d(((Number) obj).byteValue());
            }
            return false;
        }

        public boolean d(byte b10) {
            return C14960A.v8(this.f103874d, b10);
        }

        @Override
        public final int indexOf(Object obj) {
            if (obj instanceof Byte) {
                return k(((Number) obj).byteValue());
            }
            return -1;
        }

        @Override
        public boolean isEmpty() {
            return this.f103874d.length == 0;
        }

        @Override
        public Byte get(int i10) {
            return Byte.valueOf(this.f103874d[i10]);
        }

        public int k(byte b10) {
            return C14960A.Uf(this.f103874d, b10);
        }

        public int l(byte b10) {
            return C14960A.Yh(this.f103874d, b10);
        }

        @Override
        public final int lastIndexOf(Object obj) {
            if (obj instanceof Byte) {
                return l(((Number) obj).byteValue());
            }
            return -1;
        }
    }

    public static final class b extends AbstractC14967d<Short> implements RandomAccess {

        public final short[] f103875d;

        public b(short[] sArr) {
            this.f103875d = sArr;
        }

        @Override
        public int b() {
            return this.f103875d.length;
        }

        @Override
        public final boolean contains(Object obj) {
            if (obj instanceof Short) {
                return d(((Number) obj).shortValue());
            }
            return false;
        }

        public boolean d(short s10) {
            return C14960A.C8(this.f103875d, s10);
        }

        @Override
        public final int indexOf(Object obj) {
            if (obj instanceof Short) {
                return k(((Number) obj).shortValue());
            }
            return -1;
        }

        @Override
        public boolean isEmpty() {
            return this.f103875d.length == 0;
        }

        @Override
        public Short get(int i10) {
            return Short.valueOf(this.f103875d[i10]);
        }

        public int k(short s10) {
            return C14960A.bg(this.f103875d, s10);
        }

        public int l(short s10) {
            return C14960A.fi(this.f103875d, s10);
        }

        @Override
        public final int lastIndexOf(Object obj) {
            if (obj instanceof Short) {
                return l(((Number) obj).shortValue());
            }
            return -1;
        }
    }

    public static final class c extends AbstractC14967d<Integer> implements RandomAccess {

        public final int[] f103876d;

        public c(int[] iArr) {
            this.f103876d = iArr;
        }

        @Override
        public int b() {
            return this.f103876d.length;
        }

        @Override
        public final boolean contains(Object obj) {
            if (obj instanceof Integer) {
                return j(((Number) obj).intValue());
            }
            return false;
        }

        @Override
        public final int indexOf(Object obj) {
            if (obj instanceof Integer) {
                return l(((Number) obj).intValue());
            }
            return -1;
        }

        @Override
        public boolean isEmpty() {
            return this.f103876d.length == 0;
        }

        public boolean j(int i10) {
            return C14960A.z8(this.f103876d, i10);
        }

        @Override
        public Integer get(int i10) {
            return Integer.valueOf(this.f103876d[i10]);
        }

        public int l(int i10) {
            return C14960A.Yf(this.f103876d, i10);
        }

        @Override
        public final int lastIndexOf(Object obj) {
            if (obj instanceof Integer) {
                return m(((Number) obj).intValue());
            }
            return -1;
        }

        public int m(int i10) {
            return C14960A.ci(this.f103876d, i10);
        }
    }

    public static final class d extends AbstractC14967d<Long> implements RandomAccess {

        public final long[] f103877d;

        public d(long[] jArr) {
            this.f103877d = jArr;
        }

        @Override
        public int b() {
            return this.f103877d.length;
        }

        @Override
        public final boolean contains(Object obj) {
            if (obj instanceof Long) {
                return d(((Number) obj).longValue());
            }
            return false;
        }

        public boolean d(long j10) {
            return C14960A.A8(this.f103877d, j10);
        }

        @Override
        public final int indexOf(Object obj) {
            if (obj instanceof Long) {
                return k(((Number) obj).longValue());
            }
            return -1;
        }

        @Override
        public boolean isEmpty() {
            return this.f103877d.length == 0;
        }

        @Override
        public Long get(int i10) {
            return Long.valueOf(this.f103877d[i10]);
        }

        public int k(long j10) {
            return C14960A.Zf(this.f103877d, j10);
        }

        public int l(long j10) {
            return C14960A.di(this.f103877d, j10);
        }

        @Override
        public final int lastIndexOf(Object obj) {
            if (obj instanceof Long) {
                return l(((Number) obj).longValue());
            }
            return -1;
        }
    }

    @kotlin.jvm.internal.t0({"SMAP\n_ArraysJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _ArraysJvm.kt\nkotlin/collections/ArraysKt___ArraysJvmKt$asList$5\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,3061:1\n13275#2,2:3062\n1851#2,6:3064\n1959#2,6:3070\n*S KotlinDebug\n*F\n+ 1 _ArraysJvm.kt\nkotlin/collections/ArraysKt___ArraysJvmKt$asList$5\n*L\n200#1:3062,2\n202#1:3064,6\n203#1:3070,6\n*E\n"})
    public static final class e extends AbstractC14967d<Float> implements RandomAccess {

        public final float[] f103878d;

        public e(float[] fArr) {
            this.f103878d = fArr;
        }

        @Override
        public int b() {
            return this.f103878d.length;
        }

        @Override
        public final boolean contains(Object obj) {
            if (obj instanceof Float) {
                return d(((Number) obj).floatValue());
            }
            return false;
        }

        public boolean d(float f10) {
            for (float f11 : this.f103878d) {
                if (Float.floatToIntBits(f11) == Float.floatToIntBits(f10)) {
                    return true;
                }
            }
            return false;
        }

        @Override
        public final int indexOf(Object obj) {
            if (obj instanceof Float) {
                return k(((Number) obj).floatValue());
            }
            return -1;
        }

        @Override
        public boolean isEmpty() {
            return this.f103878d.length == 0;
        }

        @Override
        public Float get(int i10) {
            return Float.valueOf(this.f103878d[i10]);
        }

        public int k(float f10) {
            float[] fArr = this.f103878d;
            int length = fArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (Float.floatToIntBits(fArr[i10]) == Float.floatToIntBits(f10)) {
                    return i10;
                }
            }
            return -1;
        }

        public int l(float f10) {
            float[] fArr = this.f103878d;
            int length = fArr.length - 1;
            if (length < 0) {
                return -1;
            }
            while (true) {
                int i10 = length - 1;
                if (Float.floatToIntBits(fArr[length]) == Float.floatToIntBits(f10)) {
                    return length;
                }
                if (i10 < 0) {
                    return -1;
                }
                length = i10;
            }
        }

        @Override
        public final int lastIndexOf(Object obj) {
            if (obj instanceof Float) {
                return l(((Number) obj).floatValue());
            }
            return -1;
        }
    }

    @kotlin.jvm.internal.t0({"SMAP\n_ArraysJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _ArraysJvm.kt\nkotlin/collections/ArraysKt___ArraysJvmKt$asList$6\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,3061:1\n13285#2,2:3062\n1863#2,6:3064\n1971#2,6:3070\n*S KotlinDebug\n*F\n+ 1 _ArraysJvm.kt\nkotlin/collections/ArraysKt___ArraysJvmKt$asList$6\n*L\n214#1:3062,2\n216#1:3064,6\n217#1:3070,6\n*E\n"})
    public static final class f extends AbstractC14967d<Double> implements RandomAccess {

        public final double[] f103879d;

        public f(double[] dArr) {
            this.f103879d = dArr;
        }

        @Override
        public int b() {
            return this.f103879d.length;
        }

        @Override
        public final boolean contains(Object obj) {
            if (obj instanceof Double) {
                return d(((Number) obj).doubleValue());
            }
            return false;
        }

        public boolean d(double d10) {
            for (double d11 : this.f103879d) {
                if (Double.doubleToLongBits(d11) == Double.doubleToLongBits(d10)) {
                    return true;
                }
            }
            return false;
        }

        @Override
        public final int indexOf(Object obj) {
            if (obj instanceof Double) {
                return k(((Number) obj).doubleValue());
            }
            return -1;
        }

        @Override
        public boolean isEmpty() {
            return this.f103879d.length == 0;
        }

        @Override
        public Double get(int i10) {
            return Double.valueOf(this.f103879d[i10]);
        }

        public int k(double d10) {
            double[] dArr = this.f103879d;
            int length = dArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (Double.doubleToLongBits(dArr[i10]) == Double.doubleToLongBits(d10)) {
                    return i10;
                }
            }
            return -1;
        }

        public int l(double d10) {
            double[] dArr = this.f103879d;
            int length = dArr.length - 1;
            if (length < 0) {
                return -1;
            }
            while (true) {
                int i10 = length - 1;
                if (Double.doubleToLongBits(dArr[length]) == Double.doubleToLongBits(d10)) {
                    return length;
                }
                if (i10 < 0) {
                    return -1;
                }
                length = i10;
            }
        }

        @Override
        public final int lastIndexOf(Object obj) {
            if (obj instanceof Double) {
                return l(((Number) obj).doubleValue());
            }
            return -1;
        }
    }

    public static final class g extends AbstractC14967d<Boolean> implements RandomAccess {

        public final boolean[] f103880d;

        public g(boolean[] zArr) {
            this.f103880d = zArr;
        }

        @Override
        public int b() {
            return this.f103880d.length;
        }

        @Override
        public final boolean contains(Object obj) {
            if (obj instanceof Boolean) {
                return d(((Boolean) obj).booleanValue());
            }
            return false;
        }

        public boolean d(boolean z10) {
            return C14960A.D8(this.f103880d, z10);
        }

        @Override
        public final int indexOf(Object obj) {
            if (obj instanceof Boolean) {
                return k(((Boolean) obj).booleanValue());
            }
            return -1;
        }

        @Override
        public boolean isEmpty() {
            return this.f103880d.length == 0;
        }

        @Override
        public Boolean get(int i10) {
            return Boolean.valueOf(this.f103880d[i10]);
        }

        public int k(boolean z10) {
            return C14960A.cg(this.f103880d, z10);
        }

        public int l(boolean z10) {
            return C14960A.gi(this.f103880d, z10);
        }

        @Override
        public final int lastIndexOf(Object obj) {
            if (obj instanceof Boolean) {
                return l(((Boolean) obj).booleanValue());
            }
            return -1;
        }
    }

    public static final class h extends AbstractC14967d<Character> implements RandomAccess {

        public final char[] f103881d;

        public h(char[] cArr) {
            this.f103881d = cArr;
        }

        @Override
        public int b() {
            return this.f103881d.length;
        }

        @Override
        public final boolean contains(Object obj) {
            if (obj instanceof Character) {
                return d(((Character) obj).charValue());
            }
            return false;
        }

        public boolean d(char c10) {
            return C14960A.w8(this.f103881d, c10);
        }

        @Override
        public final int indexOf(Object obj) {
            if (obj instanceof Character) {
                return k(((Character) obj).charValue());
            }
            return -1;
        }

        @Override
        public boolean isEmpty() {
            return this.f103881d.length == 0;
        }

        @Override
        public Character get(int i10) {
            return Character.valueOf(this.f103881d[i10]);
        }

        public int k(char c10) {
            return C14960A.Vf(this.f103881d, c10);
        }

        public int l(char c10) {
            return C14960A.Zh(this.f103881d, c10);
        }

        @Override
        public final int lastIndexOf(Object obj) {
            if (obj instanceof Character) {
                return l(((Character) obj).charValue());
            }
            return -1;
        }
    }

    public static final int A(@NotNull int[] iArr, int i10, int i11, int i12) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        return Arrays.binarySearch(iArr, i11, i12, i10);
    }

    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static long[] A0(@NotNull long[] jArr, @NotNull long[] destination, int i10, int i11, int i12) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        System.arraycopy(jArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    @Ef.f
    public static final float A1(float[] fArr, int i10) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        return fArr[i10];
    }

    @InterfaceC14427o(message = "Use maxWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Object A2(Object[] objArr, Comparator comparator) {
        kotlin.jvm.internal.M.p(objArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return C14960A.Al(objArr, comparator);
    }

    @NotNull
    public static short[] A3(@NotNull short[] sArr, short s10) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        int length = sArr.length;
        short[] copyOf = Arrays.copyOf(sArr, length + 1);
        copyOf[length] = s10;
        kotlin.jvm.internal.M.m(copyOf);
        return copyOf;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfBigInteger")
    @InterfaceC14422l0(version = "1.4")
    public static final BigInteger A4(short[] sArr, Mf.l<? super Short, ? extends BigInteger> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        BigInteger valueOf = BigInteger.valueOf(0L);
        kotlin.jvm.internal.M.o(valueOf, "valueOf(...)");
        for (short s10 : sArr) {
            valueOf = valueOf.add(selector.invoke(Short.valueOf(s10)));
            kotlin.jvm.internal.M.o(valueOf, "add(...)");
        }
        return valueOf;
    }

    public static final int B(@NotNull long[] jArr, long j10, int i10, int i11) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        return Arrays.binarySearch(jArr, i10, i11, j10);
    }

    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static <T> T[] B0(@NotNull T[] tArr, @NotNull T[] destination, int i10, int i11, int i12) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        System.arraycopy(tArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    @Ef.f
    public static final int B1(int[] iArr, int i10) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        return iArr[i10];
    }

    @InterfaceC14427o(message = "Use maxWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Short B2(short[] sArr, Comparator comparator) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return C14960A.Bl(sArr, comparator);
    }

    @NotNull
    public static short[] B3(@NotNull short[] sArr, @NotNull short[] elements) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        int length = sArr.length;
        int length2 = elements.length;
        short[] copyOf = Arrays.copyOf(sArr, length + length2);
        System.arraycopy(elements, 0, copyOf, length, length2);
        kotlin.jvm.internal.M.m(copyOf);
        return copyOf;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfBigInteger")
    @InterfaceC14422l0(version = "1.4")
    public static final BigInteger B4(boolean[] zArr, Mf.l<? super Boolean, ? extends BigInteger> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        BigInteger valueOf = BigInteger.valueOf(0L);
        kotlin.jvm.internal.M.o(valueOf, "valueOf(...)");
        for (boolean z10 : zArr) {
            valueOf = valueOf.add(selector.invoke(Boolean.valueOf(z10)));
            kotlin.jvm.internal.M.o(valueOf, "add(...)");
        }
        return valueOf;
    }

    public static final <T> int C(@NotNull T[] tArr, T t10, int i10, int i11) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return Arrays.binarySearch(tArr, i10, i11, t10);
    }

    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static short[] C0(@NotNull short[] sArr, @NotNull short[] destination, int i10, int i11, int i12) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        System.arraycopy(sArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    @Ef.f
    public static final long C1(long[] jArr, int i10) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        return jArr[i10];
    }

    @InterfaceC14427o(message = "Use minOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minOrNull()", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Byte C2(byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        return C14960A.xn(bArr);
    }

    @NotNull
    public static final boolean[] C3(@NotNull boolean[] zArr, @NotNull Collection<Boolean> elements) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        int length = zArr.length;
        boolean[] copyOf = Arrays.copyOf(zArr, elements.size() + length);
        Iterator<Boolean> it = elements.iterator();
        while (it.hasNext()) {
            copyOf[length] = it.next().booleanValue();
            length++;
        }
        kotlin.jvm.internal.M.m(copyOf);
        return copyOf;
    }

    @NotNull
    public static final SortedSet<Byte> C4(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        return (SortedSet) C14960A.By(bArr, new TreeSet());
    }

    public static final <T> int D(@NotNull T[] tArr, T t10, @NotNull Comparator<? super T> comparator, int i10, int i11) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return Arrays.binarySearch(tArr, i10, i11, t10, comparator);
    }

    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final boolean[] D0(@NotNull boolean[] zArr, @NotNull boolean[] destination, int i10, int i11, int i12) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        System.arraycopy(zArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    @Ef.f
    public static final <T> T D1(T[] tArr, int i10) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return tArr[i10];
    }

    @InterfaceC14427o(message = "Use minOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minOrNull()", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Character D2(char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        return C14960A.yn(cArr);
    }

    @NotNull
    public static final boolean[] D3(@NotNull boolean[] zArr, boolean z10) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        int length = zArr.length;
        boolean[] copyOf = Arrays.copyOf(zArr, length + 1);
        copyOf[length] = z10;
        kotlin.jvm.internal.M.m(copyOf);
        return copyOf;
    }

    @NotNull
    public static final SortedSet<Character> D4(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        return (SortedSet) C14960A.Cy(cArr, new TreeSet());
    }

    public static final int E(@NotNull short[] sArr, short s10, int i10, int i11) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        return Arrays.binarySearch(sArr, i10, i11, s10);
    }

    public static byte[] E0(byte[] bArr, byte[] bArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = bArr.length;
        }
        return v0(bArr, bArr2, i10, i11, i12);
    }

    @Ef.f
    public static final short E1(short[] sArr, int i10) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        return sArr[i10];
    }

    @InterfaceC14427o(message = "Use minOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minOrNull()", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Comparable E2(Comparable[] comparableArr) {
        kotlin.jvm.internal.M.p(comparableArr, "<this>");
        return C14960A.zn(comparableArr);
    }

    @NotNull
    public static final boolean[] E3(@NotNull boolean[] zArr, @NotNull boolean[] elements) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        int length = zArr.length;
        int length2 = elements.length;
        boolean[] copyOf = Arrays.copyOf(zArr, length + length2);
        System.arraycopy(elements, 0, copyOf, length, length2);
        kotlin.jvm.internal.M.m(copyOf);
        return copyOf;
    }

    @NotNull
    public static final SortedSet<Double> E4(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        return (SortedSet) C14960A.Dy(dArr, new TreeSet());
    }

    public static int F(byte[] bArr, byte b10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = bArr.length;
        }
        return w(bArr, b10, i10, i11);
    }

    public static char[] F0(char[] cArr, char[] cArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = cArr.length;
        }
        return w0(cArr, cArr2, i10, i11, i12);
    }

    @Ef.f
    public static final boolean F1(boolean[] zArr, int i10) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        return zArr[i10];
    }

    @InterfaceC14427o(message = "Use minOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minOrNull()", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Double F2(double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        return C14960A.An(dArr);
    }

    @Ef.f
    public static final <T> T[] F3(T[] tArr, T t10) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return (T[]) w3(tArr, t10);
    }

    @NotNull
    public static final SortedSet<Float> F4(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        return (SortedSet) C14960A.Ey(fArr, new TreeSet());
    }

    public static int G(char[] cArr, char c10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = cArr.length;
        }
        return x(cArr, c10, i10, i11);
    }

    public static double[] G0(double[] dArr, double[] dArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = dArr.length;
        }
        return x0(dArr, dArr2, i10, i11, i12);
    }

    public static void G1(@NotNull byte[] bArr, byte b10, int i10, int i11) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        Arrays.fill(bArr, i10, i11, b10);
    }

    @InterfaceC14427o(message = "Use minOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minOrNull()", imports = {}))
    @InterfaceC14422l0(version = "1.1")
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Double G2(Double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        return C14960A.Bn(dArr);
    }

    public static final void G3(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        if (bArr.length > 1) {
            Arrays.sort(bArr);
        }
    }

    @NotNull
    public static final SortedSet<Integer> G4(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        return (SortedSet) C14960A.Fy(iArr, new TreeSet());
    }

    public static int H(double[] dArr, double d10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = dArr.length;
        }
        return y(dArr, d10, i10, i11);
    }

    public static float[] H0(float[] fArr, float[] fArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = fArr.length;
        }
        return y0(fArr, fArr2, i10, i11, i12);
    }

    public static void H1(@NotNull char[] cArr, char c10, int i10, int i11) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        Arrays.fill(cArr, i10, i11, c10);
    }

    @InterfaceC14427o(message = "Use minOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minOrNull()", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Float H2(float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        return C14960A.Cn(fArr);
    }

    public static final void H3(@NotNull byte[] bArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        Arrays.sort(bArr, i10, i11);
    }

    @NotNull
    public static final SortedSet<Long> H4(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        return (SortedSet) C14960A.Gy(jArr, new TreeSet());
    }

    public static int I(float[] fArr, float f10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = fArr.length;
        }
        return z(fArr, f10, i10, i11);
    }

    public static int[] I0(int[] iArr, int[] iArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = iArr.length;
        }
        return z0(iArr, iArr2, i10, i11, i12);
    }

    public static final void I1(@NotNull double[] dArr, double d10, int i10, int i11) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        Arrays.fill(dArr, i10, i11, d10);
    }

    @InterfaceC14427o(message = "Use minOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minOrNull()", imports = {}))
    @InterfaceC14422l0(version = "1.1")
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Float I2(Float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        return C14960A.Dn(fArr);
    }

    public static final void I3(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        if (cArr.length > 1) {
            Arrays.sort(cArr);
        }
    }

    @NotNull
    public static final <T extends Comparable<? super T>> SortedSet<T> I4(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return (SortedSet) C14960A.Hy(tArr, new TreeSet());
    }

    public static int J(int[] iArr, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i11 = 0;
        }
        if ((i13 & 4) != 0) {
            i12 = iArr.length;
        }
        return A(iArr, i10, i11, i12);
    }

    public static long[] J0(long[] jArr, long[] jArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = jArr.length;
        }
        return A0(jArr, jArr2, i10, i11, i12);
    }

    public static final void J1(@NotNull float[] fArr, float f10, int i10, int i11) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        Arrays.fill(fArr, i10, i11, f10);
    }

    @InterfaceC14427o(message = "Use minOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minOrNull()", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Integer J2(int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        return C14960A.En(iArr);
    }

    public static final void J3(@NotNull char[] cArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        Arrays.sort(cArr, i10, i11);
    }

    @NotNull
    public static final <T> SortedSet<T> J4(@NotNull T[] tArr, @NotNull Comparator<? super T> comparator) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return (SortedSet) C14960A.Hy(tArr, new TreeSet(comparator));
    }

    public static int K(long[] jArr, long j10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = jArr.length;
        }
        return B(jArr, j10, i10, i11);
    }

    public static Object[] K0(Object[] objArr, Object[] objArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = objArr.length;
        }
        return B0(objArr, objArr2, i10, i11, i12);
    }

    public static void K1(@NotNull int[] iArr, int i10, int i11, int i12) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        Arrays.fill(iArr, i11, i12, i10);
    }

    @InterfaceC14427o(message = "Use minOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minOrNull()", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Long K2(long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        return C14960A.Fn(jArr);
    }

    public static final void K3(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        if (dArr.length > 1) {
            Arrays.sort(dArr);
        }
    }

    @NotNull
    public static final SortedSet<Short> K4(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        return (SortedSet) C14960A.Iy(sArr, new TreeSet());
    }

    public static int L(Object[] objArr, Object obj, int i10, int i11, int i12, Object obj2) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = objArr.length;
        }
        return C(objArr, obj, i10, i11);
    }

    public static short[] L0(short[] sArr, short[] sArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = sArr.length;
        }
        return C0(sArr, sArr2, i10, i11, i12);
    }

    public static void L1(@NotNull long[] jArr, long j10, int i10, int i11) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        Arrays.fill(jArr, i10, i11, j10);
    }

    @InterfaceC14427o(message = "Use minOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minOrNull()", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Short L2(short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        return C14960A.Gn(sArr);
    }

    public static final void L3(@NotNull double[] dArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        Arrays.sort(dArr, i10, i11);
    }

    @NotNull
    public static final SortedSet<Boolean> L4(@NotNull boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        return (SortedSet) C14960A.Jy(zArr, new TreeSet());
    }

    public static int M(Object[] objArr, Object obj, Comparator comparator, int i10, int i11, int i12, Object obj2) {
        if ((i12 & 4) != 0) {
            i10 = 0;
        }
        if ((i12 & 8) != 0) {
            i11 = objArr.length;
        }
        return D(objArr, obj, comparator, i10, i11);
    }

    public static boolean[] M0(boolean[] zArr, boolean[] zArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = zArr.length;
        }
        return D0(zArr, zArr2, i10, i11, i12);
    }

    public static final <T> void M1(@NotNull T[] tArr, T t10, int i10, int i11) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        Arrays.fill(tArr, i10, i11, t10);
    }

    @InterfaceC14427o(message = "Use minByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final <R extends Comparable<? super R>> Boolean M2(boolean[] zArr, Mf.l<? super Boolean, ? extends R> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (zArr.length == 0) {
            return null;
        }
        boolean z10 = zArr[0];
        int Qe2 = C14960A.Qe(zArr);
        if (Qe2 == 0) {
            return Boolean.valueOf(z10);
        }
        R invoke = selector.invoke(Boolean.valueOf(z10));
        int i10 = 1;
        if (1 <= Qe2) {
            while (true) {
                boolean z11 = zArr[i10];
                R invoke2 = selector.invoke(Boolean.valueOf(z11));
                if (invoke.compareTo(invoke2) > 0) {
                    z10 = z11;
                    invoke = invoke2;
                }
                if (i10 == Qe2) {
                    break;
                }
                i10++;
            }
        }
        return Boolean.valueOf(z10);
    }

    public static final void M3(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        if (fArr.length > 1) {
            Arrays.sort(fArr);
        }
    }

    @NotNull
    public static final Boolean[] M4(@NotNull boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        Boolean[] boolArr = new Boolean[zArr.length];
        int length = zArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            boolArr[i10] = Boolean.valueOf(zArr[i10]);
        }
        return boolArr;
    }

    public static int N(short[] sArr, short s10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = sArr.length;
        }
        return E(sArr, s10, i10, i11);
    }

    @Ef.f
    public static final byte[] N0(byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        return copyOf;
    }

    public static void N1(@NotNull short[] sArr, short s10, int i10, int i11) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        Arrays.fill(sArr, i10, i11, s10);
    }

    @InterfaceC14427o(message = "Use minByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final <R extends Comparable<? super R>> Byte N2(byte[] bArr, Mf.l<? super Byte, ? extends R> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (bArr.length == 0) {
            return null;
        }
        byte b10 = bArr[0];
        int Ie2 = C14960A.Ie(bArr);
        if (Ie2 == 0) {
            return Byte.valueOf(b10);
        }
        R invoke = selector.invoke(Byte.valueOf(b10));
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                byte b11 = bArr[i10];
                R invoke2 = selector.invoke(Byte.valueOf(b11));
                if (invoke.compareTo(invoke2) > 0) {
                    b10 = b11;
                    invoke = invoke2;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return Byte.valueOf(b10);
    }

    public static final void N3(@NotNull float[] fArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        Arrays.sort(fArr, i10, i11);
    }

    @NotNull
    public static final Byte[] N4(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        Byte[] bArr2 = new Byte[bArr.length];
        int length = bArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            bArr2[i10] = Byte.valueOf(bArr[i10]);
        }
        return bArr2;
    }

    @Ef.f
    @Lf.j(name = "contentDeepEqualsInline")
    @Ef.i
    @InterfaceC14422l0(version = "1.1")
    public static final <T> boolean O(T[] tArr, T[] other) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        return C14984p.g(tArr, other);
    }

    @Ef.f
    public static final byte[] O0(byte[] bArr, int i10) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        byte[] copyOf = Arrays.copyOf(bArr, i10);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        return copyOf;
    }

    public static final void O1(@NotNull boolean[] zArr, boolean z10, int i10, int i11) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        Arrays.fill(zArr, i10, i11, z10);
    }

    @InterfaceC14427o(message = "Use minByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final <R extends Comparable<? super R>> Character O2(char[] cArr, Mf.l<? super Character, ? extends R> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (cArr.length == 0) {
            return null;
        }
        char c10 = cArr[0];
        int Je2 = C14960A.Je(cArr);
        if (Je2 == 0) {
            return Character.valueOf(c10);
        }
        R invoke = selector.invoke(Character.valueOf(c10));
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                char c11 = cArr[i10];
                R invoke2 = selector.invoke(Character.valueOf(c11));
                if (invoke.compareTo(invoke2) > 0) {
                    c10 = c11;
                    invoke = invoke2;
                }
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return Character.valueOf(c10);
    }

    public static final void O3(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        if (iArr.length > 1) {
            Arrays.sort(iArr);
        }
    }

    @NotNull
    public static final Character[] O4(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        Character[] chArr = new Character[cArr.length];
        int length = cArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            chArr[i10] = Character.valueOf(cArr[i10]);
        }
        return chArr;
    }

    @Ef.f
    @Lf.j(name = "contentDeepEqualsNullable")
    @InterfaceC14422l0(version = "1.4")
    public static final <T> boolean P(T[] tArr, T[] tArr2) {
        return C14984p.g(tArr, tArr2);
    }

    @Ef.f
    public static final char[] P0(char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        char[] copyOf = Arrays.copyOf(cArr, cArr.length);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        return copyOf;
    }

    public static void P1(byte[] bArr, byte b10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = bArr.length;
        }
        G1(bArr, b10, i10, i11);
    }

    @InterfaceC14427o(message = "Use minByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final <R extends Comparable<? super R>> Double P2(double[] dArr, Mf.l<? super Double, ? extends R> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (dArr.length == 0) {
            return null;
        }
        double d10 = dArr[0];
        int Ke2 = C14960A.Ke(dArr);
        if (Ke2 == 0) {
            return Double.valueOf(d10);
        }
        R invoke = selector.invoke(Double.valueOf(d10));
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                double d11 = dArr[i10];
                R invoke2 = selector.invoke(Double.valueOf(d11));
                if (invoke.compareTo(invoke2) > 0) {
                    d10 = d11;
                    invoke = invoke2;
                }
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(d10);
    }

    public static final void P3(@NotNull int[] iArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        Arrays.sort(iArr, i10, i11);
    }

    @NotNull
    public static final Double[] P4(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        Double[] dArr2 = new Double[dArr.length];
        int length = dArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            dArr2[i10] = Double.valueOf(dArr[i10]);
        }
        return dArr2;
    }

    @Ef.f
    @Lf.j(name = "contentDeepHashCodeInline")
    @Ef.i
    @InterfaceC14422l0(version = "1.1")
    public static final <T> int Q(T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return C14983o.b(tArr);
    }

    @Ef.f
    public static final char[] Q0(char[] cArr, int i10) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        char[] copyOf = Arrays.copyOf(cArr, i10);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        return copyOf;
    }

    public static void Q1(char[] cArr, char c10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = cArr.length;
        }
        H1(cArr, c10, i10, i11);
    }

    @InterfaceC14427o(message = "Use minByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final <R extends Comparable<? super R>> Float Q2(float[] fArr, Mf.l<? super Float, ? extends R> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (fArr.length == 0) {
            return null;
        }
        float f10 = fArr[0];
        int Le2 = C14960A.Le(fArr);
        if (Le2 == 0) {
            return Float.valueOf(f10);
        }
        R invoke = selector.invoke(Float.valueOf(f10));
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                float f11 = fArr[i10];
                R invoke2 = selector.invoke(Float.valueOf(f11));
                if (invoke.compareTo(invoke2) > 0) {
                    f10 = f11;
                    invoke = invoke2;
                }
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(f10);
    }

    public static final void Q3(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        if (jArr.length > 1) {
            Arrays.sort(jArr);
        }
    }

    @NotNull
    public static final Float[] Q4(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        Float[] fArr2 = new Float[fArr.length];
        int length = fArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            fArr2[i10] = Float.valueOf(fArr[i10]);
        }
        return fArr2;
    }

    @Ef.f
    @Lf.j(name = "contentDeepHashCodeNullable")
    @InterfaceC14422l0(version = "1.4")
    public static final <T> int R(T[] tArr) {
        return C14983o.b(tArr);
    }

    @Ef.f
    public static final double[] R0(double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        double[] copyOf = Arrays.copyOf(dArr, dArr.length);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        return copyOf;
    }

    public static void R1(double[] dArr, double d10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = dArr.length;
        }
        I1(dArr, d10, i10, i11);
    }

    @InterfaceC14427o(message = "Use minByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final <R extends Comparable<? super R>> Integer R2(int[] iArr, Mf.l<? super Integer, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (iArr.length == 0) {
            return null;
        }
        int i10 = iArr[0];
        int Me2 = C14960A.Me(iArr);
        if (Me2 == 0) {
            return Integer.valueOf(i10);
        }
        R invoke = selector.invoke(Integer.valueOf(i10));
        int i11 = 1;
        if (1 <= Me2) {
            while (true) {
                int i12 = iArr[i11];
                R invoke2 = selector.invoke(Integer.valueOf(i12));
                if (invoke.compareTo(invoke2) > 0) {
                    i10 = i12;
                    invoke = invoke2;
                }
                if (i11 == Me2) {
                    break;
                }
                i11++;
            }
        }
        return Integer.valueOf(i10);
    }

    public static final void R3(@NotNull long[] jArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        Arrays.sort(jArr, i10, i11);
    }

    @NotNull
    public static final Integer[] R4(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        Integer[] numArr = new Integer[iArr.length];
        int length = iArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            numArr[i10] = Integer.valueOf(iArr[i10]);
        }
        return numArr;
    }

    @Ef.f
    @Lf.j(name = "contentDeepToStringInline")
    @Ef.i
    @InterfaceC14422l0(version = "1.1")
    public static final <T> String S(T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return C14984p.h(tArr);
    }

    @Ef.f
    public static final double[] S0(double[] dArr, int i10) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        double[] copyOf = Arrays.copyOf(dArr, i10);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        return copyOf;
    }

    public static void S1(float[] fArr, float f10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = fArr.length;
        }
        J1(fArr, f10, i10, i11);
    }

    @InterfaceC14427o(message = "Use minByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final <R extends Comparable<? super R>> Long S2(long[] jArr, Mf.l<? super Long, ? extends R> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (jArr.length == 0) {
            return null;
        }
        long j10 = jArr[0];
        int Ne2 = C14960A.Ne(jArr);
        if (Ne2 == 0) {
            return Long.valueOf(j10);
        }
        R invoke = selector.invoke(Long.valueOf(j10));
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                long j11 = jArr[i10];
                R invoke2 = selector.invoke(Long.valueOf(j11));
                if (invoke.compareTo(invoke2) > 0) {
                    j10 = j11;
                    invoke = invoke2;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return Long.valueOf(j10);
    }

    @Ef.f
    public static final <T extends Comparable<? super T>> void S3(T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        U3(tArr);
    }

    @NotNull
    public static final Long[] S4(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        Long[] lArr = new Long[jArr.length];
        int length = jArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            lArr[i10] = Long.valueOf(jArr[i10]);
        }
        return lArr;
    }

    @Ef.f
    @Lf.j(name = "contentDeepToStringNullable")
    @InterfaceC14422l0(version = "1.4")
    public static final <T> String T(T[] tArr) {
        return C14984p.h(tArr);
    }

    @Ef.f
    public static final float[] T0(float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        float[] copyOf = Arrays.copyOf(fArr, fArr.length);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        return copyOf;
    }

    public static void T1(int[] iArr, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i11 = 0;
        }
        if ((i13 & 4) != 0) {
            i12 = iArr.length;
        }
        K1(iArr, i10, i11, i12);
    }

    @InterfaceC14427o(message = "Use minByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final <T, R extends Comparable<? super R>> T T2(T[] tArr, Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (tArr.length == 0) {
            return null;
        }
        T t10 = tArr[0];
        int Oe2 = C14960A.Oe(tArr);
        if (Oe2 != 0) {
            R invoke = selector.invoke(t10);
            int i10 = 1;
            if (1 <= Oe2) {
                while (true) {
                    T t11 = tArr[i10];
                    R invoke2 = selector.invoke(t11);
                    if (invoke.compareTo(invoke2) > 0) {
                        t10 = t11;
                        invoke = invoke2;
                    }
                    if (i10 == Oe2) {
                        break;
                    }
                    i10++;
                }
            }
        }
        return t10;
    }

    @InterfaceC14422l0(version = "1.4")
    public static final <T extends Comparable<? super T>> void T3(@NotNull T[] tArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        Arrays.sort(tArr, i10, i11);
    }

    @NotNull
    public static final Short[] T4(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        Short[] shArr = new Short[sArr.length];
        int length = sArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            shArr[i10] = Short.valueOf(sArr[i10]);
        }
        return shArr;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final boolean U(byte[] bArr, byte[] bArr2) {
        return Arrays.equals(bArr, bArr2);
    }

    @Ef.f
    public static final float[] U0(float[] fArr, int i10) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        float[] copyOf = Arrays.copyOf(fArr, i10);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        return copyOf;
    }

    public static void U1(long[] jArr, long j10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = jArr.length;
        }
        L1(jArr, j10, i10, i11);
    }

    @InterfaceC14427o(message = "Use minByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final <R extends Comparable<? super R>> Short U2(short[] sArr, Mf.l<? super Short, ? extends R> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (sArr.length == 0) {
            return null;
        }
        short s10 = sArr[0];
        int Pe2 = C14960A.Pe(sArr);
        if (Pe2 == 0) {
            return Short.valueOf(s10);
        }
        R invoke = selector.invoke(Short.valueOf(s10));
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                short s11 = sArr[i10];
                R invoke2 = selector.invoke(Short.valueOf(s11));
                if (invoke.compareTo(invoke2) > 0) {
                    s10 = s11;
                    invoke = invoke2;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return Short.valueOf(s10);
    }

    public static final <T> void U3(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        if (tArr.length > 1) {
            Arrays.sort(tArr);
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final boolean V(char[] cArr, char[] cArr2) {
        return Arrays.equals(cArr, cArr2);
    }

    @Ef.f
    public static final int[] V0(int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        return copyOf;
    }

    public static void V1(Object[] objArr, Object obj, int i10, int i11, int i12, Object obj2) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = objArr.length;
        }
        M1(objArr, obj, i10, i11);
    }

    @InterfaceC14427o(message = "Use minWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Boolean V2(boolean[] zArr, Comparator comparator) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return C14960A.Rn(zArr, comparator);
    }

    public static final <T> void V3(@NotNull T[] tArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        Arrays.sort(tArr, i10, i11);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final boolean W(double[] dArr, double[] dArr2) {
        return Arrays.equals(dArr, dArr2);
    }

    @Ef.f
    public static final int[] W0(int[] iArr, int i10) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        int[] copyOf = Arrays.copyOf(iArr, i10);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        return copyOf;
    }

    public static void W1(short[] sArr, short s10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = sArr.length;
        }
        N1(sArr, s10, i10, i11);
    }

    @InterfaceC14427o(message = "Use minWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Byte W2(byte[] bArr, Comparator comparator) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return C14960A.Sn(bArr, comparator);
    }

    public static final void W3(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        if (sArr.length > 1) {
            Arrays.sort(sArr);
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final boolean X(float[] fArr, float[] fArr2) {
        return Arrays.equals(fArr, fArr2);
    }

    @Ef.f
    public static final long[] X0(long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        long[] copyOf = Arrays.copyOf(jArr, jArr.length);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        return copyOf;
    }

    public static void X1(boolean[] zArr, boolean z10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = zArr.length;
        }
        O1(zArr, z10, i10, i11);
    }

    @InterfaceC14427o(message = "Use minWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Character X2(char[] cArr, Comparator comparator) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return C14960A.Tn(cArr, comparator);
    }

    public static final void X3(@NotNull short[] sArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        Arrays.sort(sArr, i10, i11);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final boolean Y(int[] iArr, int[] iArr2) {
        return Arrays.equals(iArr, iArr2);
    }

    @Ef.f
    public static final long[] Y0(long[] jArr, int i10) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        long[] copyOf = Arrays.copyOf(jArr, i10);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        return copyOf;
    }

    @NotNull
    public static final <R> List<R> Y1(@NotNull Object[] objArr, @NotNull Class<R> klass) {
        kotlin.jvm.internal.M.p(objArr, "<this>");
        kotlin.jvm.internal.M.p(klass, "klass");
        return (List) Z1(objArr, new ArrayList(), klass);
    }

    @InterfaceC14427o(message = "Use minWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Double Y2(double[] dArr, Comparator comparator) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return C14960A.Un(dArr, comparator);
    }

    public static void Y3(byte[] bArr, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = bArr.length;
        }
        H3(bArr, i10, i11);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final boolean Z(long[] jArr, long[] jArr2) {
        return Arrays.equals(jArr, jArr2);
    }

    @Ef.f
    public static final <T> T[] Z0(T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        T[] tArr2 = (T[]) Arrays.copyOf(tArr, tArr.length);
        kotlin.jvm.internal.M.o(tArr2, "copyOf(...)");
        return tArr2;
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super R>, R> C Z1(@NotNull Object[] objArr, @NotNull C destination, @NotNull Class<R> klass) {
        kotlin.jvm.internal.M.p(objArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(klass, "klass");
        for (Object obj : objArr) {
            if (klass.isInstance(obj)) {
                destination.add(obj);
            }
        }
        return destination;
    }

    @InterfaceC14427o(message = "Use minWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Float Z2(float[] fArr, Comparator comparator) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return C14960A.Vn(fArr, comparator);
    }

    public static void Z3(char[] cArr, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = cArr.length;
        }
        J3(cArr, i10, i11);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <T> boolean a0(T[] tArr, T[] tArr2) {
        return Arrays.equals(tArr, tArr2);
    }

    @Ef.f
    public static final <T> T[] a1(T[] tArr, int i10) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        T[] tArr2 = (T[]) Arrays.copyOf(tArr, i10);
        kotlin.jvm.internal.M.o(tArr2, "copyOf(...)");
        return tArr2;
    }

    @InterfaceC14427o(message = "Use maxOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxOrNull()", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Byte a2(byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        return C14960A.Zk(bArr);
    }

    @InterfaceC14427o(message = "Use minWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Integer a3(int[] iArr, Comparator comparator) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return C14960A.Wn(iArr, comparator);
    }

    public static void a4(double[] dArr, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = dArr.length;
        }
        L3(dArr, i10, i11);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final boolean b0(short[] sArr, short[] sArr2) {
        return Arrays.equals(sArr, sArr2);
    }

    @Ef.f
    public static final short[] b1(short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        short[] copyOf = Arrays.copyOf(sArr, sArr.length);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        return copyOf;
    }

    @InterfaceC14427o(message = "Use maxOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxOrNull()", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Character b2(char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        return C14960A.al(cArr);
    }

    @InterfaceC14427o(message = "Use minWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Long b3(long[] jArr, Comparator comparator) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return C14960A.Xn(jArr, comparator);
    }

    public static void b4(float[] fArr, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = fArr.length;
        }
        N3(fArr, i10, i11);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final boolean c0(boolean[] zArr, boolean[] zArr2) {
        return Arrays.equals(zArr, zArr2);
    }

    @Ef.f
    public static final short[] c1(short[] sArr, int i10) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        short[] copyOf = Arrays.copyOf(sArr, i10);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        return copyOf;
    }

    @InterfaceC14427o(message = "Use maxOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxOrNull()", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Comparable c2(Comparable[] comparableArr) {
        kotlin.jvm.internal.M.p(comparableArr, "<this>");
        return C14960A.bl(comparableArr);
    }

    @InterfaceC14427o(message = "Use minWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Object c3(Object[] objArr, Comparator comparator) {
        kotlin.jvm.internal.M.p(objArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return C14960A.Yn(objArr, comparator);
    }

    public static void c4(int[] iArr, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = iArr.length;
        }
        P3(iArr, i10, i11);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final int d0(byte[] bArr) {
        return Arrays.hashCode(bArr);
    }

    @Ef.f
    public static final boolean[] d1(boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        boolean[] copyOf = Arrays.copyOf(zArr, zArr.length);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        return copyOf;
    }

    @InterfaceC14427o(message = "Use maxOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxOrNull()", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Double d2(double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        return C14960A.cl(dArr);
    }

    @InterfaceC14427o(message = "Use minWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.minWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Short d3(short[] sArr, Comparator comparator) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return C14960A.Zn(sArr, comparator);
    }

    public static void d4(long[] jArr, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = jArr.length;
        }
        R3(jArr, i10, i11);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final int e0(char[] cArr) {
        return Arrays.hashCode(cArr);
    }

    @Ef.f
    public static final boolean[] e1(boolean[] zArr, int i10) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        boolean[] copyOf = Arrays.copyOf(zArr, i10);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        return copyOf;
    }

    @InterfaceC14427o(message = "Use maxOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxOrNull()", imports = {}))
    @InterfaceC14422l0(version = "1.1")
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Double e2(Double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        return C14960A.dl(dArr);
    }

    @NotNull
    public static byte[] e3(@NotNull byte[] bArr, byte b10) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        int length = bArr.length;
        byte[] copyOf = Arrays.copyOf(bArr, length + 1);
        copyOf[length] = b10;
        kotlin.jvm.internal.M.m(copyOf);
        return copyOf;
    }

    public static void e4(Comparable[] comparableArr, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = comparableArr.length;
        }
        T3(comparableArr, i10, i11);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final int f0(double[] dArr) {
        return Arrays.hashCode(dArr);
    }

    @NotNull
    @Lf.j(name = "copyOfRange")
    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    public static byte[] f1(@NotNull byte[] bArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        C14983o.c(i11, bArr.length);
        byte[] copyOfRange = Arrays.copyOfRange(bArr, i10, i11);
        kotlin.jvm.internal.M.o(copyOfRange, "copyOfRange(...)");
        return copyOfRange;
    }

    @InterfaceC14427o(message = "Use maxOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxOrNull()", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Float f2(float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        return C14960A.el(fArr);
    }

    @NotNull
    public static final byte[] f3(@NotNull byte[] bArr, @NotNull Collection<Byte> elements) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        int length = bArr.length;
        byte[] copyOf = Arrays.copyOf(bArr, elements.size() + length);
        Iterator<Byte> it = elements.iterator();
        while (it.hasNext()) {
            copyOf[length] = it.next().byteValue();
            length++;
        }
        kotlin.jvm.internal.M.m(copyOf);
        return copyOf;
    }

    public static void f4(Object[] objArr, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = objArr.length;
        }
        V3(objArr, i10, i11);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final int g0(float[] fArr) {
        return Arrays.hashCode(fArr);
    }

    @NotNull
    @Lf.j(name = "copyOfRange")
    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    public static final char[] g1(@NotNull char[] cArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        C14983o.c(i11, cArr.length);
        char[] copyOfRange = Arrays.copyOfRange(cArr, i10, i11);
        kotlin.jvm.internal.M.o(copyOfRange, "copyOfRange(...)");
        return copyOfRange;
    }

    @InterfaceC14427o(message = "Use maxOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxOrNull()", imports = {}))
    @InterfaceC14422l0(version = "1.1")
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Float g2(Float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        return C14960A.fl(fArr);
    }

    @NotNull
    public static byte[] g3(@NotNull byte[] bArr, @NotNull byte[] elements) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        int length = bArr.length;
        int length2 = elements.length;
        byte[] copyOf = Arrays.copyOf(bArr, length + length2);
        System.arraycopy(elements, 0, copyOf, length, length2);
        kotlin.jvm.internal.M.m(copyOf);
        return copyOf;
    }

    public static void g4(short[] sArr, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = sArr.length;
        }
        X3(sArr, i10, i11);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final int h0(int[] iArr) {
        return Arrays.hashCode(iArr);
    }

    @NotNull
    @Lf.j(name = "copyOfRange")
    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    public static final double[] h1(@NotNull double[] dArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        C14983o.c(i11, dArr.length);
        double[] copyOfRange = Arrays.copyOfRange(dArr, i10, i11);
        kotlin.jvm.internal.M.o(copyOfRange, "copyOfRange(...)");
        return copyOfRange;
    }

    @InterfaceC14427o(message = "Use maxOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxOrNull()", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Integer h2(int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        return C14960A.gl(iArr);
    }

    @NotNull
    public static final char[] h3(@NotNull char[] cArr, char c10) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        int length = cArr.length;
        char[] copyOf = Arrays.copyOf(cArr, length + 1);
        copyOf[length] = c10;
        kotlin.jvm.internal.M.m(copyOf);
        return copyOf;
    }

    public static final <T> void h4(@NotNull T[] tArr, @NotNull Comparator<? super T> comparator) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (tArr.length > 1) {
            Arrays.sort(tArr, comparator);
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final int i0(long[] jArr) {
        return Arrays.hashCode(jArr);
    }

    @NotNull
    @Lf.j(name = "copyOfRange")
    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    public static final float[] i1(@NotNull float[] fArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        C14983o.c(i11, fArr.length);
        float[] copyOfRange = Arrays.copyOfRange(fArr, i10, i11);
        kotlin.jvm.internal.M.o(copyOfRange, "copyOfRange(...)");
        return copyOfRange;
    }

    @InterfaceC14427o(message = "Use maxOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxOrNull()", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Long i2(long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        return C14960A.hl(jArr);
    }

    @NotNull
    public static final char[] i3(@NotNull char[] cArr, @NotNull Collection<Character> elements) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        int length = cArr.length;
        char[] copyOf = Arrays.copyOf(cArr, elements.size() + length);
        Iterator<Character> it = elements.iterator();
        while (it.hasNext()) {
            copyOf[length] = it.next().charValue();
            length++;
        }
        kotlin.jvm.internal.M.m(copyOf);
        return copyOf;
    }

    public static final <T> void i4(@NotNull T[] tArr, @NotNull Comparator<? super T> comparator, int i10, int i11) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        Arrays.sort(tArr, i10, i11, comparator);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <T> int j0(T[] tArr) {
        return Arrays.hashCode(tArr);
    }

    @NotNull
    @Lf.j(name = "copyOfRange")
    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    public static int[] j1(@NotNull int[] iArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        C14983o.c(i11, iArr.length);
        int[] copyOfRange = Arrays.copyOfRange(iArr, i10, i11);
        kotlin.jvm.internal.M.o(copyOfRange, "copyOfRange(...)");
        return copyOfRange;
    }

    @InterfaceC14427o(message = "Use maxOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxOrNull()", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Short j2(short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        return C14960A.il(sArr);
    }

    @NotNull
    public static final char[] j3(@NotNull char[] cArr, @NotNull char[] elements) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        int length = cArr.length;
        int length2 = elements.length;
        char[] copyOf = Arrays.copyOf(cArr, length + length2);
        System.arraycopy(elements, 0, copyOf, length, length2);
        kotlin.jvm.internal.M.m(copyOf);
        return copyOf;
    }

    public static void j4(Object[] objArr, Comparator comparator, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = objArr.length;
        }
        i4(objArr, comparator, i10, i11);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final int k0(short[] sArr) {
        return Arrays.hashCode(sArr);
    }

    @NotNull
    @Lf.j(name = "copyOfRange")
    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    public static long[] k1(@NotNull long[] jArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        C14983o.c(i11, jArr.length);
        long[] copyOfRange = Arrays.copyOfRange(jArr, i10, i11);
        kotlin.jvm.internal.M.o(copyOfRange, "copyOfRange(...)");
        return copyOfRange;
    }

    @InterfaceC14427o(message = "Use maxByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final <R extends Comparable<? super R>> Boolean k2(boolean[] zArr, Mf.l<? super Boolean, ? extends R> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (zArr.length == 0) {
            return null;
        }
        boolean z10 = zArr[0];
        int Qe2 = C14960A.Qe(zArr);
        if (Qe2 == 0) {
            return Boolean.valueOf(z10);
        }
        R invoke = selector.invoke(Boolean.valueOf(z10));
        int i10 = 1;
        if (1 <= Qe2) {
            while (true) {
                boolean z11 = zArr[i10];
                R invoke2 = selector.invoke(Boolean.valueOf(z11));
                if (invoke.compareTo(invoke2) < 0) {
                    z10 = z11;
                    invoke = invoke2;
                }
                if (i10 == Qe2) {
                    break;
                }
                i10++;
            }
        }
        return Boolean.valueOf(z10);
    }

    @NotNull
    public static final double[] k3(@NotNull double[] dArr, double d10) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        int length = dArr.length;
        double[] copyOf = Arrays.copyOf(dArr, length + 1);
        copyOf[length] = d10;
        kotlin.jvm.internal.M.m(copyOf);
        return copyOf;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfBigDecimal")
    @InterfaceC14422l0(version = "1.4")
    public static final BigDecimal k4(byte[] bArr, Mf.l<? super Byte, ? extends BigDecimal> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        BigDecimal valueOf = BigDecimal.valueOf(0L);
        kotlin.jvm.internal.M.o(valueOf, "valueOf(...)");
        for (byte b10 : bArr) {
            valueOf = valueOf.add(selector.invoke(Byte.valueOf(b10)));
            kotlin.jvm.internal.M.o(valueOf, "add(...)");
        }
        return valueOf;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final int l0(boolean[] zArr) {
        return Arrays.hashCode(zArr);
    }

    @NotNull
    @Lf.j(name = "copyOfRange")
    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    public static <T> T[] l1(@NotNull T[] tArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        C14983o.c(i11, tArr.length);
        T[] tArr2 = (T[]) Arrays.copyOfRange(tArr, i10, i11);
        kotlin.jvm.internal.M.o(tArr2, "copyOfRange(...)");
        return tArr2;
    }

    @InterfaceC14427o(message = "Use maxByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final <R extends Comparable<? super R>> Byte l2(byte[] bArr, Mf.l<? super Byte, ? extends R> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (bArr.length == 0) {
            return null;
        }
        byte b10 = bArr[0];
        int Ie2 = C14960A.Ie(bArr);
        if (Ie2 == 0) {
            return Byte.valueOf(b10);
        }
        R invoke = selector.invoke(Byte.valueOf(b10));
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                byte b11 = bArr[i10];
                R invoke2 = selector.invoke(Byte.valueOf(b11));
                if (invoke.compareTo(invoke2) < 0) {
                    b10 = b11;
                    invoke = invoke2;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return Byte.valueOf(b10);
    }

    @NotNull
    public static final double[] l3(@NotNull double[] dArr, @NotNull Collection<Double> elements) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        int length = dArr.length;
        double[] copyOf = Arrays.copyOf(dArr, elements.size() + length);
        Iterator<Double> it = elements.iterator();
        while (it.hasNext()) {
            copyOf[length] = it.next().doubleValue();
            length++;
        }
        kotlin.jvm.internal.M.m(copyOf);
        return copyOf;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfBigDecimal")
    @InterfaceC14422l0(version = "1.4")
    public static final BigDecimal l4(char[] cArr, Mf.l<? super Character, ? extends BigDecimal> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        BigDecimal valueOf = BigDecimal.valueOf(0L);
        kotlin.jvm.internal.M.o(valueOf, "valueOf(...)");
        for (char c10 : cArr) {
            valueOf = valueOf.add(selector.invoke(Character.valueOf(c10)));
            kotlin.jvm.internal.M.o(valueOf, "add(...)");
        }
        return valueOf;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final String m0(byte[] bArr) {
        String arrays = Arrays.toString(bArr);
        kotlin.jvm.internal.M.o(arrays, "toString(...)");
        return arrays;
    }

    @NotNull
    @Lf.j(name = "copyOfRange")
    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    public static short[] m1(@NotNull short[] sArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        C14983o.c(i11, sArr.length);
        short[] copyOfRange = Arrays.copyOfRange(sArr, i10, i11);
        kotlin.jvm.internal.M.o(copyOfRange, "copyOfRange(...)");
        return copyOfRange;
    }

    @InterfaceC14427o(message = "Use maxByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final <R extends Comparable<? super R>> Character m2(char[] cArr, Mf.l<? super Character, ? extends R> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (cArr.length == 0) {
            return null;
        }
        char c10 = cArr[0];
        int Je2 = C14960A.Je(cArr);
        if (Je2 == 0) {
            return Character.valueOf(c10);
        }
        R invoke = selector.invoke(Character.valueOf(c10));
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                char c11 = cArr[i10];
                R invoke2 = selector.invoke(Character.valueOf(c11));
                if (invoke.compareTo(invoke2) < 0) {
                    c10 = c11;
                    invoke = invoke2;
                }
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return Character.valueOf(c10);
    }

    @NotNull
    public static final double[] m3(@NotNull double[] dArr, @NotNull double[] elements) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        int length = dArr.length;
        int length2 = elements.length;
        double[] copyOf = Arrays.copyOf(dArr, length + length2);
        System.arraycopy(elements, 0, copyOf, length, length2);
        kotlin.jvm.internal.M.m(copyOf);
        return copyOf;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfBigDecimal")
    @InterfaceC14422l0(version = "1.4")
    public static final BigDecimal m4(double[] dArr, Mf.l<? super Double, ? extends BigDecimal> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        BigDecimal valueOf = BigDecimal.valueOf(0L);
        kotlin.jvm.internal.M.o(valueOf, "valueOf(...)");
        for (double d10 : dArr) {
            valueOf = valueOf.add(selector.invoke(Double.valueOf(d10)));
            kotlin.jvm.internal.M.o(valueOf, "add(...)");
        }
        return valueOf;
    }

    @NotNull
    public static final List<Byte> n(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        return new a(bArr);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final String n0(char[] cArr) {
        String arrays = Arrays.toString(cArr);
        kotlin.jvm.internal.M.o(arrays, "toString(...)");
        return arrays;
    }

    @NotNull
    @Lf.j(name = "copyOfRange")
    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    public static final boolean[] n1(@NotNull boolean[] zArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        C14983o.c(i11, zArr.length);
        boolean[] copyOfRange = Arrays.copyOfRange(zArr, i10, i11);
        kotlin.jvm.internal.M.o(copyOfRange, "copyOfRange(...)");
        return copyOfRange;
    }

    @InterfaceC14427o(message = "Use maxByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final <R extends Comparable<? super R>> Double n2(double[] dArr, Mf.l<? super Double, ? extends R> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (dArr.length == 0) {
            return null;
        }
        double d10 = dArr[0];
        int Ke2 = C14960A.Ke(dArr);
        if (Ke2 == 0) {
            return Double.valueOf(d10);
        }
        R invoke = selector.invoke(Double.valueOf(d10));
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                double d11 = dArr[i10];
                R invoke2 = selector.invoke(Double.valueOf(d11));
                if (invoke.compareTo(invoke2) < 0) {
                    d10 = d11;
                    invoke = invoke2;
                }
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(d10);
    }

    @NotNull
    public static final float[] n3(@NotNull float[] fArr, float f10) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        int length = fArr.length;
        float[] copyOf = Arrays.copyOf(fArr, length + 1);
        copyOf[length] = f10;
        kotlin.jvm.internal.M.m(copyOf);
        return copyOf;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfBigDecimal")
    @InterfaceC14422l0(version = "1.4")
    public static final BigDecimal n4(float[] fArr, Mf.l<? super Float, ? extends BigDecimal> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        BigDecimal valueOf = BigDecimal.valueOf(0L);
        kotlin.jvm.internal.M.o(valueOf, "valueOf(...)");
        for (float f10 : fArr) {
            valueOf = valueOf.add(selector.invoke(Float.valueOf(f10)));
            kotlin.jvm.internal.M.o(valueOf, "add(...)");
        }
        return valueOf;
    }

    @NotNull
    public static final List<Character> o(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        return new h(cArr);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final String o0(double[] dArr) {
        String arrays = Arrays.toString(dArr);
        kotlin.jvm.internal.M.o(arrays, "toString(...)");
        return arrays;
    }

    @Ef.f
    @Lf.j(name = "copyOfRangeInline")
    public static final byte[] o1(byte[] bArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        return f1(bArr, i10, i11);
    }

    @InterfaceC14427o(message = "Use maxByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final <R extends Comparable<? super R>> Float o2(float[] fArr, Mf.l<? super Float, ? extends R> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (fArr.length == 0) {
            return null;
        }
        float f10 = fArr[0];
        int Le2 = C14960A.Le(fArr);
        if (Le2 == 0) {
            return Float.valueOf(f10);
        }
        R invoke = selector.invoke(Float.valueOf(f10));
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                float f11 = fArr[i10];
                R invoke2 = selector.invoke(Float.valueOf(f11));
                if (invoke.compareTo(invoke2) < 0) {
                    f10 = f11;
                    invoke = invoke2;
                }
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(f10);
    }

    @NotNull
    public static final float[] o3(@NotNull float[] fArr, @NotNull Collection<Float> elements) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        int length = fArr.length;
        float[] copyOf = Arrays.copyOf(fArr, elements.size() + length);
        Iterator<Float> it = elements.iterator();
        while (it.hasNext()) {
            copyOf[length] = it.next().floatValue();
            length++;
        }
        kotlin.jvm.internal.M.m(copyOf);
        return copyOf;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfBigDecimal")
    @InterfaceC14422l0(version = "1.4")
    public static final BigDecimal o4(int[] iArr, Mf.l<? super Integer, ? extends BigDecimal> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        BigDecimal valueOf = BigDecimal.valueOf(0L);
        kotlin.jvm.internal.M.o(valueOf, "valueOf(...)");
        for (int i10 : iArr) {
            valueOf = valueOf.add(selector.invoke(Integer.valueOf(i10)));
            kotlin.jvm.internal.M.o(valueOf, "add(...)");
        }
        return valueOf;
    }

    @NotNull
    public static List<Double> p(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        return new f(dArr);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final String p0(float[] fArr) {
        String arrays = Arrays.toString(fArr);
        kotlin.jvm.internal.M.o(arrays, "toString(...)");
        return arrays;
    }

    @Ef.f
    @Lf.j(name = "copyOfRangeInline")
    public static final char[] p1(char[] cArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        return g1(cArr, i10, i11);
    }

    @InterfaceC14427o(message = "Use maxByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final <R extends Comparable<? super R>> Integer p2(int[] iArr, Mf.l<? super Integer, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (iArr.length == 0) {
            return null;
        }
        int i10 = iArr[0];
        int Me2 = C14960A.Me(iArr);
        if (Me2 == 0) {
            return Integer.valueOf(i10);
        }
        R invoke = selector.invoke(Integer.valueOf(i10));
        int i11 = 1;
        if (1 <= Me2) {
            while (true) {
                int i12 = iArr[i11];
                R invoke2 = selector.invoke(Integer.valueOf(i12));
                if (invoke.compareTo(invoke2) < 0) {
                    i10 = i12;
                    invoke = invoke2;
                }
                if (i11 == Me2) {
                    break;
                }
                i11++;
            }
        }
        return Integer.valueOf(i10);
    }

    @NotNull
    public static final float[] p3(@NotNull float[] fArr, @NotNull float[] elements) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        int length = fArr.length;
        int length2 = elements.length;
        float[] copyOf = Arrays.copyOf(fArr, length + length2);
        System.arraycopy(elements, 0, copyOf, length, length2);
        kotlin.jvm.internal.M.m(copyOf);
        return copyOf;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfBigDecimal")
    @InterfaceC14422l0(version = "1.4")
    public static final BigDecimal p4(long[] jArr, Mf.l<? super Long, ? extends BigDecimal> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        BigDecimal valueOf = BigDecimal.valueOf(0L);
        kotlin.jvm.internal.M.o(valueOf, "valueOf(...)");
        for (long j10 : jArr) {
            valueOf = valueOf.add(selector.invoke(Long.valueOf(j10)));
            kotlin.jvm.internal.M.o(valueOf, "add(...)");
        }
        return valueOf;
    }

    @NotNull
    public static final List<Float> q(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        return new e(fArr);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final String q0(int[] iArr) {
        String arrays = Arrays.toString(iArr);
        kotlin.jvm.internal.M.o(arrays, "toString(...)");
        return arrays;
    }

    @Ef.f
    @Lf.j(name = "copyOfRangeInline")
    public static final double[] q1(double[] dArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        return h1(dArr, i10, i11);
    }

    @InterfaceC14427o(message = "Use maxByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final <R extends Comparable<? super R>> Long q2(long[] jArr, Mf.l<? super Long, ? extends R> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (jArr.length == 0) {
            return null;
        }
        long j10 = jArr[0];
        int Ne2 = C14960A.Ne(jArr);
        if (Ne2 == 0) {
            return Long.valueOf(j10);
        }
        R invoke = selector.invoke(Long.valueOf(j10));
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                long j11 = jArr[i10];
                R invoke2 = selector.invoke(Long.valueOf(j11));
                if (invoke.compareTo(invoke2) < 0) {
                    j10 = j11;
                    invoke = invoke2;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return Long.valueOf(j10);
    }

    @NotNull
    public static int[] q3(@NotNull int[] iArr, int i10) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        int length = iArr.length;
        int[] copyOf = Arrays.copyOf(iArr, length + 1);
        copyOf[length] = i10;
        kotlin.jvm.internal.M.m(copyOf);
        return copyOf;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfBigDecimal")
    @InterfaceC14422l0(version = "1.4")
    public static final <T> BigDecimal q4(T[] tArr, Mf.l<? super T, ? extends BigDecimal> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        BigDecimal valueOf = BigDecimal.valueOf(0L);
        kotlin.jvm.internal.M.o(valueOf, "valueOf(...)");
        for (T t10 : tArr) {
            valueOf = valueOf.add(selector.invoke(t10));
            kotlin.jvm.internal.M.o(valueOf, "add(...)");
        }
        return valueOf;
    }

    @NotNull
    public static List<Integer> r(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        return new c(iArr);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final String r0(long[] jArr) {
        String arrays = Arrays.toString(jArr);
        kotlin.jvm.internal.M.o(arrays, "toString(...)");
        return arrays;
    }

    @Ef.f
    @Lf.j(name = "copyOfRangeInline")
    public static final float[] r1(float[] fArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        return i1(fArr, i10, i11);
    }

    @InterfaceC14427o(message = "Use maxByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final <T, R extends Comparable<? super R>> T r2(T[] tArr, Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (tArr.length == 0) {
            return null;
        }
        T t10 = tArr[0];
        int Oe2 = C14960A.Oe(tArr);
        if (Oe2 != 0) {
            R invoke = selector.invoke(t10);
            int i10 = 1;
            if (1 <= Oe2) {
                while (true) {
                    T t11 = tArr[i10];
                    R invoke2 = selector.invoke(t11);
                    if (invoke.compareTo(invoke2) < 0) {
                        t10 = t11;
                        invoke = invoke2;
                    }
                    if (i10 == Oe2) {
                        break;
                    }
                    i10++;
                }
            }
        }
        return t10;
    }

    @NotNull
    public static final int[] r3(@NotNull int[] iArr, @NotNull Collection<Integer> elements) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        int length = iArr.length;
        int[] copyOf = Arrays.copyOf(iArr, elements.size() + length);
        Iterator<Integer> it = elements.iterator();
        while (it.hasNext()) {
            copyOf[length] = it.next().intValue();
            length++;
        }
        kotlin.jvm.internal.M.m(copyOf);
        return copyOf;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfBigDecimal")
    @InterfaceC14422l0(version = "1.4")
    public static final BigDecimal r4(short[] sArr, Mf.l<? super Short, ? extends BigDecimal> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        BigDecimal valueOf = BigDecimal.valueOf(0L);
        kotlin.jvm.internal.M.o(valueOf, "valueOf(...)");
        for (short s10 : sArr) {
            valueOf = valueOf.add(selector.invoke(Short.valueOf(s10)));
            kotlin.jvm.internal.M.o(valueOf, "add(...)");
        }
        return valueOf;
    }

    @NotNull
    public static List<Long> s(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        return new d(jArr);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <T> String s0(T[] tArr) {
        String arrays = Arrays.toString(tArr);
        kotlin.jvm.internal.M.o(arrays, "toString(...)");
        return arrays;
    }

    @Ef.f
    @Lf.j(name = "copyOfRangeInline")
    public static final int[] s1(int[] iArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        return j1(iArr, i10, i11);
    }

    @InterfaceC14427o(message = "Use maxByOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxByOrNull(selector)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final <R extends Comparable<? super R>> Short s2(short[] sArr, Mf.l<? super Short, ? extends R> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (sArr.length == 0) {
            return null;
        }
        short s10 = sArr[0];
        int Pe2 = C14960A.Pe(sArr);
        if (Pe2 == 0) {
            return Short.valueOf(s10);
        }
        R invoke = selector.invoke(Short.valueOf(s10));
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                short s11 = sArr[i10];
                R invoke2 = selector.invoke(Short.valueOf(s11));
                if (invoke.compareTo(invoke2) < 0) {
                    s10 = s11;
                    invoke = invoke2;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return Short.valueOf(s10);
    }

    @NotNull
    public static int[] s3(@NotNull int[] iArr, @NotNull int[] elements) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        int length = iArr.length;
        int length2 = elements.length;
        int[] copyOf = Arrays.copyOf(iArr, length + length2);
        System.arraycopy(elements, 0, copyOf, length, length2);
        kotlin.jvm.internal.M.m(copyOf);
        return copyOf;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfBigDecimal")
    @InterfaceC14422l0(version = "1.4")
    public static final BigDecimal s4(boolean[] zArr, Mf.l<? super Boolean, ? extends BigDecimal> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        BigDecimal valueOf = BigDecimal.valueOf(0L);
        kotlin.jvm.internal.M.o(valueOf, "valueOf(...)");
        for (boolean z10 : zArr) {
            valueOf = valueOf.add(selector.invoke(Boolean.valueOf(z10)));
            kotlin.jvm.internal.M.o(valueOf, "add(...)");
        }
        return valueOf;
    }

    @NotNull
    public static <T> List<T> t(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        List<T> a10 = B.a(tArr);
        kotlin.jvm.internal.M.o(a10, "asList(...)");
        return a10;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final String t0(short[] sArr) {
        String arrays = Arrays.toString(sArr);
        kotlin.jvm.internal.M.o(arrays, "toString(...)");
        return arrays;
    }

    @Ef.f
    @Lf.j(name = "copyOfRangeInline")
    public static final long[] t1(long[] jArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        return k1(jArr, i10, i11);
    }

    @InterfaceC14427o(message = "Use maxWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Boolean t2(boolean[] zArr, Comparator comparator) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return C14960A.tl(zArr, comparator);
    }

    @NotNull
    public static long[] t3(@NotNull long[] jArr, long j10) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        int length = jArr.length;
        long[] copyOf = Arrays.copyOf(jArr, length + 1);
        copyOf[length] = j10;
        kotlin.jvm.internal.M.m(copyOf);
        return copyOf;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfBigInteger")
    @InterfaceC14422l0(version = "1.4")
    public static final BigInteger t4(byte[] bArr, Mf.l<? super Byte, ? extends BigInteger> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        BigInteger valueOf = BigInteger.valueOf(0L);
        kotlin.jvm.internal.M.o(valueOf, "valueOf(...)");
        for (byte b10 : bArr) {
            valueOf = valueOf.add(selector.invoke(Byte.valueOf(b10)));
            kotlin.jvm.internal.M.o(valueOf, "add(...)");
        }
        return valueOf;
    }

    @NotNull
    public static final List<Short> u(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        return new b(sArr);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final String u0(boolean[] zArr) {
        String arrays = Arrays.toString(zArr);
        kotlin.jvm.internal.M.o(arrays, "toString(...)");
        return arrays;
    }

    @Ef.f
    @Lf.j(name = "copyOfRangeInline")
    public static final <T> T[] u1(T[] tArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return (T[]) l1(tArr, i10, i11);
    }

    @InterfaceC14427o(message = "Use maxWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Byte u2(byte[] bArr, Comparator comparator) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return C14960A.ul(bArr, comparator);
    }

    @NotNull
    public static final long[] u3(@NotNull long[] jArr, @NotNull Collection<Long> elements) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        int length = jArr.length;
        long[] copyOf = Arrays.copyOf(jArr, elements.size() + length);
        Iterator<Long> it = elements.iterator();
        while (it.hasNext()) {
            copyOf[length] = it.next().longValue();
            length++;
        }
        kotlin.jvm.internal.M.m(copyOf);
        return copyOf;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfBigInteger")
    @InterfaceC14422l0(version = "1.4")
    public static final BigInteger u4(char[] cArr, Mf.l<? super Character, ? extends BigInteger> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        BigInteger valueOf = BigInteger.valueOf(0L);
        kotlin.jvm.internal.M.o(valueOf, "valueOf(...)");
        for (char c10 : cArr) {
            valueOf = valueOf.add(selector.invoke(Character.valueOf(c10)));
            kotlin.jvm.internal.M.o(valueOf, "add(...)");
        }
        return valueOf;
    }

    @NotNull
    public static final List<Boolean> v(@NotNull boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        return new g(zArr);
    }

    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static byte[] v0(@NotNull byte[] bArr, @NotNull byte[] destination, int i10, int i11, int i12) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        System.arraycopy(bArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    @Ef.f
    @Lf.j(name = "copyOfRangeInline")
    public static final short[] v1(short[] sArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        return m1(sArr, i10, i11);
    }

    @InterfaceC14427o(message = "Use maxWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Character v2(char[] cArr, Comparator comparator) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return C14960A.vl(cArr, comparator);
    }

    @NotNull
    public static long[] v3(@NotNull long[] jArr, @NotNull long[] elements) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        int length = jArr.length;
        int length2 = elements.length;
        long[] copyOf = Arrays.copyOf(jArr, length + length2);
        System.arraycopy(elements, 0, copyOf, length, length2);
        kotlin.jvm.internal.M.m(copyOf);
        return copyOf;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfBigInteger")
    @InterfaceC14422l0(version = "1.4")
    public static final BigInteger v4(double[] dArr, Mf.l<? super Double, ? extends BigInteger> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        BigInteger valueOf = BigInteger.valueOf(0L);
        kotlin.jvm.internal.M.o(valueOf, "valueOf(...)");
        for (double d10 : dArr) {
            valueOf = valueOf.add(selector.invoke(Double.valueOf(d10)));
            kotlin.jvm.internal.M.o(valueOf, "add(...)");
        }
        return valueOf;
    }

    public static final int w(@NotNull byte[] bArr, byte b10, int i10, int i11) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        return Arrays.binarySearch(bArr, i10, i11, b10);
    }

    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final char[] w0(@NotNull char[] cArr, @NotNull char[] destination, int i10, int i11, int i12) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        System.arraycopy(cArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    @Ef.f
    @Lf.j(name = "copyOfRangeInline")
    public static final boolean[] w1(boolean[] zArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        return n1(zArr, i10, i11);
    }

    @InterfaceC14427o(message = "Use maxWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Double w2(double[] dArr, Comparator comparator) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return C14960A.wl(dArr, comparator);
    }

    @NotNull
    public static final <T> T[] w3(@NotNull T[] tArr, T t10) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        int length = tArr.length;
        T[] tArr2 = (T[]) Arrays.copyOf(tArr, length + 1);
        tArr2[length] = t10;
        kotlin.jvm.internal.M.m(tArr2);
        return tArr2;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfBigInteger")
    @InterfaceC14422l0(version = "1.4")
    public static final BigInteger w4(float[] fArr, Mf.l<? super Float, ? extends BigInteger> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        BigInteger valueOf = BigInteger.valueOf(0L);
        kotlin.jvm.internal.M.o(valueOf, "valueOf(...)");
        for (float f10 : fArr) {
            valueOf = valueOf.add(selector.invoke(Float.valueOf(f10)));
            kotlin.jvm.internal.M.o(valueOf, "add(...)");
        }
        return valueOf;
    }

    public static final int x(@NotNull char[] cArr, char c10, int i10, int i11) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        return Arrays.binarySearch(cArr, i10, i11, c10);
    }

    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final double[] x0(@NotNull double[] dArr, @NotNull double[] destination, int i10, int i11, int i12) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        System.arraycopy(dArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    @Ef.f
    public static final byte x1(byte[] bArr, int i10) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        return bArr[i10];
    }

    @InterfaceC14427o(message = "Use maxWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Float x2(float[] fArr, Comparator comparator) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return C14960A.xl(fArr, comparator);
    }

    @NotNull
    public static final <T> T[] x3(@NotNull T[] tArr, @NotNull Collection<? extends T> elements) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        int length = tArr.length;
        T[] tArr2 = (T[]) Arrays.copyOf(tArr, elements.size() + length);
        Iterator<? extends T> it = elements.iterator();
        while (it.hasNext()) {
            tArr2[length] = it.next();
            length++;
        }
        kotlin.jvm.internal.M.m(tArr2);
        return tArr2;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfBigInteger")
    @InterfaceC14422l0(version = "1.4")
    public static final BigInteger x4(int[] iArr, Mf.l<? super Integer, ? extends BigInteger> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        BigInteger valueOf = BigInteger.valueOf(0L);
        kotlin.jvm.internal.M.o(valueOf, "valueOf(...)");
        for (int i10 : iArr) {
            valueOf = valueOf.add(selector.invoke(Integer.valueOf(i10)));
            kotlin.jvm.internal.M.o(valueOf, "add(...)");
        }
        return valueOf;
    }

    public static final int y(@NotNull double[] dArr, double d10, int i10, int i11) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        return Arrays.binarySearch(dArr, i10, i11, d10);
    }

    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final float[] y0(@NotNull float[] fArr, @NotNull float[] destination, int i10, int i11, int i12) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        System.arraycopy(fArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    @Ef.f
    public static final char y1(char[] cArr, int i10) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        return cArr[i10];
    }

    @InterfaceC14427o(message = "Use maxWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Integer y2(int[] iArr, Comparator comparator) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return C14960A.yl(iArr, comparator);
    }

    @NotNull
    public static final <T> T[] y3(@NotNull T[] tArr, @NotNull T[] elements) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        int length = tArr.length;
        int length2 = elements.length;
        T[] tArr2 = (T[]) Arrays.copyOf(tArr, length + length2);
        System.arraycopy(elements, 0, tArr2, length, length2);
        kotlin.jvm.internal.M.m(tArr2);
        return tArr2;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfBigInteger")
    @InterfaceC14422l0(version = "1.4")
    public static final BigInteger y4(long[] jArr, Mf.l<? super Long, ? extends BigInteger> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        BigInteger valueOf = BigInteger.valueOf(0L);
        kotlin.jvm.internal.M.o(valueOf, "valueOf(...)");
        for (long j10 : jArr) {
            valueOf = valueOf.add(selector.invoke(Long.valueOf(j10)));
            kotlin.jvm.internal.M.o(valueOf, "add(...)");
        }
        return valueOf;
    }

    public static final int z(@NotNull float[] fArr, float f10, int i10, int i11) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        return Arrays.binarySearch(fArr, i10, i11, f10);
    }

    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static int[] z0(@NotNull int[] iArr, @NotNull int[] destination, int i10, int i11, int i12) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        System.arraycopy(iArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    @Ef.f
    public static final double z1(double[] dArr, int i10) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        return dArr[i10];
    }

    @InterfaceC14427o(message = "Use maxWithOrNull instead.", replaceWith = @InterfaceC14412g0(expression = "this.maxWithOrNull(comparator)", imports = {}))
    @InterfaceC14429p(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    public static final Long z2(long[] jArr, Comparator comparator) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return C14960A.zl(jArr, comparator);
    }

    @NotNull
    public static final short[] z3(@NotNull short[] sArr, @NotNull Collection<Short> elements) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(elements, "elements");
        int length = sArr.length;
        short[] copyOf = Arrays.copyOf(sArr, elements.size() + length);
        Iterator<Short> it = elements.iterator();
        while (it.hasNext()) {
            copyOf[length] = it.next().shortValue();
            length++;
        }
        kotlin.jvm.internal.M.m(copyOf);
        return copyOf;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfBigInteger")
    @InterfaceC14422l0(version = "1.4")
    public static final <T> BigInteger z4(T[] tArr, Mf.l<? super T, ? extends BigInteger> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        BigInteger valueOf = BigInteger.valueOf(0L);
        kotlin.jvm.internal.M.o(valueOf, "valueOf(...)");
        for (T t10 : tArr) {
            valueOf = valueOf.add(selector.invoke(t10));
            kotlin.jvm.internal.M.o(valueOf, "add(...)");
        }
        return valueOf;
    }
}
