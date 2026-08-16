package ce;

import Zd.InterfaceC3458p;
import be.InterfaceC3869b;
import he.InterfaceC13462q;
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
import kotlin.jvm.internal.C14021s;
import org.apache.commons.math3.geometry.VectorFormat;

public class C4176b implements InterfaceC3869b, Externalizable {

    public static final long f34756e = 1;

    public static final int f34757f = 10;

    public char[] f34758b;

    public int f34759c;

    public char f34760d;

    public static class a extends C4176b {
        public a(char[] cArr, char c10, boolean z10) {
            super(cArr, c10, z10);
        }

        @Override
        public void c(int i10) {
            if (i10 > this.f34758b.length) {
                throw new IllegalStateException("Can not grow ArrayList wrapped external array");
            }
        }
    }

    public class C0909b implements InterfaceC3458p {

        public int f34761b;

        public int f34762c = -1;

        public C0909b(int i10) {
            this.f34761b = i10;
        }

        @Override
        public boolean hasNext() {
            return this.f34761b < C4176b.this.size();
        }

        @Override
        public char next() {
            try {
                char c10 = C4176b.this.get(this.f34761b);
                int i10 = this.f34761b;
                this.f34761b = i10 + 1;
                this.f34762c = i10;
                return c10;
            } catch (IndexOutOfBoundsException unused) {
                throw new NoSuchElementException();
            }
        }

        @Override
        public void remove() {
            int i10 = this.f34762c;
            if (i10 == -1) {
                throw new IllegalStateException();
            }
            try {
                C4176b.this.t0(i10, 1);
                int i11 = this.f34762c;
                int i12 = this.f34761b;
                if (i11 < i12) {
                    this.f34761b = i12 - 1;
                }
                this.f34762c = -1;
            } catch (IndexOutOfBoundsException unused) {
                throw new ConcurrentModificationException();
            }
        }
    }

    public C4176b() {
        this(10, (char) 0);
    }

    private void j(int i10, int i11) {
        char[] cArr = this.f34758b;
        char c10 = cArr[i10];
        cArr[i10] = cArr[i11];
        cArr[i11] = c10;
    }

    public static C4176b l(char[] cArr) {
        return m(cArr, (char) 0);
    }

    public static C4176b m(char[] cArr, char c10) {
        return new a(cArr, c10, true);
    }

    @Override
    public char B0(int i10) {
        char c10 = get(i10);
        t0(i10, 1);
        return c10;
    }

    @Override
    public int B3(char c10) {
        return id(c10, 0, this.f34759c);
    }

    @Override
    public char[] B5(char[] cArr, int i10, int i11) {
        if (i11 == 0) {
            return cArr;
        }
        if (i10 < 0 || i10 >= this.f34759c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        System.arraycopy(this.f34758b, i10, cArr, 0, i11);
        return cArr;
    }

    @Override
    public char C8(int i10, char c10) {
        if (i10 >= this.f34759c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        char[] cArr = this.f34758b;
        char c11 = cArr[i10];
        cArr[i10] = c10;
        return c11;
    }

    @Override
    public char[] Fc(char[] cArr, int i10, int i11, int i12) {
        if (i12 == 0) {
            return cArr;
        }
        if (i10 < 0 || i10 >= this.f34759c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        System.arraycopy(this.f34758b, i10, cArr, i11, i12);
        return cArr;
    }

    @Override
    public void Ge(int i10, char[] cArr) {
        yd(i10, cArr, 0, cArr.length);
    }

    @Override
    public void H7(int i10, int i11, char c10) {
        if (i11 > this.f34759c) {
            c(i11);
            this.f34759c = i11;
        }
        Arrays.fill(this.f34758b, i10, i11, c10);
    }

    @Override
    public void J0(Random random) {
        int i10 = this.f34759c;
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
    public int K4(int i10, char c10) {
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return -1;
            }
            if (this.f34758b[i11] == c10) {
                return i11;
            }
            i10 = i11;
        }
    }

    @Override
    public void L5(char[] cArr, int i10, int i11) {
        c(this.f34759c + i11);
        System.arraycopy(cArr, i10, this.f34758b, this.f34759c, i11);
        this.f34759c += i11;
    }

    @Override
    public InterfaceC3869b Mc(InterfaceC13462q interfaceC13462q) {
        C4176b c4176b = new C4176b();
        for (int i10 = 0; i10 < this.f34759c; i10++) {
            if (!interfaceC13462q.a(this.f34758b[i10])) {
                c4176b.e1(this.f34758b[i10]);
            }
        }
        return c4176b;
    }

    @Override
    public char[] Q0(char[] cArr) {
        int length = cArr.length;
        int length2 = cArr.length;
        int i10 = this.f34759c;
        if (length2 > i10) {
            cArr[i10] = this.f34760d;
            length = i10;
        }
        B5(cArr, 0, length);
        return cArr;
    }

    @Override
    public void S2(char c10) {
        Arrays.fill(this.f34758b, 0, this.f34759c, c10);
    }

    @Override
    public boolean S8(InterfaceC13462q interfaceC13462q) {
        int i10 = this.f34759c;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return true;
            }
            if (!interfaceC13462q.a(this.f34758b[i11])) {
                return false;
            }
            i10 = i11;
        }
    }

