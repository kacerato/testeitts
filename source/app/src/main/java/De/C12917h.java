package de;

import Sd.i;
import Zd.s0;
import be.InterfaceC3876i;
import he.t0;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Random;
import kotlin.jvm.internal.r0;
import org.apache.commons.math3.geometry.VectorFormat;

public class C12917h implements InterfaceC3876i, Externalizable {

    public short f84623b;

    public int f84624c;

    public c f84625d = null;

    public c f84626e = null;

    public class a implements s0 {

        public c f84627b;

        public c f84628c;

        public a() {
            this.f84627b = C12917h.this.f84625d;
        }

        @Override
        public boolean hasNext() {
            return C12917h.f(this.f84627b);
        }

        @Override
        public short next() {
            if (C12917h.j(this.f84627b)) {
                throw new NoSuchElementException();
            }
            short c10 = this.f84627b.c();
            c cVar = this.f84627b;
            this.f84628c = cVar;
            this.f84627b = cVar.a();
            return c10;
        }

        @Override
        public void remove() {
            c cVar = this.f84628c;
            if (cVar == null) {
                throw new IllegalStateException();
            }
            C12917h.this.k(cVar);
            this.f84628c = null;
        }
    }

    public class b implements t0 {

        public boolean f84630a = false;

        public b() {
        }

        @Override
        public boolean a(short s10) {
            if (C12917h.this.d(s10)) {
                this.f84630a = true;
            }
            return true;
        }

        public boolean b() {
            return this.f84630a;
        }
    }

    public static class c {

        public short f84632a;

        public c f84633b;

        public c f84634c;

        public c(short s10) {
            this.f84632a = s10;
        }

        public c a() {
            return this.f84634c;
        }

        public c b() {
            return this.f84633b;
        }

        public short c() {
            return this.f84632a;
        }

        public void d(c cVar) {
            this.f84634c = cVar;
        }

        public void e(c cVar) {
            this.f84633b = cVar;
        }

        public void f(short s10) {
            this.f84632a = s10;
        }
    }

