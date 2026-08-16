package ce;

import Sd.h;
import Zd.b0;
import be.InterfaceC3875h;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Random;
import org.apache.commons.math3.geometry.VectorFormat;

public class C4180f implements InterfaceC3875h, Externalizable {

    public static final long f34788e = 1;

    public static final int f34789f = 10;

    public long[] f34790b;

    public int f34791c;

    public long f34792d;

    public static class a extends C4180f {
        public a(long[] jArr, long j10, boolean z10) {
            super(jArr, j10, z10);
        }

        @Override
        public void b(int i10) {
            if (i10 > this.f34790b.length) {
                throw new IllegalStateException("Can not grow ArrayList wrapped external array");
            }
        }
    }

    public class b implements b0 {

        public int f34793b;

        public int f34794c = -1;

        public b(int i10) {
            this.f34793b = i10;
        }

        @Override
        public boolean hasNext() {
            return this.f34793b < C4180f.this.size();
        }

        @Override
        public long next() {
            try {
                long j10 = C4180f.this.get(this.f34793b);
                int i10 = this.f34793b;
                this.f34793b = i10 + 1;
                this.f34794c = i10;
                return j10;
            } catch (IndexOutOfBoundsException unused) {
                throw new NoSuchElementException();
            }
        }

        @Override
        public void remove() {
            int i10 = this.f34794c;
            if (i10 == -1) {
                throw new IllegalStateException();
            }
            try {
                C4180f.this.t0(i10, 1);
                int i11 = this.f34794c;
                int i12 = this.f34793b;
                if (i11 < i12) {
                    this.f34793b = i12 - 1;
                }
                this.f34794c = -1;
            } catch (IndexOutOfBoundsException unused) {
                throw new ConcurrentModificationException();
            }
        }
    }

    public C4180f() {
        this(10, 0L);
    }

    private void j(int i10, int i11) {
        long[] jArr = this.f34790b;
        long j10 = jArr[i10];
        jArr[i10] = jArr[i11];
        jArr[i11] = j10;
    }

    public static C4180f l(long[] jArr) {
        return m(jArr, 0L);
    }

    public static C4180f m(long[] jArr, long j10) {
        return new a(jArr, j10, true);
    }

    @Override
    public long B0(int i10) {
        long j10 = get(i10);
        t0(i10, 1);
        return j10;
    }

