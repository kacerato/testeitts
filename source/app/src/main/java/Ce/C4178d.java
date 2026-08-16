package ce;

import Zd.H;
import be.InterfaceC3871d;
import he.I;
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

public class C4178d implements InterfaceC3871d, Externalizable {

    public static final long f34772e = 1;

    public static final int f34773f = 10;

    public float[] f34774b;

    public int f34775c;

    public float f34776d;

    public static class a extends C4178d {
        public a(float[] fArr, float f10, boolean z10) {
            super(fArr, f10, z10);
        }

        @Override
        public void b(int i10) {
            if (i10 > this.f34774b.length) {
                throw new IllegalStateException("Can not grow ArrayList wrapped external array");
            }
        }
    }

    public class b implements H {

        public int f34777b;

        public int f34778c = -1;

        public b(int i10) {
            this.f34777b = i10;
        }

        @Override
        public boolean hasNext() {
            return this.f34777b < C4178d.this.size();
        }

        @Override
        public float next() {
            try {
                float f10 = C4178d.this.get(this.f34777b);
                int i10 = this.f34777b;
                this.f34777b = i10 + 1;
                this.f34778c = i10;
                return f10;
            } catch (IndexOutOfBoundsException unused) {
                throw new NoSuchElementException();
            }
        }

        @Override
        public void remove() {
            int i10 = this.f34778c;
            if (i10 == -1) {
                throw new IllegalStateException();
            }
            try {
                C4178d.this.t0(i10, 1);
                int i11 = this.f34778c;
                int i12 = this.f34777b;
                if (i11 < i12) {
                    this.f34777b = i12 - 1;
                }
                this.f34778c = -1;
            } catch (IndexOutOfBoundsException unused) {
                throw new ConcurrentModificationException();
            }
        }
    }

    public C4178d() {
        this(10, 0.0f);
    }

    private void h(int i10, int i11) {
        float[] fArr = this.f34774b;
        float f10 = fArr[i10];
        fArr[i10] = fArr[i11];
        fArr[i11] = f10;
    }

    public static C4178d k(float[] fArr) {
        return l(fArr, 0.0f);
    }

    public static C4178d l(float[] fArr, float f10) {
        return new a(fArr, f10, true);
    }

