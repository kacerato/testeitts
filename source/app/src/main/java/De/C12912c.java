package de;

import Zd.InterfaceC3466y;
import be.InterfaceC3870c;
import he.InterfaceC13470z;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Random;
import org.apache.commons.math3.geometry.VectorFormat;

public class C12912c implements InterfaceC3870c, Externalizable {

    public double f84567b;

    public int f84568c;

    public C1578c f84569d = null;

    public C1578c f84570e = null;

    public class a implements InterfaceC3466y {

        public C1578c f84571b;

        public C1578c f84572c;

        public a() {
            this.f84571b = C12912c.this.f84569d;
        }

        @Override
        public boolean hasNext() {
            return C12912c.f(this.f84571b);
        }

        @Override
        public double next() {
            if (C12912c.j(this.f84571b)) {
                throw new NoSuchElementException();
            }
            double c10 = this.f84571b.c();
            C1578c c1578c = this.f84571b;
            this.f84572c = c1578c;
            this.f84571b = c1578c.a();
            return c10;
        }

        @Override
        public void remove() {
            C1578c c1578c = this.f84572c;
            if (c1578c == null) {
                throw new IllegalStateException();
            }
            C12912c.this.k(c1578c);
            this.f84572c = null;
        }
    }

    public class b implements InterfaceC13470z {

        public boolean f84574a = false;

        public b() {
        }

        @Override
        public boolean a(double d10) {
            if (C12912c.this.a(d10)) {
                this.f84574a = true;
            }
            return true;
        }

        public boolean b() {
            return this.f84574a;
        }
    }

    public static class C1578c {

        public double f84576a;

        public C1578c f84577b;

        public C1578c f84578c;

        public C1578c(double d10) {
            this.f84576a = d10;
        }

        public C1578c a() {
            return this.f84578c;
        }

        public C1578c b() {
            return this.f84577b;
        }

        public double c() {
            return this.f84576a;
        }

        public void d(C1578c c1578c) {
            this.f84578c = c1578c;
        }

        public void e(C1578c c1578c) {
            this.f84577b = c1578c;
        }

        public void f(double d10) {
            this.f84576a = d10;
        }
    }

    public C12912c() {
    }

    public static C1578c c(C1578c c1578c, int i10, int i11) {
        return d(c1578c, i10, i11, true);
    }

    public static C1578c d(C1578c c1578c, int i10, int i11, boolean z10) {
        while (f(c1578c)) {
            if (i10 == i11) {
                return c1578c;
            }
            i10 += z10 ? 1 : -1;
            c1578c = z10 ? c1578c.a() : c1578c.b();
        }
        return null;
    }

    public static boolean f(Object obj) {
        return obj != null;
    }

    public static C12912c h(double[] dArr, int i10, int i11) {
        C12912c c12912c = new C12912c();
        for (int i12 = 0; i12 < i11; i12++) {
            c12912c.add(dArr[i10 + i12]);
        }
        return c12912c;
    }

    public static boolean j(Object obj) {
        return obj == null;
    }

    @Override
    public double B0(int i10) {
        C1578c e10 = e(i10);
        if (!j(e10)) {
            double c10 = e10.c();
            k(e10);
            return c10;
        }
        throw new ArrayIndexOutOfBoundsException("no elemenet at " + i10);
    }

    @Override
    public void Bc(int i10, double[] dArr, int i11, int i12) {
        g(i10, h(dArr, i11, i12));
    }

