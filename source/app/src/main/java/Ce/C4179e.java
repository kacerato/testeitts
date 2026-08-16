package ce;

import Zd.Q;
import be.InterfaceC3872e;
import he.S;
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

public class C4179e implements InterfaceC3872e, Externalizable {

    public static final long f34780e = 1;

    public static final int f34781f = 10;

    public int[] f34782b;

    public int f34783c;

    public int f34784d;

    public static class a extends C4179e {
        public a(int[] iArr, int i10, boolean z10) {
            super(iArr, i10, z10);
        }

        @Override
        public void b(int i10) {
            if (i10 > this.f34782b.length) {
                throw new IllegalStateException("Can not grow ArrayList wrapped external array");
            }
        }
    }

    public class b implements Q {

        public int f34785b;

        public int f34786c = -1;

        public b(int i10) {
            this.f34785b = i10;
        }

        @Override
        public boolean hasNext() {
            return this.f34785b < C4179e.this.size();
        }

        @Override
        public int next() {
            try {
                int i10 = C4179e.this.get(this.f34785b);
                int i11 = this.f34785b;
                this.f34785b = i11 + 1;
                this.f34786c = i11;
                return i10;
            } catch (IndexOutOfBoundsException unused) {
                throw new NoSuchElementException();
            }
        }

        @Override
        public void remove() {
            int i10 = this.f34786c;
            if (i10 == -1) {
                throw new IllegalStateException();
            }
            try {
                C4179e.this.t0(i10, 1);
                int i11 = this.f34786c;
                int i12 = this.f34785b;
                if (i11 < i12) {
                    this.f34785b = i12 - 1;
                }
                this.f34786c = -1;
            } catch (IndexOutOfBoundsException unused) {
                throw new ConcurrentModificationException();
            }
        }
    }

    public C4179e() {
        this(10, 0);
    }

    private void h(int i10, int i11) {
        int[] iArr = this.f34782b;
        int i12 = iArr[i10];
        iArr[i10] = iArr[i11];
        iArr[i11] = i12;
    }

    public static C4179e k(int[] iArr) {
        return l(iArr, 0);
    }

    public static C4179e l(int[] iArr, int i10) {
        return new a(iArr, i10, true);
    }

