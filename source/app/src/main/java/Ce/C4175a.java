package ce;

import Zd.InterfaceC3449g;
import be.InterfaceC3868a;
import he.InterfaceC13453h;
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

public class C4175a implements InterfaceC3868a, Externalizable {

    public static final long f34748e = 1;

    public static final int f34749f = 10;

    public byte[] f34750b;

    public int f34751c;

    public byte f34752d;

    public static class C0908a extends C4175a {
        public C0908a(byte[] bArr, byte b10, boolean z10) {
            super(bArr, b10, z10);
        }

        @Override
        public void b(int i10) {
            if (i10 > this.f34750b.length) {
                throw new IllegalStateException("Can not grow ArrayList wrapped external array");
            }
        }
    }

    public class b implements InterfaceC3449g {

        public int f34753b;

        public int f34754c = -1;

        public b(int i10) {
            this.f34753b = i10;
        }

        @Override
        public boolean hasNext() {
            return this.f34753b < C4175a.this.size();
        }

        @Override
        public byte next() {
            try {
                byte b10 = C4175a.this.get(this.f34753b);
                int i10 = this.f34753b;
                this.f34753b = i10 + 1;
                this.f34754c = i10;
                return b10;
            } catch (IndexOutOfBoundsException unused) {
                throw new NoSuchElementException();
            }
        }

        @Override
        public void remove() {
            int i10 = this.f34754c;
            if (i10 == -1) {
                throw new IllegalStateException();
            }
            try {
                C4175a.this.t0(i10, 1);
                int i11 = this.f34754c;
                int i12 = this.f34753b;
                if (i11 < i12) {
                    this.f34753b = i12 - 1;
                }
                this.f34754c = -1;
            } catch (IndexOutOfBoundsException unused) {
                throw new ConcurrentModificationException();
            }
        }
    }

    public C4175a() {
        this(10, (byte) 0);
    }

    private void g(int i10, int i11) {
        byte[] bArr = this.f34750b;
        byte b10 = bArr[i10];
        bArr[i10] = bArr[i11];
        bArr[i11] = b10;
    }

    public static C4175a j(byte[] bArr) {
        return k(bArr, (byte) 0);
    }

    public static C4175a k(byte[] bArr, byte b10) {
        return new C0908a(bArr, b10, true);
    }

    @Override
    public void Ae(int i10, byte[] bArr, int i11, int i12) {
        int i13 = this.f34751c;
        if (i10 == i13) {
            C7(bArr, i11, i12);
            return;
        }
        b(i13 + i12);
        byte[] bArr2 = this.f34750b;
        System.arraycopy(bArr2, i10, bArr2, i10 + i12, this.f34751c - i10);
        System.arraycopy(bArr, i11, this.f34750b, i10, i12);
        this.f34751c += i12;
    }

    @Override
    public byte B0(int i10) {
        byte b10 = get(i10);
        t0(i10, 1);
        return b10;
    }

    @Override
    public void C7(byte[] bArr, int i10, int i11) {
        b(this.f34751c + i11);
        System.arraycopy(bArr, i10, this.f34750b, this.f34751c, i11);
        this.f34751c += i11;
    }

