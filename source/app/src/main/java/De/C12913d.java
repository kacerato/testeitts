package de;

import Zd.H;
import be.InterfaceC3871d;
import he.I;
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

public class C12913d implements InterfaceC3871d, Externalizable {

    public float f84579b;

    public int f84580c;

    public c f84581d = null;

    public c f84582e = null;

    public class a implements H {

        public c f84583b;

        public c f84584c;

        public a() {
            this.f84583b = C12913d.this.f84581d;
        }

        @Override
        public boolean hasNext() {
            return C12913d.f(this.f84583b);
        }

        @Override
        public float next() {
            if (C12913d.j(this.f84583b)) {
                throw new NoSuchElementException();
            }
            float c10 = this.f84583b.c();
            c cVar = this.f84583b;
            this.f84584c = cVar;
            this.f84583b = cVar.a();
            return c10;
        }

        @Override
        public void remove() {
            c cVar = this.f84584c;
            if (cVar == null) {
                throw new IllegalStateException();
            }
            C12913d.this.k(cVar);
            this.f84584c = null;
        }
    }

    public class b implements I {

        public boolean f84586a = false;

        public b() {
        }

        @Override
        public boolean a(float f10) {
            if (C12913d.this.c(f10)) {
                this.f84586a = true;
            }
            return true;
        }

        public boolean b() {
            return this.f84586a;
        }
    }

    public static class c {

        public float f84588a;

        public c f84589b;

        public c f84590c;

        public c(float f10) {
            this.f84588a = f10;
        }

        public c a() {
            return this.f84590c;
        }

        public c b() {
            return this.f84589b;
        }

        public float c() {
            return this.f84588a;
        }

        public void d(c cVar) {
            this.f84590c = cVar;
        }

        public void e(c cVar) {
            this.f84589b = cVar;
        }

        public void f(float f10) {
            this.f84588a = f10;
        }
    }

    public C12913d() {
    }