    @Override
    public boolean A1(int[] iArr) {
        int length = iArr.length;
        boolean z10 = false;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return z10;
            }
            if (remove(iArr[i10])) {
                z10 = true;
            }
            length = i10;
        }
    }

    @Override
    public int B0(int i10) {
        int i11 = get(i10);
        t0(i10, 1);
        return i11;
    }

    @Override
    public int B6(int i10, int i11) {
        while (i10 < this.f34783c) {
            if (this.f34782b[i10] == i11) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    @Override
    public int F3(int i10) {
        return y7(i10, 0, this.f34783c);
    }

    @Override
    public void I4(int i10, int[] iArr, int i11, int i12) {
        if (i10 < 0 || i10 + i12 > this.f34783c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        System.arraycopy(iArr, i11, this.f34782b, i10, i12);
    }

    @Override
    public void J0(Random random) {
        int i10 = this.f34783c;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 1) {
                return;
            }
            h(i11, random.nextInt(i11));
            i10 = i11;
        }
    }

    @Override
    public boolean K1(int[] iArr) {
        int length = iArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (!contains(iArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public InterfaceC3872e Kb(S s10) {
        C4179e c4179e = new C4179e();
        for (int i10 = 0; i10 < this.f34783c; i10++) {
            if (!s10.a(this.f34782b[i10])) {
                c4179e.add(this.f34782b[i10]);
            }
        }
        return c4179e;
    }

    @Override
    public boolean M1(int[] iArr) {
        Arrays.sort(iArr);
        int[] iArr2 = this.f34782b;
        int i10 = this.f34783c;
        boolean z10 = false;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return z10;
            }
            if (Arrays.binarySearch(iArr, iArr2[i11]) < 0) {
                z10 = true;
                t0(i11, 1);
            }
            i10 = i11;
        }
    }

    @Override
    public void M7(int i10, int i11) {
        int i12 = this.f34783c;
        if (i10 == i12) {
            add(i11);
            return;
        }
        b(i12 + 1);
        int[] iArr = this.f34782b;
        System.arraycopy(iArr, i10, iArr, i10 + 1, this.f34783c - i10);
        this.f34782b[i10] = i11;
        this.f34783c++;
    }

    @Override
    public int[] P0(int[] iArr) {
        int length = iArr.length;
        int length2 = iArr.length;
        int i10 = this.f34783c;
        if (length2 > i10) {
            iArr[i10] = this.f34784d;
            length = i10;
        }
        w9(iArr, 0, length);
        return iArr;
    }

    @Override
    public int Q3(int i10) {
        return c6(this.f34783c, i10);
    }

    @Override
    public int R8(int i10, int i11) {
        if (i10 >= this.f34783c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        int[] iArr = this.f34782b;
        int i12 = iArr[i10];
        iArr[i10] = i11;
        return i12;
    }

    @Override
    public boolean U0(S s10) {
        for (int i10 = 0; i10 < this.f34783c; i10++) {
            if (!s10.a(this.f34782b[i10])) {
                return false;
            }
        }
        return true;
    }

    @Override
    public void Ue(int i10, int[] iArr) {
        v7(i10, iArr, 0, iArr.length);
    }

    @Override
    public boolean Wc(S s10) {
        int i10 = this.f34783c;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return true;
            }
            if (!s10.a(this.f34782b[i11])) {
                return false;
            }
            i10 = i11;
        }
    }

    @Override
    public int[] Xa(int[] iArr, int i10, int i11, int i12) {
        if (i12 == 0) {
            return iArr;
        }
        if (i10 < 0 || i10 >= this.f34783c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        System.arraycopy(this.f34782b, i10, iArr, i11, i12);
        return iArr;
    }

    public void a(int i10) {
        this.f34782b = new int[i10];
        this.f34783c = 0;
    }

    @Override
    public boolean add(int i10) {
        b(this.f34783c + 1);
        int[] iArr = this.f34782b;
        int i11 = this.f34783c;
        this.f34783c = i11 + 1;
        iArr[i11] = i10;
        return true;
    }

    @Override
    public boolean addAll(Collection<? extends Integer> collection) {
        Iterator<? extends Integer> it = collection.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (add(it.next().intValue())) {
                z10 = true;
            }
        }
        return z10;
    }

    public void b(int i10) {
        int[] iArr = this.f34782b;
        if (i10 > iArr.length) {
            int[] iArr2 = new int[Math.max(iArr.length << 1, i10)];
            int[] iArr3 = this.f34782b;
            System.arraycopy(iArr3, 0, iArr2, 0, iArr3.length);
            this.f34782b = iArr2;
        }
    }

    @Override
    public boolean b2(Sd.g gVar) {
        Q it = gVar.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (add(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    public int c(int i10) {
        return this.f34782b[i10];
    }

    @Override
    public int c6(int i10, int i11) {
        while (true) {
            int i12 = i10 - 1;
            if (i10 <= 0) {
                return -1;
            }
            if (this.f34782b[i12] == i11) {
                return i12;
            }
            i10 = i12;
        }
    }

    @Override
    public void clear() {
        a(10);
    }

    @Override
    public boolean contains(int i10) {
        return Q3(i10) >= 0;
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        for (Object obj : collection) {
            if (!(obj instanceof Integer) || !contains(((Integer) obj).intValue())) {
                return false;
            }
        }
        return true;
    }

    public void d() {
        this.f34783c = 0;
        Arrays.fill(this.f34782b, this.f34784d);
    }

    @Override
    public boolean d2(Sd.g gVar) {
        if (gVar == this) {
            clear();
            return true;
        }
        Q it = gVar.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (remove(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public void d3(int i10) {
        Arrays.fill(this.f34782b, 0, this.f34783c, i10);
    }

    @Override
    public void dd(int i10, int[] iArr) {
        I4(i10, iArr, 0, iArr.length);
    }

    public void e() {
        this.f34783c = 0;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C4179e)) {
            return false;
        }
        C4179e c4179e = (C4179e) obj;
        if (c4179e.size() != size()) {
            return false;
        }
        int i10 = this.f34783c;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return true;
            }
            if (this.f34782b[i11] != c4179e.f34782b[i11]) {
                return false;
            }
            i10 = i11;
        }
    }

    @Override
    public void f(Ud.e eVar) {
        int i10 = this.f34783c;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return;
            }
            int[] iArr = this.f34782b;
            iArr[i11] = eVar.a(iArr[i11]);
            i10 = i11;
        }
    }

    @Override
    public void f9(int[] iArr, int i10, int i11) {
        b(this.f34783c + i11);
        System.arraycopy(iArr, i10, this.f34782b, this.f34783c, i11);
        this.f34783c += i11;
    }

    public void g(int i10, int i11) {
        this.f34782b[i10] = i11;
    }

    @Override
    public int get(int i10) {
        if (i10 < this.f34783c) {
            return this.f34782b[i10];
        }
        throw new ArrayIndexOutOfBoundsException(i10);
    }

    @Override
    public boolean h2(Sd.g gVar) {
        if (this == gVar) {
            return true;
        }
        Q it = gVar.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public int hashCode() {
        int i10 = this.f34783c;
        int i11 = 0;
        while (true) {
            int i12 = i10 - 1;
            if (i10 <= 0) {
                return i11;
            }
            i11 += Vd.b.d(this.f34782b[i12]);
            i10 = i12;
        }
    }

    @Override
    public int i() {
        return this.f34784d;
    }

    @Override
    public boolean isEmpty() {
        return this.f34783c == 0;
    }

    @Override
    public Q iterator() {
        return new b(0);
    }

    public void j() {
        if (this.f34782b.length > size()) {
            int size = size();
            int[] iArr = new int[size];
            w9(iArr, 0, size);
            this.f34782b = iArr;
        }
    }

    @Override
    public boolean j2(Sd.g gVar) {
        boolean z10 = false;
        if (this == gVar) {
            return false;
        }
        Q it = iterator();
        while (it.hasNext()) {
            if (!gVar.contains(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public void k3(int[] iArr) {
        f9(iArr, 0, iArr.length);
    }

    @Override
    public int m6(int i10) {
        return B6(0, i10);
    }

    @Override
    public int max() {
        if (size() == 0) {
            throw new IllegalStateException("cannot find maximum of an empty list");
        }
        int i10 = Integer.MIN_VALUE;
        for (int i11 = 0; i11 < this.f34783c; i11++) {
            int i12 = this.f34782b[i11];
            if (i12 > i10) {
                i10 = i12;
            }
        }
        return i10;
    }

    @Override
    public int min() {
        if (size() == 0) {
            throw new IllegalStateException("cannot find minimum of an empty list");
        }
        int i10 = Integer.MAX_VALUE;
        for (int i11 = 0; i11 < this.f34783c; i11++) {
            int i12 = this.f34782b[i11];
            if (i12 < i10) {
                i10 = i12;
            }
        }
        return i10;
    }

    @Override
    public int n5(int i10, int i11) {
        if (i10 >= this.f34783c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        int[] iArr = this.f34782b;
        int i12 = iArr[i10];
        iArr[i10] = i11;
        return i12;
    }

    @Override
    public int o() {
        int i10 = 0;
        for (int i11 = 0; i11 < this.f34783c; i11++) {
            i10 += this.f34782b[i11];
        }
        return i10;
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f34783c = objectInput.readInt();
        this.f34784d = objectInput.readInt();
        int readInt = objectInput.readInt();
        this.f34782b = new int[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            this.f34782b[i10] = objectInput.readInt();
        }
    }

    @Override
    public boolean remove(int i10) {
        for (int i11 = 0; i11 < this.f34783c; i11++) {
            if (i10 == this.f34782b[i11]) {
                t0(i11, 1);
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        boolean z10 = false;
        for (Object obj : collection) {
            if ((obj instanceof Integer) && remove(((Integer) obj).intValue())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        Q it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (!collection.contains(Integer.valueOf(it.next()))) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public void s6(int i10, int i11, int i12) {
        if (i11 > this.f34783c) {
            b(i11);
            this.f34783c = i11;
        }
        Arrays.fill(this.f34782b, i10, i11, i12);
    }

    @Override
    public int size() {
        return this.f34783c;
    }

    @Override
    public void sort() {
        Arrays.sort(this.f34782b, 0, this.f34783c);
    }

    @Override
    public InterfaceC3872e subList(int i10, int i11) {
        if (i11 < i10) {
            throw new IllegalArgumentException("end index " + i11 + " greater than begin index " + i10);
        }
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("begin index can not be < 0");
        }
        if (i11 > this.f34782b.length) {
            throw new IndexOutOfBoundsException("end index < " + this.f34782b.length);
        }
        C4179e c4179e = new C4179e(i11 - i10);
        while (i10 < i11) {
            c4179e.add(this.f34782b[i10]);
            i10++;
        }
        return c4179e;
    }

    @Override
    public void t0(int i10, int i11) {
        int i12;
        if (i11 == 0) {
            return;
        }
        if (i10 < 0 || i10 >= (i12 = this.f34783c)) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        if (i10 == 0) {
            int[] iArr = this.f34782b;
            System.arraycopy(iArr, i11, iArr, 0, i12 - i11);
        } else if (i12 - i11 != i10) {
            int[] iArr2 = this.f34782b;
            int i13 = i10 + i11;
            System.arraycopy(iArr2, i13, iArr2, i10, i12 - i13);
        }
        this.f34783c -= i11;
    }

    @Override
    public int[] toArray() {
        return z0(0, this.f34783c);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        int i10 = this.f34783c - 1;
        for (int i11 = 0; i11 < i10; i11++) {
            sb2.append(this.f34782b[i11]);
            sb2.append(", ");
        }
        if (size() > 0) {
            sb2.append(this.f34782b[this.f34783c - 1]);
        }
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public void u0() {
        y0(0, this.f34783c);
    }

    @Override
    public void v7(int i10, int[] iArr, int i11, int i12) {
        int i13 = this.f34783c;
        if (i10 == i13) {
            f9(iArr, i11, i12);
            return;
        }
        b(i13 + i12);
        int[] iArr2 = this.f34782b;
        System.arraycopy(iArr2, i10, iArr2, i10 + i12, this.f34783c - i10);
        System.arraycopy(iArr, i11, this.f34782b, i10, i12);
        this.f34783c += i12;
    }

    @Override
    public void w0(int i10, int i11) {
        Arrays.sort(this.f34782b, i10, i11);
    }

    @Override
    public int[] w9(int[] iArr, int i10, int i11) {
        if (i11 == 0) {
            return iArr;
        }
        if (i10 < 0 || i10 >= this.f34783c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        System.arraycopy(this.f34782b, i10, iArr, 0, i11);
        return iArr;
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeInt(this.f34783c);
        objectOutput.writeInt(this.f34784d);
        int length = this.f34782b.length;
        objectOutput.writeInt(length);
        for (int i10 = 0; i10 < length; i10++) {
            objectOutput.writeInt(this.f34782b[i10]);
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
            h(i10, i12);
            i10++;
        }
    }

    @Override
    public int y7(int i10, int i11, int i12) {
        if (i11 < 0) {
            throw new ArrayIndexOutOfBoundsException(i11);
        }
        if (i12 > this.f34783c) {
            throw new ArrayIndexOutOfBoundsException(i12);
        }
        int i13 = i12 - 1;
        while (i11 <= i13) {
            int i14 = (i11 + i13) >>> 1;
            int i15 = this.f34782b[i14];
            if (i15 < i10) {
                i11 = i14 + 1;
            } else {
                if (i15 <= i10) {
                    return i14;
                }
                i13 = i14 - 1;
            }
        }
        return -(i11 + 1);
    }

    @Override
    public int[] z0(int i10, int i11) {
        int[] iArr = new int[i11];
        w9(iArr, i10, i11);
        return iArr;
    }

    @Override
    public boolean z2(int[] iArr) {
        boolean z10 = false;
        for (int i10 : iArr) {
            if (add(i10)) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public InterfaceC3872e ze(S s10) {
        C4179e c4179e = new C4179e();
        for (int i10 = 0; i10 < this.f34783c; i10++) {
            if (s10.a(this.f34782b[i10])) {
                c4179e.add(this.f34782b[i10]);
            }
        }
        return c4179e;
    }

    public C4179e(int i10) {
        this(i10, 0);
    }

    public C4179e(int i10, int i11) {
        this.f34782b = new int[i10];
        this.f34783c = 0;
        this.f34784d = i11;
    }

    public C4179e(Sd.g gVar) {
        this(gVar.size());
        b2(gVar);
    }

    public C4179e(int[] iArr) {
        this(iArr.length);
        k3(iArr);
    }

    public C4179e(int[] iArr, int i10, boolean z10) {
        if (!z10) {
            throw new IllegalStateException("Wrong call");
        }
        if (iArr != null) {
            this.f34782b = iArr;
            this.f34783c = iArr.length;
            this.f34784d = i10;
            return;
        }
        throw new IllegalArgumentException("values can not be null");
    }
}
