package com.google.common.primitives;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;
import javax.annotation.CheckForNull;
import org.eclipse.jdt.internal.core.JavaElement;
import v2.InterfaceC15800a;
import w2.AbstractC15892i;
import w2.H;
import w2.P;

@f
@v2.b(emulated = true)
public final class g extends h {

    public static final int f67024a = 4;

    @v2.b
    public static class a extends AbstractList<Float> implements RandomAccess, Serializable {

        public static final long f67025e = 0;

        public final float[] f67026b;

        public final int f67027c;

        public final int f67028d;

        public a(float[] fArr) {
            this(fArr, 0, fArr.length);
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return (obj instanceof Float) && g.k(this.f67026b, ((Float) obj).floatValue(), this.f67027c, this.f67028d) != -1;
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return super.equals(obj);
            }
            a aVar = (a) obj;
            int size = size();
            if (aVar.size() != size) {
                return false;
            }
            for (int i10 = 0; i10 < size; i10++) {
                if (this.f67026b[this.f67027c + i10] != aVar.f67026b[aVar.f67027c + i10]) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int hashCode() {
            int i10 = 1;
            for (int i11 = this.f67027c; i11 < this.f67028d; i11++) {
                i10 = (i10 * 31) + g.i(this.f67026b[i11]);
            }
            return i10;
        }

        @Override
        public int indexOf(@CheckForNull Object obj) {
            int k10;
            if (!(obj instanceof Float) || (k10 = g.k(this.f67026b, ((Float) obj).floatValue(), this.f67027c, this.f67028d)) < 0) {
                return -1;
            }
            return k10 - this.f67027c;
        }

        @Override
        public boolean isEmpty() {
            return false;
        }

        @Override
        public Float get(int i10) {
            H.C(i10, size());
            return Float.valueOf(this.f67026b[this.f67027c + i10]);
        }

        @Override
        public Float set(int i10, Float f10) {
            H.C(i10, size());
            float[] fArr = this.f67026b;
            int i11 = this.f67027c;
            float f11 = fArr[i11 + i10];
            fArr[i11 + i10] = ((Float) H.E(f10)).floatValue();
            return Float.valueOf(f11);
        }

        public float[] l() {
            return Arrays.copyOfRange(this.f67026b, this.f67027c, this.f67028d);
        }

        @Override
        public int lastIndexOf(@CheckForNull Object obj) {
            int p10;
            if (!(obj instanceof Float) || (p10 = g.p(this.f67026b, ((Float) obj).floatValue(), this.f67027c, this.f67028d)) < 0) {
                return -1;
            }
            return p10 - this.f67027c;
        }

        @Override
        public int size() {
            return this.f67028d - this.f67027c;
        }

        @Override
        public List<Float> subList(int i10, int i11) {
            H.f0(i10, i11, size());
            if (i10 == i11) {
                return Collections.emptyList();
            }
            float[] fArr = this.f67026b;
            int i12 = this.f67027c;
            return new a(fArr, i10 + i12, i12 + i11);
        }

        @Override
        public String toString() {
            StringBuilder sb2 = new StringBuilder(size() * 12);
            sb2.append('[');
            sb2.append(this.f67026b[this.f67027c]);
            int i10 = this.f67027c;
            while (true) {
                i10++;
                if (i10 >= this.f67028d) {
                    sb2.append(JavaElement.JEM_TYPE_PARAMETER);
                    return sb2.toString();
                }
                sb2.append(", ");
                sb2.append(this.f67026b[i10]);
            }
        }

        public a(float[] fArr, int i10, int i11) {
            this.f67026b = fArr;
            this.f67027c = i10;
            this.f67028d = i11;
        }
    }

    public static final class b extends AbstractC15892i<String, Float> implements Serializable {

        public static final b f67029d = new b();

        public static final long f67030e = 1;

        private Object r() {
            return f67029d;
        }

        @Override
        public String g(Float f10) {
            return f10.toString();
        }

        @Override
        public Float i(String str) {
            return Float.valueOf(str);
        }

        public String toString() {
            return "Floats.stringConverter()";
        }
    }

    public enum c implements Comparator<float[]> {
        INSTANCE;

        @Override
        public int compare(float[] fArr, float[] fArr2) {
            int min = Math.min(fArr.length, fArr2.length);
            for (int i10 = 0; i10 < min; i10++) {
                int compare = Float.compare(fArr[i10], fArr2[i10]);
                if (compare != 0) {
                    return compare;
                }
            }
            return fArr.length - fArr2.length;
        }

        @Override
        public String toString() {
            return "Floats.lexicographicalComparator()";
        }
    }

    public static List<Float> c(float... fArr) {
        return fArr.length == 0 ? Collections.emptyList() : new a(fArr);
    }

    public static int d(float f10, float f11) {
        return Float.compare(f10, f11);
    }