    @Override
    public boolean C1(Sd.e eVar) {
        InterfaceC3466y it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (eVar.Y0(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public void F7(int i10, int i11, double d10) {
        int i12;
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("begin index can not be < 0");
        }
        C1578c e10 = e(i10);
        if (i11 <= this.f84568c) {
            while (i10 < i11) {
                e10.f(d10);
                e10 = e10.a();
                i10++;
            }
            return;
        }
        while (true) {
            i12 = this.f84568c;
            if (i10 >= i12) {
                break;
            }
            e10.f(d10);
            e10 = e10.a();
            i10++;
        }
        while (i12 < i11) {
            add(d10);
            i12++;
        }
    }

    @Override
    public boolean G1(Sd.e eVar) {
        if (isEmpty()) {
            return false;
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
        return g5(i10, d10);
    }

    @Override
    public void Ie(int i10, double[] dArr) {
        g(i10, h(dArr, 0, dArr.length));
    }

    @Override
    public void J0(Random random) {
        for (int i10 = 0; i10 < this.f84568c; i10++) {
            C1578c e10 = e(random.nextInt(size()));
            k(e10);
            add(e10.c());
        }
    }

    @Override
    public boolean J1(Sd.e eVar) {
        InterfaceC3466y it = iterator();
        boolean z10 = false;
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
        F7(0, this.f84568c, d10);
    }

    @Override
    public boolean Y0(double d10) {
        if (isEmpty()) {
            return false;
        }
        for (C1578c c1578c = this.f84569d; f(c1578c); c1578c = c1578c.a()) {
            if (c1578c.c() == d10) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean Y1(double[] dArr) {
        Arrays.sort(dArr);
        InterfaceC3466y it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (Arrays.binarySearch(dArr, it.next()) < 0) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean a(double d10) {
        boolean z10 = false;
        for (C1578c c1578c = this.f84569d; f(c1578c); c1578c = c1578c.a()) {
            if (c1578c.c() == d10) {
                k(c1578c);
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public InterfaceC3870c a6(InterfaceC13470z interfaceC13470z) {
        C12912c c12912c = new C12912c();
        for (C1578c c1578c = this.f84569d; f(c1578c); c1578c = c1578c.a()) {
            if (!interfaceC13470z.a(c1578c.c())) {
                c12912c.add(c1578c.c());
            }
        }
        return c12912c;
    }

    @Override
    public void ad(int i10, double[] dArr) {
        q7(i10, dArr, 0, dArr.length);
    }

    @Override
    public boolean add(double d10) {
        C1578c c1578c = new C1578c(d10);
        if (j(this.f84569d)) {
            this.f84569d = c1578c;
            this.f84570e = c1578c;
        } else {
            c1578c.e(this.f84570e);
            this.f84570e.d(c1578c);
            this.f84570e = c1578c;
        }
        this.f84568c++;
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

    @Override
    public void clear() {
        this.f84568c = 0;
        this.f84569d = null;
        this.f84570e = null;
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        if (isEmpty()) {
            return false;
        }
        for (Object obj : collection) {
            if (!(obj instanceof Double) || !Y0(((Double) obj).doubleValue())) {
                return false;
            }
        }
        return true;
    }

    public C1578c e(int i10) {
        if (i10 >= size()) {
            return null;
        }
        return i10 <= (size() >>> 1) ? d(this.f84569d, 0, i10, true) : d(this.f84570e, size() - 1, i10, false);
    }

    @Override
    public int e4(double d10) {
        return e6(0, d10);
    }

    @Override
    public int e6(int i10, double d10) {
        int i11 = -1;
        if (isEmpty()) {
            return -1;
        }
        for (C1578c e10 = e(i10); f(e10.a()); e10 = e10.a()) {
            if (e10.c() == d10) {
                i11 = i10;
            }
            i10++;
        }
        return i11;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C12912c c12912c = (C12912c) obj;
        if (this.f84567b != c12912c.f84567b || this.f84568c != c12912c.f84568c) {
            return false;
        }
        InterfaceC3466y it = iterator();
        InterfaceC3466y it2 = c12912c.iterator();
        while (it.hasNext()) {
            if (!it2.hasNext() || it.next() != it2.next()) {
                return false;
            }
        }
        return true;
    }

    public void g(int i10, C12912c c12912c) {
        C1578c e10 = e(i10);
        this.f84568c += c12912c.f84568c;
        C1578c c1578c = this.f84569d;
        if (e10 == c1578c) {
            c12912c.f84570e.d(c1578c);
            this.f84569d.e(c12912c.f84570e);
            this.f84569d = c12912c.f84569d;
        } else {
            if (!j(e10)) {
                C1578c b10 = e10.b();
                e10.b().d(c12912c.f84569d);
                c12912c.f84570e.d(e10);
                e10.e(c12912c.f84570e);
                c12912c.f84569d.e(b10);
                return;
            }
            if (this.f84568c == 0) {
                this.f84569d = c12912c.f84569d;
                this.f84570e = c12912c.f84570e;
            } else {
                this.f84570e.d(c12912c.f84569d);
                c12912c.f84569d.e(this.f84570e);
                this.f84570e = c12912c.f84570e;
            }
        }
    }

    @Override
    public double g5(int i10, double d10) {
        if (i10 > this.f84568c) {
            throw new IndexOutOfBoundsException("index " + i10 + " exceeds size " + this.f84568c);
        }
        C1578c e10 = e(i10);
        if (!j(e10)) {
            double c10 = e10.c();
            e10.f(d10);
            return c10;
        }
        throw new IndexOutOfBoundsException("at offset " + i10);
    }

    @Override
    public int g6(double d10) {
        return x6(0, d10);
    }

    @Override
    public double get(int i10) {
        if (i10 <= this.f84568c) {
            C1578c e10 = e(i10);
            return j(e10) ? this.f84567b : e10.c();
        }
        throw new IndexOutOfBoundsException("index " + i10 + " exceeds size " + this.f84568c);
    }

    @Override
    public double[] ha(double[] dArr, int i10, int i11, int i12) {
        if (i12 == 0) {
            return dArr;
        }
        if (i10 < 0 || i10 >= size()) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        C1578c e10 = e(i10);
        for (int i13 = 0; i13 < i12; i13++) {
            dArr[i11 + i13] = e10.c();
            e10 = e10.a();
        }
        return dArr;
    }

    @Override
    public int hashCode() {
        int b10 = (Vd.b.b(this.f84567b) * 31) + this.f84568c;
        InterfaceC3466y it = iterator();
        while (it.hasNext()) {
            b10 = (b10 * 31) + Vd.b.b(it.next());
        }
        return b10;
    }

    @Override
    public double i() {
        return this.f84567b;
    }

    @Override
    public boolean i1(InterfaceC13470z interfaceC13470z) {
        for (C1578c c1578c = this.f84569d; f(c1578c); c1578c = c1578c.a()) {
            if (!interfaceC13470z.a(c1578c.c())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public double[] i3(double[] dArr, int i10, int i11) {
        return ha(dArr, i10, 0, i11);
    }

    @Override
    public boolean i7(InterfaceC13470z interfaceC13470z) {
        for (C1578c c1578c = this.f84570e; f(c1578c); c1578c = c1578c.b()) {
            if (!interfaceC13470z.a(c1578c.c())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public void i8(int i10, double d10) {
        C12912c c12912c = new C12912c();
        c12912c.add(d10);
        g(i10, c12912c);
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override
    public InterfaceC3466y iterator() {
        return new a();
    }

    public final void k(C1578c c1578c) {
        if (j(c1578c)) {
            return;
        }
        this.f84568c--;
        C1578c b10 = c1578c.b();
        C1578c a10 = c1578c.a();
        if (f(b10)) {
            b10.d(a10);
        } else {
            this.f84569d = a10;
        }
        if (f(a10)) {
            a10.e(b10);
        } else {
            this.f84570e = b10;
        }
        c1578c.d(null);
        c1578c.e(null);
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
        if (isEmpty()) {
            throw new IllegalStateException();
        }
        double d10 = Double.NEGATIVE_INFINITY;
        for (C1578c c1578c = this.f84569d; f(c1578c); c1578c = c1578c.a()) {
            if (d10 < c1578c.c()) {
                d10 = c1578c.c();
            }
        }
        return d10;
    }

    @Override
    public double min() {
        if (isEmpty()) {
            throw new IllegalStateException();
        }
        double d10 = Double.POSITIVE_INFINITY;
        for (C1578c c1578c = this.f84569d; f(c1578c); c1578c = c1578c.a()) {
            if (d10 > c1578c.c()) {
                d10 = c1578c.c();
            }
        }
        return d10;
    }

    @Override
    public void n3(double[] dArr) {
        for (double d10 : dArr) {
            add(d10);
        }
    }

    @Override
    public double o() {
        double d10 = 0.0d;
        for (C1578c c1578c = this.f84569d; f(c1578c); c1578c = c1578c.a()) {
            d10 += c1578c.c();
        }
        return d10;
    }

    @Override
    public void p(Ud.c cVar) {
        for (C1578c c1578c = this.f84569d; f(c1578c); c1578c = c1578c.a()) {
            c1578c.f(cVar.a(c1578c.c()));
        }
    }

    @Override
    public void q3(double[] dArr, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            add(dArr[i10 + i12]);
        }
    }

    @Override
    public void q7(int i10, double[] dArr, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13++) {
            g5(i10 + i13, dArr[i11 + i13]);
        }
    }

    @Override
    public InterfaceC3870c q8(InterfaceC13470z interfaceC13470z) {
        C12912c c12912c = new C12912c();
        for (C1578c c1578c = this.f84569d; f(c1578c); c1578c = c1578c.a()) {
            if (interfaceC13470z.a(c1578c.c())) {
                c12912c.add(c1578c.c());
            }
        }
        return c12912c;
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f84567b = objectInput.readDouble();
        int readInt = objectInput.readInt();
        for (int i10 = 0; i10 < readInt; i10++) {
            add(objectInput.readDouble());
        }
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        InterfaceC3466y it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (collection.contains(Double.valueOf(it.next()))) {
                it.remove();
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
        if (isEmpty()) {
            return false;
        }
        for (double d10 : dArr) {
            if (!Y0(d10)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public int size() {
        return this.f84568c;
    }

    @Override
    public void sort() {
        w0(0, this.f84568c);
    }

    @Override
    public InterfaceC3870c subList(int i10, int i11) {
        if (i11 < i10) {
            throw new IllegalArgumentException("begin index " + i10 + " greater than end index " + i11);
        }
        int i12 = this.f84568c;
        if (i12 < i10) {
            throw new IllegalArgumentException("begin index " + i10 + " greater than last index " + this.f84568c);
        }
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("begin index can not be < 0");
        }
        if (i11 > i12) {
            throw new IndexOutOfBoundsException("end index < " + this.f84568c);
        }
        C12912c c12912c = new C12912c();
        C1578c e10 = e(i10);
        while (i10 < i11) {
            c12912c.add(e10.c());
            e10 = e10.a();
            i10++;
        }
        return c12912c;
    }

    @Override
    public void t0(int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            B0(i10);
        }
    }

    @Override
    public double[] toArray() {
        int i10 = this.f84568c;
        return i3(new double[i10], 0, i10);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        InterfaceC3466y it = iterator();
        while (it.hasNext()) {
            sb2.append(it.next());
            if (it.hasNext()) {
                sb2.append(", ");
            }
        }
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public void u0() {
        C1578c c1578c = this.f84569d;
        C1578c c1578c2 = this.f84570e;
        C1578c c1578c3 = c1578c;
        while (f(c1578c3)) {
            C1578c a10 = c1578c3.a();
            C1578c b10 = c1578c3.b();
            C1578c a11 = c1578c3.a();
            c1578c3.d(b10);
            c1578c3.e(a10);
            c1578c3 = a11;
        }
        this.f84569d = c1578c2;
        this.f84570e = c1578c;
    }

    @Override
    public int uc(double d10, int i10, int i11) {
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("begin index can not be < 0");
        }
        if (i11 > this.f84568c) {
            throw new IndexOutOfBoundsException("end index > size: " + i11 + " > " + this.f84568c);
        }
        if (i11 >= i10) {
            C1578c e10 = e(i10);
            while (i10 < i11) {
                int i12 = (i10 + i11) >>> 1;
                C1578c c10 = c(e10, i10, i12);
                if (c10.c() == d10) {
                    return i12;
                }
                if (c10.c() < d10) {
                    i10 = i12 + 1;
                    e10 = c10.f84578c;
                } else {
                    i11 = i12 - 1;
                }
            }
        }
        return -(i10 + 1);
    }

    @Override
    public void w0(int i10, int i11) {
        double[] array = subList(i10, i11).toArray();
        Arrays.sort(array);
        ad(i10, array);
    }

    @Override
    public boolean w1(double[] dArr) {
        Arrays.sort(dArr);
        InterfaceC3466y it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (Arrays.binarySearch(dArr, it.next()) >= 0) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public int w3(double d10) {
        return uc(d10, 0, size());
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeDouble(this.f84567b);
        objectOutput.writeInt(this.f84568c);
        InterfaceC3466y it = iterator();
        while (it.hasNext()) {
            objectOutput.writeDouble(it.next());
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
        for (C1578c e10 = e(i10); f(e10.a()); e10 = e10.a()) {
            if (e10.c() == d10) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    @Override
    public void y0(int i10, int i11) {
        if (i10 > i11) {
            throw new IllegalArgumentException("from > to : " + i10 + ">" + i11);
        }
        C1578c e10 = e(i10);
        C1578c e11 = e(i11);
        C1578c b10 = e10.b();
        C1578c c1578c = null;
        C1578c c1578c2 = e10;
        while (c1578c2 != e11) {
            C1578c a10 = c1578c2.a();
            C1578c b11 = c1578c2.b();
            C1578c a11 = c1578c2.a();
            c1578c2.d(b11);
            c1578c2.e(a10);
            c1578c = c1578c2;
            c1578c2 = a11;
        }
        if (f(c1578c)) {
            b10.d(c1578c);
            e11.e(b10);
        }
        e10.d(e11);
        e11.e(e10);
    }

    @Override
    public double[] z0(int i10, int i11) {
        return ha(new double[i11], i10, 0, i11);
    }

    @Override
    public double[] toArray(double[] dArr) {
        return i3(dArr, 0, this.f84568c);
    }

    public C12912c(double d10) {
        this.f84567b = d10;
    }

    public C12912c(InterfaceC3870c interfaceC3870c) {
        this.f84567b = interfaceC3870c.i();
        InterfaceC3466y it = interfaceC3870c.iterator();
        while (it.hasNext()) {
            add(it.next());
        }
    }
}
