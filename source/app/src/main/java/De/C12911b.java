package de;

import Zd.InterfaceC3458p;
import be.InterfaceC3869b;
import he.InterfaceC13462q;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Random;
import kotlin.jvm.internal.C14021s;
import org.apache.commons.math3.geometry.VectorFormat;

public class C12911b implements InterfaceC3869b, Externalizable {

    public char f84555b;

    public int f84556c;

    public c f84557d = null;

    public c f84558e = null;

    public class a implements InterfaceC3458p {

        public c f84559b;

        public c f84560c;

        public a() {
            this.f84559b = C12911b.this.f84557d;
        }

        @Override
        public boolean hasNext() {
            return C12911b.f(this.f84559b);
        }

        @Override
        public char next() {
            if (C12911b.k(this.f84559b)) {
                throw new NoSuchElementException();
            }
            char c10 = this.f84559b.c();
            c cVar = this.f84559b;
            this.f84560c = cVar;
            this.f84559b = cVar.a();
            return c10;
        }

        @Override
        public void remove() {
            c cVar = this.f84560c;
            if (cVar == null) {
                throw new IllegalStateException();
            }
            C12911b.this.l(cVar);
            this.f84560c = null;
        }
    }

    public class C1577b implements InterfaceC13462q {

        public boolean f84562a = false;

        public C1577b() {
        }

        @Override
        public boolean a(char c10) {
            if (C12911b.this.b(c10)) {
                this.f84562a = true;
            }
            return true;
        }

        public boolean b() {
            return this.f84562a;
        }
    }

    public static class c {

        public char f84564a;

        public c f84565b;

        public c f84566c;

        public c(char c10) {
            this.f84564a = c10;
        }

        public c a() {
            return this.f84566c;
        }

        public c b() {
            return this.f84565b;
        }

        public char c() {
            return this.f84564a;
        }

        public void d(c cVar) {
            this.f84566c = cVar;
        }

        public void e(c cVar) {
            this.f84565b = cVar;
        }

        public void f(char c10) {
            this.f84564a = c10;
        }
    }

    public C12911b() {
    }

    public static c c(c cVar, int i10, int i11) {
        return d(cVar, i10, i11, true);
    }

    public static c d(c cVar, int i10, int i11, boolean z10) {
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

    public static C12911b j(char[] cArr, int i10, int i11) {
        C12911b c12911b = new C12911b();
        for (int i12 = 0; i12 < i11; i12++) {
            c12911b.e1(cArr[i10 + i12]);
        }
        return c12911b;
    }

    public static boolean k(Object obj) {
        return obj == null;
    }

    @Override
    public char B0(int i10) {
        c e10 = e(i10);
        if (!k(e10)) {
            char c10 = e10.c();
            l(e10);
            return c10;
        }
        throw new ArrayIndexOutOfBoundsException("no elemenet at " + i10);
    }

    @Override
    public int B3(char c10) {
        return id(c10, 0, size());
    }

    @Override
    public char[] B5(char[] cArr, int i10, int i11) {
        return Fc(cArr, i10, 0, i11);
    }

    @Override
    public char C8(int i10, char c10) {
        return b5(i10, c10);
    }

    @Override
    public char[] Fc(char[] cArr, int i10, int i11, int i12) {
        if (i12 == 0) {
            return cArr;
        }
        if (i10 < 0 || i10 >= size()) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        c e10 = e(i10);
        for (int i13 = 0; i13 < i12; i13++) {
            cArr[i11 + i13] = e10.c();
            e10 = e10.a();
        }
        return cArr;
    }

    @Override
    public void Ge(int i10, char[] cArr) {
        h(i10, j(cArr, 0, cArr.length));
    }

    @Override
    public void H7(int i10, int i11, char c10) {
        int i12;
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("begin index can not be < 0");
        }
        c e10 = e(i10);
        if (i11 <= this.f84556c) {
            while (i10 < i11) {
                e10.f(c10);
                e10 = e10.a();
                i10++;
            }
            return;
        }
        while (true) {
            i12 = this.f84556c;
            if (i10 >= i12) {
                break;
            }
            e10.f(c10);
            e10 = e10.a();
            i10++;
        }
        while (i12 < i11) {
            e1(c10);
            i12++;
        }
    }