    @Override
    public boolean B1(long[] jArr) {
        int length = jArr.length;
        boolean z10 = false;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return z10;
            }
            if (e(jArr[i10])) {
                z10 = true;
            }
            length = i10;
        }
    }

    @Override
    public boolean B2(h hVar) {
        b0 it = hVar.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (M0(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public int C6(int i10, long j10) {
        while (i10 < this.f34791c) {
            if (this.f34790b[i10] == j10) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    @Override
    public int D4(long j10) {
        return V8(j10, 0, this.f34791c);
    }

    @Override
    public boolean H1(h hVar) {
        if (this == hVar) {
            return true;
        }
        b0 it = hVar.iterator();
        while (it.hasNext()) {
            if (!X0(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public void Ha(long[] jArr, int i10, int i11) {
        b(this.f34791c + i11);
        System.arraycopy(jArr, i10, this.f34790b, this.f34791c, i11);
        this.f34791c += i11;
    }

    @Override
    public void J0(Random random) {
        int i10 = this.f34791c;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 1) {
                return;
            }
            j(i11, random.nextInt(i11));
            i10 = i11;
        }
    }

    @Override
    public boolean M0(long j10) {
        b(this.f34791c + 1);
        long[] jArr = this.f34790b;
        int i10 = this.f34791c;
        this.f34791c = i10 + 1;
        jArr[i10] = j10;
        return true;
    }

    @Override
    public void N7(int i10, long j10) {
        int i11 = this.f34791c;
        if (i10 == i11) {
            M0(j10);
            return;
        }
        b(i11 + 1);
        long[] jArr = this.f34790b;
        System.arraycopy(jArr, i10, jArr, i10 + 1, this.f34791c - i10);
        this.f34790b[i10] = j10;
        this.f34791c++;
    }

    @Override
    public long[] O0(long[] jArr) {
        int length = jArr.length;
        int length2 = jArr.length;
        int i10 = this.f34791c;
        if (length2 > i10) {
            jArr[i10] = this.f34792d;
            length = i10;
        }
        Wa(jArr, 0, length);
        return jArr;
    }

    @Override
    public void Pe(int i10, long[] jArr) {
        i6(i10, jArr, 0, jArr.length);
    }

    @Override
    public boolean Q1(long[] jArr) {
        Arrays.sort(jArr);
        long[] jArr2 = this.f34790b;
        int i10 = this.f34791c;
        boolean z10 = false;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return z10;
            }
            if (Arrays.binarySearch(jArr, jArr2[i11]) < 0) {
                z10 = true;
                t0(i11, 1);
            }
            i10 = i11;
        }
    }

    @Override
    public int S3(long j10) {
        return b6(this.f34791c, j10);
    }

    @Override
    public long T8(int i10, long j10) {
        if (i10 >= this.f34791c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        long[] jArr = this.f34790b;
        long j11 = jArr[i10];
        jArr[i10] = j10;
        return j11;
    }

    @Override
    public boolean U1(long[] jArr) {
        int length = jArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (!X0(jArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public int V8(long j10, int i10, int i11) {
        if (i10 < 0) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        if (i11 > this.f34791c) {
            throw new ArrayIndexOutOfBoundsException(i11);
        }
        int i12 = i11 - 1;
        while (i10 <= i12) {
            int i13 = (i10 + i12) >>> 1;
            long j11 = this.f34790b[i13];
            if (j11 < j10) {
                i10 = i13 + 1;
            } else {
                if (j11 <= j10) {
                    return i13;
                }
                i12 = i13 - 1;
            }
        }
        return -(i10 + 1);
    }

    @Override
    public long[] Wa(long[] jArr, int i10, int i11) {
        if (i11 == 0) {
            return jArr;
        }
        if (i10 < 0 || i10 >= this.f34791c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        System.arraycopy(this.f34790b, i10, jArr, 0, i11);
        return jArr;
    }

    @Override
    public boolean X0(long j10) {
        return S3(j10) >= 0;
    }

    @Override
    public void Yc(int i10, long[] jArr, int i11, int i12) {
        if (i10 < 0 || i10 + i12 > this.f34791c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        System.arraycopy(jArr, i11, this.f34790b, i10, i12);
    }

    public void a(int i10) {
        this.f34790b = new long[i10];
        this.f34791c = 0;
    }

    @Override
    public boolean addAll(Collection<? extends Long> collection) {
        Iterator<? extends Long> it = collection.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (M0(it.next().longValue())) {
                z10 = true;
            }
        }
        return z10;
    }

    public void b(int i10) {
        long[] jArr = this.f34790b;
        if (i10 > jArr.length) {
            long[] jArr2 = new long[Math.max(jArr.length << 1, i10)];
            long[] jArr3 = this.f34790b;
            System.arraycopy(jArr3, 0, jArr2, 0, jArr3.length);
            this.f34790b = jArr2;
        }
    }

    @Override
    public int b6(int i10, long j10) {
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return -1;
            }
            if (this.f34790b[i11] == j10) {
                return i11;
            }
            i10 = i11;
        }
    }

    @Override
    public InterfaceC3875h b7(he.b0 b0Var) {
        C4180f c4180f = new C4180f();
        for (int i10 = 0; i10 < this.f34791c; i10++) {
            if (b0Var.a(this.f34790b[i10])) {
                c4180f.M0(this.f34790b[i10]);
            }
        }
        return c4180f;
    }

    public long c(int i10) {
        return this.f34790b[i10];
    }

    @Override
    public void c3(long j10) {
        Arrays.fill(this.f34790b, 0, this.f34791c, j10);
    }

    @Override
    public InterfaceC3875h c5(he.b0 b0Var) {
        C4180f c4180f = new C4180f();
        for (int i10 = 0; i10 < this.f34791c; i10++) {
            if (!b0Var.a(this.f34790b[i10])) {
                c4180f.M0(this.f34790b[i10]);
            }
        }
        return c4180f;
    }

    @Override
    public void clear() {
        a(10);
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        for (Object obj : collection) {
            if (!(obj instanceof Long) || !X0(((Long) obj).longValue())) {
                return false;
            }
        }
        return true;
    }

    public void d() {
        this.f34791c = 0;
        Arrays.fill(this.f34790b, this.f34792d);
    }

    @Override
    public boolean e(long j10) {
        for (int i10 = 0; i10 < this.f34791c; i10++) {
            if (j10 == this.f34790b[i10]) {
                t0(i10, 1);
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C4180f)) {
            return false;
        }
        C4180f c4180f = (C4180f) obj;
        if (c4180f.size() != size()) {
            return false;
        }
        int i10 = this.f34791c;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return true;
            }
            if (this.f34790b[i11] != c4180f.f34790b[i11]) {
                return false;
            }
            i10 = i11;
        }
    }

    public void f() {
        this.f34791c = 0;
    }

    @Override
    public boolean f2(h hVar) {
        if (hVar == this) {
            clear();
            return true;
        }
        b0 it = hVar.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (e(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    public void g(int i10, long j10) {
        this.f34790b[i10] = j10;
    }

    @Override
    public void gd(int i10, long[] jArr) {
        Yc(i10, jArr, 0, jArr.length);
    }

    @Override
    public long get(int i10) {
        if (i10 < this.f34791c) {
            return this.f34790b[i10];
        }
        throw new ArrayIndexOutOfBoundsException(i10);
    }

    @Override
    public void h(Ud.f fVar) {
        int i10 = this.f34791c;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return;
            }
            long[] jArr = this.f34790b;
            jArr[i11] = fVar.a(jArr[i11]);
            i10 = i11;
        }
    }

    @Override
    public void h3(long[] jArr) {
        Ha(jArr, 0, jArr.length);
    }

    @Override
    public int hashCode() {
        int i10 = this.f34791c;
        int i11 = 0;
        while (true) {
            int i12 = i10 - 1;
            if (i10 <= 0) {
                return i11;
            }
            i11 += Vd.b.e(this.f34790b[i12]);
            i10 = i12;
        }
    }

    @Override
    public long i() {
        return this.f34792d;
    }

    @Override
    public void i6(int i10, long[] jArr, int i11, int i12) {
        int i13 = this.f34791c;
        if (i10 == i13) {
            Ha(jArr, i11, i12);
            return;
        }
        b(i13 + i12);
        long[] jArr2 = this.f34790b;
        System.arraycopy(jArr2, i10, jArr2, i10 + i12, this.f34791c - i10);
        System.arraycopy(jArr, i11, this.f34790b, i10, i12);
        this.f34791c += i12;
    }

    @Override
    public boolean isEmpty() {
        return this.f34791c == 0;
    }

    @Override
    public b0 iterator() {
        return new b(0);
    }

    @Override
    public boolean j1(he.b0 b0Var) {
        for (int i10 = 0; i10 < this.f34791c; i10++) {
            if (!b0Var.a(this.f34790b[i10])) {
                return false;
            }
        }
        return true;
    }

    public void k() {
        if (this.f34790b.length > size()) {
            int size = size();
            long[] jArr = new long[size];
            Wa(jArr, 0, size);
            this.f34790b = jArr;
        }
    }

    @Override
    public int k6(long j10) {
        return C6(0, j10);
    }

    @Override
    public long max() {
        if (size() == 0) {
            throw new IllegalStateException("cannot find maximum of an empty list");
        }
        long j10 = Long.MIN_VALUE;
        for (int i10 = 0; i10 < this.f34791c; i10++) {
            long j11 = this.f34790b[i10];
            if (j11 > j10) {
                j10 = j11;
            }
        }
        return j10;
    }

    @Override
    public long min() {
        if (size() == 0) {
            throw new IllegalStateException("cannot find minimum of an empty list");
        }
        long j10 = Long.MAX_VALUE;
        for (int i10 = 0; i10 < this.f34791c; i10++) {
            long j11 = this.f34790b[i10];
            if (j11 < j10) {
                j10 = j11;
            }
        }
        return j10;
    }

    @Override
    public long o() {
        long j10 = 0;
        for (int i10 = 0; i10 < this.f34791c; i10++) {
            j10 += this.f34790b[i10];
        }
        return j10;
    }

    @Override
    public long o5(int i10, long j10) {
        if (i10 >= this.f34791c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        long[] jArr = this.f34790b;
        long j11 = jArr[i10];
        jArr[i10] = j10;
        return j11;
    }

    @Override
    public boolean q1(h hVar) {
        boolean z10 = false;
        if (this == hVar) {
            return false;
        }
        b0 it = iterator();
        while (it.hasNext()) {
            if (!hVar.X0(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public void r6(int i10, int i11, long j10) {
        if (i11 > this.f34791c) {
            b(i11);
            this.f34791c = i11;
        }
        Arrays.fill(this.f34790b, i10, i11, j10);
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f34791c = objectInput.readInt();
        this.f34792d = objectInput.readLong();
        int readInt = objectInput.readInt();
        this.f34790b = new long[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            this.f34790b[i10] = objectInput.readLong();
        }
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        boolean z10 = false;
        for (Object obj : collection) {
            if ((obj instanceof Long) && e(((Long) obj).longValue())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        b0 it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (!collection.contains(Long.valueOf(it.next()))) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public int size() {
        return this.f34791c;
    }

    @Override
    public void sort() {
        Arrays.sort(this.f34790b, 0, this.f34791c);
    }

    @Override
    public InterfaceC3875h subList(int i10, int i11) {
        if (i11 < i10) {
            throw new IllegalArgumentException("end index " + i11 + " greater than begin index " + i10);
        }
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("begin index can not be < 0");
        }
        if (i11 > this.f34790b.length) {
            throw new IndexOutOfBoundsException("end index < " + this.f34790b.length);
        }
        C4180f c4180f = new C4180f(i11 - i10);
        while (i10 < i11) {
            c4180f.M0(this.f34790b[i10]);
            i10++;
        }
        return c4180f;
    }

    @Override
    public void t0(int i10, int i11) {
        int i12;
        if (i11 == 0) {
            return;
        }
        if (i10 < 0 || i10 >= (i12 = this.f34791c)) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        if (i10 == 0) {
            long[] jArr = this.f34790b;
            System.arraycopy(jArr, i11, jArr, 0, i12 - i11);
        } else if (i12 - i11 != i10) {
            long[] jArr2 = this.f34790b;
            int i13 = i10 + i11;
            System.arraycopy(jArr2, i13, jArr2, i10, i12 - i13);
        }
        this.f34791c -= i11;
    }

    @Override
    public long[] toArray() {
        return z0(0, this.f34791c);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        int i10 = this.f34791c - 1;
        for (int i11 = 0; i11 < i10; i11++) {
            sb2.append(this.f34790b[i11]);
            sb2.append(", ");
        }
        if (size() > 0) {
            sb2.append(this.f34790b[this.f34791c - 1]);
        }
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public void u0() {
        y0(0, this.f34791c);
    }

    @Override
    public boolean u5(he.b0 b0Var) {
        int i10 = this.f34791c;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return true;
            }
            if (!b0Var.a(this.f34790b[i11])) {
                return false;
            }
            i10 = i11;
        }
    }

    @Override
    public long[] v8(long[] jArr, int i10, int i11, int i12) {
        if (i12 == 0) {
            return jArr;
        }
        if (i10 < 0 || i10 >= this.f34791c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        System.arraycopy(this.f34790b, i10, jArr, i11, i12);
        return jArr;
    }

    @Override
    public void w0(int i10, int i11) {
        Arrays.sort(this.f34790b, i10, i11);
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeInt(this.f34791c);
        objectOutput.writeLong(this.f34792d);
        int length = this.f34790b.length;
        objectOutput.writeInt(length);
        for (int i10 = 0; i10 < length; i10++) {
            objectOutput.writeLong(this.f34790b[i10]);
        }
    }

    @Override
    public void y0(int i10, int i11) {
        if (i10 == i11) {
            return;
        }
        if (i10 > i11) {
            throw new IllegalArgumentException("from cannot be greater than to");
        }
        for (int i12 = i11 - 1; i10 < i12; i12--) {
            j(i10, i12);
            i10++;
        }
    }

    @Override
    public boolean y2(long[] jArr) {
        boolean z10 = false;
        for (long j10 : jArr) {
            if (M0(j10)) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public long[] z0(int i10, int i11) {
        long[] jArr = new long[i11];
        Wa(jArr, i10, i11);
        return jArr;
    }

    public C4180f(int i10) {
        this(i10, 0L);
    }

    public C4180f(int i10, long j10) {
        this.f34790b = new long[i10];
        this.f34791c = 0;
        this.f34792d = j10;
    }

    public C4180f(h hVar) {
        this(hVar.size());
        B2(hVar);
    }

    public C4180f(long[] jArr) {
        this(jArr.length);
        h3(jArr);
    }

    public C4180f(long[] jArr, long j10, boolean z10) {
        if (!z10) {
            throw new IllegalStateException("Wrong call");
        }
        if (jArr != null) {
            this.f34790b = jArr;
            this.f34791c = jArr.length;
            this.f34792d = j10;
            return;
        }
        throw new IllegalArgumentException("values can not be null");
    }
}