    @Override
    public void D7(int i10, int i11, byte b10) {
        if (i11 > this.f34751c) {
            b(i11);
            this.f34751c = i11;
        }
        Arrays.fill(this.f34750b, i10, i11, b10);
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
        if (i10 >= this.f34751c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        byte[] bArr = this.f34750b;
        byte b11 = bArr[i10];
        bArr[i10] = b10;
        return b11;
    }

    @Override
    public void Fe(int i10, byte[] bArr) {
        Ae(i10, bArr, 0, bArr.length);
    }

    @Override
    public void J0(Random random) {
        int i10 = this.f34751c;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 1) {
                return;
            }
            g(i11, random.nextInt(i11));
            i10 = i11;
        }
    }

    @Override
    public int J4(int i10, byte b10) {
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return -1;
            }
            if (this.f34750b[i11] == b10) {
                return i11;
            }
            i10 = i11;
        }
    }

    @Override
    public int O3(byte b10) {
        return J4(this.f34751c, b10);
    }

    @Override
    public byte[] Oe(byte[] bArr, int i10, int i11, int i12) {
        if (i12 == 0) {
            return bArr;
        }
        if (i10 < 0 || i10 >= this.f34751c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        System.arraycopy(this.f34750b, i10, bArr, i11, i12);
        return bArr;
    }

    @Override
    public byte[] R0(byte[] bArr) {
        int length = bArr.length;
        int length2 = bArr.length;
        int i10 = this.f34751c;
        if (length2 > i10) {
            bArr[i10] = this.f34752d;
            length = i10;
        }
        cd(bArr, 0, length);
        return bArr;
    }

    @Override
    public int Rb(byte b10, int i10, int i11) {
        if (i10 < 0) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        if (i11 > this.f34751c) {
            throw new ArrayIndexOutOfBoundsException(i11);
        }
        int i12 = i11 - 1;
        while (i10 <= i12) {
            int i13 = (i10 + i12) >>> 1;
            byte b11 = this.f34750b[i13];
            if (b11 < b10) {
                i10 = i13 + 1;
            } else {
                if (b11 <= b10) {
                    return i13;
                }
                i12 = i13 - 1;
            }
        }
        return -(i10 + 1);
    }

    @Override
    public InterfaceC3868a S6(InterfaceC13453h interfaceC13453h) {
        C4175a c4175a = new C4175a();
        for (int i10 = 0; i10 < this.f34751c; i10++) {
            if (interfaceC13453h.a(this.f34750b[i10])) {
                c4175a.d1(this.f34750b[i10]);
            }
        }
        return c4175a;
    }

    @Override
    public void T2(byte b10) {
        Arrays.fill(this.f34750b, 0, this.f34751c, b10);
    }

    @Override
    public boolean V0(InterfaceC13453h interfaceC13453h) {
        for (int i10 = 0; i10 < this.f34751c; i10++) {
            if (!interfaceC13453h.a(this.f34750b[i10])) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean W1(byte[] bArr) {
        Arrays.sort(bArr);
        byte[] bArr2 = this.f34750b;
        int i10 = this.f34751c;
        boolean z10 = false;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return z10;
            }
            if (Arrays.binarySearch(bArr, bArr2[i11]) < 0) {
                z10 = true;
                t0(i11, 1);
            }
            i10 = i11;
        }
    }

    public void a(int i10) {
        this.f34750b = new byte[i10];
        this.f34751c = 0;
    }

    @Override
    public boolean a1(byte b10) {
        return O3(b10) >= 0;
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

    public void b(int i10) {
        byte[] bArr = this.f34750b;
        if (i10 > bArr.length) {
            byte[] bArr2 = new byte[Math.max(bArr.length << 1, i10)];
            byte[] bArr3 = this.f34750b;
            System.arraycopy(bArr3, 0, bArr2, 0, bArr3.length);
            this.f34750b = bArr2;
        }
    }

    @Override
    public boolean b8(InterfaceC13453h interfaceC13453h) {
        int i10 = this.f34751c;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return true;
            }
            if (!interfaceC13453h.a(this.f34750b[i11])) {
                return false;
            }
            i10 = i11;
        }
    }

    public byte c(int i10) {
        return this.f34750b[i10];
    }

    @Override
    public byte[] cd(byte[] bArr, int i10, int i11) {
        if (i11 == 0) {
            return bArr;
        }
        if (i10 < 0 || i10 >= this.f34751c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        System.arraycopy(this.f34750b, i10, bArr, 0, i11);
        return bArr;
    }

    @Override
    public void clear() {
        a(10);
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        for (Object obj : collection) {
            if (!(obj instanceof Byte) || !a1(((Byte) obj).byteValue())) {
                return false;
            }
        }
        return true;
    }

    public void d() {
        this.f34751c = 0;
        Arrays.fill(this.f34750b, this.f34752d);
    }

    @Override
    public boolean d1(byte b10) {
        b(this.f34751c + 1);
        byte[] bArr = this.f34750b;
        int i10 = this.f34751c;
        this.f34751c = i10 + 1;
        bArr[i10] = b10;
        return true;
    }

    public void e() {
        this.f34751c = 0;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C4175a)) {
            return false;
        }
        C4175a c4175a = (C4175a) obj;
        if (c4175a.size() != size()) {
            return false;
        }
        int i10 = this.f34751c;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return true;
            }
            if (this.f34750b[i11] != c4175a.f34750b[i11]) {
                return false;
            }
            i10 = i11;
        }
    }

    public void f(int i10, byte b10) {
        this.f34750b[i10] = b10;
    }

    @Override
    public byte get(int i10) {
        if (i10 < this.f34751c) {
            return this.f34750b[i10];
        }
        throw new ArrayIndexOutOfBoundsException(i10);
    }

    public void h() {
        if (this.f34750b.length > size()) {
            int size = size();
            byte[] bArr = new byte[size];
            cd(bArr, 0, size);
            this.f34750b = bArr;
        }
    }

    @Override
    public int hashCode() {
        int i10 = this.f34751c;
        int i11 = 0;
        while (true) {
            int i12 = i10 - 1;
            if (i10 <= 0) {
                return i11;
            }
            i11 += Vd.b.d(this.f34750b[i12]);
            i10 = i12;
        }
    }

    @Override
    public byte i() {
        return this.f34752d;
    }

    @Override
    public boolean i2(Sd.a aVar) {
        if (aVar == this) {
            clear();
            return true;
        }
        InterfaceC3449g it = aVar.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (m(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean isEmpty() {
        return this.f34751c == 0;
    }

    @Override
    public InterfaceC3449g iterator() {
        return new b(0);
    }

    @Override
    public void l1(byte[] bArr) {
        C7(bArr, 0, bArr.length);
    }

    @Override
    public boolean m(byte b10) {
        for (int i10 = 0; i10 < this.f34751c; i10++) {
            if (b10 == this.f34750b[i10]) {
                t0(i10, 1);
                return true;
            }
        }
        return false;
    }

    @Override
    public byte max() {
        if (size() == 0) {
            throw new IllegalStateException("cannot find maximum of an empty list");
        }
        byte b10 = Byte.MIN_VALUE;
        for (int i10 = 0; i10 < this.f34751c; i10++) {
            byte b11 = this.f34750b[i10];
            if (b11 > b10) {
                b10 = b11;
            }
        }
        return b10;
    }

    @Override
    public byte min() {
        if (size() == 0) {
            throw new IllegalStateException("cannot find minimum of an empty list");
        }
        byte b10 = Byte.MAX_VALUE;
        for (int i10 = 0; i10 < this.f34751c; i10++) {
            byte b11 = this.f34750b[i10];
            if (b11 < b10) {
                b10 = b11;
            }
        }
        return b10;
    }

    @Override
    public void n8(int i10, byte b10) {
        int i11 = this.f34751c;
        if (i10 == i11) {
            d1(b10);
            return;
        }
        b(i11 + 1);
        byte[] bArr = this.f34750b;
        System.arraycopy(bArr, i10, bArr, i10 + 1, this.f34751c - i10);
        this.f34750b[i10] = b10;
        this.f34751c++;
    }

    @Override
    public byte o() {
        byte b10 = 0;
        for (int i10 = 0; i10 < this.f34751c; i10++) {
            b10 = (byte) (b10 + this.f34750b[i10]);
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
        this.f34751c = objectInput.readInt();
        this.f34752d = objectInput.readByte();
        int readInt = objectInput.readInt();
        this.f34750b = new byte[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            this.f34750b[i10] = objectInput.readByte();
        }
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        boolean z10 = false;
        for (Object obj : collection) {
            if ((obj instanceof Byte) && m(((Byte) obj).byteValue())) {
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
        int i10 = this.f34751c;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return;
            }
            byte[] bArr = this.f34750b;
            bArr[i11] = aVar.a(bArr[i11]);
            i10 = i11;
        }
    }

    @Override
    public boolean s2(Sd.a aVar) {
        boolean z10 = false;
        if (this == aVar) {
            return false;
        }
        InterfaceC3449g it = iterator();
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
        C4175a c4175a = new C4175a();
        for (int i10 = 0; i10 < this.f34751c; i10++) {
            if (!interfaceC13453h.a(this.f34750b[i10])) {
                c4175a.d1(this.f34750b[i10]);
            }
        }
        return c4175a;
    }

    @Override
    public byte set(int i10, byte b10) {
        if (i10 < this.f34751c) {
            byte[] bArr = this.f34750b;
            byte b11 = bArr[i10];
            bArr[i10] = b10;
            return b11;
        }
        throw new ArrayIndexOutOfBoundsException(i10);
    }

    @Override
    public int size() {
        return this.f34751c;
    }

    @Override
    public void sort() {
        Arrays.sort(this.f34750b, 0, this.f34751c);
    }

    @Override
    public InterfaceC3868a subList(int i10, int i11) {
        if (i11 < i10) {
            throw new IllegalArgumentException("end index " + i11 + " greater than begin index " + i10);
        }
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("begin index can not be < 0");
        }
        if (i11 > this.f34750b.length) {
            throw new IndexOutOfBoundsException("end index < " + this.f34750b.length);
        }
        C4175a c4175a = new C4175a(i11 - i10);
        while (i10 < i11) {
            c4175a.d1(this.f34750b[i10]);
            i10++;
        }
        return c4175a;
    }

    @Override
    public void t0(int i10, int i11) {
        int i12;
        if (i11 == 0) {
            return;
        }
        if (i10 < 0 || i10 >= (i12 = this.f34751c)) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        if (i10 == 0) {
            byte[] bArr = this.f34750b;
            System.arraycopy(bArr, i11, bArr, 0, i12 - i11);
        } else if (i12 - i11 != i10) {
            byte[] bArr2 = this.f34750b;
            int i13 = i10 + i11;
            System.arraycopy(bArr2, i13, bArr2, i10, i12 - i13);
        }
        this.f34751c -= i11;
    }

    @Override
    public boolean t1(byte[] bArr) {
        int length = bArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (!a1(bArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public byte[] toArray() {
        return z0(0, this.f34751c);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        int i10 = this.f34751c - 1;
        for (int i11 = 0; i11 < i10; i11++) {
            sb2.append((int) this.f34750b[i11]);
            sb2.append(", ");
        }
        if (size() > 0) {
            sb2.append((int) this.f34750b[this.f34751c - 1]);
        }
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public void u0() {
        y0(0, this.f34751c);
    }

    @Override
    public void w0(int i10, int i11) {
        Arrays.sort(this.f34750b, i10, i11);
    }

    @Override
    public boolean w2(Sd.a aVar) {
        if (this == aVar) {
            return true;
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
        while (i10 < this.f34751c) {
            if (this.f34750b[i10] == b10) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeInt(this.f34751c);
        objectOutput.writeByte(this.f34752d);
        int length = this.f34750b.length;
        objectOutput.writeInt(length);
        for (int i10 = 0; i10 < length; i10++) {
            objectOutput.writeByte(this.f34750b[i10]);
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
            g(i10, i12);
            i10++;
        }
    }

    @Override
    public boolean y1(byte[] bArr) {
        int length = bArr.length;
        boolean z10 = false;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return z10;
            }
            if (m(bArr[i10])) {
                z10 = true;
            }
            length = i10;
        }
    }

    @Override
    public byte[] z0(int i10, int i11) {
        byte[] bArr = new byte[i11];
        cd(bArr, i10, i11);
        return bArr;
    }

    @Override
    public int z3(byte b10) {
        return Rb(b10, 0, this.f34751c);
    }

    public C4175a(int i10) {
        this(i10, (byte) 0);
    }

    public C4175a(int i10, byte b10) {
        this.f34750b = new byte[i10];
        this.f34751c = 0;
        this.f34752d = b10;
    }

    @Override
    public void set(int i10, byte[] bArr, int i11, int i12) {
        if (i10 >= 0 && i10 + i12 <= this.f34751c) {
            System.arraycopy(bArr, i11, this.f34750b, i10, i12);
            return;
        }
        throw new ArrayIndexOutOfBoundsException(i10);
    }

    public C4175a(Sd.a aVar) {
        this(aVar.size());
        E1(aVar);
    }

    public C4175a(byte[] bArr) {
        this(bArr.length);
        l1(bArr);
    }

    public C4175a(byte[] bArr, byte b10, boolean z10) {
        if (!z10) {
            throw new IllegalStateException("Wrong call");
        }
        if (bArr != null) {
            this.f34750b = bArr;
            this.f34751c = bArr.length;
            this.f34752d = b10;
            return;
        }
        throw new IllegalArgumentException("values can not be null");
    }
}