    @Override
    public boolean X1(char[] cArr) {
        Arrays.sort(cArr);
        char[] cArr2 = this.f34758b;
        int i10 = this.f34759c;
        boolean z10 = false;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return z10;
            }
            if (Arrays.binarySearch(cArr, cArr2[i11]) < 0) {
                z10 = true;
                t0(i11, 1);
            }
            i10 = i11;
        }
    }

    @Override
    public void Xc(int i10, char[] cArr) {
        gc(i10, cArr, 0, cArr.length);
    }

    @Override
    public int Z3(char c10) {
        return K4(this.f34759c, c10);
    }

    public void a(int i10) {
        this.f34758b = new char[i10];
        this.f34759c = 0;
    }

    @Override
    public boolean addAll(Collection<? extends Character> collection) {
        Iterator<? extends Character> it = collection.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (e1(it.next().charValue())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean b(char c10) {
        for (int i10 = 0; i10 < this.f34759c; i10++) {
            if (c10 == this.f34758b[i10]) {
                t0(i10, 1);
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean b1(char c10) {
        return Z3(c10) >= 0;
    }

    @Override
    public char b5(int i10, char c10) {
        if (i10 >= this.f34759c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        char[] cArr = this.f34758b;
        char c11 = cArr[i10];
        cArr[i10] = c10;
        return c11;
    }

    public void c(int i10) {
        char[] cArr = this.f34758b;
        if (i10 > cArr.length) {
            char[] cArr2 = new char[Math.max(cArr.length << 1, i10)];
            char[] cArr3 = this.f34758b;
            System.arraycopy(cArr3, 0, cArr2, 0, cArr3.length);
            this.f34758b = cArr2;
        }
    }

    @Override
    public void clear() {
        a(10);
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        for (Object obj : collection) {
            if (!(obj instanceof Character) || !b1(((Character) obj).charValue())) {
                return false;
            }
        }
        return true;
    }

    public char d(int i10) {
        return this.f34758b[i10];
    }

    public void e() {
        this.f34759c = 0;
        Arrays.fill(this.f34758b, this.f34760d);
    }

    @Override
    public boolean e1(char c10) {
        c(this.f34759c + 1);
        char[] cArr = this.f34758b;
        int i10 = this.f34759c;
        this.f34759c = i10 + 1;
        cArr[i10] = c10;
        return true;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C4176b)) {
            return false;
        }
        C4176b c4176b = (C4176b) obj;
        if (c4176b.size() != size()) {
            return false;
        }
        int i10 = this.f34759c;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return true;
            }
            if (this.f34758b[i11] != c4176b.f34758b[i11]) {
                return false;
            }
            i10 = i11;
        }
    }

    public void f() {
        this.f34759c = 0;
    }

    @Override
    public void g(Ud.b bVar) {
        int i10 = this.f34759c;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return;
            }
            char[] cArr = this.f34758b;
            cArr[i11] = bVar.a(cArr[i11]);
            i10 = i11;
        }
    }

    @Override
    public boolean g1(InterfaceC13462q interfaceC13462q) {
        for (int i10 = 0; i10 < this.f34759c; i10++) {
            if (!interfaceC13462q.a(this.f34758b[i10])) {
                return false;
            }
        }
        return true;
    }

    @Override
    public void gc(int i10, char[] cArr, int i11, int i12) {
        if (i10 < 0 || i10 + i12 > this.f34759c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        System.arraycopy(cArr, i11, this.f34758b, i10, i12);
    }

    @Override
    public char get(int i10) {
        if (i10 < this.f34759c) {
            return this.f34758b[i10];
        }
        throw new ArrayIndexOutOfBoundsException(i10);
    }

    public void h(int i10, char c10) {
        this.f34758b[i10] = c10;
    }

    @Override
    public int h6(char c10) {
        return v6(0, c10);
    }

    @Override
    public int hashCode() {
        int i10 = this.f34759c;
        int i11 = 0;
        while (true) {
            int i12 = i10 - 1;
            if (i10 <= 0) {
                return i11;
            }
            i11 += Vd.b.d(this.f34758b[i12]);
            i10 = i12;
        }
    }

    @Override
    public char i() {
        return this.f34760d;
    }

    @Override
    public int id(char c10, int i10, int i11) {
        if (i10 < 0) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        if (i11 > this.f34759c) {
            throw new ArrayIndexOutOfBoundsException(i11);
        }
        int i12 = i11 - 1;
        while (i10 <= i12) {
            int i13 = (i10 + i12) >>> 1;
            char c11 = this.f34758b[i13];
            if (c11 < c10) {
                i10 = i13 + 1;
            } else {
                if (c11 <= c10) {
                    return i13;
                }
                i12 = i13 - 1;
            }
        }
        return -(i10 + 1);
    }

    @Override
    public boolean isEmpty() {
        return this.f34759c == 0;
    }

    @Override
    public InterfaceC3458p iterator() {
        return new C0909b(0);
    }

    public void k() {
        if (this.f34758b.length > size()) {
            int size = size();
            char[] cArr = new char[size];
            B5(cArr, 0, size);
            this.f34758b = cArr;
        }
    }

    @Override
    public char max() {
        if (size() == 0) {
            throw new IllegalStateException("cannot find maximum of an empty list");
        }
        char c10 = 0;
        for (int i10 = 0; i10 < this.f34759c; i10++) {
            char c11 = this.f34758b[i10];
            if (c11 > c10) {
                c10 = c11;
            }
        }
        return c10;
    }

    @Override
    public char min() {
        if (size() == 0) {
            throw new IllegalStateException("cannot find minimum of an empty list");
        }
        char c10 = C14021s.f95775c;
        for (int i10 = 0; i10 < this.f34759c; i10++) {
            char c11 = this.f34758b[i10];
            if (c11 < c10) {
                c10 = c11;
            }
        }
        return c10;
    }

    @Override
    public boolean n2(char[] cArr) {
        boolean z10 = false;
        for (char c10 : cArr) {
            if (e1(c10)) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public char o() {
        char c10 = 0;
        for (int i10 = 0; i10 < this.f34759c; i10++) {
            c10 = (char) (c10 + this.f34758b[i10]);
        }
        return c10;
    }

    @Override
    public void o3(char[] cArr) {
        L5(cArr, 0, cArr.length);
    }

    @Override
    public void o8(int i10, char c10) {
        int i11 = this.f34759c;
        if (i10 == i11) {
            e1(c10);
            return;
        }
        c(i11 + 1);
        char[] cArr = this.f34758b;
        System.arraycopy(cArr, i10, cArr, i10 + 1, this.f34759c - i10);
        this.f34758b[i10] = c10;
        this.f34759c++;
    }

    @Override
    public boolean p2(Sd.b bVar) {
        if (this == bVar) {
            return true;
        }
        InterfaceC3458p it = bVar.iterator();
        while (it.hasNext()) {
            if (!b1(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public InterfaceC3869b p4(InterfaceC13462q interfaceC13462q) {
        C4176b c4176b = new C4176b();
        for (int i10 = 0; i10 < this.f34759c; i10++) {
            if (interfaceC13462q.a(this.f34758b[i10])) {
                c4176b.e1(this.f34758b[i10]);
            }
        }
        return c4176b;
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f34759c = objectInput.readInt();
        this.f34760d = objectInput.readChar();
        int readInt = objectInput.readInt();
        this.f34758b = new char[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            this.f34758b[i10] = objectInput.readChar();
        }
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        boolean z10 = false;
        for (Object obj : collection) {
            if ((obj instanceof Character) && b(((Character) obj).charValue())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        InterfaceC3458p it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (!collection.contains(Character.valueOf(it.next()))) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public int size() {
        return this.f34759c;
    }

    @Override
    public void sort() {
        Arrays.sort(this.f34758b, 0, this.f34759c);
    }

    @Override
    public InterfaceC3869b subList(int i10, int i11) {
        if (i11 < i10) {
            throw new IllegalArgumentException("end index " + i11 + " greater than begin index " + i10);
        }
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("begin index can not be < 0");
        }
        if (i11 > this.f34758b.length) {
            throw new IndexOutOfBoundsException("end index < " + this.f34758b.length);
        }
        C4176b c4176b = new C4176b(i11 - i10);
        while (i10 < i11) {
            c4176b.e1(this.f34758b[i10]);
            i10++;
        }
        return c4176b;
    }

    @Override
    public void t0(int i10, int i11) {
        int i12;
        if (i11 == 0) {
            return;
        }
        if (i10 < 0 || i10 >= (i12 = this.f34759c)) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        if (i10 == 0) {
            char[] cArr = this.f34758b;
            System.arraycopy(cArr, i11, cArr, 0, i12 - i11);
        } else if (i12 - i11 != i10) {
            char[] cArr2 = this.f34758b;
            int i13 = i10 + i11;
            System.arraycopy(cArr2, i13, cArr2, i10, i12 - i13);
        }
        this.f34759c -= i11;
    }

    @Override
    public boolean t2(Sd.b bVar) {
        if (bVar == this) {
            clear();
            return true;
        }
        InterfaceC3458p it = bVar.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (b(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public char[] toArray() {
        return z0(0, this.f34759c);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        int i10 = this.f34759c - 1;
        for (int i11 = 0; i11 < i10; i11++) {
            sb2.append(this.f34758b[i11]);
            sb2.append(", ");
        }
        if (size() > 0) {
            sb2.append(this.f34758b[this.f34759c - 1]);
        }
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public void u0() {
        y0(0, this.f34759c);
    }

    @Override
    public boolean u1(char[] cArr) {
        int length = cArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (!b1(cArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean u2(Sd.b bVar) {
        boolean z10 = false;
        if (this == bVar) {
            return false;
        }
        InterfaceC3458p it = iterator();
        while (it.hasNext()) {
            if (!bVar.b1(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean v1(char[] cArr) {
        int length = cArr.length;
        boolean z10 = false;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return z10;
            }
            if (b(cArr[i10])) {
                z10 = true;
            }
            length = i10;
        }
    }

    @Override
    public int v6(int i10, char c10) {
        while (i10 < this.f34759c) {
            if (this.f34758b[i10] == c10) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    @Override
    public void w0(int i10, int i11) {
        Arrays.sort(this.f34758b, i10, i11);
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeInt(this.f34759c);
        objectOutput.writeChar(this.f34760d);
        int length = this.f34758b.length;
        objectOutput.writeInt(length);
        for (int i10 = 0; i10 < length; i10++) {
            objectOutput.writeChar(this.f34758b[i10]);
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
    public void yd(int i10, char[] cArr, int i11, int i12) {
        int i13 = this.f34759c;
        if (i10 == i13) {
            L5(cArr, i11, i12);
            return;
        }
        c(i13 + i12);
        char[] cArr2 = this.f34758b;
        System.arraycopy(cArr2, i10, cArr2, i10 + i12, this.f34759c - i10);
        System.arraycopy(cArr, i11, this.f34758b, i10, i12);
        this.f34759c += i12;
    }

    @Override
    public char[] z0(int i10, int i11) {
        char[] cArr = new char[i11];
        B5(cArr, i10, i11);
        return cArr;
    }

    @Override
    public boolean z1(Sd.b bVar) {
        InterfaceC3458p it = bVar.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (e1(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    public C4176b(int i10) {
        this(i10, (char) 0);
    }

    public C4176b(int i10, char c10) {
        this.f34758b = new char[i10];
        this.f34759c = 0;
        this.f34760d = c10;
    }

    public C4176b(Sd.b bVar) {
        this(bVar.size());
        z1(bVar);
    }

    public C4176b(char[] cArr) {
        this(cArr.length);
        o3(cArr);
    }

    public C4176b(char[] cArr, char c10, boolean z10) {
        if (!z10) {
            throw new IllegalStateException("Wrong call");
        }
        if (cArr != null) {
            this.f34758b = cArr;
            this.f34759c = cArr.length;
            this.f34760d = c10;
            return;
        }
        throw new IllegalArgumentException("values can not be null");
    }
}
