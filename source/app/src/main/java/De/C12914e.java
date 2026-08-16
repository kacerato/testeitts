package de;

import Zd.Q;
import be.InterfaceC3872e;
import he.S;
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

public class C12914e implements InterfaceC3872e, Externalizable {

    public int f84591b;

    public int f84592c;

    public c f84593d = null;

    public c f84594e = null;

    public class a implements Q {

        public c f84595b;

        public c f84596c;

        public a() {
            this.f84595b = C12914e.this.f84593d;
        }

        @Override
        public boolean hasNext() {
            return C12914e.e(this.f84595b);
        }

        @Override
        public int next() {
            if (C12914e.j(this.f84595b)) {
                throw new NoSuchElementException();
            }
            int c10 = this.f84595b.c();
            c cVar = this.f84595b;
            this.f84596c = cVar;
            this.f84595b = cVar.a();
            return c10;
        }

        @Override
        public void remove() {
            c cVar = this.f84596c;
            if (cVar == null) {
                throw new IllegalStateException();
            }
            C12914e.this.k(cVar);
            this.f84596c = null;
        }
    }

    public class b implements S {

        public boolean f84598a = false;

        public b() {
        }

        @Override
        public boolean a(int i10) {
            if (C12914e.this.remove(i10)) {
                this.f84598a = true;
            }
            return true;
        }

        public boolean b() {
            return this.f84598a;
        }
    }

    public static class c {

        public int f84600a;

        public c f84601b;

        public c f84602c;

        public c(int i10) {
            this.f84600a = i10;
        }

        public c a() {
            return this.f84602c;
        }

        public c b() {
            return this.f84601b;
        }

        public int c() {
            return this.f84600a;
        }

        public void d(c cVar) {
            this.f84602c = cVar;
        }

        public void e(c cVar) {
            this.f84601b = cVar;
        }

        public void f(int i10) {
            this.f84600a = i10;
        }
    }

    public C12914e() {
    }

    public static c b(c cVar, int i10, int i11) {
        return c(cVar, i10, i11, true);
    }

    public static c c(c cVar, int i10, int i11, boolean z10) {
        while (e(cVar)) {
            if (i10 == i11) {
                return cVar;
            }
            i10 += z10 ? 1 : -1;
            cVar = z10 ? cVar.a() : cVar.b();
        }
        return null;
    }

    public static boolean e(Object obj) {
        return obj != null;
    }

    public static C12914e h(int[] iArr, int i10, int i11) {
        C12914e c12914e = new C12914e();
        for (int i12 = 0; i12 < i11; i12++) {
            c12914e.add(iArr[i10 + i12]);
        }
        return c12914e;
    }

    public static boolean j(Object obj) {
        return obj == null;
    }