    @Override
    public float B0(int i10) {
        float f10 = get(i10);
        t0(i10, 1);
        return f10;
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
        if (this == fVar) {
            return true;
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
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        if (i11 > this.f34775c) {
            throw new ArrayIndexOutOfBoundsException(i11);
        }
        int i12 = i11 - 1;
        while (i10 <= i12) {
            int i13 = (i10 + i12) >>> 1;
            float f11 = this.f34774b[i13];
            if (f11 < f10) {
                i10 = i13 + 1;
            } else {
                if (f11 <= f10) {
                    return i13;
                }
                i12 = i13 - 1;
            }
        }
        return -(i10 + 1);
    }

    @Override
    public int H3(float f10) {
        return G3(f10, 0, this.f34775c);
    }

    @Override
    public void J0(Random random) {
        int i10 = this.f34775c;
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
    public void Ka(int i10, float[] fArr, int i11, int i12) {
        int i13 = this.f34775c;
        if (i10 == i13) {
            We(fArr, i11, i12);
            return;
        }
        b(i13 + i12);
        float[] fArr2 = this.f34774b;
        System.arraycopy(fArr2, i10, fArr2, i10 + i12, this.f34775c - i10);
        System.arraycopy(fArr, i11, this.f34774b, i10, i12);
        this.f34775c += i12;
    }

    @Override
    public boolean L1(float[] fArr) {
        int length = fArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (!Z0(fArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public void M2(float f10) {
        Arrays.fill(this.f34774b, 0, this.f34775c, f10);
    }

    @Override
    public float Q8(int i10, float f10) {
        if (i10 >= this.f34775c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        float[] fArr = this.f34774b;
        float f11 = fArr[i10];
        fArr[i10] = f10;
        return f11;
    }

    @Override
    public float[] R5(float[] fArr, int i10, int i11, int i12) {
        if (i12 == 0) {
            return fArr;
        }
        if (i10 < 0 || i10 >= this.f34775c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        System.arraycopy(this.f34774b, i10, fArr, i11, i12);
        return fArr;
    }

    @Override
    public void T7(int i10, float[] fArr, int i11, int i12) {
        if (i10 < 0 || i10 + i12 > this.f34775c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        System.arraycopy(fArr, i11, this.f34774b, i10, i12);
    }

    @Override
    public void Te(int i10, float[] fArr) {
        Ka(i10, fArr, 0, fArr.length);
    }

    @Override
    public float[] U8(float[] fArr, int i10, int i11) {
        if (i11 == 0) {
            return fArr;
        }
        if (i10 < 0 || i10 >= this.f34775c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        System.arraycopy(this.f34774b, i10, fArr, 0, i11);
        return fArr;
    }

    @Override
    public boolean V1(float[] fArr) {
        Arrays.sort(fArr);
        float[] fArr2 = this.f34774b;
        int i10 = this.f34775c;
        boolean z10 = false;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return z10;
            }
            if (Arrays.binarySearch(fArr, fArr2[i11]) < 0) {
                z10 = true;
                t0(i11, 1);
            }
            i10 = i11;
        }
    }

    @Override
    public InterfaceC3871d V2(I i10) {
        C4178d c4178d = new C4178d();
        for (int i11 = 0; i11 < this.f34775c; i11++) {
            if (!i10.a(this.f34774b[i11])) {
                c4178d.f1(this.f34774b[i11]);
            }
        }
        return c4178d;
    }

    @Override
    public void We(float[] fArr, int i10, int i11) {
        b(this.f34775c + i11);
        System.arraycopy(fArr, i10, this.f34774b, this.f34775c, i11);
        this.f34775c += i11;
    }

    @Override
    public int X3(float f10) {
        return d6(this.f34775c, f10);
    }

    @Override
    public boolean Z0(float f10) {
        return X3(f10) >= 0;
    }

    public void a(int i10) {
        this.f34774b = new float[i10];
        this.f34775c = 0;
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

    public void b(int i10) {
        float[] fArr = this.f34774b;
        if (i10 > fArr.length) {
            float[] fArr2 = new float[Math.max(fArr.length << 1, i10)];
            float[] fArr3 = this.f34774b;
            System.arraycopy(fArr3, 0, fArr2, 0, fArr3.length);
            this.f34774b = fArr2;
        }
    }

    @Override
    public void bd(int i10, float[] fArr) {
        T7(i10, fArr, 0, fArr.length);
    }

    @Override
    public boolean c(float f10) {
        for (int i10 = 0; i10 < this.f34775c; i10++) {
            if (f10 == this.f34774b[i10]) {
                t0(i10, 1);
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean c2(Sd.f fVar) {
        boolean z10 = false;
        if (this == fVar) {
            return false;
        }
        H it = iterator();
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
        a(10);
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        for (Object obj : collection) {
            if (!(obj instanceof Float) || !Z0(((Float) obj).floatValue())) {
                return false;
            }
        }
        return true;
    }

    public float d(int i10) {
        return this.f34774b[i10];
    }

    @Override
    public InterfaceC3871d d5(I i10) {
        C4178d c4178d = new C4178d();
        for (int i11 = 0; i11 < this.f34775c; i11++) {
            if (i10.a(this.f34774b[i11])) {
                c4178d.f1(this.f34774b[i11]);
            }
        }
        return c4178d;
    }

    @Override
    public int d6(int i10, float f10) {
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return -1;
            }
            if (this.f34774b[i11] == f10) {
                return i11;
            }
            i10 = i11;
        }
    }

    public void e() {
        this.f34775c = 0;
        Arrays.fill(this.f34774b, this.f34776d);
    }

    @Override
    public void e3(float[] fArr) {
        We(fArr, 0, fArr.length);
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C4178d)) {
            return false;
        }
        C4178d c4178d = (C4178d) obj;
        if (c4178d.size() != size()) {
            return false;
        }
        int i10 = this.f34775c;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return true;
            }
            if (this.f34774b[i11] != c4178d.f34774b[i11]) {
                return false;
            }
            i10 = i11;
        }
    }

    public void f() {
        this.f34775c = 0;
    }

    @Override
    public boolean f1(float f10) {
        b(this.f34775c + 1);
        float[] fArr = this.f34774b;
        int i10 = this.f34775c;
        this.f34775c = i10 + 1;
        fArr[i10] = f10;
        return true;
    }

    public void g(int i10, float f10) {
        this.f34774b[i10] = f10;
    }

    @Override
    public boolean g2(Sd.f fVar) {
        if (fVar == this) {
            clear();
            return true;
        }
        H it = fVar.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (c(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public float get(int i10) {
        if (i10 < this.f34775c) {
            return this.f34774b[i10];
        }
        throw new ArrayIndexOutOfBoundsException(i10);
    }

    @Override
    public int hashCode() {
        int i10 = this.f34775c;
        int i11 = 0;
        while (true) {
            int i12 = i10 - 1;
            if (i10 <= 0) {
                return i11;
            }
            i11 += Vd.b.c(this.f34774b[i12]);
            i10 = i12;
        }
    }

    @Override
    public float i() {
        return this.f34776d;
    }

    @Override
    public boolean isEmpty() {
        return this.f34775c == 0;
    }

    @Override
    public H iterator() {
        return new b(0);
    }

    public void j() {
        if (this.f34774b.length > size()) {
            int size = size();
            float[] fArr = new float[size];
            U8(fArr, 0, size);
            this.f34774b = fArr;
        }
    }

    @Override
    public int j6(float f10) {
        return z6(0, f10);
    }

    @Override
    public boolean k1(I i10) {
        for (int i11 = 0; i11 < this.f34775c; i11++) {
            if (!i10.a(this.f34774b[i11])) {
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
        if (i10 >= this.f34775c) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        float[] fArr = this.f34774b;
        float f11 = fArr[i10];
        fArr[i10] = f10;
        return f11;
    }

    @Override
    public void l8(int i10, float f10) {
        int i11 = this.f34775c;
        if (i10 == i11) {
            f1(f10);
            return;
        }
        b(i11 + 1);
        float[] fArr = this.f34774b;
        System.arraycopy(fArr, i10, fArr, i10 + 1, this.f34775c - i10);
        this.f34774b[i10] = f10;
        this.f34775c++;
    }

    @Override
    public float max() {
        if (size() == 0) {
            throw new IllegalStateException("cannot find maximum of an empty list");
        }
        float f10 = Float.NEGATIVE_INFINITY;
        for (int i10 = 0; i10 < this.f34775c; i10++) {
            float f11 = this.f34774b[i10];
            if (f11 > f10) {
                f10 = f11;
            }
        }
        return f10;
    }

    @Override
    public float min() {
        if (size() == 0) {
            throw new IllegalStateException("cannot find minimum of an empty list");
        }
        float f10 = Float.POSITIVE_INFINITY;
        for (int i10 = 0; i10 < this.f34775c; i10++) {
            float f11 = this.f34774b[i10];
            if (f11 < f10) {
                f10 = f11;
            }
        }
        return f10;
    }

    @Override
    public void n(Ud.d dVar) {
        int i10 = this.f34775c;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return;
            }
            float[] fArr = this.f34774b;
            fArr[i11] = dVar.a(fArr[i11]);
            i10 = i11;
        }
    }

    @Override
    public float o() {
        float f10 = 0.0f;
        for (int i10 = 0; i10 < this.f34775c; i10++) {
            f10 += this.f34774b[i10];
        }
        return f10;
    }

    @Override
    public void q6(int i10, int i11, float f10) {
        if (i11 > this.f34775c) {
            b(i11);
            this.f34775c = i11;
        }
        Arrays.fill(this.f34774b, i10, i11, f10);
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f34775c = objectInput.readInt();
        this.f34776d = objectInput.readFloat();
        int readInt = objectInput.readInt();
        this.f34774b = new float[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            this.f34774b[i10] = objectInput.readFloat();
        }
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        boolean z10 = false;
        for (Object obj : collection) {
            if ((obj instanceof Float) && c(((Float) obj).floatValue())) {
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
        return this.f34775c;
    }

    @Override
    public void sort() {
        Arrays.sort(this.f34774b, 0, this.f34775c);
    }

    @Override
    public InterfaceC3871d subList(int i10, int i11) {
        if (i11 < i10) {
            throw new IllegalArgumentException("end index " + i11 + " greater than begin index " + i10);
        }
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("begin index can not be < 0");
        }
        if (i11 > this.f34774b.length) {
            throw new IndexOutOfBoundsException("end index < " + this.f34774b.length);
        }
        C4178d c4178d = new C4178d(i11 - i10);
        while (i10 < i11) {
            c4178d.f1(this.f34774b[i10]);
            i10++;
        }
        return c4178d;
    }

    @Override
    public void t0(int i10, int i11) {
        int i12;
        if (i11 == 0) {
            return;
        }
        if (i10 < 0 || i10 >= (i12 = this.f34775c)) {
            throw new ArrayIndexOutOfBoundsException(i10);
        }
        if (i10 == 0) {
            float[] fArr = this.f34774b;
            System.arraycopy(fArr, i11, fArr, 0, i12 - i11);
        } else if (i12 - i11 != i10) {
            float[] fArr2 = this.f34774b;
            int i13 = i10 + i11;
            System.arraycopy(fArr2, i13, fArr2, i10, i12 - i13);
        }
        this.f34775c -= i11;
    }

    @Override
    public float[] toArray() {
        return z0(0, this.f34775c);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        int i10 = this.f34775c - 1;
        for (int i11 = 0; i11 < i10; i11++) {
            sb2.append(this.f34774b[i11]);
            sb2.append(", ");
        }
        if (size() > 0) {
            sb2.append(this.f34774b[this.f34775c - 1]);
        }
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public void u0() {
        y0(0, this.f34775c);
    }

    @Override
    public void w0(int i10, int i11) {
        Arrays.sort(this.f34774b, i10, i11);
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeInt(this.f34775c);
        objectOutput.writeFloat(this.f34776d);
        int length = this.f34774b.length;
        objectOutput.writeInt(length);
        for (int i10 = 0; i10 < length; i10++) {
            objectOutput.writeFloat(this.f34774b[i10]);
        }
    }

    @Override
    public boolean x1(float[] fArr) {
        int length = fArr.length;
        boolean z10 = false;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return z10;
            }
            if (c(fArr[i10])) {
                z10 = true;
            }
            length = i10;
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
    public float[] z0(int i10, int i11) {
        float[] fArr = new float[i11];
        U8(fArr, i10, i11);
        return fArr;
    }

    @Override
    public int z6(int i10, float f10) {
        while (i10 < this.f34775c) {
            if (this.f34774b[i10] == f10) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    @Override
    public boolean zc(I i10) {
        int i11 = this.f34775c;
        while (true) {
            int i12 = i11 - 1;
            if (i11 <= 0) {
                return true;
            }
            if (!i10.a(this.f34774b[i12])) {
                return false;
            }
            i11 = i12;
        }
    }

    public C4178d(int i10) {
        this(i10, 0.0f);
    }

    @Override
    public float[] toArray(float[] fArr) {
        int length = fArr.length;
        int length2 = fArr.length;
        int i10 = this.f34775c;
        if (length2 > i10) {
            fArr[i10] = this.f34776d;
            length = i10;
        }
        U8(fArr, 0, length);
        return fArr;
    }

    public C4178d(int i10, float f10) {
        this.f34774b = new float[i10];
        this.f34775c = 0;
        this.f34776d = f10;
    }

    public C4178d(Sd.f fVar) {
        this(fVar.size());
        C2(fVar);
    }

    public C4178d(float[] fArr) {
        this(fArr.length);
        e3(fArr);
    }

    public C4178d(float[] fArr, float f10, boolean z10) {
        if (!z10) {
            throw new IllegalStateException("Wrong call");
        }
        if (fArr != null) {
            this.f34774b = fArr;
            this.f34775c = fArr.length;
            this.f34776d = f10;
            return;
        }
        throw new IllegalArgumentException("values can not be null");
    }
}
