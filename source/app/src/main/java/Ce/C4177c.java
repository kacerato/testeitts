package ce;

import Zd.InterfaceC3466y;
import be.InterfaceC3870c;
import he.InterfaceC13470z;
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

public class C4177c implements InterfaceC3870c, Externalizable {

    public static final long f34764e = 1;

    public static final int f34765f = 10;

    public double[] f34766b;

    public int f34767c;

    public double f34768d;

    public static class a extends C4177c {
        public a(double[] dArr, double d10, boolean z10) {
            super(dArr, d10, z10);
        }

        @Override
        public void c(int i10) {
            if (i10 > this.f34766b.length) {
                throw new IllegalStateException("Can not grow ArrayList wrapped external array");
            }
        }
    }

    public class b implements InterfaceC3466y {

        public int f34769b;

        public int f34770c = -1;

        public b(int i10) {
            this.f34769b = i10;
        }

        @Override
        public boolean hasNext() {
            return this.f34769b < C4177c.this.size();
        }

        @Override
        public double next() {
            try {
                double d10 = C4177c.this.get(this.f34769b);
                int i10 = this.f34769b;
                this.f34769b = i10 + 1;
                this.f34770c = i10;
                return d10;
            } catch (IndexOutOfBoundsException unused) {
                throw new NoSuchElementException();
            }
        }

        @Override
        public void remove() {
            int i10 = this.f34770c;
            if (i10 == -1) {
                throw new IllegalStateException();
            }
            try {
                C4177c.this.t0(i10, 1);
                int i11 = this.f34770c;
                int i12 = this.f34769b;
                if (i11 < i12) {
                    this.f34769b = i12 - 1;
                }
                this.f34770c = -1;
            } catch (IndexOutOfBoundsException unused) {
                throw new ConcurrentModificationException();
            }
        }
    }

    public C4177c() {
        this(10, 0.0d);
    }

    private void h(int i10, int i11) {
        double[] dArr = this.f34766b;
        double d10 = dArr[i10];
        dArr[i10] = dArr[i11];
        dArr[i11] = d10;
    }

    public static C4177c k(double[] dArr) {
        return l(dArr, 0.0d);
    }

    public static C4177c l(double[] dArr, double d10) {
        return new a(dArr, d10, true);
    }

    @Override
    public double B0(int i10) {
        double d10 = get(i10);
        t0(i10, 1);
        return d10;
    }

    @Override
    public void Bc(int i10, double[] dArr, int i11, int i12) {
        int i13 = this.f34767c;
        if (i10 == i13) {
            q3(dArr, i11, i12);
            return;
        }
        c(i13 + i12);
        double[] dArr2 = this.f34766b;
        System.arraycopy(dArr2, i10, dArr2, i10 + i12, this.f34767c - i10);
        System.arraycopy(dArr, i11, this.f34766b, i10, i12);
        this.f34767c += i12;
    }

