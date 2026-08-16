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
public final class k implements Serializable {

    public static final k f67045e = new k(new long[0]);

    public final long[] f67046b;

    public final transient int f67047c;

    public final int f67048d;

    public static class b extends AbstractList<Long> implements RandomAccess, Serializable {

        public final k f67049b;

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return indexOf(obj) >= 0;
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof b) {
                return this.f67049b.equals(((b) obj).f67049b);
            }
            if (!(obj instanceof List)) {
                return false;
            }
            List list = (List) obj;
            if (size() != list.size()) {
                return false;
            }
            int i10 = this.f67049b.f67047c;
            for (Object obj2 : list) {
                if (obj2 instanceof Long) {
                    int i11 = i10 + 1;
                    if (this.f67049b.f67046b[i10] == ((Long) obj2).longValue()) {
                        i10 = i11;
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public int hashCode() {
            return this.f67049b.hashCode();
        }

        @Override
        public int indexOf(@CheckForNull Object obj) {
            if (obj instanceof Long) {
                return this.f67049b.l(((Long) obj).longValue());
            }
            return -1;
        }

        @Override
        public Long get(int i10) {
            return Long.valueOf(this.f67049b.k(i10));
        }

        @Override
        public int lastIndexOf(@CheckForNull Object obj) {
            if (obj instanceof Long) {
                return this.f67049b.o(((Long) obj).longValue());
            }
            return -1;
        }

        @Override
        public int size() {
            return this.f67049b.p();
        }

        @Override
        public List<Long> subList(int i10, int i11) {
            return this.f67049b.A(i10, i11).d();
        }

        @Override
        public String toString() {
            return this.f67049b.toString();
        }

        public b(k kVar) {
            this.f67049b = kVar;
        }
    }

    @I2.a
    public static final class c {

        public long[] f67050a;

        public int f67051b = 0;

        public c(int i10) {
            this.f67050a = new long[i10];
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

        public c a(long j10) {
            g(1);
            long[] jArr = this.f67050a;
            int i10 = this.f67051b;
            jArr[i10] = j10;
            this.f67051b = i10 + 1;
            return this;
        }

        public c b(k kVar) {
            g(kVar.p());
            System.arraycopy(kVar.f67046b, kVar.f67047c, this.f67050a, this.f67051b, kVar.p());
            this.f67051b += kVar.p();
            return this;
        }

        public c c(Iterable<Long> iterable) {
            if (iterable instanceof Collection) {
                return d((Collection) iterable);
            }
            Iterator<Long> it = iterable.iterator();
            while (it.hasNext()) {
                a(it.next().longValue());
            }
            return this;
        }

        public c d(Collection<Long> collection) {
            g(collection.size());
            for (Long l10 : collection) {
                long[] jArr = this.f67050a;
                int i10 = this.f67051b;
                this.f67051b = i10 + 1;
                jArr[i10] = l10.longValue();
            }
            return this;
        }

        public c e(long[] jArr) {
            g(jArr.length);
            System.arraycopy(jArr, 0, this.f67050a, this.f67051b, jArr.length);
            this.f67051b += jArr.length;
            return this;
        }

        @I2.b
        public k f() {
            if (this.f67051b == 0) {
                return k.f67045e;
            }
            return new k(this.f67050a, 0, this.f67051b);
        }

        public final void g(int i10) {
            int i11 = this.f67051b + i10;
            long[] jArr = this.f67050a;
            if (i11 > jArr.length) {
                this.f67050a = Arrays.copyOf(jArr, h(jArr.length, i11));
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

    public static k h(Iterable<Long> iterable) {
        return iterable instanceof Collection ? i((Collection) iterable) : e().c(iterable).f();
    }

    public static k i(Collection<Long> collection) {
        return collection.isEmpty() ? f67045e : new k(n.z(collection));
    }

    public static k j(long[] jArr) {
        return jArr.length == 0 ? f67045e : new k(Arrays.copyOf(jArr, jArr.length));
    }

    public static k q() {
        return f67045e;
    }

    public static k r(long j10) {
        return new k(new long[]{j10});
    }

    public static k s(long j10, long j11) {
        return new k(new long[]{j10, j11});
    }

    public static k u(long j10, long j11, long j12) {
        return new k(new long[]{j10, j11, j12});
    }

    public static k v(long j10, long j11, long j12, long j13) {
        return new k(new long[]{j10, j11, j12, j13});
    }

    public static k w(long j10, long j11, long j12, long j13, long j14) {
        return new k(new long[]{j10, j11, j12, j13, j14});
    }

    public static k x(long j10, long j11, long j12, long j13, long j14, long j15) {
        return new k(new long[]{j10, j11, j12, j13, j14, j15});
    }

    public static k y(long j10, long... jArr) {
        H.e(jArr.length <= 2147483646, "the total number of elements must fit in an int");
        long[] jArr2 = new long[jArr.length + 1];
        jArr2[0] = j10;
        System.arraycopy(jArr, 0, jArr2, 1, jArr.length);
        return new k(jArr2);
    }

    public k A(int i10, int i11) {
        H.f0(i10, i11, p());
        if (i10 == i11) {
            return f67045e;
        }
        long[] jArr = this.f67046b;
        int i12 = this.f67047c;
        return new k(jArr, i10 + i12, i12 + i11);
    }

    public long[] B() {
        return Arrays.copyOfRange(this.f67046b, this.f67047c, this.f67048d);
    }

    public k C() {
        return n() ? new k(B()) : this;
    }

    public Object D() {
        return C();
    }

    public List<Long> d() {
        return new b();
    }

    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        if (p() != kVar.p()) {
            return false;
        }
        for (int i10 = 0; i10 < p(); i10++) {
            if (k(i10) != kVar.k(i10)) {
                return false;
            }
        }
        return true;
    }

    public boolean g(long j10) {
        return l(j10) >= 0;
    }

    public int hashCode() {
        int i10 = 1;
        for (int i11 = this.f67047c; i11 < this.f67048d; i11++) {
            i10 = (i10 * 31) + n.k(this.f67046b[i11]);
        }
        return i10;
    }

    public long k(int i10) {
        H.C(i10, p());
        return this.f67046b[this.f67047c + i10];
    }

    public int l(long j10) {
        for (int i10 = this.f67047c; i10 < this.f67048d; i10++) {
            if (this.f67046b[i10] == j10) {
                return i10 - this.f67047c;
            }
        }
        return -1;
    }

    public boolean m() {
        return this.f67048d == this.f67047c;
    }

    public final boolean n() {
        return this.f67047c > 0 || this.f67048d < this.f67046b.length;
    }

    public int o(long j10) {
        int i10;
        int i11 = this.f67048d;
        do {
            i11--;
            i10 = this.f67047c;
            if (i11 < i10) {
                return -1;
            }
        } while (this.f67046b[i11] != j10);
        return i11 - i10;
    }

    public int p() {
        return this.f67048d - this.f67047c;
    }

    public String toString() {
        if (m()) {
            return okhttp3.v.f99450n;
        }
        StringBuilder sb2 = new StringBuilder(p() * 5);
        sb2.append('[');
        sb2.append(this.f67046b[this.f67047c]);
        int i10 = this.f67047c;
        while (true) {
            i10++;
            if (i10 >= this.f67048d) {
                sb2.append(JavaElement.JEM_TYPE_PARAMETER);
                return sb2.toString();
            }
            sb2.append(", ");
            sb2.append(this.f67046b[i10]);
        }
    }

    public Object z() {
        return m() ? f67045e : this;
    }

    public k(long[] jArr) {
        this(jArr, 0, jArr.length);
    }

    public k(long[] jArr, int i10, int i11) {
        this.f67046b = jArr;
        this.f67047c = i10;
        this.f67048d = i11;
    }
}
