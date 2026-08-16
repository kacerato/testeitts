package de;

import Zd.b0;
import be.InterfaceC3875h;
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

public class C12916g implements InterfaceC3875h, Externalizable {

    public long f84611b;

    public int f84612c;

    public c f84613d = null;

    public c f84614e = null;

    public class a implements b0 {

        public c f84615b;

        public c f84616c;

        public a() {
            this.f84615b = C12916g.this.f84613d;
        }

        @Override
        public boolean hasNext() {
            return C12916g.f(this.f84615b);
        }

        @Override
        public long next() {
            if (C12916g.k(this.f84615b)) {
                throw new NoSuchElementException();
            }
            long c10 = this.f84615b.c();
            c cVar = this.f84615b;
            this.f84616c = cVar;
            this.f84615b = cVar.a();
            return c10;
        }

        @Override
        public void remove() {
            c cVar = this.f84616c;
            if (cVar == null) {
                throw new IllegalStateException();
            }
            C12916g.this.l(cVar);
            this.f84616c = null;
        }
    }

    public class b implements he.b0 {

        public boolean f84618a = false;

        public b() {
        }

        @Override
        public boolean a(long j10) {
            if (C12916g.this.e(j10)) {
                this.f84618a = true;
            }
            return true;
        }

        public boolean b() {
            return this.f84618a;
        }
    }

    public static class c {

        public long f84620a;

        public c f84621b;

        public c f84622c;

        public c(long j10) {
            this.f84620a = j10;
        }

        public c a() {
            return this.f84622c;
        }

        public c b() {
            return this.f84621b;
        }

        public long c() {
            return this.f84620a;
        }

        public void d(c cVar) {
            this.f84622c = cVar;
        }

        public void e(c cVar) {
            this.f84621b = cVar;
        }

        public void f(long j10) {
            this.f84620a = j10;
        }
    }

    public C12916g() {
    }

    public static c b(c cVar, int i10, int i11) {
        return c(cVar, i10, i11, true);
    }

    public static c c(c cVar, int i10, int i11, boolean z10) {
        while (f(cVar)) {
            if (i10 == i11) {
                return cVar;
            }
            i10 += z10 ? 1 : -1;
            cVar = z10 ? cVar.a() : cVar.b();
        }
        return null;
    }

    public static boolean f(Object obj) {
        return obj != null;
    }

    public static C12916g j(long[] jArr, int i10, int i11) {
        C12916g c12916g = new C12916g();
        for (int i12 = 0; i12 < i11; i12++) {
            c12916g.M0(jArr[i10 + i12]);
        }
        return c12916g;
    }

    public static boolean k(Object obj) {
        return obj == null;
    }

    @Override
    public long B0(int i10) {
        c d10 = d(i10);
        if (!k(d10)) {
            long c10 = d10.c();
            l(d10);
            return c10;
        }
        throw new ArrayIndexOutOfBoundsException("no elemenet at " + i10);
    }