    @Override
    public boolean C1(Sd.e eVar) {
        if (eVar == this) {
            clear();
            return true;
        }
        InterfaceC3466y it = eVar.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (a(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public void F7(int i10, int i11, double d10) {
        if (i11 > this.f34767c) {
            c(i11);
            this.f34767c = i11;
        }
        Arrays.fill(this.f34766b, i10, i11, d10);
    }

    @Override
    public boolean G1(Sd.e eVar) {
        if (this == eVar) {
            return true;
        }
        InterfaceC3466y it = eVar.iterator();
        while (it.hasNext()) {
            if (!Y0(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public double G8(int i10, double d10) {
        if (i10 >= this.f34767c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        double[] dArr = this.f34766b;
        double d11 = dArr[i10];
        dArr[i10] = d10;
        return d11;
    }

    @Override
    public void Ie(int i10, double[] dArr) {
        Bc(i10, dArr, 0, dArr.length);
    }

    @Override
    public void J0(Random random) {
        int i10 = this.f34767c;
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
    public boolean J1(Sd.e eVar) {
        boolean z10 = false;
        if (this == eVar) {
            return false;
        }
        InterfaceC3466y it = iterator();
        while (it.hasNext()) {
            if (!eVar.Y0(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public void P2(double d10) {
        Arrays.fill(this.f34766b, 0, this.f34767c, d10);
    }

    @Override
    public boolean Y0(double d10) {
        return e4(d10) >= 0;
    }

    @Override
    public boolean Y1(double[] dArr) {
        Arrays.sort(dArr);
        double[] dArr2 = this.f34766b;
        int i10 = this.f34767c;
        boolean z10 = false;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return z10;
            }
            if (Arrays.binarySearch(dArr, dArr2[i11]) < 0) {
                z10 = true;
                t0(i11, 1);
            }
            i10 = i11;
        }
    }

    @Override
    public boolean a(double d10) {
        for (int i10 = 0; i10 < this.f34767c; i10++) {
            if (d10 == this.f34766b[i10]) {
                t0(i10, 1);
                return true;
            }
        }
        return false;
    }

    @Override
    public InterfaceC3870c a6(InterfaceC13470z interfaceC13470z) {
        C4177c c4177c = new C4177c();
        for (int i10 = 0; i10 < this.f34767c; i10++) {
            if (!interfaceC13470z.a(this.f34766b[i10])) {
                c4177c.add(this.f34766b[i10]);
            }
        }
        return c4177c;
    }

    @Override
    public void ad(int i10, double[] dArr) {
        q7(i10, dArr, 0, dArr.length);
    }

    @Override
    public boolean add(double d10) {
        c(this.f34767c + 1);
        double[] dArr = this.f34766b;
        int i10 = this.f34767c;
        this.f34767c = i10 + 1;
        dArr[i10] = d10;
        return true;
    }

    @Override
    public boolean addAll(Collection<? extends Double> collection) {
        Iterator<? extends Double> it = collection.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (add(it.next().doubleValue())) {
                z10 = true;
            }
        }
        return z10;
    }

    public void b(int i10) {
        this.f34766b = new double[i10];
        this.f34767c = 0;
    }

    public void c(int i10) {
        double[] dArr = this.f34766b;
        if (i10 > dArr.length) {
            double[] dArr2 = new double[Math.max(dArr.length << 1, i10)];
            double[] dArr3 = this.f34766b;
            System.arraycopy(dArr3, 0, dArr2, 0, dArr3.length);
            this.f34766b = dArr2;
        }
    }

    @Override
    public void clear() {
        b(10);
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        for (Object obj : collection) {
            if (!(obj instanceof Double) || !Y0(((Double) obj).doubleValue())) {
                return false;
            }
        }
        return true;
    }

    public double d(int i10) {
        return this.f34766b[i10];
    }

    public void e() {
        this.f34767c = 0;
        Arrays.fill(this.f34766b, this.f34768d);
    }

    @Override
    public int e4(double d10) {
        return e6(this.f34767c, d10);
    }

    @Override
    public int e6(int i10, double d10) {
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return -1;
            }
            if (this.f34766b[i11] == d10) {
                return i11;
            }
            i10 = i11;
        }
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C4177c)) {
            return false;
        }
        C4177c c4177c = (C4177c) obj;
        if (c4177c.size() != size()) {
            return false;
        }
        int i10 = this.f34767c;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return true;
            }
            if (this.f34766b[i11] != c4177c.f34766b[i11]) {
                return false;
            }
            i10 = i11;
        }
    }

    public void f() {
        this.f34767c = 0;
    }

    public void g(int i10, double d10) {
        this.f34766b[i10] = d10;
    }

    @Override
    public double g5(int i10, double d10) {
        if (i10 >= this.f34767c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        double[] dArr = this.f34766b;
        double d11 = dArr[i10];
        dArr[i10] = d10;
        return d11;
    }

    @Override
    public int g6(double d10) {
        return x6(0, d10);
    }

    @Override
    public double get(int i10) {
        if (i10 < this.f34767c) {
            return this.f34766b[i10];
        }
        throw new ArrayIndexOutOfBoundsException(i10);
    }

    @Override
    public double[] ha(double[] dArr, int i10, int i11, int i12) {
        if (i12 == 0) {
            return dArr;
        }
        if (i10 < 0 || i10 >= this.f34767c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        System.arraycopy(this.f34766b, i10, dArr, i11, i12);
        return dArr;
    }

    @Override
    public int hashCode() {
        int i10 = this.f34767c;
        int i11 = 0;
        while (true) {
            int i12 = i10 - 1;
            if (i10 <= 0) {
                return i11;
            }
            i11 += Vd.b.b(this.f34766b[i12]);
            i10 = i12;
        }
    }

    @Override
    public double i() {
        return this.f34768d;
    }

    @Override
    public boolean i1(InterfaceC13470z interfaceC13470z) {
        for (int i10 = 0; i10 < this.f34767c; i10++) {
            if (!interfaceC13470z.a(this.f34766b[i10])) {
                return false;
            }
        }
        return true;
    }

    @Override
    public double[] i3(double[] dArr, int i10, int i11) {
        if (i11 == 0) {
            return dArr;
        }
        if (i10 < 0 || i10 >= this.f34767c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        System.arraycopy(this.f34766b, i10, dArr, 0, i11);
        return dArr;
    }

    @Override
    public boolean i7(InterfaceC13470z interfaceC13470z) {
        int i10 = this.f34767c;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return true;
            }
            if (!interfaceC13470z.a(this.f34766b[i11])) {
                return false;
            }
            i10 = i11;
        }
    }

    @Override
    public void i8(int i10, double d10) {
        int i11 = this.f34767c;
        if (i10 == i11) {
            add(d10);
            return;
        }
        c(i11 + 1);
        double[] dArr = this.f34766b;
        System.arraycopy(dArr, i10, dArr, i10 + 1, this.f34767c - i10);
        this.f34766b[i10] = d10;
        this.f34767c++;
    }

    @Override
    public boolean isEmpty() {
        return this.f34767c == 0;
    }

    @Override
    public InterfaceC3466y iterator() {
        return new b(0);
    }

    public void j() {
        if (this.f34766b.length > size()) {
            int size = size();
            double[] dArr = new double[size];
            i3(dArr, 0, size);
            this.f34766b = dArr;
        }
    }

    @Override
    public boolean m2(double[] dArr) {
        boolean z10 = false;
        for (double d10 : dArr) {
            if (add(d10)) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public double max() {
        if (size() == 0) {
            throw new IllegalStateException("cannot find maximum of an empty list");
        }
        double d10 = Double.NEGATIVE_INFINITY;
        for (int i10 = 0; i10 < this.f34767c; i10++) {
            double d11 = this.f34766b[i10];
            if (d11 > d10) {
                d10 = d11;
            }
        }
        return d10;
    }

    @Override
    public double min() {
        if (size() == 0) {
            throw new IllegalStateException("cannot find minimum of an empty list");
        }
        double d10 = Double.POSITIVE_INFINITY;
        for (int i10 = 0; i10 < this.f34767c; i10++) {
            double d11 = this.f34766b[i10];
            if (d11 < d10) {
                d10 = d11;
            }
        }
        return d10;
    }

    @Override
    public void n3(double[] dArr) {
        q3(dArr, 0, dArr.length);
    }

    @Override
    public double o() {
        double d10 = 0.0d;
        for (int i10 = 0; i10 < this.f34767c; i10++) {
            d10 += this.f34766b[i10];
        }
        return d10;
    }

    @Override
    public void p(Ud.c cVar) {
        int i10 = this.f34767c;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return;
            }
            double[] dArr = this.f34766b;
            dArr[i11] = cVar.a(dArr[i11]);
            i10 = i11;
        }
    }

    @Override
    public void q3(double[] dArr, int i10, int i11) {
        c(this.f34767c + i11);
        System.arraycopy(dArr, i10, this.f34766b, this.f34767c, i11);
        this.f34767c += i11;
    }

    @Override
    public void q7(int i10, double[] dArr, int i11, int i12) {
        if (i10 < 0 || i10 + i12 > this.f34767c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        System.arraycopy(dArr, i11, this.f34766b, i10, i12);
    }

    @Override
    public InterfaceC3870c q8(InterfaceC13470z interfaceC13470z) {
        C4177c c4177c = new C4177c();
        for (int i10 = 0; i10 < this.f34767c; i10++) {
            if (interfaceC13470z.a(this.f34766b[i10])) {
                c4177c.add(this.f34766b[i10]);
            }
        }
        return c4177c;
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f34767c = objectInput.readInt();
        this.f34768d = objectInput.readDouble();
        int readInt = objectInput.readInt();
        this.f34766b = new double[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            this.f34766b[i10] = objectInput.readDouble();
        }
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        boolean z10 = false;
        for (Object obj : collection) {
            if ((obj instanceof Double) && a(((Double) obj).doubleValue())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        InterfaceC3466y it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (!collection.contains(Double.valueOf(it.next()))) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean s1(double[] dArr) {
        int length = dArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (!Y0(dArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public int size() {
        return this.f34767c;
    }

    @Override
    public void sort() {
        Arrays.sort(this.f34766b, 0, this.f34767c);
    }

    @Override
    public InterfaceC3870c subList(int i10, int i11) {
        if (i11 < i10) {
            throw new IllegalArgumentException("end index " + i11 + " greater than begin index " + i10);
        }
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("begin index can not be < 0");
        }
        if (i11 > this.f34766b.length) {
            throw new IndexOutOfBoundsException("end index < " + this.f34766b.length);
        }
        C4177c c4177c = new C4177c(i11 - i10);
        while (i10 < i11) {
            c4177c.add(this.f34766b[i10]);
            i10++;
        }
        return c4177c;
    }

    @Override
    public void t0(int i10, int i11) {
        int i12;
        if (i11 == 0) {
            return;
        }
        if (i10 < 0 || i10 >= (i12 = this.f34767c)) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        if (i10 == 0) {
            double[] dArr = this.f34766b;
            System.arraycopy(dArr, i11, dArr, 0, i12 - i11);
        } else if (i12 - i11 != i10) {
            double[] dArr2 = this.f34766b;
            int i13 = i10 + i11;
            System.arraycopy(dArr2, i13, dArr2, i10, i12 - i13);
        }
        this.f34767c -= i11;
    }

    @Override
    public double[] toArray() {
        return z0(0, this.f34767c);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        int i10 = this.f34767c - 1;
        for (int i11 = 0; i11 < i10; i11++) {
            sb2.append(this.f34766b[i11]);
            sb2.append(", ");
        }
        if (size() > 0) {
            sb2.append(this.f34766b[this.f34767c - 1]);
        }
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public void u0() {
        y0(0, this.f34767c);
    }

    @Override
    public int uc(double d10, int i10, int i11) {
        if (i10 < 0) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        if (i11 > this.f34767c) {
            throw new ArrayIndexOutOfBoundsException(i11);
        }
        int i12 = i11 - 1;
        while (i10 <= i12) {
            int i13 = (i10 + i12) >>> 1;
            double d11 = this.f34766b[i13];
            if (d11 < d10) {
                i10 = i13 + 1;
            } else {
                if (d11 <= d10) {
                    return i13;
                }
                i12 = i13 - 1;
            }
        }
        return -(i10 + 1);
    }

    @Override
    public void w0(int i10, int i11) {
        Arrays.sort(this.f34766b, i10, i11);
    }

    @Override
    public boolean w1(double[] dArr) {
        int length = dArr.length;
        boolean z10 = false;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return z10;
            }
            if (a(dArr[i10])) {
                z10 = true;
            }
            length = i10;
        }
    }

    @Override
    public int w3(double d10) {
        return uc(d10, 0, this.f34767c);
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeInt(this.f34767c);
        objectOutput.writeDouble(this.f34768d);
        int length = this.f34766b.length;
        objectOutput.writeInt(length);
        for (int i10 = 0; i10 < length; i10++) {
            objectOutput.writeDouble(this.f34766b[i10]);
        }
    }

    @Override
    public boolean x2(Sd.e eVar) {
        InterfaceC3466y it = eVar.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (add(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public int x6(int i10, double d10) {
        while (i10 < this.f34767c) {
            if (this.f34766b[i10] == d10) {
                return i10;
            }
            i10++;
        }
        return -1;
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
    public double[] z0(int i10, int i11) {
        double[] dArr = new double[i11];
        i3(dArr, i10, i11);
        return dArr;
    }

    public C4177c(int i10) {
        this(i10, 0.0d);
    }

    @Override
    public double[] toArray(double[] dArr) {
        int length = dArr.length;
        int length2 = dArr.length;
        int i10 = this.f34767c;
        if (length2 > i10) {
            dArr[i10] = this.f34768d;
            length = i10;
        }
        i3(dArr, 0, length);
        return dArr;
    }

    public C4177c(int i10, double d10) {
        this.f34766b = new double[i10];
        this.f34767c = 0;
        this.f34768d = d10;
    }

    public C4177c(Sd.e eVar) {
        this(eVar.size());
        x2(eVar);
    }

    public C4177c(double[] dArr) {
        this(dArr.length);
        n3(dArr);
    }

    public C4177c(double[] dArr, double d10, boolean z10) {
        if (!z10) {
            throw new IllegalStateException("Wrong call");
        }
        if (dArr != null) {
            this.f34766b = dArr;
            this.f34767c = dArr.length;
            this.f34768d = d10;
            return;
        }
        throw new IllegalArgumentException("values can not be null");
    }
}
