package ce;

import Sd.i;
import Ud.h;
import Zd.s0;
import be.InterfaceC3876i;
import he.t0;
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
import kotlin.jvm.internal.r0;
import org.apache.commons.math3.geometry.VectorFormat;

public class C4181g implements InterfaceC3876i, Externalizable {

    public static final long f34796e = 1;

    public static final int f34797f = 10;

    public short[] f34798b;

    public int f34799c;

    public short f34800d;

    public static class a extends C4181g {
        public a(short[] sArr, short s10, boolean z10) {
            super(sArr, s10, z10);
        }

        @Override
        public void b(int i10) {
            if (i10 > this.f34798b.length) {
                throw new IllegalStateException("Can not grow ArrayList wrapped external array");
            }
        }
    }

    public class b implements s0 {

        public int f34801b;

        public int f34802c = -1;

        public b(int i10) {
            this.f34801b = i10;
        }

        @Override
        public boolean hasNext() {
            return this.f34801b < C4181g.this.size();
        }

        @Override
        public short next() {
            try {
                short s10 = C4181g.this.get(this.f34801b);
                int i10 = this.f34801b;
                this.f34801b = i10 + 1;
                this.f34802c = i10;
                return s10;
            } catch (IndexOutOfBoundsException unused) {
                throw new NoSuchElementException();
            }
        }

        @Override
        public void remove() {
            int i10 = this.f34802c;
            if (i10 == -1) {
                throw new IllegalStateException();
            }
            try {
                C4181g.this.t0(i10, 1);
                int i11 = this.f34802c;
                int i12 = this.f34801b;
                if (i11 < i12) {
                    this.f34801b = i12 - 1;
                }
                this.f34802c = -1;
            } catch (IndexOutOfBoundsException unused) {
                throw new ConcurrentModificationException();
            }
        }
    }

    public C4181g() {
        this(10, (short) 0);
    }

    public static C4181g k(short[] sArr) {
        return l(sArr, (short) 0);
    }