    @Override
    public boolean A1(int[] iArr) {
        Arrays.sort(iArr);
        Q it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (Arrays.binarySearch(iArr, it.next()) >= 0) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public int B0(int i10) {
        c d10 = d(i10);
        if (!j(d10)) {
            int c10 = d10.c();
            k(d10);
            return c10;
        }
        throw new ArrayIndexOutOfBoundsException("no elemenet at " + i10);
    }

    @Override
    public int B6(int i10, int i11) {
        for (c d10 = d(i10); e(d10.a()); d10 = d10.a()) {
            if (d10.c() == i11) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    @Override
    public int F3(int i10) {
        return y7(i10, 0, size());
    }

    @Override
    public void I4(int i10, int[] iArr, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13++) {
            n5(i10 + i13, iArr[i11 + i13]);
        }
    }

    @Override
    public void J0(Random random) {
        for (int i10 = 0; i10 < this.f84592c; i10++) {
            c d10 = d(random.nextInt(size()));
            k(d10);
            add(d10.c());
        }
    }

    @Override
    public boolean K1(int[] iArr) {
        if (isEmpty()) {
            return false;
        }
        for (int i10 : iArr) {
            if (!contains(i10)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public InterfaceC3872e Kb(S s10) {
        C12914e c12914e = new C12914e();
        for (c cVar = this.f84593d; e(cVar); cVar = cVar.a()) {
            if (!s10.a(cVar.c())) {
                c12914e.add(cVar.c());
            }
        }
        return c12914e;
    }

    @Override
    public boolean M1(int[] iArr) {
        Arrays.sort(iArr);
        Q it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (Arrays.binarySearch(iArr, it.next()) < 0) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public void M7(int i10, int i11) {
        C12914e c12914e = new C12914e();
        c12914e.add(i11);
        g(i10, c12914e);
    }

    @Override
    public int[] P0(int[] iArr) {
        return w9(iArr, 0, this.f84592c);
    }

    @Override
    public int Q3(int i10) {
        return c6(0, i10);
    }

    @Override
    public int R8(int i10, int i11) {
        return n5(i10, i11);
    }

    @Override
    public boolean U0(S s10) {
        for (c cVar = this.f84593d; e(cVar); cVar = cVar.a()) {
            if (!s10.a(cVar.c())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public void Ue(int i10, int[] iArr) {
        g(i10, h(iArr, 0, iArr.length));
    }

    @Override
    public boolean Wc(S s10) {
        for (c cVar = this.f84594e; e(cVar); cVar = cVar.b()) {
            if (!s10.a(cVar.c())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public int[] Xa(int[] iArr, int i10, int i11, int i12) {
        if (i12 == 0) {
            return iArr;
        }
        if (i10 < 0 || i10 >= size()) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        c d10 = d(i10);
        for (int i13 = 0; i13 < i12; i13++) {
            iArr[i11 + i13] = d10.c();
            d10 = d10.a();
        }
        return iArr;
    }

    @Override
    public boolean add(int i10) {
        c cVar = new c(i10);
        if (j(this.f84593d)) {
            this.f84593d = cVar;
            this.f84594e = cVar;
        } else {
            cVar.e(this.f84594e);
            this.f84594e.d(cVar);
            this.f84594e = cVar;
        }
        this.f84592c++;
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

    @Override
    public int c6(int i10, int i11) {
        int i12 = -1;
        if (isEmpty()) {
            return -1;
        }
        for (c d10 = d(i10); e(d10.a()); d10 = d10.a()) {
            if (d10.c() == i11) {
                i12 = i10;
            }
            i10++;
        }
        return i12;
    }

    @Override
    public void clear() {
        this.f84592c = 0;
        this.f84593d = null;
        this.f84594e = null;
    }

    @Override
    public boolean contains(int i10) {
        if (isEmpty()) {
            return false;
        }
        for (c cVar = this.f84593d; e(cVar); cVar = cVar.a()) {
            if (cVar.c() == i10) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        if (isEmpty()) {
            return false;
        }
        for (Object obj : collection) {
            if (!(obj instanceof Integer) || !contains(((Integer) obj).intValue())) {
                return false;
            }
        }
        return true;
    }

    public c d(int i10) {
        if (i10 >= size()) {
            return null;
        }
        return i10 <= (size() >>> 1) ? c(this.f84593d, 0, i10, true) : c(this.f84594e, size() - 1, i10, false);
    }

    @Override
    public boolean d2(Sd.g gVar) {
        Q it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (gVar.contains(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public void d3(int i10) {
        s6(0, this.f84592c, i10);
    }

    @Override
    public void dd(int i10, int[] iArr) {
        I4(i10, iArr, 0, iArr.length);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C12914e c12914e = (C12914e) obj;
        if (this.f84591b != c12914e.f84591b || this.f84592c != c12914e.f84592c) {
            return false;
        }
        Q it = iterator();
        Q it2 = c12914e.iterator();
        while (it.hasNext()) {
            if (!it2.hasNext() || it.next() != it2.next()) {
                return false;
            }
        }
        return true;
    }

    @Override
    public void f(Ud.e eVar) {
        for (c cVar = this.f84593d; e(cVar); cVar = cVar.a()) {
            cVar.f(eVar.a(cVar.c()));
        }
    }

    @Override
    public void f9(int[] iArr, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            add(iArr[i10 + i12]);
        }
    }

    public void g(int i10, C12914e c12914e) {
        c d10 = d(i10);
        this.f84592c += c12914e.f84592c;
        c cVar = this.f84593d;
        if (d10 == cVar) {
            c12914e.f84594e.d(cVar);
            this.f84593d.e(c12914e.f84594e);
            this.f84593d = c12914e.f84593d;
        } else {
            if (!j(d10)) {
                c b10 = d10.b();
                d10.b().d(c12914e.f84593d);
                c12914e.f84594e.d(d10);
                d10.e(c12914e.f84594e);
                c12914e.f84593d.e(b10);
                return;
            }
            if (this.f84592c == 0) {
                this.f84593d = c12914e.f84593d;
                this.f84594e = c12914e.f84594e;
            } else {
                this.f84594e.d(c12914e.f84593d);
                c12914e.f84593d.e(this.f84594e);
                this.f84594e = c12914e.f84594e;
            }
        }
    }

    @Override
    public int get(int i10) {
        if (i10 <= this.f84592c) {
            c d10 = d(i10);
            return j(d10) ? this.f84591b : d10.c();
        }
        throw new IndexOutOfBoundsException("index " + i10 + " exceeds size " + this.f84592c);
    }

    @Override
    public boolean h2(Sd.g gVar) {
        if (isEmpty()) {
            return false;
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
        int d10 = (Vd.b.d(this.f84591b) * 31) + this.f84592c;
        Q it = iterator();
        while (it.hasNext()) {
            d10 = (d10 * 31) + Vd.b.d(it.next());
        }
        return d10;
    }

    @Override
    public int i() {
        return this.f84591b;
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override
    public Q iterator() {
        return new a();
    }

    @Override
    public boolean j2(Sd.g gVar) {
        Q it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (!gVar.contains(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    public final void k(c cVar) {
        if (j(cVar)) {
            return;
        }
        this.f84592c--;
        c b10 = cVar.b();
        c a10 = cVar.a();
        if (e(b10)) {
            b10.d(a10);
        } else {
            this.f84593d = a10;
        }
        if (e(a10)) {
            a10.e(b10);
        } else {
            this.f84594e = b10;
        }
        cVar.d(null);
        cVar.e(null);
    }

    @Override
    public void k3(int[] iArr) {
        for (int i10 : iArr) {
            add(i10);
        }
    }

    @Override
    public int m6(int i10) {
        return B6(0, i10);
    }

    @Override
    public int max() {
        if (isEmpty()) {
            throw new IllegalStateException();
        }
        int i10 = Integer.MIN_VALUE;
        for (c cVar = this.f84593d; e(cVar); cVar = cVar.a()) {
            if (i10 < cVar.c()) {
                i10 = cVar.c();
            }
        }
        return i10;
    }

    @Override
    public int min() {
        if (isEmpty()) {
            throw new IllegalStateException();
        }
        int i10 = Integer.MAX_VALUE;
        for (c cVar = this.f84593d; e(cVar); cVar = cVar.a()) {
            if (i10 > cVar.c()) {
                i10 = cVar.c();
            }
        }
        return i10;
    }

    @Override
    public int n5(int i10, int i11) {
        if (i10 > this.f84592c) {
            throw new IndexOutOfBoundsException("index " + i10 + " exceeds size " + this.f84592c);
        }
        c d10 = d(i10);
        if (!j(d10)) {
            int c10 = d10.c();
            d10.f(i11);
            return c10;
        }
        throw new IndexOutOfBoundsException("at offset " + i10);
    }

    @Override
    public int o() {
        int i10 = 0;
        for (c cVar = this.f84593d; e(cVar); cVar = cVar.a()) {
            i10 += cVar.c();
        }
        return i10;
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f84591b = objectInput.readInt();
        int readInt = objectInput.readInt();
        for (int i10 = 0; i10 < readInt; i10++) {
            add(objectInput.readInt());
        }
    }

    @Override
    public boolean remove(int i10) {
        boolean z10 = false;
        for (c cVar = this.f84593d; e(cVar); cVar = cVar.a()) {
            if (cVar.c() == i10) {
                k(cVar);
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        Q it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (collection.contains(Integer.valueOf(it.next()))) {
                it.remove();
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
        int i13;
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("begin index can not be < 0");
        }
        c d10 = d(i10);
        if (i11 <= this.f84592c) {
            while (i10 < i11) {
                d10.f(i12);
                d10 = d10.a();
                i10++;
            }
            return;
        }
        while (true) {
            i13 = this.f84592c;
            if (i10 >= i13) {
                break;
            }
            d10.f(i12);
            d10 = d10.a();
            i10++;
        }
        while (i13 < i11) {
            add(i12);
            i13++;
        }
    }

    @Override
    public int size() {
        return this.f84592c;
    }

    @Override
    public void sort() {
        w0(0, this.f84592c);
    }

    @Override
    public InterfaceC3872e subList(int i10, int i11) {
        if (i11 < i10) {
            throw new IllegalArgumentException("begin index " + i10 + " greater than end index " + i11);
        }
        int i12 = this.f84592c;
        if (i12 < i10) {
            throw new IllegalArgumentException("begin index " + i10 + " greater than last index " + this.f84592c);
        }
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("begin index can not be < 0");
        }
        if (i11 > i12) {
            throw new IndexOutOfBoundsException("end index < " + this.f84592c);
        }
        C12914e c12914e = new C12914e();
        c d10 = d(i10);
        while (i10 < i11) {
            c12914e.add(d10.c());
            d10 = d10.a();
            i10++;
        }
        return c12914e;
    }

    @Override
    public void t0(int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            B0(i10);
        }
    }

    @Override
    public int[] toArray() {
        int i10 = this.f84592c;
        return w9(new int[i10], 0, i10);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        Q it = iterator();
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
        c cVar = this.f84593d;
        c cVar2 = this.f84594e;
        c cVar3 = cVar;
        while (e(cVar3)) {
            c a10 = cVar3.a();
            c b10 = cVar3.b();
            c a11 = cVar3.a();
            cVar3.d(b10);
            cVar3.e(a10);
            cVar3 = a11;
        }
        this.f84593d = cVar2;
        this.f84594e = cVar;
    }

    @Override
    public void v7(int i10, int[] iArr, int i11, int i12) {
        g(i10, h(iArr, i11, i12));
    }

    @Override
    public void w0(int i10, int i11) {
        int[] array = subList(i10, i11).toArray();
        Arrays.sort(array);
        dd(i10, array);
    }

    @Override
    public int[] w9(int[] iArr, int i10, int i11) {
        return Xa(iArr, i10, 0, i11);
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeInt(this.f84591b);
        objectOutput.writeInt(this.f84592c);
        Q it = iterator();
        while (it.hasNext()) {
            objectOutput.writeInt(it.next());
        }
    }

    @Override
    public void y0(int i10, int i11) {
        if (i10 > i11) {
            throw new IllegalArgumentException("from > to : " + i10 + ">" + i11);
        }
        c d10 = d(i10);
        c d11 = d(i11);
        c b10 = d10.b();
        c cVar = null;
        c cVar2 = d10;
        while (cVar2 != d11) {
            c a10 = cVar2.a();
            c b11 = cVar2.b();
            c a11 = cVar2.a();
            cVar2.d(b11);
            cVar2.e(a10);
            cVar = cVar2;
            cVar2 = a11;
        }
        if (e(cVar)) {
            b10.d(cVar);
            d11.e(b10);
        }
        d10.d(d11);
        d11.e(d10);
    }

    @Override
    public int y7(int i10, int i11, int i12) {
        if (i11 < 0) {
            throw new IndexOutOfBoundsException("begin index can not be < 0");
        }
        if (i12 > this.f84592c) {
            throw new IndexOutOfBoundsException("end index > size: " + i12 + " > " + this.f84592c);
        }
        if (i12 >= i11) {
            c d10 = d(i11);
            while (i11 < i12) {
                int i13 = (i11 + i12) >>> 1;
                c b10 = b(d10, i11, i13);
                if (b10.c() == i10) {
                    return i13;
                }
                if (b10.c() < i10) {
                    i11 = i13 + 1;
                    d10 = b10.f84602c;
                } else {
                    i12 = i13 - 1;
                }
            }
        }
        return -(i11 + 1);
    }

    @Override
    public int[] z0(int i10, int i11) {
        return Xa(new int[i11], i10, 0, i11);
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
        C12914e c12914e = new C12914e();
        for (c cVar = this.f84593d; e(cVar); cVar = cVar.a()) {
            if (s10.a(cVar.c())) {
                c12914e.add(cVar.c());
            }
        }
        return c12914e;
    }

    public C12914e(int i10) {
        this.f84591b = i10;
    }

    public C12914e(InterfaceC3872e interfaceC3872e) {
        this.f84591b = interfaceC3872e.i();
        Q it = interfaceC3872e.iterator();
        while (it.hasNext()) {
            add(it.next());
        }
    }
}