    @Override
    public boolean B1(long[] jArr) {
        Arrays.sort(jArr);
        b0 it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (Arrays.binarySearch(jArr, it.next()) >= 0) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean B2(Sd.h hVar) {
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
        for (c d10 = d(i10); f(d10.a()); d10 = d10.a()) {
            if (d10.c() == j10) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    @Override
    public int D4(long j10) {
        return V8(j10, 0, size());
    }

    @Override
    public boolean H1(Sd.h hVar) {
        if (isEmpty()) {
            return false;
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
        for (int i12 = 0; i12 < i11; i12++) {
            M0(jArr[i10 + i12]);
        }
    }

    @Override
    public void J0(Random random) {
        for (int i10 = 0; i10 < this.f84612c; i10++) {
            c d10 = d(random.nextInt(size()));
            l(d10);
            M0(d10.c());
        }
    }

    @Override
    public boolean M0(long j10) {
        c cVar = new c(j10);
        if (k(this.f84613d)) {
            this.f84613d = cVar;
            this.f84614e = cVar;
        } else {
            cVar.e(this.f84614e);
            this.f84614e.d(cVar);
            this.f84614e = cVar;
        }
        this.f84612c++;
        return true;
    }

    @Override
    public void N7(int i10, long j10) {
        C12916g c12916g = new C12916g();
        c12916g.M0(j10);
        g(i10, c12916g);
    }

    @Override
    public long[] O0(long[] jArr) {
        return Wa(jArr, 0, this.f84612c);
    }

    @Override
    public void Pe(int i10, long[] jArr) {
        g(i10, j(jArr, 0, jArr.length));
    }

    @Override
    public boolean Q1(long[] jArr) {
        Arrays.sort(jArr);
        b0 it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (Arrays.binarySearch(jArr, it.next()) < 0) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public int S3(long j10) {
        return b6(0, j10);
    }

    @Override
    public long T8(int i10, long j10) {
        return o5(i10, j10);
    }

    @Override
    public boolean U1(long[] jArr) {
        if (isEmpty()) {
            return false;
        }
        for (long j10 : jArr) {
            if (!X0(j10)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public int V8(long j10, int i10, int i11) {
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("begin index can not be < 0");
        }
        if (i11 > this.f84612c) {
            throw new IndexOutOfBoundsException("end index > size: " + i11 + " > " + this.f84612c);
        }
        if (i11 >= i10) {
            c d10 = d(i10);
            while (i10 < i11) {
                int i12 = (i10 + i11) >>> 1;
                c b10 = b(d10, i10, i12);
                if (b10.c() == j10) {
                    return i12;
                }
                if (b10.c() < j10) {
                    i10 = i12 + 1;
                    d10 = b10.f84622c;
                } else {
                    i11 = i12 - 1;
                }
            }
        }
        return -(i10 + 1);
    }

    @Override
    public long[] Wa(long[] jArr, int i10, int i11) {
        return v8(jArr, i10, 0, i11);
    }

    @Override
    public boolean X0(long j10) {
        if (isEmpty()) {
            return false;
        }
        for (c cVar = this.f84613d; f(cVar); cVar = cVar.a()) {
            if (cVar.c() == j10) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void Yc(int i10, long[] jArr, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13++) {
            o5(i10 + i13, jArr[i11 + i13]);
        }
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

    @Override
    public int b6(int i10, long j10) {
        int i11 = -1;
        if (isEmpty()) {
            return -1;
        }
        for (c d10 = d(i10); f(d10.a()); d10 = d10.a()) {
            if (d10.c() == j10) {
                i11 = i10;
            }
            i10++;
        }
        return i11;
    }

    @Override
    public InterfaceC3875h b7(he.b0 b0Var) {
        C12916g c12916g = new C12916g();
        for (c cVar = this.f84613d; f(cVar); cVar = cVar.a()) {
            if (b0Var.a(cVar.c())) {
                c12916g.M0(cVar.c());
            }
        }
        return c12916g;
    }

    @Override
    public void c3(long j10) {
        r6(0, this.f84612c, j10);
    }

    @Override
    public InterfaceC3875h c5(he.b0 b0Var) {
        C12916g c12916g = new C12916g();
        for (c cVar = this.f84613d; f(cVar); cVar = cVar.a()) {
            if (!b0Var.a(cVar.c())) {
                c12916g.M0(cVar.c());
            }
        }
        return c12916g;
    }

    @Override
    public void clear() {
        this.f84612c = 0;
        this.f84613d = null;
        this.f84614e = null;
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        if (isEmpty()) {
            return false;
        }
        for (Object obj : collection) {
            if (!(obj instanceof Long) || !X0(((Long) obj).longValue())) {
                return false;
            }
        }
        return true;
    }

    public c d(int i10) {
        if (i10 >= size()) {
            return null;
        }
        return i10 <= (size() >>> 1) ? c(this.f84613d, 0, i10, true) : c(this.f84614e, size() - 1, i10, false);
    }

    @Override
    public boolean e(long j10) {
        boolean z10 = false;
        for (c cVar = this.f84613d; f(cVar); cVar = cVar.a()) {
            if (cVar.c() == j10) {
                l(cVar);
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C12916g c12916g = (C12916g) obj;
        if (this.f84611b != c12916g.f84611b || this.f84612c != c12916g.f84612c) {
            return false;
        }
        b0 it = iterator();
        b0 it2 = c12916g.iterator();
        while (it.hasNext()) {
            if (!it2.hasNext() || it.next() != it2.next()) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean f2(Sd.h hVar) {
        b0 it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (hVar.X0(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    public void g(int i10, C12916g c12916g) {
        c d10 = d(i10);
        this.f84612c += c12916g.f84612c;
        c cVar = this.f84613d;
        if (d10 == cVar) {
            c12916g.f84614e.d(cVar);
            this.f84613d.e(c12916g.f84614e);
            this.f84613d = c12916g.f84613d;
        } else {
            if (!k(d10)) {
                c b10 = d10.b();
                d10.b().d(c12916g.f84613d);
                c12916g.f84614e.d(d10);
                d10.e(c12916g.f84614e);
                c12916g.f84613d.e(b10);
                return;
            }
            if (this.f84612c == 0) {
                this.f84613d = c12916g.f84613d;
                this.f84614e = c12916g.f84614e;
            } else {
                this.f84614e.d(c12916g.f84613d);
                c12916g.f84613d.e(this.f84614e);
                this.f84614e = c12916g.f84614e;
            }
        }
    }

    @Override
    public void gd(int i10, long[] jArr) {
        Yc(i10, jArr, 0, jArr.length);
    }

    @Override
    public long get(int i10) {
        if (i10 <= this.f84612c) {
            c d10 = d(i10);
            return k(d10) ? this.f84611b : d10.c();
        }
        throw new IndexOutOfBoundsException("index " + i10 + " exceeds size " + this.f84612c);
    }

    @Override
    public void h(Ud.f fVar) {
        for (c cVar = this.f84613d; f(cVar); cVar = cVar.a()) {
            cVar.f(fVar.a(cVar.c()));
        }
    }

    @Override
    public void h3(long[] jArr) {
        for (long j10 : jArr) {
            M0(j10);
        }
    }

    @Override
    public int hashCode() {
        int e10 = (Vd.b.e(this.f84611b) * 31) + this.f84612c;
        b0 it = iterator();
        while (it.hasNext()) {
            e10 = (e10 * 31) + Vd.b.e(it.next());
        }
        return e10;
    }

    @Override
    public long i() {
        return this.f84611b;
    }

    @Override
    public void i6(int i10, long[] jArr, int i11, int i12) {
        g(i10, j(jArr, i11, i12));
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override
    public b0 iterator() {
        return new a();
    }

    @Override
    public boolean j1(he.b0 b0Var) {
        for (c cVar = this.f84613d; f(cVar); cVar = cVar.a()) {
            if (!b0Var.a(cVar.c())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public int k6(long j10) {
        return C6(0, j10);
    }

    public final void l(c cVar) {
        if (k(cVar)) {
            return;
        }
        this.f84612c--;
        c b10 = cVar.b();
        c a10 = cVar.a();
        if (f(b10)) {
            b10.d(a10);
        } else {
            this.f84613d = a10;
        }
        if (f(a10)) {
            a10.e(b10);
        } else {
            this.f84614e = b10;
        }
        cVar.d(null);
        cVar.e(null);
    }

    @Override
    public long max() {
        if (isEmpty()) {
            throw new IllegalStateException();
        }
        long j10 = Long.MIN_VALUE;
        for (c cVar = this.f84613d; f(cVar); cVar = cVar.a()) {
            if (j10 < cVar.c()) {
                j10 = cVar.c();
            }
        }
        return j10;
    }

    @Override
    public long min() {
        if (isEmpty()) {
            throw new IllegalStateException();
        }
        long j10 = Long.MAX_VALUE;
        for (c cVar = this.f84613d; f(cVar); cVar = cVar.a()) {
            if (j10 > cVar.c()) {
                j10 = cVar.c();
            }
        }
        return j10;
    }

    @Override
    public long o() {
        long j10 = 0;
        for (c cVar = this.f84613d; f(cVar); cVar = cVar.a()) {
            j10 += cVar.c();
        }
        return j10;
    }

    @Override
    public long o5(int i10, long j10) {
        if (i10 > this.f84612c) {
            throw new IndexOutOfBoundsException("index " + i10 + " exceeds size " + this.f84612c);
        }
        c d10 = d(i10);
        if (!k(d10)) {
            long c10 = d10.c();
            d10.f(j10);
            return c10;
        }
        throw new IndexOutOfBoundsException("at offset " + i10);
    }

    @Override
    public boolean q1(Sd.h hVar) {
        b0 it = iterator();
        boolean z10 = false;
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
        int i12;
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("begin index can not be < 0");
        }
        c d10 = d(i10);
        if (i11 <= this.f84612c) {
            while (i10 < i11) {
                d10.f(j10);
                d10 = d10.a();
                i10++;
            }
            return;
        }
        while (true) {
            i12 = this.f84612c;
            if (i10 >= i12) {
                break;
            }
            d10.f(j10);
            d10 = d10.a();
            i10++;
        }
        while (i12 < i11) {
            M0(j10);
            i12++;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f84611b = objectInput.readLong();
        int readInt = objectInput.readInt();
        for (int i10 = 0; i10 < readInt; i10++) {
            M0(objectInput.readLong());
        }
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        b0 it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (collection.contains(Long.valueOf(it.next()))) {
                it.remove();
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
        return this.f84612c;
    }

    @Override
    public void sort() {
        w0(0, this.f84612c);
    }

    @Override
    public InterfaceC3875h subList(int i10, int i11) {
        if (i11 < i10) {
            throw new IllegalArgumentException("begin index " + i10 + " greater than end index " + i11);
        }
        int i12 = this.f84612c;
        if (i12 < i10) {
            throw new IllegalArgumentException("begin index " + i10 + " greater than last index " + this.f84612c);
        }
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("begin index can not be < 0");
        }
        if (i11 > i12) {
            throw new IndexOutOfBoundsException("end index < " + this.f84612c);
        }
        C12916g c12916g = new C12916g();
        c d10 = d(i10);
        while (i10 < i11) {
            c12916g.M0(d10.c());
            d10 = d10.a();
            i10++;
        }
        return c12916g;
    }

    @Override
    public void t0(int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            B0(i10);
        }
    }

    @Override
    public long[] toArray() {
        int i10 = this.f84612c;
        return Wa(new long[i10], 0, i10);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        b0 it = iterator();
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
        c cVar = this.f84613d;
        c cVar2 = this.f84614e;
        c cVar3 = cVar;
        while (f(cVar3)) {
            c a10 = cVar3.a();
            c b10 = cVar3.b();
            c a11 = cVar3.a();
            cVar3.d(b10);
            cVar3.e(a10);
            cVar3 = a11;
        }
        this.f84613d = cVar2;
        this.f84614e = cVar;
    }

    @Override
    public boolean u5(he.b0 b0Var) {
        for (c cVar = this.f84614e; f(cVar); cVar = cVar.b()) {
            if (!b0Var.a(cVar.c())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public long[] v8(long[] jArr, int i10, int i11, int i12) {
        if (i12 == 0) {
            return jArr;
        }
        if (i10 < 0 || i10 >= size()) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        c d10 = d(i10);
        for (int i13 = 0; i13 < i12; i13++) {
            jArr[i11 + i13] = d10.c();
            d10 = d10.a();
        }
        return jArr;
    }

    @Override
    public void w0(int i10, int i11) {
        long[] array = subList(i10, i11).toArray();
        Arrays.sort(array);
        gd(i10, array);
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeLong(this.f84611b);
        objectOutput.writeInt(this.f84612c);
        b0 it = iterator();
        while (it.hasNext()) {
            objectOutput.writeLong(it.next());
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
        if (f(cVar)) {
            b10.d(cVar);
            d11.e(b10);
        }
        d10.d(d11);
        d11.e(d10);
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
        return v8(new long[i11], i10, 0, i11);
    }

    public C12916g(long j10) {
        this.f84611b = j10;
    }

    public C12916g(InterfaceC3875h interfaceC3875h) {
        this.f84611b = interfaceC3875h.i();
        b0 it = interfaceC3875h.iterator();
        while (it.hasNext()) {
            M0(it.next());
        }
    }
}