    public static c b(c cVar, int i10, int i11) {
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

    public static C12913d h(float[] fArr, int i10, int i11) {
        C12913d c12913d = new C12913d();
        for (int i12 = 0; i12 < i11; i12++) {
            c12913d.f1(fArr[i10 + i12]);
        }
        return c12913d;
    }

    public static boolean j(Object obj) {
        return obj == null;
    }

    @Override
    public float B0(int i10) {
        c e10 = e(i10);
        if (!j(e10)) {
            float c10 = e10.c();
            k(e10);
            return c10;
        }
        throw new ArrayIndexOutOfBoundsException("no elemenet at " + i10);
    }

    @Override
    public boolean C2(Sd.f fVar) {
        H it = fVar.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (f1(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean D1(Sd.f fVar) {
        if (isEmpty()) {
            return false;
        }
        H it = fVar.iterator();
        while (it.hasNext()) {
            if (!Z0(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public int G3(float f10, int i10, int i11) {
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("begin index can not be < 0");
        }
        if (i11 > this.f84580c) {
            throw new IndexOutOfBoundsException("end index > size: " + i11 + " > " + this.f84580c);
        }
        if (i11 >= i10) {
            c e10 = e(i10);
            while (i10 < i11) {
                int i12 = (i10 + i11) >>> 1;
                c b10 = b(e10, i10, i12);
                if (b10.c() == f10) {
                    return i12;
                }
                if (b10.c() < f10) {
                    i10 = i12 + 1;
                    e10 = b10.f84590c;
                } else {
                    i11 = i12 - 1;
                }
            }
        }
        return -(i10 + 1);
    }

    @Override
    public int H3(float f10) {
        return G3(f10, 0, size());
    }

    @Override
    public void J0(Random random) {
        for (int i10 = 0; i10 < this.f84580c; i10++) {
            c e10 = e(random.nextInt(size()));
            k(e10);
            f1(e10.c());
        }
    }

    @Override
    public void Ka(int i10, float[] fArr, int i11, int i12) {
        g(i10, h(fArr, i11, i12));
    }

    @Override
    public boolean L1(float[] fArr) {
        if (isEmpty()) {
            return false;
        }
        for (float f10 : fArr) {
            if (!Z0(f10)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public void M2(float f10) {
        q6(0, this.f84580c, f10);
    }

    @Override
    public float Q8(int i10, float f10) {
        return l5(i10, f10);
    }

    @Override
    public float[] R5(float[] fArr, int i10, int i11, int i12) {
        if (i12 == 0) {
            return fArr;
        }
        if (i10 < 0 || i10 >= size()) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        c e10 = e(i10);
        for (int i13 = 0; i13 < i12; i13++) {
            fArr[i11 + i13] = e10.c();
            e10 = e10.a();
        }
        return fArr;
    }

    @Override
    public void T7(int i10, float[] fArr, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13++) {
            l5(i10 + i13, fArr[i11 + i13]);
        }
    }

    @Override
    public void Te(int i10, float[] fArr) {
        g(i10, h(fArr, 0, fArr.length));
    }

    @Override
    public float[] U8(float[] fArr, int i10, int i11) {
        return R5(fArr, i10, 0, i11);
    }

    @Override
    public boolean V1(float[] fArr) {
        Arrays.sort(fArr);
        H it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (Arrays.binarySearch(fArr, it.next()) < 0) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public InterfaceC3871d V2(I i10) {
        C12913d c12913d = new C12913d();
        for (c cVar = this.f84581d; f(cVar); cVar = cVar.a()) {
            if (!i10.a(cVar.c())) {
                c12913d.f1(cVar.c());
            }
        }
        return c12913d;
    }

    @Override
    public void We(float[] fArr, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            f1(fArr[i10 + i12]);
        }
    }

    @Override
    public int X3(float f10) {
        return d6(0, f10);
    }

    @Override
    public boolean Z0(float f10) {
        if (isEmpty()) {
            return false;
        }
        for (c cVar = this.f84581d; f(cVar); cVar = cVar.a()) {
            if (cVar.c() == f10) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean addAll(Collection<? extends Float> collection) {
        Iterator<? extends Float> it = collection.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (f1(it.next().floatValue())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public void bd(int i10, float[] fArr) {
        T7(i10, fArr, 0, fArr.length);
    }

    @Override
    public boolean c(float f10) {
        boolean z10 = false;
        for (c cVar = this.f84581d; f(cVar); cVar = cVar.a()) {
            if (cVar.c() == f10) {
                k(cVar);
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean c2(Sd.f fVar) {
        H it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (!fVar.Z0(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public void clear() {
        this.f84580c = 0;
        this.f84581d = null;
        this.f84582e = null;
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        if (isEmpty()) {
            return false;
        }
        for (Object obj : collection) {
            if (!(obj instanceof Float) || !Z0(((Float) obj).floatValue())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public InterfaceC3871d d5(I i10) {
        C12913d c12913d = new C12913d();
        for (c cVar = this.f84581d; f(cVar); cVar = cVar.a()) {
            if (i10.a(cVar.c())) {
                c12913d.f1(cVar.c());
            }
        }
        return c12913d;
    }

    @Override
    public int d6(int i10, float f10) {
        int i11 = -1;
        if (isEmpty()) {
            return -1;
        }
        for (c e10 = e(i10); f(e10.a()); e10 = e10.a()) {
            if (e10.c() == f10) {
                i11 = i10;
            }
            i10++;
        }
        return i11;
    }

    public c e(int i10) {
        if (i10 >= size()) {
            return null;
        }
        return i10 <= (size() >>> 1) ? d(this.f84581d, 0, i10, true) : d(this.f84582e, size() - 1, i10, false);
    }

    @Override
    public void e3(float[] fArr) {
        for (float f10 : fArr) {
            f1(f10);
        }
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C12913d c12913d = (C12913d) obj;
        if (this.f84579b != c12913d.f84579b || this.f84580c != c12913d.f84580c) {
            return false;
        }
        H it = iterator();
        H it2 = c12913d.iterator();
        while (it.hasNext()) {
            if (!it2.hasNext() || it.next() != it2.next()) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean f1(float f10) {
        c cVar = new c(f10);
        if (j(this.f84581d)) {
            this.f84581d = cVar;
            this.f84582e = cVar;
        } else {
            cVar.e(this.f84582e);
            this.f84582e.d(cVar);
            this.f84582e = cVar;
        }
        this.f84580c++;
        return true;
    }

    public void g(int i10, C12913d c12913d) {
        c e10 = e(i10);
        this.f84580c += c12913d.f84580c;
        c cVar = this.f84581d;
        if (e10 == cVar) {
            c12913d.f84582e.d(cVar);
            this.f84581d.e(c12913d.f84582e);
            this.f84581d = c12913d.f84581d;
        } else {
            if (!j(e10)) {
                c b10 = e10.b();
                e10.b().d(c12913d.f84581d);
                c12913d.f84582e.d(e10);
                e10.e(c12913d.f84582e);
                c12913d.f84581d.e(b10);
                return;
            }
            if (this.f84580c == 0) {
                this.f84581d = c12913d.f84581d;
                this.f84582e = c12913d.f84582e;
            } else {
                this.f84582e.d(c12913d.f84581d);
                c12913d.f84581d.e(this.f84582e);
                this.f84582e = c12913d.f84582e;
            }
        }
    }

    @Override
    public boolean g2(Sd.f fVar) {
        H it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (fVar.Z0(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public float get(int i10) {
        if (i10 <= this.f84580c) {
            c e10 = e(i10);
            return j(e10) ? this.f84579b : e10.c();
        }
        throw new IndexOutOfBoundsException("index " + i10 + " exceeds size " + this.f84580c);
    }

    @Override
    public int hashCode() {
        int c10 = (Vd.b.c(this.f84579b) * 31) + this.f84580c;
        H it = iterator();
        while (it.hasNext()) {
            c10 = (c10 * 31) + Vd.b.c(it.next());
        }
        return c10;
    }

    @Override
    public float i() {
        return this.f84579b;
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override
    public H iterator() {
        return new a();
    }

    @Override
    public int j6(float f10) {
        return z6(0, f10);
    }

    public final void k(c cVar) {
        if (j(cVar)) {
            return;
        }
        this.f84580c--;
        c b10 = cVar.b();
        c a10 = cVar.a();
        if (f(b10)) {
            b10.d(a10);
        } else {
            this.f84581d = a10;
        }
        if (f(a10)) {
            a10.e(b10);
        } else {
            this.f84582e = b10;
        }
        cVar.d(null);
        cVar.e(null);
    }

    @Override
    public boolean k1(I i10) {
        for (c cVar = this.f84581d; f(cVar); cVar = cVar.a()) {
            if (!i10.a(cVar.c())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean l2(float[] fArr) {
        boolean z10 = false;
        for (float f10 : fArr) {
            if (f1(f10)) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public float l5(int i10, float f10) {
        if (i10 > this.f84580c) {
            throw new IndexOutOfBoundsException("index " + i10 + " exceeds size " + this.f84580c);
        }
        c e10 = e(i10);
        if (!j(e10)) {
            float c10 = e10.c();
            e10.f(f10);
            return c10;
        }
        throw new IndexOutOfBoundsException("at offset " + i10);
    }

    @Override
    public void l8(int i10, float f10) {
        C12913d c12913d = new C12913d();
        c12913d.f1(f10);
        g(i10, c12913d);
    }

    @Override
    public float max() {
        if (isEmpty()) {
            throw new IllegalStateException();
        }
        float f10 = Float.NEGATIVE_INFINITY;
        for (c cVar = this.f84581d; f(cVar); cVar = cVar.a()) {
            if (f10 < cVar.c()) {
                f10 = cVar.c();
            }
        }
        return f10;
    }

    @Override
    public float min() {
        if (isEmpty()) {
            throw new IllegalStateException();
        }
        float f10 = Float.POSITIVE_INFINITY;
        for (c cVar = this.f84581d; f(cVar); cVar = cVar.a()) {
            if (f10 > cVar.c()) {
                f10 = cVar.c();
            }
        }
        return f10;
    }

    @Override
    public void n(Ud.d dVar) {
        for (c cVar = this.f84581d; f(cVar); cVar = cVar.a()) {
            cVar.f(dVar.a(cVar.c()));
        }
    }

    @Override
    public float o() {
        float f10 = 0.0f;
        for (c cVar = this.f84581d; f(cVar); cVar = cVar.a()) {
            f10 += cVar.c();
        }
        return f10;
    }

    @Override
    public void q6(int i10, int i11, float f10) {
        int i12;
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("begin index can not be < 0");
        }
        c e10 = e(i10);
        if (i11 <= this.f84580c) {
            while (i10 < i11) {
                e10.f(f10);
                e10 = e10.a();
                i10++;
            }
            return;
        }
        while (true) {
            i12 = this.f84580c;
            if (i10 >= i12) {
                break;
            }
            e10.f(f10);
            e10 = e10.a();
            i10++;
        }
        while (i12 < i11) {
            f1(f10);
            i12++;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f84579b = objectInput.readFloat();
        int readInt = objectInput.readInt();
        for (int i10 = 0; i10 < readInt; i10++) {
            f1(objectInput.readFloat());
        }
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        H it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (collection.contains(Float.valueOf(it.next()))) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        H it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (!collection.contains(Float.valueOf(it.next()))) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public int size() {
        return this.f84580c;
    }

    @Override
    public void sort() {
        w0(0, this.f84580c);
    }

    @Override
    public InterfaceC3871d subList(int i10, int i11) {
        if (i11 < i10) {
            throw new IllegalArgumentException("begin index " + i10 + " greater than end index " + i11);
        }
        int i12 = this.f84580c;
        if (i12 < i10) {
            throw new IllegalArgumentException("begin index " + i10 + " greater than last index " + this.f84580c);
        }
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("begin index can not be < 0");
        }
        if (i11 > i12) {
            throw new IndexOutOfBoundsException("end index < " + this.f84580c);
        }
        C12913d c12913d = new C12913d();
        c e10 = e(i10);
        while (i10 < i11) {
            c12913d.f1(e10.c());
            e10 = e10.a();
            i10++;
        }
        return c12913d;
    }

    @Override
    public void t0(int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            B0(i10);
        }
    }

    @Override
    public float[] toArray() {
        int i10 = this.f84580c;
        return U8(new float[i10], 0, i10);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        H it = iterator();
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
        c cVar = this.f84581d;
        c cVar2 = this.f84582e;
        c cVar3 = cVar;
        while (f(cVar3)) {
            c a10 = cVar3.a();
            c b10 = cVar3.b();
            c a11 = cVar3.a();
            cVar3.d(b10);
            cVar3.e(a10);
            cVar3 = a11;
        }
        this.f84581d = cVar2;
        this.f84582e = cVar;
    }

    @Override
    public void w0(int i10, int i11) {
        float[] array = subList(i10, i11).toArray();
        Arrays.sort(array);
        bd(i10, array);
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeFloat(this.f84579b);
        objectOutput.writeInt(this.f84580c);
        H it = iterator();
        while (it.hasNext()) {
            objectOutput.writeFloat(it.next());
        }
    }

    @Override
    public boolean x1(float[] fArr) {
        Arrays.sort(fArr);
        H it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (Arrays.binarySearch(fArr, it.next()) >= 0) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
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
    public float[] z0(int i10, int i11) {
        return R5(new float[i11], i10, 0, i11);
    }

    @Override
    public int z6(int i10, float f10) {
        for (c e10 = e(i10); f(e10.a()); e10 = e10.a()) {
            if (e10.c() == f10) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    @Override
    public boolean zc(I i10) {
        for (c cVar = this.f84582e; f(cVar); cVar = cVar.b()) {
            if (!i10.a(cVar.c())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public float[] toArray(float[] fArr) {
        return U8(fArr, 0, this.f84580c);
    }

    public C12913d(float f10) {
        this.f84579b = f10;
    }

    public C12913d(InterfaceC3871d interfaceC3871d) {
        this.f84579b = interfaceC3871d.i();
        H it = interfaceC3871d.iterator();
        while (it.hasNext()) {
            f1(it.next());
        }
    }
}
