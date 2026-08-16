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
public final class j implements Serializable {

    public static final j f67038e = new j(new int[0]);

    public final int[] f67039b;

    public final transient int f67040c;

    public final int f67041d;

    public static class b extends AbstractList<Integer> implements RandomAccess, Serializable {

        public final j f67042b;

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return indexOf(obj) >= 0;
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof b) {
                return this.f67042b.equals(((b) obj).f67042b);
            }
            if (!(obj instanceof List)) {
                return false;
            }
            List list = (List) obj;
            if (size() != list.size()) {
                return false;
            }
            int i10 = this.f67042b.f67040c;
            for (Object obj2 : list) {
                if (obj2 instanceof Integer) {
                    int i11 = i10 + 1;
                    if (this.f67042b.f67039b[i10] == ((Integer) obj2).intValue()) {
                        i10 = i11;
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public int hashCode() {
            return this.f67042b.hashCode();
        }

        @Override
        public int indexOf(@CheckForNull Object obj) {
            if (obj instanceof Integer) {
                return this.f67042b.l(((Integer) obj).intValue());
            }
            return -1;
        }

        @Override
        public Integer get(int i10) {
            return Integer.valueOf(this.f67042b.k(i10));
        }

        @Override
        public int lastIndexOf(@CheckForNull Object obj) {
            if (obj instanceof Integer) {
                return this.f67042b.o(((Integer) obj).intValue());
            }
            return -1;
        }

        @Override
        public int size() {
            return this.f67042b.p();
        }

        @Override
        public List<Integer> subList(int i10, int i11) {
            return this.f67042b.A(i10, i11).d();
        }

        @Override
        public String toString() {
            return this.f67042b.toString();
        }

        public b(j jVar) {
            this.f67042b = jVar;
        }
    }

    @I2.a
    public static final class c {

        public int[] f67043a;

        public int f67044b = 0;

        public c(int i10) {
            this.f67043a = new int[i10];
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

        public c a(int i10) {
            g(1);
            int[] iArr = this.f67043a;
            int i11 = this.f67044b;
            iArr[i11] = i10;
            this.f67044b = i11 + 1;
            return this;
        }

        public c b(j jVar) {
            g(jVar.p());
            System.arraycopy(jVar.f67039b, jVar.f67040c, this.f67043a, this.f67044b, jVar.p());
            this.f67044b += jVar.p();
            return this;
        }

        public c c(Iterable<Integer> iterable) {
            if (iterable instanceof Collection) {
                return d((Collection) iterable);
            }
            Iterator<Integer> it = iterable.iterator();
            while (it.hasNext()) {
                a(it.next().intValue());
            }
            return this;
        }

        public c d(Collection<Integer> collection) {
            g(collection.size());
            for (Integer num : collection) {
                int[] iArr = this.f67043a;
                int i10 = this.f67044b;
                this.f67044b = i10 + 1;
                iArr[i10] = num.intValue();
            }
            return this;
        }

        public c e(int[] iArr) {
            g(iArr.length);
            System.arraycopy(iArr, 0, this.f67043a, this.f67044b, iArr.length);
            this.f67044b += iArr.length;
            return this;
        }

        @I2.b
        public j f() {
            if (this.f67044b == 0) {
                return j.f67038e;
            }
            return new j(this.f67043a, 0, this.f67044b);
        }

        public final void g(int i10) {
            int i11 = this.f67044b + i10;
            int[] iArr = this.f67043a;
            if (i11 > iArr.length) {
                this.f67043a = Arrays.copyOf(iArr, h(iArr.length, i11));
            }
        }
    }

    public static c e() {
        return new c(10);
    }

    public static c f(int i10) {
        H.k(i10 >= 0, "Invalid initialCapacity: %s", i10);
        return new c(i10);
    }

    public static j h(Iterable<Integer> iterable) {
        return iterable instanceof Collection ? i((Collection) iterable) : e().c(iterable).f();
    }

    public static j i(Collection<Integer> collection) {
        return collection.isEmpty() ? f67038e : new j(l.B(collection));
    }

    public static j j(int[] iArr) {
        return iArr.length == 0 ? f67038e : new j(Arrays.copyOf(iArr, iArr.length));
    }

    public static j q() {
        return f67038e;
    }

    public static j r(int i10) {
        return new j(new int[]{i10});
    }

    public static j s(int i10, int i11) {
        return new j(new int[]{i10, i11});
    }

    public static j u(int i10, int i11, int i12) {
        return new j(new int[]{i10, i11, i12});
    }

    public static j v(int i10, int i11, int i12, int i13) {
        return new j(new int[]{i10, i11, i12, i13});
    }

    public static j w(int i10, int i11, int i12, int i13, int i14) {
        return new j(new int[]{i10, i11, i12, i13, i14});
    }

    public static j x(int i10, int i11, int i12, int i13, int i14, int i15) {
        return new j(new int[]{i10, i11, i12, i13, i14, i15});
    }

    public static j y(int i10, int... iArr) {
        H.e(iArr.length <= 2147483646, "the total number of elements must fit in an int");
        int[] iArr2 = new int[iArr.length + 1];
        iArr2[0] = i10;
        System.arraycopy(iArr, 0, iArr2, 1, iArr.length);
        return new j(iArr2);
    }

    public j A(int i10, int i11) {
        H.f0(i10, i11, p());
        if (i10 == i11) {
            return f67038e;
        }
        int[] iArr = this.f67039b;
        int i12 = this.f67040c;
        return new j(iArr, i10 + i12, i12 + i11);
    }

    public int[] B() {
        return Arrays.copyOfRange(this.f67039b, this.f67040c, this.f67041d);
    }

    public j C() {
        return n() ? new j(B()) : this;
    }

    public Object D() {
        return C();
    }

    public List<Integer> d() {
        return new b();
    }

    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        if (p() != jVar.p()) {
            return false;
        }
        for (int i10 = 0; i10 < p(); i10++) {
            if (k(i10) != jVar.k(i10)) {
                return false;
            }
        }
        return true;
    }

    public boolean g(int i10) {
        return l(i10) >= 0;
    }

    public int hashCode() {
        int i10 = 1;
        for (int i11 = this.f67040c; i11 < this.f67041d; i11++) {
            i10 = (i10 * 31) + l.l(this.f67039b[i11]);
        }
        return i10;
    }

    public int k(int i10) {
        H.C(i10, p());
        return this.f67039b[this.f67040c + i10];
    }

    public int l(int i10) {
        for (int i11 = this.f67040c; i11 < this.f67041d; i11++) {
            if (this.f67039b[i11] == i10) {
                return i11 - this.f67040c;
            }
        }
        return -1;
    }

    public boolean m() {
        return this.f67041d == this.f67040c;
    }

    public final boolean n() {
        return this.f67040c > 0 || this.f67041d < this.f67039b.length;
    }

    public int o(int i10) {
        int i11;
        int i12 = this.f67041d;
        do {
            i12--;
            i11 = this.f67040c;
            if (i12 < i11) {
                return -1;
            }
        } while (this.f67039b[i12] != i10);
        return i12 - i11;
    }

    public int p() {
        return this.f67041d - this.f67040c;
    }

    public String toString() {
        if (m()) {
            return okhttp3.v.f99450n;
        }
        StringBuilder sb2 = new StringBuilder(p() * 5);
        sb2.append('[');
        sb2.append(this.f67039b[this.f67040c]);
        int i10 = this.f67040c;
        while (true) {
            i10++;
            if (i10 >= this.f67041d) {
                sb2.append(JavaElement.JEM_TYPE_PARAMETER);
                return sb2.toString();
            }
            sb2.append(", ");
            sb2.append(this.f67039b[i10]);
        }
    }

    public Object z() {
        return m() ? f67038e : this;
    }

    public j(int[] iArr) {
        this(iArr, 0, iArr.length);
    }

    public j(int[] iArr, int i10, int i11) {
        this.f67039b = iArr;
        this.f67040c = i10;
        this.f67041d = i11;
    }
}