    @Override
    public void J0(Random random) {
        for (int i10 = 0; i10 < this.f84556c; i10++) {
            c e10 = e(random.nextInt(size()));
            l(e10);
            e1(e10.c());
        }
    }

    @Override
    public int K4(int i10, char c10) {
        int i11 = -1;
        if (isEmpty()) {
            return -1;
        }
        for (c e10 = e(i10); f(e10.a()); e10 = e10.a()) {
            if (e10.c() == c10) {
                i11 = i10;
            }
            i10++;
        }
        return i11;
    }

    @Override
    public void L5(char[] cArr, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            e1(cArr[i10 + i12]);
        }
    }

    @Override
    public InterfaceC3869b Mc(InterfaceC13462q interfaceC13462q) {
        C12911b c12911b = new C12911b();
        for (c cVar = this.f84557d; f(cVar); cVar = cVar.a()) {
            if (!interfaceC13462q.a(cVar.c())) {
                c12911b.e1(cVar.c());
            }
        }
        return c12911b;
    }

    @Override
    public char[] Q0(char[] cArr) {
        return B5(cArr, 0, this.f84556c);
    }

    @Override
    public void S2(char c10) {
        H7(0, this.f84556c, c10);
    }

    @Override
    public boolean S8(InterfaceC13462q interfaceC13462q) {
        for (c cVar = this.f84558e; f(cVar); cVar = cVar.b()) {
            if (!interfaceC13462q.a(cVar.c())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean X1(char[] cArr) {
        Arrays.sort(cArr);
        InterfaceC3458p it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (Arrays.binarySearch(cArr, it.next()) < 0) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public void Xc(int i10, char[] cArr) {
        gc(i10, cArr, 0, cArr.length);
    }

    @Override
    public int Z3(char c10) {
        return K4(0, c10);
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
        boolean z10 = false;
        for (c cVar = this.f84557d; f(cVar); cVar = cVar.a()) {
            if (cVar.c() == c10) {
                l(cVar);
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean b1(char c10) {
        if (isEmpty()) {
            return false;
        }
        for (c cVar = this.f84557d; f(cVar); cVar = cVar.a()) {
            if (cVar.c() == c10) {
                return true;
            }
        }
        return false;
    }

    @Override
    public char b5(int i10, char c10) {
        if (i10 > this.f84556c) {
            throw new IndexOutOfBoundsException("index " + i10 + " exceeds size " + this.f84556c);
        }
        c e10 = e(i10);
        if (!k(e10)) {
            char c11 = e10.c();
            e10.f(c10);
            return c11;
        }
        throw new IndexOutOfBoundsException("at offset " + i10);
    }

    @Override
    public void clear() {
        this.f84556c = 0;
        this.f84557d = null;
        this.f84558e = null;
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        if (isEmpty()) {
            return false;
        }
        for (Object obj : collection) {
            if (!(obj instanceof Character) || !b1(((Character) obj).charValue())) {
                return false;
            }
        }
        return true;
    }

    public c e(int i10) {
        if (i10 >= size()) {
            return null;
        }
        return i10 <= (size() >>> 1) ? d(this.f84557d, 0, i10, true) : d(this.f84558e, size() - 1, i10, false);
    }

    @Override
    public boolean e1(char c10) {
        c cVar = new c(c10);
        if (k(this.f84557d)) {
            this.f84557d = cVar;
            this.f84558e = cVar;
        } else {
            cVar.e(this.f84558e);
            this.f84558e.d(cVar);
            this.f84558e = cVar;
        }
        this.f84556c++;
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
        C12911b c12911b = (C12911b) obj;
        if (this.f84555b != c12911b.f84555b || this.f84556c != c12911b.f84556c) {
            return false;
        }
        InterfaceC3458p it = iterator();
        InterfaceC3458p it2 = c12911b.iterator();
        while (it.hasNext()) {
            if (!it2.hasNext() || it.next() != it2.next()) {
                return false;
            }
        }
        return true;
    }

    @Override
    public void g(Ud.b bVar) {
        for (c cVar = this.f84557d; f(cVar); cVar = cVar.a()) {
            cVar.f(bVar.a(cVar.c()));
        }
    }

    @Override
    public boolean g1(InterfaceC13462q interfaceC13462q) {
        for (c cVar = this.f84557d; f(cVar); cVar = cVar.a()) {
            if (!interfaceC13462q.a(cVar.c())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public void gc(int i10, char[] cArr, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13++) {
            b5(i10 + i13, cArr[i11 + i13]);
        }
    }

    @Override
    public char get(int i10) {
        if (i10 <= this.f84556c) {
            c e10 = e(i10);
            return k(e10) ? this.f84555b : e10.c();
        }
        throw new IndexOutOfBoundsException("index " + i10 + " exceeds size " + this.f84556c);
    }

    public void h(int i10, C12911b c12911b) {
        c e10 = e(i10);
        this.f84556c += c12911b.f84556c;
        c cVar = this.f84557d;
        if (e10 == cVar) {
            c12911b.f84558e.d(cVar);
            this.f84557d.e(c12911b.f84558e);
            this.f84557d = c12911b.f84557d;
        } else {
            if (!k(e10)) {
                c b10 = e10.b();
                e10.b().d(c12911b.f84557d);
                c12911b.f84558e.d(e10);
                e10.e(c12911b.f84558e);
                c12911b.f84557d.e(b10);
                return;
            }
            if (this.f84556c == 0) {
                this.f84557d = c12911b.f84557d;
                this.f84558e = c12911b.f84558e;
            } else {
                this.f84558e.d(c12911b.f84557d);
                c12911b.f84557d.e(this.f84558e);
                this.f84558e = c12911b.f84558e;
            }
        }
    }

    @Override
    public int h6(char c10) {
        return v6(0, c10);
    }

    @Override
    public int hashCode() {
        int d10 = (Vd.b.d(this.f84555b) * 31) + this.f84556c;
        InterfaceC3458p it = iterator();
        while (it.hasNext()) {
            d10 = (d10 * 31) + Vd.b.d(it.next());
        }
        return d10;
    }

    @Override
    public char i() {
        return this.f84555b;
    }

    @Override
    public int id(char c10, int i10, int i11) {
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("begin index can not be < 0");
        }
        if (i11 > this.f84556c) {
            throw new IndexOutOfBoundsException("end index > size: " + i11 + " > " + this.f84556c);
        }
        if (i11 >= i10) {
            c e10 = e(i10);
            while (i10 < i11) {
                int i12 = (i10 + i11) >>> 1;
                c c11 = c(e10, i10, i12);
                if (c11.c() == c10) {
                    return i12;
                }
                if (c11.c() < c10) {
                    i10 = i12 + 1;
                    e10 = c11.f84566c;
                } else {
                    i11 = i12 - 1;
                }
            }
        }
        return -(i10 + 1);
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override
    public InterfaceC3458p iterator() {
        return new a();
    }

    public final void l(c cVar) {
        if (k(cVar)) {
            return;
        }
        this.f84556c--;
        c b10 = cVar.b();
        c a10 = cVar.a();
        if (f(b10)) {
            b10.d(a10);
        } else {
            this.f84557d = a10;
        }
        if (f(a10)) {
            a10.e(b10);
        } else {
            this.f84558e = b10;
        }
        cVar.d(null);
        cVar.e(null);
    }

    @Override
    public char max() {
        if (isEmpty()) {
            throw new IllegalStateException();
        }
        char c10 = 0;
        for (c cVar = this.f84557d; f(cVar); cVar = cVar.a()) {
            if (c10 < cVar.c()) {
                c10 = cVar.c();
            }
        }
        return c10;
    }

    @Override
    public char min() {
        if (isEmpty()) {
            throw new IllegalStateException();
        }
        char c10 = C14021s.f95775c;
        for (c cVar = this.f84557d; f(cVar); cVar = cVar.a()) {
            if (c10 > cVar.c()) {
                c10 = cVar.c();
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
        for (c cVar = this.f84557d; f(cVar); cVar = cVar.a()) {
            c10 = (char) (c10 + cVar.c());
        }
        return c10;
    }

    @Override
    public void o3(char[] cArr) {
        for (char c10 : cArr) {
            e1(c10);
        }
    }

    @Override
    public void o8(int i10, char c10) {
        C12911b c12911b = new C12911b();
        c12911b.e1(c10);
        h(i10, c12911b);
    }

    @Override
    public boolean p2(Sd.b bVar) {
        if (isEmpty()) {
            return false;
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
        C12911b c12911b = new C12911b();
        for (c cVar = this.f84557d; f(cVar); cVar = cVar.a()) {
            if (interfaceC13462q.a(cVar.c())) {
                c12911b.e1(cVar.c());
            }
        }
        return c12911b;
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f84555b = objectInput.readChar();
        int readInt = objectInput.readInt();
        for (int i10 = 0; i10 < readInt; i10++) {
            e1(objectInput.readChar());
        }
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        InterfaceC3458p it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (collection.contains(Character.valueOf(it.next()))) {
                it.remove();
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
        return this.f84556c;
    }

    @Override
    public void sort() {
        w0(0, this.f84556c);
    }

    @Override
    public InterfaceC3869b subList(int i10, int i11) {
        if (i11 < i10) {
            throw new IllegalArgumentException("begin index " + i10 + " greater than end index " + i11);
        }
        int i12 = this.f84556c;
        if (i12 < i10) {
            throw new IllegalArgumentException("begin index " + i10 + " greater than last index " + this.f84556c);
        }
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("begin index can not be < 0");
        }
        if (i11 > i12) {
            throw new IndexOutOfBoundsException("end index < " + this.f84556c);
        }
        C12911b c12911b = new C12911b();
        c e10 = e(i10);
        while (i10 < i11) {
            c12911b.e1(e10.c());
            e10 = e10.a();
            i10++;
        }
        return c12911b;
    }

    @Override
    public void t0(int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            B0(i10);
        }
    }

    @Override
    public boolean t2(Sd.b bVar) {
        InterfaceC3458p it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (bVar.b1(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public char[] toArray() {
        int i10 = this.f84556c;
        return B5(new char[i10], 0, i10);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        InterfaceC3458p it = iterator();
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
        c cVar = this.f84557d;
        c cVar2 = this.f84558e;
        c cVar3 = cVar;
        while (f(cVar3)) {
            c a10 = cVar3.a();
            c b10 = cVar3.b();
            c a11 = cVar3.a();
            cVar3.d(b10);
            cVar3.e(a10);
            cVar3 = a11;
        }
        this.f84557d = cVar2;
        this.f84558e = cVar;
    }

    @Override
    public boolean u1(char[] cArr) {
        if (isEmpty()) {
            return false;
        }
        for (char c10 : cArr) {
            if (!b1(c10)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean u2(Sd.b bVar) {
        InterfaceC3458p it = iterator();
        boolean z10 = false;
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
        Arrays.sort(cArr);
        InterfaceC3458p it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (Arrays.binarySearch(cArr, it.next()) >= 0) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public int v6(int i10, char c10) {
        for (c e10 = e(i10); f(e10.a()); e10 = e10.a()) {
            if (e10.c() == c10) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    @Override
    public void w0(int i10, int i11) {
        char[] array = subList(i10, i11).toArray();
        Arrays.sort(array);
        Xc(i10, array);
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeChar(this.f84555b);
        objectOutput.writeInt(this.f84556c);
        InterfaceC3458p it = iterator();
        while (it.hasNext()) {
            objectOutput.writeChar(it.next());
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
    public void yd(int i10, char[] cArr, int i11, int i12) {
        h(i10, j(cArr, i11, i12));
    }

    @Override
    public char[] z0(int i10, int i11) {
        return Fc(new char[i11], i10, 0, i11);
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

    public C12911b(char c10) {
        this.f84555b = c10;
    }

    public C12911b(InterfaceC3869b interfaceC3869b) {
        this.f84555b = interfaceC3869b.i();
        InterfaceC3458p it = interfaceC3869b.iterator();
        while (it.hasNext()) {
            e1(it.next());
        }
    }
}