    public static C4181g l(short[] sArr, short s10) {
        return new a(sArr, s10, true);
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
        short s10 = get(i10);
        t0(i10, 1);
        return s10;
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
        while (i10 < this.f34799c) {
            if (this.f34798b[i10] == s10) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    @Override
    public void J0(Random random) {
        int i10 = this.f34799c;
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
    public short[] N0(short[] sArr) {
        int length = sArr.length;
        int length2 = sArr.length;
        int i10 = this.f34799c;
        if (length2 > i10) {
            sArr[i10] = this.f34800d;
            length = i10;
        }
        zb(sArr, 0, length);
        return sArr;
    }

    @Override
    public void O7(int i10, short s10) {
        int i11 = this.f34799c;
        if (i10 == i11) {
            c1(s10);
            return;
        }
        b(i11 + 1);
        short[] sArr = this.f34798b;
        System.arraycopy(sArr, i10, sArr, i10 + 1, this.f34799c - i10);
        this.f34798b[i10] = s10;
        this.f34799c++;
    }

    @Override
    public short O8(int i10, short s10) {
        if (i10 >= this.f34799c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        short[] sArr = this.f34798b;
        short s11 = sArr[i10];
        sArr[i10] = s10;
        return s11;
    }

    @Override
    public void Ve(int i10, short[] sArr) {
        Y7(i10, sArr, 0, sArr.length);
    }

    @Override
    public boolean W0(short s10) {
        return y3(s10) >= 0;
    }

    @Override
    public void X2(short[] sArr) {
        ib(sArr, 0, sArr.length);
    }

    @Override
    public InterfaceC3876i Y6(t0 t0Var) {
        C4181g c4181g = new C4181g();
        for (int i10 = 0; i10 < this.f34799c; i10++) {
            if (t0Var.a(this.f34798b[i10])) {
                c4181g.c1(this.f34798b[i10]);
            }
        }
        return c4181g;
    }

    @Override
    public void Y7(int i10, short[] sArr, int i11, int i12) {
        int i13 = this.f34799c;
        if (i10 == i13) {
            ib(sArr, i11, i12);
            return;
        }
        b(i13 + i12);
        short[] sArr2 = this.f34798b;
        System.arraycopy(sArr2, i10, sArr2, i10 + i12, this.f34799c - i10);
        System.arraycopy(sArr, i11, this.f34798b, i10, i12);
        this.f34799c += i12;
    }

    @Override
    public boolean Z1(short[] sArr) {
        int length = sArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (!W0(sArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    public void a(int i10) {
        this.f34798b = new short[i10];
        this.f34799c = 0;
    }

    @Override
    public void a3(int i10, short[] sArr, int i11, int i12) {
        if (i10 < 0 || i10 + i12 > this.f34799c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        System.arraycopy(sArr, i11, this.f34798b, i10, i12);
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

    public void b(int i10) {
        short[] sArr = this.f34798b;
        if (i10 > sArr.length) {
            short[] sArr2 = new short[Math.max(sArr.length << 1, i10)];
            short[] sArr3 = this.f34798b;
            System.arraycopy(sArr3, 0, sArr2, 0, sArr3.length);
            this.f34798b = sArr2;
        }
    }

    public short c(int i10) {
        return this.f34798b[i10];
    }

    @Override
    public boolean c1(short s10) {
        b(this.f34799c + 1);
        short[] sArr = this.f34798b;
        int i10 = this.f34799c;
        this.f34799c = i10 + 1;
        sArr[i10] = s10;
        return true;
    }

    @Override
    public void clear() {
        a(10);
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        for (Object obj : collection) {
            if (!(obj instanceof Short) || !W0(((Short) obj).shortValue())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean d(short s10) {
        for (int i10 = 0; i10 < this.f34799c; i10++) {
            if (s10 == this.f34798b[i10]) {
                t0(i10, 1);
                return true;
            }
        }
        return false;
    }

    public void e() {
        this.f34799c = 0;
        Arrays.fill(this.f34798b, this.f34800d);
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C4181g)) {
            return false;
        }
        C4181g c4181g = (C4181g) obj;
        if (c4181g.size() != size()) {
            return false;
        }
        int i10 = this.f34799c;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return true;
            }
            if (this.f34798b[i11] != c4181g.f34798b[i11]) {
                return false;
            }
            i10 = i11;
        }
    }

    public void f() {
        this.f34799c = 0;
    }

    @Override
    public int f6(int i10, short s10) {
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return -1;
            }
            if (this.f34798b[i11] == s10) {
                return i11;
            }
            i10 = i11;
        }
    }

    public void g(int i10, short s10) {
        this.f34798b[i10] = s10;
    }

    @Override
    public short get(int i10) {
        if (i10 < this.f34799c) {
            return this.f34798b[i10];
        }
        throw new ArrayIndexOutOfBoundsException(i10);
    }

    public final void h(int i10, int i11) {
        short[] sArr = this.f34798b;
        short s10 = sArr[i10];
        sArr[i10] = sArr[i11];
        sArr[i11] = s10;
    }

    @Override
    public boolean h1(t0 t0Var) {
        for (int i10 = 0; i10 < this.f34799c; i10++) {
            if (!t0Var.a(this.f34798b[i10])) {
                return false;
            }
        }
        return true;
    }

    @Override
    public int hashCode() {
        int i10 = this.f34799c;
        int i11 = 0;
        while (true) {
            int i12 = i10 - 1;
            if (i10 <= 0) {
                return i11;
            }
            i11 += Vd.b.d(this.f34798b[i12]);
            i10 = i12;
        }
    }

    @Override
    public short i() {
        return this.f34800d;
    }

    @Override
    public void ib(short[] sArr, int i10, int i11) {
        b(this.f34799c + i11);
        System.arraycopy(sArr, i10, this.f34798b, this.f34799c, i11);
        this.f34799c += i11;
    }

    @Override
    public boolean isEmpty() {
        return this.f34799c == 0;
    }

    @Override
    public s0 iterator() {
        return new b(0);
    }

    public void j() {
        if (this.f34798b.length > size()) {
            int size = size();
            short[] sArr = new short[size];
            zb(sArr, 0, size);
            this.f34798b = sArr;
        }
    }

    @Override
    public void j3(short s10) {
        Arrays.fill(this.f34798b, 0, this.f34799c, s10);
    }

    @Override
    public InterfaceC3876i l7(t0 t0Var) {
        C4181g c4181g = new C4181g();
        for (int i10 = 0; i10 < this.f34799c; i10++) {
            if (!t0Var.a(this.f34798b[i10])) {
                c4181g.c1(this.f34798b[i10]);
            }
        }
        return c4181g;
    }

    @Override
    public short max() {
        if (size() == 0) {
            throw new IllegalStateException("cannot find maximum of an empty list");
        }
        short s10 = r0.f95769b;
        for (int i10 = 0; i10 < this.f34799c; i10++) {
            short s11 = this.f34798b[i10];
            if (s11 > s10) {
                s10 = s11;
            }
        }
        return s10;
    }

    @Override
    public short min() {
        if (size() == 0) {
            throw new IllegalStateException("cannot find minimum of an empty list");
        }
        short s10 = r0.f95770c;
        for (int i10 = 0; i10 < this.f34799c; i10++) {
            short s11 = this.f34798b[i10];
            if (s11 < s10) {
                s10 = s11;
            }
        }
        return s10;
    }

    @Override
    public boolean n1(short[] sArr) {
        int length = sArr.length;
        boolean z10 = false;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return z10;
            }
            if (d(sArr[i10])) {
                z10 = true;
            }
            length = i10;
        }
    }

    @Override
    public short o() {
        short s10 = 0;
        for (int i10 = 0; i10 < this.f34799c; i10++) {
            s10 = (short) (s10 + this.f34798b[i10]);
        }
        return s10;
    }

    @Override
    public boolean o1(i iVar) {
        if (iVar == this) {
            clear();
            return true;
        }
        s0 it = iVar.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (d(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public void o6(int i10, int i11, short s10) {
        if (i11 > this.f34799c) {
            b(i11);
            this.f34799c = i11;
        }
        Arrays.fill(this.f34798b, i10, i11, s10);
    }

    @Override
    public boolean q2(i iVar) {
        boolean z10 = false;
        if (this == iVar) {
            return false;
        }
        s0 it = iterator();
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
    public void r(h hVar) {
        int i10 = this.f34799c;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return;
            }
            short[] sArr = this.f34798b;
            sArr[i11] = hVar.a(sArr[i11]);
            i10 = i11;
        }
    }

    @Override
    public boolean r1(short[] sArr) {
        Arrays.sort(sArr);
        short[] sArr2 = this.f34798b;
        int i10 = this.f34799c;
        boolean z10 = false;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return z10;
            }
            if (Arrays.binarySearch(sArr, sArr2[i11]) < 0) {
                z10 = true;
                t0(i11, 1);
            }
            i10 = i11;
        }
    }

    @Override
    public int r5(short s10, int i10, int i11) {
        if (i10 < 0) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        if (i11 > this.f34799c) {
            throw new ArrayIndexOutOfBoundsException(i11);
        }
        int i12 = i11 - 1;
        while (i10 <= i12) {
            int i13 = (i10 + i12) >>> 1;
            short s11 = this.f34798b[i13];
            if (s11 < s10) {
                i10 = i13 + 1;
            } else {
                if (s11 <= s10) {
                    return i13;
                }
                i12 = i13 - 1;
            }
        }
        return -(i10 + 1);
    }

    @Override
    public short[] rd(short[] sArr, int i10, int i11, int i12) {
        if (i12 == 0) {
            return sArr;
        }
        if (i10 < 0 || i10 >= this.f34799c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        System.arraycopy(this.f34798b, i10, sArr, i11, i12);
        return sArr;
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f34799c = objectInput.readInt();
        this.f34800d = objectInput.readShort();
        int readInt = objectInput.readInt();
        this.f34798b = new short[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            this.f34798b[i10] = objectInput.readShort();
        }
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        boolean z10 = false;
        for (Object obj : collection) {
            if ((obj instanceof Short) && d(((Short) obj).shortValue())) {
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
        return this.f34799c;
    }

    @Override
    public void sort() {
        Arrays.sort(this.f34798b, 0, this.f34799c);
    }

    @Override
    public InterfaceC3876i subList(int i10, int i11) {
        if (i11 < i10) {
            throw new IllegalArgumentException("end index " + i11 + " greater than begin index " + i10);
        }
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("begin index can not be < 0");
        }
        if (i11 > this.f34798b.length) {
            throw new IndexOutOfBoundsException("end index < " + this.f34798b.length);
        }
        C4181g c4181g = new C4181g(i11 - i10);
        while (i10 < i11) {
            c4181g.c1(this.f34798b[i10]);
            i10++;
        }
        return c4181g;
    }

    @Override
    public void t0(int i10, int i11) {
        int i12;
        if (i11 == 0) {
            return;
        }
        if (i10 < 0 || i10 >= (i12 = this.f34799c)) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        if (i10 == 0) {
            short[] sArr = this.f34798b;
            System.arraycopy(sArr, i11, sArr, 0, i12 - i11);
        } else if (i12 - i11 != i10) {
            short[] sArr2 = this.f34798b;
            int i13 = i10 + i11;
            System.arraycopy(sArr2, i13, sArr2, i10, i12 - i13);
        }
        this.f34799c -= i11;
    }

    @Override
    public short t5(int i10, short s10) {
        if (i10 >= this.f34799c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        short[] sArr = this.f34798b;
        short s11 = sArr[i10];
        sArr[i10] = s10;
        return s11;
    }

    @Override
    public short[] toArray() {
        return z0(0, this.f34799c);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        int i10 = this.f34799c - 1;
        for (int i11 = 0; i11 < i10; i11++) {
            sb2.append((int) this.f34798b[i11]);
            sb2.append(", ");
        }
        if (size() > 0) {
            sb2.append((int) this.f34798b[this.f34799c - 1]);
        }
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public void u0() {
        y0(0, this.f34799c);
    }

    @Override
    public boolean v2(i iVar) {
        if (this == iVar) {
            return true;
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
        Arrays.sort(this.f34798b, i10, i11);
    }

    @Override
    public int w4(short s10) {
        return r5(s10, 0, this.f34799c);
    }

    @Override
    public boolean wb(t0 t0Var) {
        int i10 = this.f34799c;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return true;
            }
            if (!t0Var.a(this.f34798b[i11])) {
                return false;
            }
            i10 = i11;
        }
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeInt(this.f34799c);
        objectOutput.writeShort(this.f34800d);
        int length = this.f34798b.length;
        objectOutput.writeInt(length);
        for (int i10 = 0; i10 < length; i10++) {
            objectOutput.writeShort(this.f34798b[i10]);
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
    public int y3(short s10) {
        return f6(this.f34799c, s10);
    }

    @Override
    public int y5(short s10) {
        return H6(0, s10);
    }

    @Override
    public short[] z0(int i10, int i11) {
        short[] sArr = new short[i11];
        zb(sArr, i10, i11);
        return sArr;
    }

    @Override
    public short[] zb(short[] sArr, int i10, int i11) {
        if (i11 == 0) {
            return sArr;
        }
        if (i10 < 0 || i10 >= this.f34799c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        System.arraycopy(this.f34798b, i10, sArr, 0, i11);
        return sArr;
    }

    public C4181g(int i10) {
        this(i10, (short) 0);
    }

    public C4181g(int i10, short s10) {
        this.f34798b = new short[i10];
        this.f34799c = 0;
        this.f34800d = s10;
    }

    public C4181g(i iVar) {
        this(iVar.size());
        F1(iVar);
    }

    public C4181g(short[] sArr) {
        this(sArr.length);
        X2(sArr);
    }

    public C4181g(short[] sArr, short s10, boolean z10) {
        if (!z10) {
            throw new IllegalStateException("Wrong call");
        }
        if (sArr != null) {
            this.f34798b = sArr;
            this.f34799c = sArr.length;
            this.f34800d = s10;
            return;
        }
        throw new IllegalArgumentException("values can not be null");
    }
}
