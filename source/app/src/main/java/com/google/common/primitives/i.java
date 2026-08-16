package com.google.common.primitives;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import javax.annotation.CheckForNull;
import org.eclipse.jdt.internal.core.JavaElement;
import v2.InterfaceC15800a;
import w2.H;

@f
@v2.b
@I2.j
@InterfaceC15800a
public final class i implements Serializable {

    public static final i f67031e = new i(new double[0]);

    public final double[] f67032b;

    public final transient int f67033c;

    public final int f67034d;

    public static class b extends AbstractList<Double> implements RandomAccess, Serializable {

        public final i f67035b;

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return indexOf(obj) >= 0;
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof b) {
                return this.f67035b.equals(((b) obj).f67035b);
            }
            if (!(obj instanceof List)) {
                return false;
            }
            List list = (List) obj;
            if (size() != list.size()) {
                return false;
            }
            int i10 = this.f67035b.f67033c;
            for (Object obj2 : list) {
                if (obj2 instanceof Double) {
                    int i11 = i10 + 1;
                    if (i.e(this.f67035b.f67032b[i10], ((Double) obj2).doubleValue())) {
                        i10 = i11;
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public int hashCode() {
            return this.f67035b.hashCode();
        }

        @Override
        public int indexOf(@CheckForNull Object obj) {
            if (obj instanceof Double) {
                return this.f67035b.n(((Double) obj).doubleValue());
            }
            return -1;
        }

        @Override
        public Double get(int i10) {
            return Double.valueOf(this.f67035b.m(i10));
        }

        @Override
        public int lastIndexOf(@CheckForNull Object obj) {
            if (obj instanceof Double) {
                return this.f67035b.q(((Double) obj).doubleValue());
            }
            return -1;
        }

        @Override
        public int size() {
            return this.f67035b.r();
        }

        @Override
        public List<Double> subList(int i10, int i11) {
            return this.f67035b.C(i10, i11).f();
        }

        @Override
        public String toString() {
            return this.f67035b.toString();
        }

        public b(i iVar) {
            this.f67035b = iVar;
        }
    }

    @I2.a
    public static final class c {

        public double[] f67036a;

        public int f67037b = 0;

        public c(int i10) {
            this.f67036a = new double[i10];
        }

        public static int h(int i10, int i11) {
            if (i11 < 0) {
                throw new AssertionError((Object) "cannot store more than MAX_VALUE elements");
            }
            int i12 = i10 + (i10 >> 1) + 1;
            if (i12 < i11) {
                i12 = Integer.highestOneBit(i11 - 1) << 1;
            }
            if (i12 < 0) {
                return Integer.MAX_VALUE;
            }
            return i12;
        }

        public c a(double d10) {
            g(1);
            double[] dArr = this.f67036a;
            int i10 = this.f67037b;
            dArr[i10] = d10;
            this.f67037b = i10 + 1;
            return this;
        }

        public c b(i iVar) {
            g(iVar.r());
            System.arraycopy(iVar.f67032b, iVar.f67033c, this.f67036a, this.f67037b, iVar.r());
            this.f67037b += iVar.r();
            return this;
        }

        public c c(Iterable<Double> iterable) {
            if (iterable instanceof Collection) {
                return d((Collection) iterable);
            }
            Iterator<Double> it = iterable.iterator();
            while (it.hasNext()) {
                a(it.next().doubleValue());
            }
            return this;
        }

        public c d(Collection<Double> collection) {
            g(collection.size());
            for (Double d10 : collection) {
                double[] dArr = this.f67036a;
                int i10 = this.f67037b;
                this.f67037b = i10 + 1;
                dArr[i10] = d10.doubleValue();
            }
            return this;
        }

        public c e(double[] dArr) {
            g(dArr.length);
            System.arraycopy(dArr, 0, this.f67036a, this.f67037b, dArr.length);
            this.f67037b += dArr.length;
            return this;
        }

        @I2.b
        public i f() {
            if (this.f67037b == 0) {
                return i.f67031e;
            }
            return new i(this.f67036a, 0, this.f67037b);
        }

        public final void g(int i10) {
            int i11 = this.f67037b + i10;
            double[] dArr = this.f67036a;
            if (i11 > dArr.length) {
                this.f67036a = Arrays.copyOf(dArr, h(dArr.length, i11));
            }
        }
    }

    public static i A(double d10, double... dArr) {
        H.e(dArr.length <= 2147483646, "the total number of elements must fit in an int");
        double[] dArr2 = new double[dArr.length + 1];
        dArr2[0] = d10;
        System.arraycopy(dArr, 0, dArr2, 1, dArr.length);
        return new i(dArr2);
    }

    public static boolean e(double d10, double d11) {
        return Double.doubleToLongBits(d10) == Double.doubleToLongBits(d11);
    }

    public static c g() {
        return new c(10);
    }

    public static c h(int i10) {
        H.k(i10 >= 0, "Invalid initialCapacity: %s", i10);
        return new c(i10);
    }

    public static i j(Iterable<Double> iterable) {
        return iterable instanceof Collection ? k((Collection) iterable) : g().c(iterable).f();
    }

    public static i k(Collection<Double> collection) {
        return collection.isEmpty() ? f67031e : new i(d.z(collection));
    }

    public static i l(double[] dArr) {
        return dArr.length == 0 ? f67031e : new i(Arrays.copyOf(dArr, dArr.length));
    }

    public static i s() {
        return f67031e;
    }

    public static i u(double d10) {
        return new i(new double[]{d10});
    }

    public static i v(double d10, double d11) {
        return new i(new double[]{d10, d11});
    }

    public static i w(double d10, double d11, double d12) {
        return new i(new double[]{d10, d11, d12});
    }

    public static i x(double d10, double d11, double d12, double d13) {
        return new i(new double[]{d10, d11, d12, d13});
    }

    public static i y(double d10, double d11, double d12, double d13, double d14) {
        return new i(new double[]{d10, d11, d12, d13, d14});
    }

    public static i z(double d10, double d11, double d12, double d13, double d14, double d15) {
        return new i(new double[]{d10, d11, d12, d13, d14, d15});
    }

    public Object B() {
        return o() ? f67031e : this;
    }

    public i C(int i10, int i11) {
        H.f0(i10, i11, r());
        if (i10 == i11) {
            return f67031e;
        }
        double[] dArr = this.f67032b;
        int i12 = this.f67033c;
        return new i(dArr, i10 + i12, i12 + i11);
    }

    public double[] D() {
        return Arrays.copyOfRange(this.f67032b, this.f67033c, this.f67034d);
    }

    public i E() {
        return p() ? new i(D()) : this;
    }

    public Object F() {
        return E();
    }

    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        if (r() != iVar.r()) {
            return false;
        }
        for (int i10 = 0; i10 < r(); i10++) {
            if (!e(m(i10), iVar.m(i10))) {
                return false;
            }
        }
        return true;
    }

    public List<Double> f() {
        return new b();
    }

    public int hashCode() {
        int i10 = 1;
        for (int i11 = this.f67033c; i11 < this.f67034d; i11++) {
            i10 = (i10 * 31) + d.j(this.f67032b[i11]);
        }
        return i10;
    }

    public boolean i(double d10) {
        return n(d10) >= 0;
    }

    public double m(int i10) {
        H.C(i10, r());
        return this.f67032b[this.f67033c + i10];
    }

    public int n(double d10) {
        for (int i10 = this.f67033c; i10 < this.f67034d; i10++) {
            if (e(this.f67032b[i10], d10)) {
                return i10 - this.f67033c;
            }
        }
        return -1;
    }

    public boolean o() {
        return this.f67034d == this.f67033c;
    }

    public final boolean p() {
        return this.f67033c > 0 || this.f67034d < this.f67032b.length;
    }

    public int q(double d10) {
        int i10 = this.f67034d;
        do {
            i10--;
            if (i10 < this.f67033c) {
                return -1;
            }
        } while (!e(this.f67032b[i10], d10));
        return i10 - this.f67033c;
    }

    public int r() {
        return this.f67034d - this.f67033c;
    }

    public String toString() {
        if (o()) {
            return okhttp3.v.f99450n;
        }
        StringBuilder sb2 = new StringBuilder(r() * 5);
        sb2.append('[');
        sb2.append(this.f67032b[this.f67033c]);
        int i10 = this.f67033c;
        while (true) {
            i10++;
            if (i10 >= this.f67034d) {
                sb2.append(JavaElement.JEM_TYPE_PARAMETER);
                return sb2.toString();
            }
            sb2.append(", ");
            sb2.append(this.f67032b[i10]);
        }
    }

    public i(double[] dArr) {
        this(dArr, 0, dArr.length);
    }

    public i(double[] dArr, int i10, int i11) {
        this.f67032b = dArr;
        this.f67033c = i10;
        this.f67034d = i11;
    }
}