    public static float[] e(float[]... fArr) {
        int i10 = 0;
        for (float[] fArr2 : fArr) {
            i10 += fArr2.length;
        }
        float[] fArr3 = new float[i10];
        int i11 = 0;
        for (float[] fArr4 : fArr) {
            System.arraycopy(fArr4, 0, fArr3, i11, fArr4.length);
            i11 += fArr4.length;
        }
        return fArr3;
    }

    @InterfaceC15800a
    public static float f(float f10, float f11, float f12) {
        if (f11 <= f12) {
            return Math.min(Math.max(f10, f11), f12);
        }
        throw new IllegalArgumentException(P.e("min (%s) must be less than or equal to max (%s)", Float.valueOf(f11), Float.valueOf(f12)));
    }

    public static boolean g(float[] fArr, float f10) {
        for (float f11 : fArr) {
            if (f11 == f10) {
                return true;
            }
        }
        return false;
    }

    public static float[] h(float[] fArr, int i10, int i11) {
        H.k(i10 >= 0, "Invalid minLength: %s", i10);
        H.k(i11 >= 0, "Invalid padding: %s", i11);
        return fArr.length < i10 ? Arrays.copyOf(fArr, i10 + i11) : fArr;
    }

    public static int i(float f10) {
        return Float.valueOf(f10).hashCode();
    }

    public static int j(float[] fArr, float f10) {
        return k(fArr, f10, 0, fArr.length);
    }

    public static int k(float[] fArr, float f10, int i10, int i11) {
        while (i10 < i11) {
            if (fArr[i10] == f10) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0025, code lost:
    
        r0 = r0 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int l(float[] fArr, float[] fArr2) {
        H.F(fArr, "array");
        H.F(fArr2, TypedValues.AttributesType.S_TARGET);
        if (fArr2.length == 0) {
            return 0;
        }
        int i10 = 0;
        while (i10 < (fArr.length - fArr2.length) + 1) {
            for (int i11 = 0; i11 < fArr2.length; i11++) {
                if (fArr[i10 + i11] != fArr2[i11]) {
                    break;
                }
            }
            return i10;
        }
        return -1;
    }

    public static boolean m(float f10) {
        return Float.NEGATIVE_INFINITY < f10 && f10 < Float.POSITIVE_INFINITY;
    }

    public static String n(String str, float... fArr) {
        H.E(str);
        if (fArr.length == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder(fArr.length * 12);
        sb2.append(fArr[0]);
        for (int i10 = 1; i10 < fArr.length; i10++) {
            sb2.append(str);
            sb2.append(fArr[i10]);
        }
        return sb2.toString();
    }

    public static int o(float[] fArr, float f10) {
        return p(fArr, f10, 0, fArr.length);
    }

    public static int p(float[] fArr, float f10, int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            if (fArr[i12] == f10) {
                return i12;
            }
        }
        return -1;
    }

    public static Comparator<float[]> q() {
        return c.INSTANCE;
    }

    @v2.c("Available in GWT! Annotation is to avoid conflict with GWT specialization of base class.")
    public static float r(float... fArr) {
        H.d(fArr.length > 0);
        float f10 = fArr[0];
        for (int i10 = 1; i10 < fArr.length; i10++) {
            f10 = Math.max(f10, fArr[i10]);
        }
        return f10;
    }

    @v2.c("Available in GWT! Annotation is to avoid conflict with GWT specialization of base class.")
    public static float s(float... fArr) {
        H.d(fArr.length > 0);
        float f10 = fArr[0];
        for (int i10 = 1; i10 < fArr.length; i10++) {
            f10 = Math.min(f10, fArr[i10]);
        }
        return f10;
    }

    public static void t(float[] fArr) {
        H.E(fArr);
        u(fArr, 0, fArr.length);
    }

    public static void u(float[] fArr, int i10, int i11) {
        H.E(fArr);
        H.f0(i10, i11, fArr.length);
        for (int i12 = i11 - 1; i10 < i12; i12--) {
            float f10 = fArr[i10];
            fArr[i10] = fArr[i12];
            fArr[i12] = f10;
            i10++;
        }
    }

    public static void v(float[] fArr) {
        H.E(fArr);
        w(fArr, 0, fArr.length);
    }

    public static void w(float[] fArr, int i10, int i11) {
        H.E(fArr);
        H.f0(i10, i11, fArr.length);
        Arrays.sort(fArr, i10, i11);
        u(fArr, i10, i11);
    }

    @InterfaceC15800a
    public static AbstractC15892i<String, Float> x() {
        return b.f67029d;
    }

    public static float[] y(Collection<? extends Number> collection) {
        if (collection instanceof a) {
            return ((a) collection).l();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        float[] fArr = new float[length];
        for (int i10 = 0; i10 < length; i10++) {
            fArr[i10] = ((Number) H.E(array[i10])).floatValue();
        }
        return fArr;
    }

    @CheckForNull
    @v2.c
    @InterfaceC15800a
    public static Float z(String str) {
        if (!d.f67017b.matcher(str).matches()) {
            return null;
        }
        try {
            return Float.valueOf(Float.parseFloat(str));
        } catch (NumberFormatException unused) {
            return null;
        }
    }
}
