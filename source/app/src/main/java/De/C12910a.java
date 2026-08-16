package de;

import Zd.InterfaceC3449g;
import be.InterfaceC3868a;
import he.InterfaceC13453h;
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

public class C12910a implements InterfaceC3868a, Externalizable {

    public byte f84543b;

    public int f84544c;

    public c f84545d = null;

    public c f84546e = null;

    public class C1576a implements InterfaceC3449g {

        public c f84547b;

        public c f84548c;

        public C1576a() {
            this.f84547b = C12910a.this.f84545d;
        }

        @Override
        public boolean hasNext() {
            return C12910a.e(this.f84547b);
        }

        @Override
        public byte next() {
            if (C12910a.h(this.f84547b)) {
                throw new NoSuchElementException();
            }
            byte c10 = this.f84547b.c();
            c cVar = this.f84547b;
            this.f84548c = cVar;
            this.f84547b = cVar.a();
            return c10;
        }

        @Override
        public void remove() {
            c cVar = this.f84548c;
            if (cVar == null) {
                throw new IllegalStateException();
            }
            C12910a.this.j(cVar);
            this.f84548c = null;
        }
    }

    public class b implements InterfaceC13453h {

        public boolean f84550a = false;

        public b() {
        }

        @Override
        public boolean a(byte b10) {
            if (C12910a.this.m(b10)) {
                this.f84550a = true;
            }
            return true;
        }

        public boolean b() {
            return this.f84550a;
        }
    }

    public static class c {

        public byte f84552a;

        public c f84553b;

        public c f84554c;

        public c(byte b10) {
            this.f84552a = b10;
        }

        public c a() {
            return this.f84554c;
        }

        public c b() {
            return this.f84553b;
        }

        public byte c() {
            return this.f84552a;
        }

        public void d(c cVar) {
            this.f84554c = cVar;
        }

        public void e(c cVar) {
            this.f84553b = cVar;
        }

        public void f(byte b10) {
            this.f84552a = b10;
        }
    }

    public C12910a() {
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

    public static C12910a g(byte[] bArr, int i10, int i11) {
        C12910a c12910a = new C12910a();
        for (int i12 = 0; i12 < i11; i12++) {
            c12910a.d1(bArr[i10 + i12]);
        }
        return c12910a;
    }

    public static boolean h(Object obj) {
        return obj == null;
    }

    @Override
    public void Ae(int i10, byte[] bArr, int i11, int i12) {
        f(i10, g(bArr, i11, i12));
    }

    @Override
    public byte B0(int i10) {
        c d10 = d(i10);
        if (!h(d10)) {
            byte c10 = d10.c();
            j(d10);
            return c10;
        }
        throw new ArrayIndexOutOfBoundsException("no elemenet at " + i10);
    }

    @Override
    public void C7(byte[] bArr, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            d1(bArr[i10 + i12]);
        }
    }