    public C12917h() {
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

    public static C12917h h(short[] sArr, int i10, int i11) {
        C12917h c12917h = new C12917h();
        for (int i12 = 0; i12 < i11; i12++) {
            c12917h.c1(sArr[i10 + i12]);
        }
        return c12917h;
    }

    public static boolean j(Object obj) {
        return obj == null;
    }

    @Override
    public boolean A2(short[] sArr) {
        boolean z10 = false;
        for (short s10 : sArr) {
            if (c1(s10)) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public short B0(int i10) {
        c e10 = e(i10);
        if (!j(e10)) {
            short c10 = e10.c();
            k(e10);
            return c10;
        }
        throw new ArrayIndexOutOfBoundsException("no elemenet at " + i10);
    }

    @Override
    public boolean F1(i iVar) {
        s0 it = iVar.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (c1(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public int H6(int i10, short s10) {
        for (c e10 = e(i10); f(e10.a()); e10 = e10.a()) {
            if (e10.c() == s10) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    @Override
    public void J0(Random random) {
        for (int i10 = 0; i10 < this.f84624c; i10++) {
            c e10 = e(random.nextInt(size()));
            k(e10);
            c1(e10.c());
        }
    }

    @Override
    public short[] N0(short[] sArr) {
        return zb(sArr, 0, this.f84624c);
    }

    @Override
    public void O7(int i10, short s10) {
        C12917h c12917h = new C12917h();
        c12917h.c1(s10);
        g(i10, c12917h);
    }

    @Override
    public short O8(int i10, short s10) {
        return t5(i10, s10);
    }

    @Override
    public void Ve(int i10, short[] sArr) {
        g(i10, h(sArr, 0, sArr.length));
    }

    @Override
    public boolean W0(short s10) {
        if (isEmpty()) {
            return false;
        }
        for (c cVar = this.f84625d; f(cVar); cVar = cVar.a()) {
            if (cVar.c() == s10) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void X2(short[] sArr) {
        for (short s10 : sArr) {
            c1(s10);
        }
    }

    @Override
    public InterfaceC3876i Y6(t0 t0Var) {
        C12917h c12917h = new C12917h();
        for (c cVar = this.f84625d; f(cVar); cVar = cVar.a()) {
            if (t0Var.a(cVar.c())) {
                c12917h.c1(cVar.c());
            }
        }
        return c12917h;
    }

    @Override
    public void Y7(int i10, short[] sArr, int i11, int i12) {
        g(i10, h(sArr, i11, i12));
    }

    @Override
    public boolean Z1(short[] sArr) {
        if (isEmpty()) {
            return false;
        }
        for (short s10 : sArr) {
            if (!W0(s10)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public void a3(int i10, short[] sArr, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13++) {
            t5(i10 + i13, sArr[i11 + i13]);
        }
    }

    @Override
    public boolean addAll(Collection<? extends Short> collection) {
        Iterator<? extends Short> it = collection.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (c1(it.next().shortValue())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean c1(short s10) {
        c cVar = new c(s10);
        if (j(this.f84625d)) {
            this.f84625d = cVar;
            this.f84626e = cVar;
        } else {
            cVar.e(this.f84626e);
            this.f84626e.d(cVar);
            this.f84626e = cVar;
        }
        this.f84624c++;
        return true;
    }

    @Override
    public void clear() {
        this.f84624c = 0;
        this.f84625d = null;
        this.f84626e = null;
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        if (isEmpty()) {
            return false;
        }
        for (Object obj : collection) {
            if (!(obj instanceof Short) || !W0(((Short) obj).shortValue())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean d(short s10) {
        boolean z10 = false;
        for (c cVar = this.f84625d; f(cVar); cVar = cVar.a()) {
            if (cVar.c() == s10) {
                k(cVar);
                z10 = true;
            }
        }
        return z10;
    }

    public c e(int i10) {
        if (i10 >= size()) {
            return null;
        }
        return i10 <= (size() >>> 1) ? c(this.f84625d, 0, i10, true) : c(this.f84626e, size() - 1, i10, false);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C12917h c12917h = (C12917h) obj;
        if (this.f84623b != c12917h.f84623b || this.f84624c != c12917h.f84624c) {
            return false;
        }
        s0 it = iterator();
        s0 it2 = c12917h.iterator();
        while (it.hasNext()) {
            if (!it2.hasNext() || it.next() != it2.next()) {
                return false;
            }
        }
        return true;
    }

    @Override
    public int f6(int i10, short s10) {
        int i11 = -1;
        if (isEmpty()) {
            return -1;
        }
        for (c e10 = e(i10); f(e10.a()); e10 = e10.a()) {
            if (e10.c() == s10) {
                i11 = i10;
            }
            i10++;
        }
        return i11;
    }

    public void g(int i10, C12917h c12917h) {
        c e10 = e(i10);
        this.f84624c += c12917h.f84624c;
        c cVar = this.f84625d;
        if (e10 == cVar) {
            c12917h.f84626e.d(cVar);
            this.f84625d.e(c12917h.f84626e);
            this.f84625d = c12917h.f84625d;
        } else {
            if (!j(e10)) {
                c b10 = e10.b();
                e10.b().d(c12917h.f84625d);
                c12917h.f84626e.d(e10);
                e10.e(c12917h.f84626e);
                c12917h.f84625d.e(b10);
                return;
            }
            if (this.f84624c == 0) {
                this.f84625d = c12917h.f84625d;
                this.f84626e = c12917h.f84626e;
            } else {
                this.f84626e.d(c12917h.f84625d);
                c12917h.f84625d.e(this.f84626e);
                this.f84626e = c12917h.f84626e;
            }
        }
    }

    @Override
    public short get(int i10) {
        if (i10 <= this.f84624c) {
            c e10 = e(i10);
            return j(e10) ? this.f84623b : e10.c();
        }
        throw new IndexOutOfBoundsException("index " + i10 + " exceeds size " + this.f84624c);
    }

    @Override
    public boolean h1(t0 t0Var) {
        for (c cVar = this.f84625d; f(cVar); cVar = cVar.a()) {
            if (!t0Var.a(cVar.c())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public int hashCode() {
        int d10 = (Vd.b.d(this.f84623b) * 31) + this.f84624c;
        s0 it = iterator();
        while (it.hasNext()) {
            d10 = (d10 * 31) + Vd.b.d(it.next());
        }
        return d10;
    }

    @Override
    public short i() {
        return this.f84623b;
    }

    @Override
    public void ib(short[] sArr, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            c1(sArr[i10 + i12]);
        }
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override
    public s0 iterator() {
        return new a();
    }

    @Override
    public void j3(short s10) {
        o6(0, this.f84624c, s10);
    }

    public final void k(c cVar) {
        if (j(cVar)) {
            return;
        }
        this.f84624c--;
        c b10 = cVar.b();
        c a10 = cVar.a();
        if (f(b10)) {
            b10.d(a10);
        } else {
            this.f84625d = a10;
        }
        if (f(a10)) {
            a10.e(b10);
        } else {
            this.f84626e = b10;
        }
        cVar.d(null);
        cVar.e(null);
    }

    @Override
    public InterfaceC3876i l7(t0 t0Var) {
        C12917h c12917h = new C12917h();
        for (c cVar = this.f84625d; f(cVar); cVar = cVar.a()) {
            if (!t0Var.a(cVar.c())) {
                c12917h.c1(cVar.c());
            }
        }
        return c12917h;
    }

    @Override
    public short max() {
        if (isEmpty()) {
            throw new IllegalStateException();
        }
        short s10 = r0.f95769b;
        for (c cVar = this.f84625d; f(cVar); cVar = cVar.a()) {
            if (s10 < cVar.c()) {
                s10 = cVar.c();
            }
        }
        return s10;
    }

    @Override
    public short min() {
        if (isEmpty()) {
            throw new IllegalStateException();
        }
        short s10 = r0.f95770c;
        for (c cVar = this.f84625d; f(cVar); cVar = cVar.a()) {
            if (s10 > cVar.c()) {
                s10 = cVar.c();
            }
        }
        return s10;
    }

    @Override
    public boolean n1(short[] sArr) {
        Arrays.sort(sArr);
        s0 it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (Arrays.binarySearch(sArr, it.next()) >= 0) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public short o() {
        short s10 = 0;
        for (c cVar = this.f84625d; f(cVar); cVar = cVar.a()) {
            s10 = (short) (s10 + cVar.c());
        }
        return s10;
    }

    @Override
    public boolean o1(i iVar) {
        s0 it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (iVar.W0(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public void o6(int i10, int i11, short s10) {
        int i12;
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("begin index can not be < 0");
        }
        c e10 = e(i10);
        if (i11 <= this.f84624c) {
            while (i10 < i11) {
                e10.f(s10);
                e10 = e10.a();
                i10++;
            }
            return;
        }
        while (true) {
            i12 = this.f84624c;
            if (i10 >= i12) {
                break;
            }
            e10.f(s10);
            e10 = e10.a();
            i10++;
        }
        while (i12 < i11) {
            c1(s10);
            i12++;
        }
    }

    @Override
    public boolean q2(i iVar) {
        s0 it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (!iVar.W0(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public void qd(int i10, short[] sArr) {
        a3(i10, sArr, 0, sArr.length);
    }

    @Override
    public void r(Ud.h hVar) {
        for (c cVar = this.f84625d; f(cVar); cVar = cVar.a()) {
            cVar.f(hVar.a(cVar.c()));
        }
    }

    @Override
    public boolean r1(short[] sArr) {
        Arrays.sort(sArr);
        s0 it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (Arrays.binarySearch(sArr, it.next()) < 0) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public int r5(short s10, int i10, int i11) {
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("begin index can not be < 0");
        }
        if (i11 > this.f84624c) {
            throw new IndexOutOfBoundsException("end index > size: " + i11 + " > " + this.f84624c);
        }
        if (i11 >= i10) {
            c e10 = e(i10);
            while (i10 < i11) {
                int i12 = (i10 + i11) >>> 1;
                c b10 = b(e10, i10, i12);
                if (b10.c() == s10) {
                    return i12;
                }
                if (b10.c() < s10) {
                    i10 = i12 + 1;
                    e10 = b10.f84634c;
                } else {
                    i11 = i12 - 1;
                }
            }
        }
        return -(i10 + 1);
    }

    @Override
    public short[] rd(short[] sArr, int i10, int i11, int i12) {
        if (i12 == 0) {
            return sArr;
        }
        if (i10 < 0 || i10 >= size()) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        c e10 = e(i10);
        for (int i13 = 0; i13 < i12; i13++) {
            sArr[i11 + i13] = e10.c();
            e10 = e10.a();
        }
        return sArr;
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f84623b = objectInput.readShort();
        int readInt = objectInput.readInt();
        for (int i10 = 0; i10 < readInt; i10++) {
            c1(objectInput.readShort());
        }
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        s0 it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (collection.contains(Short.valueOf(it.next()))) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        s0 it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (!collection.contains(Short.valueOf(it.next()))) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public int size() {
        return this.f84624c;
    }

    @Override
    public void sort() {
        w0(0, this.f84624c);
    }

    @Override
    public InterfaceC3876i subList(int i10, int i11) {
        if (i11 < i10) {
            throw new IllegalArgumentException("begin index " + i10 + " greater than end index " + i11);
        }
        int i12 = this.f84624c;
        if (i12 < i10) {
            throw new IllegalArgumentException("begin index " + i10 + " greater than last index " + this.f84624c);
        }
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("begin index can not be < 0");
        }
        if (i11 > i12) {
            throw new IndexOutOfBoundsException("end index < " + this.f84624c);
        }
        C12917h c12917h = new C12917h();
        c e10 = e(i10);
        while (i10 < i11) {
            c12917h.c1(e10.c());
            e10 = e10.a();
            i10++;
        }
        return c12917h;
    }

    @Override
    public void t0(int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            B0(i10);
        }
    }

    @Override
    public short t5(int i10, short s10) {
        if (i10 > this.f84624c) {
            throw new IndexOutOfBoundsException("index " + i10 + " exceeds size " + this.f84624c);
        }
        c e10 = e(i10);
        if (!j(e10)) {
            short c10 = e10.c();
            e10.f(s10);
            return c10;
        }
        throw new IndexOutOfBoundsException("at offset " + i10);
    }

    @Override
    public short[] toArray() {
        int i10 = this.f84624c;
        return zb(new short[i10], 0, i10);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        s0 it = iterator();
        while (it.hasNext()) {
            sb2.append((int) it.next());
            if (it.hasNext()) {
                sb2.append(", ");
            }
        }
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public void u0() {
        c cVar = this.f84625d;
        c cVar2 = this.f84626e;
        c cVar3 = cVar;
        while (f(cVar3)) {
            c a10 = cVar3.a();
            c b10 = cVar3.b();
            c a11 = cVar3.a();
            cVar3.d(b10);
            cVar3.e(a10);
            cVar3 = a11;
        }
        this.f84625d = cVar2;
        this.f84626e = cVar;
    }

    @Override
    public boolean v2(i iVar) {
        if (isEmpty()) {
            return false;
        }
        s0 it = iVar.iterator();
        while (it.hasNext()) {
            if (!W0(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public void w0(int i10, int i11) {
        short[] array = subList(i10, i11).toArray();
        Arrays.sort(array);
        qd(i10, array);
    }

    @Override
    public int w4(short s10) {
        return r5(s10, 0, size());
    }

    @Override
    public boolean wb(t0 t0Var) {
        for (c cVar = this.f84626e; f(cVar); cVar = cVar.b()) {
            if (!t0Var.a(cVar.c())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeShort(this.f84623b);
        objectOutput.writeInt(this.f84624c);
        s0 it = iterator();
        while (it.hasNext()) {
            objectOutput.writeShort(it.next());
        }
    }

    @Override
    public void y0(int i10, int i11) {
        if (i10 > i11) {
            throw new IllegalArgumentException("from > to : " + i10 + ">" + i11);
        }
        c e10 = e(i10);
        c e11 = e(i11);
        c b10 = e10.b();
        c cVar = null;
        c cVar2 = e10;
        while (cVar2 != e11) {
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
            e11.e(b10);
        }
        e10.d(e11);
        e11.e(e10);
    }

    @Override
    public int y3(short s10) {
        return f6(0, s10);
    }

    @Override
    public int y5(short s10) {
        return H6(0, s10);
    }

    @Override
    public short[] z0(int i10, int i11) {
        return rd(new short[i11], i10, 0, i11);
    }

    @Override
    public short[] zb(short[] sArr, int i10, int i11) {
        return rd(sArr, i10, 0, i11);
    }

    public C12917h(short s10) {
        this.f84623b = s10;
    }

    public C12917h(InterfaceC3876i interfaceC3876i) {
        this.f84623b = interfaceC3876i.i();
        s0 it = interfaceC3876i.iterator();
        while (it.hasNext()) {
            c1(it.next());
        }
    }
}