    @Override
    public void D7(int i10, int i11, byte b10) {
        int i12;
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("begin index can not be < 0");
        }
        c d10 = d(i10);
        if (i11 <= this.f84544c) {
            while (i10 < i11) {
                d10.f(b10);
                d10 = d10.a();
                i10++;
            }
            return;
        }
        while (true) {
            i12 = this.f84544c;
            if (i10 >= i12) {
                break;
            }
            d10.f(b10);
            d10 = d10.a();
            i10++;
        }
        while (i12 < i11) {
            d1(b10);
            i12++;
        }
    }

    @Override
    public boolean E1(Sd.a aVar) {
        InterfaceC3449g it = aVar.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (d1(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public byte E8(int i10, byte b10) {
        return set(i10, b10);
    }

    @Override
    public void Fe(int i10, byte[] bArr) {
        f(i10, g(bArr, 0, bArr.length));
    }

    @Override
    public void J0(Random random) {
        for (int i10 = 0; i10 < this.f84544c; i10++) {
            c d10 = d(random.nextInt(size()));
            j(d10);
            d1(d10.c());
        }
    }

    @Override
    public int J4(int i10, byte b10) {
        int i11 = -1;
        if (isEmpty()) {
            return -1;
        }
        for (c d10 = d(i10); e(d10.a()); d10 = d10.a()) {
            if (d10.c() == b10) {
                i11 = i10;
            }
            i10++;
        }
        return i11;
    }

    @Override
    public int O3(byte b10) {
        return J4(0, b10);
    }

    @Override
    public byte[] Oe(byte[] bArr, int i10, int i11, int i12) {
        if (i12 == 0) {
            return bArr;
        }
        if (i10 < 0 || i10 >= size()) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        c d10 = d(i10);
        for (int i13 = 0; i13 < i12; i13++) {
            bArr[i11 + i13] = d10.c();
            d10 = d10.a();
        }
        return bArr;
    }

    @Override
    public byte[] R0(byte[] bArr) {
        return cd(bArr, 0, this.f84544c);
    }

    @Override
    public int Rb(byte b10, int i10, int i11) {
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("begin index can not be < 0");
        }
        if (i11 > this.f84544c) {
            throw new IndexOutOfBoundsException("end index > size: " + i11 + " > " + this.f84544c);
        }
        if (i11 >= i10) {
            c d10 = d(i10);
            while (i10 < i11) {
                int i12 = (i10 + i11) >>> 1;
                c b11 = b(d10, i10, i12);
                if (b11.c() == b10) {
                    return i12;
                }
                if (b11.c() < b10) {
                    i10 = i12 + 1;
                    d10 = b11.f84554c;
                } else {
                    i11 = i12 - 1;
                }
            }
        }
        return -(i10 + 1);
    }

    @Override
    public InterfaceC3868a S6(InterfaceC13453h interfaceC13453h) {
        C12910a c12910a = new C12910a();
        for (c cVar = this.f84545d; e(cVar); cVar = cVar.a()) {
            if (interfaceC13453h.a(cVar.c())) {
                c12910a.d1(cVar.c());
            }
        }
        return c12910a;
    }

    @Override
    public void T2(byte b10) {
        D7(0, this.f84544c, b10);
    }

    @Override
    public boolean V0(InterfaceC13453h interfaceC13453h) {
        for (c cVar = this.f84545d; e(cVar); cVar = cVar.a()) {
            if (!interfaceC13453h.a(cVar.c())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean W1(byte[] bArr) {
        Arrays.sort(bArr);
        InterfaceC3449g it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (Arrays.binarySearch(bArr, it.next()) < 0) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean a1(byte b10) {
        if (isEmpty()) {
            return false;
        }
        for (c cVar = this.f84545d; e(cVar); cVar = cVar.a()) {
            if (cVar.c() == b10) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean addAll(Collection<? extends Byte> collection) {
        Iterator<? extends Byte> it = collection.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (d1(it.next().byteValue())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean b8(InterfaceC13453h interfaceC13453h) {
        for (c cVar = this.f84546e; e(cVar); cVar = cVar.b()) {
            if (!interfaceC13453h.a(cVar.c())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public byte[] cd(byte[] bArr, int i10, int i11) {
        return Oe(bArr, i10, 0, i11);
    }

    @Override
    public void clear() {
        this.f84544c = 0;
        this.f84545d = null;
        this.f84546e = null;
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        if (isEmpty()) {
            return false;
        }
        for (Object obj : collection) {
            if (!(obj instanceof Byte) || !a1(((Byte) obj).byteValue())) {
                return false;
            }
        }
        return true;
    }

    public c d(int i10) {
        if (i10 >= size()) {
            return null;
        }
        return i10 <= (size() >>> 1) ? c(this.f84545d, 0, i10, true) : c(this.f84546e, size() - 1, i10, false);
    }

    @Override
    public boolean d1(byte b10) {
        c cVar = new c(b10);
        if (h(this.f84545d)) {
            this.f84545d = cVar;
            this.f84546e = cVar;
        } else {
            cVar.e(this.f84546e);
            this.f84546e.d(cVar);
            this.f84546e = cVar;
        }
        this.f84544c++;
        return true;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C12910a c12910a = (C12910a) obj;
        if (this.f84543b != c12910a.f84543b || this.f84544c != c12910a.f84544c) {
            return false;
        }
        InterfaceC3449g it = iterator();
        InterfaceC3449g it2 = c12910a.iterator();
        while (it.hasNext()) {
            if (!it2.hasNext() || it.next() != it2.next()) {
                return false;
            }
        }
        return true;
    }

    public void f(int i10, C12910a c12910a) {
        c d10 = d(i10);
        this.f84544c += c12910a.f84544c;
        c cVar = this.f84545d;
        if (d10 == cVar) {
            c12910a.f84546e.d(cVar);
            this.f84545d.e(c12910a.f84546e);
            this.f84545d = c12910a.f84545d;
        } else {
            if (!h(d10)) {
                c b10 = d10.b();
                d10.b().d(c12910a.f84545d);
                c12910a.f84546e.d(d10);
                d10.e(c12910a.f84546e);
                c12910a.f84545d.e(b10);
                return;
            }
            if (this.f84544c == 0) {
                this.f84545d = c12910a.f84545d;
                this.f84546e = c12910a.f84546e;
            } else {
                this.f84546e.d(c12910a.f84545d);
                c12910a.f84545d.e(this.f84546e);
                this.f84546e = c12910a.f84546e;
            }
        }
    }

    @Override
    public byte get(int i10) {
        if (i10 <= this.f84544c) {
            c d10 = d(i10);
            return h(d10) ? this.f84543b : d10.c();
        }
        throw new IndexOutOfBoundsException("index " + i10 + " exceeds size " + this.f84544c);
    }

    @Override
    public int hashCode() {
        int d10 = (Vd.b.d(this.f84543b) * 31) + this.f84544c;
        InterfaceC3449g it = iterator();
        while (it.hasNext()) {
            d10 = (d10 * 31) + Vd.b.d(it.next());
        }
        return d10;
    }

    @Override
    public byte i() {
        return this.f84543b;
    }

    @Override
    public boolean i2(Sd.a aVar) {
        InterfaceC3449g it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (aVar.a1(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override
    public InterfaceC3449g iterator() {
        return new C1576a();
    }

    public final void j(c cVar) {
        if (h(cVar)) {
            return;
        }
        this.f84544c--;
        c b10 = cVar.b();
        c a10 = cVar.a();
        if (e(b10)) {
            b10.d(a10);
        } else {
            this.f84545d = a10;
        }
        if (e(a10)) {
            a10.e(b10);
        } else {
            this.f84546e = b10;
        }
        cVar.d(null);
        cVar.e(null);
    }

    @Override
    public void l1(byte[] bArr) {
        for (byte b10 : bArr) {
            d1(b10);
        }
    }

    @Override
    public boolean m(byte b10) {
        boolean z10 = false;
        for (c cVar = this.f84545d; e(cVar); cVar = cVar.a()) {
            if (cVar.c() == b10) {
                j(cVar);
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public byte max() {
        if (isEmpty()) {
            throw new IllegalStateException();
        }
        byte b10 = Byte.MIN_VALUE;
        for (c cVar = this.f84545d; e(cVar); cVar = cVar.a()) {
            if (b10 < cVar.c()) {
                b10 = cVar.c();
            }
        }
        return b10;
    }

    @Override
    public byte min() {
        if (isEmpty()) {
            throw new IllegalStateException();
        }
        byte b10 = Byte.MAX_VALUE;
        for (c cVar = this.f84545d; e(cVar); cVar = cVar.a()) {
            if (b10 > cVar.c()) {
                b10 = cVar.c();
            }
        }
        return b10;
    }

    @Override
    public void n8(int i10, byte b10) {
        C12910a c12910a = new C12910a();
        c12910a.d1(b10);
        f(i10, c12910a);
    }

    @Override
    public byte o() {
        byte b10 = 0;
        for (c cVar = this.f84545d; e(cVar); cVar = cVar.a()) {
            b10 = (byte) (b10 + cVar.c());
        }
        return b10;
    }

    @Override
    public boolean o2(byte[] bArr) {
        boolean z10 = false;
        for (byte b10 : bArr) {
            if (d1(b10)) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public int p1(byte b10) {
        return w6(0, b10);
    }

    @Override
    public void r2(int i10, byte[] bArr) {
        set(i10, bArr, 0, bArr.length);
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f84543b = objectInput.readByte();
        int readInt = objectInput.readInt();
        for (int i10 = 0; i10 < readInt; i10++) {
            d1(objectInput.readByte());
        }
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        InterfaceC3449g it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (collection.contains(Byte.valueOf(it.next()))) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        InterfaceC3449g it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (!collection.contains(Byte.valueOf(it.next()))) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public void s(Ud.a aVar) {
        for (c cVar = this.f84545d; e(cVar); cVar = cVar.a()) {
            cVar.f(aVar.a(cVar.c()));
        }
    }

    @Override
    public boolean s2(Sd.a aVar) {
        InterfaceC3449g it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (!aVar.a1(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public InterfaceC3868a sb(InterfaceC13453h interfaceC13453h) {
        C12910a c12910a = new C12910a();
        for (c cVar = this.f84545d; e(cVar); cVar = cVar.a()) {
            if (!interfaceC13453h.a(cVar.c())) {
                c12910a.d1(cVar.c());
            }
        }
        return c12910a;
    }

    @Override
    public byte set(int i10, byte b10) {
        if (i10 <= this.f84544c) {
            c d10 = d(i10);
            if (!h(d10)) {
                byte c10 = d10.c();
                d10.f(b10);
                return c10;
            }
            throw new IndexOutOfBoundsException("at offset " + i10);
        }
        throw new IndexOutOfBoundsException("index " + i10 + " exceeds size " + this.f84544c);
    }

    @Override
    public int size() {
        return this.f84544c;
    }

    @Override
    public void sort() {
        w0(0, this.f84544c);
    }

    @Override
    public InterfaceC3868a subList(int i10, int i11) {
        if (i11 < i10) {
            throw new IllegalArgumentException("begin index " + i10 + " greater than end index " + i11);
        }
        int i12 = this.f84544c;
        if (i12 < i10) {
            throw new IllegalArgumentException("begin index " + i10 + " greater than last index " + this.f84544c);
        }
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("begin index can not be < 0");
        }
        if (i11 > i12) {
            throw new IndexOutOfBoundsException("end index < " + this.f84544c);
        }
        C12910a c12910a = new C12910a();
        c d10 = d(i10);
        while (i10 < i11) {
            c12910a.d1(d10.c());
            d10 = d10.a();
            i10++;
        }
        return c12910a;
    }

    @Override
    public void t0(int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            B0(i10);
        }
    }

    @Override
    public boolean t1(byte[] bArr) {
        if (isEmpty()) {
            return false;
        }
        for (byte b10 : bArr) {
            if (!a1(b10)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public byte[] toArray() {
        int i10 = this.f84544c;
        return cd(new byte[i10], 0, i10);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        InterfaceC3449g it = iterator();
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
        c cVar = this.f84545d;
        c cVar2 = this.f84546e;
        c cVar3 = cVar;
        while (e(cVar3)) {
            c a10 = cVar3.a();
            c b10 = cVar3.b();
            c a11 = cVar3.a();
            cVar3.d(b10);
            cVar3.e(a10);
            cVar3 = a11;
        }
        this.f84545d = cVar2;
        this.f84546e = cVar;
    }

    @Override
    public void w0(int i10, int i11) {
        byte[] array = subList(i10, i11).toArray();
        Arrays.sort(array);
        r2(i10, array);
    }

    @Override
    public boolean w2(Sd.a aVar) {
        if (isEmpty()) {
            return false;
        }
        InterfaceC3449g it = aVar.iterator();
        while (it.hasNext()) {
            if (!a1(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public int w6(int i10, byte b10) {
        for (c d10 = d(i10); e(d10.a()); d10 = d10.a()) {
            if (d10.c() == b10) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeByte(this.f84543b);
        objectOutput.writeInt(this.f84544c);
        InterfaceC3449g it = iterator();
        while (it.hasNext()) {
            objectOutput.writeByte(it.next());
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
    public boolean y1(byte[] bArr) {
        Arrays.sort(bArr);
        InterfaceC3449g it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (Arrays.binarySearch(bArr, it.next()) >= 0) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public byte[] z0(int i10, int i11) {
        return Oe(new byte[i11], i10, 0, i11);
    }

    @Override
    public int z3(byte b10) {
        return Rb(b10, 0, size());
    }

    public C12910a(byte b10) {
        this.f84543b = b10;
    }

    public C12910a(InterfaceC3868a interfaceC3868a) {
        this.f84543b = interfaceC3868a.i();
        InterfaceC3449g it = interfaceC3868a.iterator();
        while (it.hasNext()) {
            d1(it.next());
        }
    }

    @Override
    public void set(int i10, byte[] bArr, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13++) {
            set(i10 + i13, bArr[i11 + i13]);
        }
    }
}
