package ge;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Map;
import ke.InterfaceC13970d;
import org.apache.commons.math3.geometry.VectorFormat;

public class C13326D extends Wd.E implements ee.C, Externalizable {

    public static final long f88515w = 1;

    public transient int[] f88516v;

    public class a implements he.F {

        public boolean f88517a = true;

        public final StringBuilder f88518b;

        public a(StringBuilder sb2) {
            this.f88518b = sb2;
        }

        @Override
        public boolean a(float f10, int i10) {
            if (this.f88517a) {
                this.f88517a = false;
            } else {
                this.f88518b.append(", ");
            }
            this.f88518b.append(f10);
            this.f88518b.append("=");
            this.f88518b.append(i10);
            return true;
        }
    }

    public class b extends Wd.J implements Zd.G {
        public b(C13326D c13326d) {
            super(c13326d);
        }

        @Override
        public int e(int i10) {
            int value = value();
            C13326D.this.f88516v[this.f27465d] = i10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public float key() {
            return C13326D.this.f27435q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13326D.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public int value() {
            return C13326D.this.f88516v[this.f27465d];
        }
    }

    public class c extends Wd.J implements Zd.H {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public float next() {
            j();
            return C13326D.this.f27435q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13326D.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class d extends Wd.J implements Zd.Q {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public int next() {
            j();
            return C13326D.this.f88516v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13326D.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class e implements InterfaceC13970d {

        public class a implements he.I {

            public boolean f88524a = true;

            public final StringBuilder f88525b;

            public a(StringBuilder sb2) {
                this.f88525b = sb2;
            }

            @Override
            public boolean a(float f10) {
                if (this.f88524a) {
                    this.f88524a = false;
                } else {
                    this.f88525b.append(", ");
                }
                this.f88525b.append(f10);
                return true;
            }
        }

        public e() {
        }

        @Override
        public boolean C2(Sd.f fVar) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean D1(Sd.f fVar) {
            Zd.H it = fVar.iterator();
            while (it.hasNext()) {
                if (!C13326D.this.H(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean L1(float[] fArr) {
            for (float f10 : fArr) {
                if (!C13326D.this.Z0(f10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean V1(float[] fArr) {
            Arrays.sort(fArr);
            C13326D c13326d = C13326D.this;
            float[] fArr2 = c13326d.f27435q;
            byte[] bArr = c13326d.f27568l;
            int length = fArr2.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] != 1 || Arrays.binarySearch(fArr, fArr2[i10]) >= 0) {
                    length = i10;
                } else {
                    C13326D.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean Z0(float f10) {
            return C13326D.this.Z0(f10);
        }

        @Override
        public boolean addAll(Collection<? extends Float> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean c(float f10) {
            return C13326D.this.f27437s != C13326D.this.c(f10);
        }

        @Override
        public boolean c2(Sd.f fVar) {
            boolean z10 = false;
            if (this == fVar) {
                return false;
            }
            Zd.H it = iterator();
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
            C13326D.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Float) {
                    if (!C13326D.this.H(((Float) obj).floatValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean equals(Object obj) {
            if (!(obj instanceof InterfaceC13970d)) {
                return false;
            }
            InterfaceC13970d interfaceC13970d = (InterfaceC13970d) obj;
            if (interfaceC13970d.size() != size()) {
                return false;
            }
            int length = C13326D.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                C13326D c13326d = C13326D.this;
                if (c13326d.f27568l[i10] == 1 && !interfaceC13970d.Z0(c13326d.f27435q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public boolean f1(float f10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean g2(Sd.f fVar) {
            if (this == fVar) {
                clear();
                return true;
            }
            Zd.H it = fVar.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (c(it.next())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public int hashCode() {
            int length = C13326D.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                C13326D c13326d = C13326D.this;
                if (c13326d.f27568l[i11] == 1) {
                    i10 += Vd.b.c(c13326d.f27435q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public float i() {
            return C13326D.this.f27436r;
        }

        @Override
        public boolean isEmpty() {
            return C13326D.this.f27452b == 0;
        }

        @Override
        public Zd.H iterator() {
            C13326D c13326d = C13326D.this;
            return new c(c13326d);
        }

        @Override
        public boolean k1(he.I i10) {
            return C13326D.this.j0(i10);
        }

        @Override
        public boolean l2(float[] fArr) {
            throw new UnsupportedOperationException();
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
            Zd.H it = iterator();
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
            return C13326D.this.f27452b;
        }

        @Override
        public float[] toArray() {
            return C13326D.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13326D.this.j0(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
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
        public float[] toArray(float[] fArr) {
            return C13326D.this.d0(fArr);
        }
    }

    public class f implements Sd.g {

        public class a implements he.S {

            public boolean f88528a = true;

            public final StringBuilder f88529b;

            public a(StringBuilder sb2) {
                this.f88529b = sb2;
            }

            @Override
            public boolean a(int i10) {
                if (this.f88528a) {
                    this.f88528a = false;
                } else {
                    this.f88529b.append(", ");
                }
                this.f88529b.append(i10);
                return true;
            }
        }

        public f() {
        }

        @Override
        public boolean A1(int[] iArr) {
            int length = iArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (remove(iArr[i10])) {
                    z10 = true;
                }
                length = i10;
            }
        }

        @Override
        public boolean K1(int[] iArr) {
            for (int i10 : iArr) {
                if (!C13326D.this.Q(i10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean M1(int[] iArr) {
            Arrays.sort(iArr);
            C13326D c13326d = C13326D.this;
            int[] iArr2 = c13326d.f88516v;
            byte[] bArr = c13326d.f27568l;
            int length = iArr2.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] != 1 || Arrays.binarySearch(iArr, iArr2[i10]) >= 0) {
                    length = i10;
                } else {
                    C13326D.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public int[] P0(int[] iArr) {
            return C13326D.this.e0(iArr);
        }

        @Override
        public boolean U0(he.S s10) {
            return C13326D.this.m0(s10);
        }

        @Override
        public boolean add(int i10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Integer> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean b2(Sd.g gVar) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C13326D.this.clear();
        }

        @Override
        public boolean contains(int i10) {
            return C13326D.this.Q(i10);
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Integer) {
                    if (!C13326D.this.Q(((Integer) obj).intValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean d2(Sd.g gVar) {
            if (this == gVar) {
                clear();
                return true;
            }
            Zd.Q it = gVar.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (remove(it.next())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean h2(Sd.g gVar) {
            Zd.Q it = gVar.iterator();
            while (it.hasNext()) {
                if (!C13326D.this.Q(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int i() {
            return C13326D.this.f27437s;
        }

        @Override
        public boolean isEmpty() {
            return C13326D.this.f27452b == 0;
        }

        @Override
        public Zd.Q iterator() {
            C13326D c13326d = C13326D.this;
            return new d(c13326d);
        }

        @Override
        public boolean j2(Sd.g gVar) {
            boolean z10 = false;
            if (this == gVar) {
                return false;
            }
            Zd.Q it = iterator();
            while (it.hasNext()) {
                if (!gVar.contains(it.next())) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean remove(int i10) {
            C13326D c13326d = C13326D.this;
            int[] iArr = c13326d.f88516v;
            float[] fArr = c13326d.f27435q;
            int length = iArr.length;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return false;
                }
                float f10 = fArr[i11];
                if (f10 != 0.0f && f10 != 2.0f && i10 == iArr[i11]) {
                    C13326D.this.hf(i11);
                    return true;
                }
                length = i11;
            }
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            boolean z10 = false;
            for (Object obj : collection) {
                if ((obj instanceof Integer) && remove(((Integer) obj).intValue())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            Zd.Q it = iterator();
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
        public int size() {
            return C13326D.this.f27452b;
        }

        @Override
        public int[] toArray() {
            return C13326D.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13326D.this.m0(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean z2(int[] iArr) {
            throw new UnsupportedOperationException();
        }
    }

    public C13326D() {
    }

    @Override
    public boolean D9(float f10, int i10) {
        int nf2 = nf(f10);
        if (nf2 < 0) {
            return false;
        }
        int[] iArr = this.f88516v;
        iArr[nf2] = iArr[nf2] + i10;
        return true;
    }

    @Override
    public boolean G0(float f10) {
        return D9(f10, 1);
    }

    @Override
    public boolean H(float f10) {
        return Z0(f10);
    }

    @Override
    public boolean L3(he.F f10) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f27435q;
        int[] iArr = this.f88516v;
        int length = fArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !f10.a(fArr[i10], iArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public int M5(float f10, int i10) {
        return zf(f10, i10, pf(f10));
    }

    @Override
    public boolean Q(int i10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f88516v;
        int length = iArr.length;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return false;
            }
            if (bArr[i11] == 1 && i10 == iArr[i11]) {
                return true;
            }
            length = i11;
        }
    }

    @Override
    public int Sc(float f10, int i10, int i11) {
        int pf2 = pf(f10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            int[] iArr = this.f88516v;
            int i12 = i10 + iArr[pf2];
            iArr[pf2] = i12;
            z10 = false;
            i11 = i12;
        } else {
            this.f88516v[pf2] = i11;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27438t);
        }
        return i11;
    }

    @Override
    public int c(float f10) {
        int i10 = this.f27437s;
        int nf2 = nf(f10);
        if (nf2 < 0) {
            return i10;
        }
        int i11 = this.f88516v[nf2];
        hf(nf2);
        return i11;
    }

    @Override
    public void clear() {
        super.clear();
        float[] fArr = this.f27435q;
        Arrays.fill(fArr, 0, fArr.length, this.f27436r);
        int[] iArr = this.f88516v;
        Arrays.fill(iArr, 0, iArr.length, this.f27437s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    @Override
    public float[] d0(float[] fArr) {
        int size = size();
        if (fArr.length < size) {
            fArr = new float[size];
        }
        float[] fArr2 = this.f27435q;
        byte[] bArr = this.f27568l;
        int length = fArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return fArr;
            }
            if (bArr[i11] == 1) {
                fArr[i10] = fArr2[i11];
                i10++;
            }
            length = i11;
        }
    }

    @Override
    public int[] e0(int[] iArr) {
        int size = size();
        if (iArr.length < size) {
            iArr = new int[size];
        }
        int[] iArr2 = this.f88516v;
        byte[] bArr = this.f27568l;
        int length = iArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return iArr;
            }
            if (bArr[i11] == 1) {
                iArr[i10] = iArr2[i11];
                i10++;
            }
            length = i11;
        }
    }

    public boolean equals(Object obj) {
        int q02;
        int i10;
        if (!(obj instanceof ee.C)) {
            return false;
        }
        ee.C c10 = (ee.C) obj;
        if (c10.size() != size()) {
            return false;
        }
        int[] iArr = this.f88516v;
        byte[] bArr = this.f27568l;
        int i11 = i();
        int i12 = c10.i();
        int length = iArr.length;
        while (true) {
            int i13 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i13] == 1 && (i10 = iArr[i13]) != (q02 = c10.q0(this.f27435q[i13])) && i10 != i11 && q02 != i12) {
                return false;
            }
            length = i13;
        }
    }

    @Override
    public void f(Ud.e eVar) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f88516v;
        int length = iArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i10] == 1) {
                iArr[i10] = eVar.a(iArr[i10]);
            }
            length = i10;
        }
    }

    @Override
    public void gf(int i10) {
        float[] fArr = this.f27435q;
        int length = fArr.length;
        int[] iArr = this.f88516v;
        byte[] bArr = this.f27568l;
        this.f27435q = new float[i10];
        this.f88516v = new int[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f88516v[pf(fArr[i11])] = iArr[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f88516v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.c(this.f27435q[i11]) ^ Vd.b.d(this.f88516v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f88516v[i10] = this.f27437s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public Zd.G iterator() {
        return new b(this);
    }

    @Override
    public float[] j() {
        float[] fArr = new float[size()];
        float[] fArr2 = this.f27435q;
        byte[] bArr = this.f27568l;
        int length = fArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return fArr;
            }
            if (bArr[i11] == 1) {
                fArr[i10] = fArr2[i11];
                i10++;
            }
            length = i11;
        }
    }

    @Override
    public boolean j0(he.I i10) {
        return k1(i10);
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f88516v = new int[jf2];
        return jf2;
    }

    @Override
    public Sd.g k() {
        return new f();
    }

    @Override
    public InterfaceC13970d keySet() {
        return new e();
    }

    @Override
    public boolean m0(he.S s10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f88516v;
        int length = iArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !s10.a(iArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public void putAll(Map<? extends Float, ? extends Integer> map) {
        cf(map.size());
        for (Map.Entry<? extends Float, ? extends Integer> entry : map.entrySet()) {
            M5(entry.getKey().floatValue(), entry.getValue().intValue());
        }
    }

    @Override
    public int q0(float f10) {
        int nf2 = nf(f10);
        return nf2 < 0 ? this.f27437s : this.f88516v[nf2];
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        super.readExternal(objectInput);
        int readInt = objectInput.readInt();
        jf(readInt);
        while (true) {
            int i10 = readInt - 1;
            if (readInt <= 0) {
                return;
            }
            M5(objectInput.readFloat(), objectInput.readInt());
            readInt = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        L3(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public int[] values() {
        int[] iArr = new int[size()];
        int[] iArr2 = this.f88516v;
        byte[] bArr = this.f27568l;
        int length = iArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return iArr;
            }
            if (bArr[i11] == 1) {
                iArr[i10] = iArr2[i11];
                i10++;
            }
            length = i11;
        }
    }

    @Override
    public int ve(float f10, int i10) {
        int pf2 = pf(f10);
        return pf2 < 0 ? this.f88516v[(-pf2) - 1] : zf(f10, i10, pf2);
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        super.writeExternal(objectOutput);
        objectOutput.writeInt(this.f27452b);
        int length = this.f27568l.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (this.f27568l[i10] == 1) {
                objectOutput.writeFloat(this.f27435q[i10]);
                objectOutput.writeInt(this.f88516v[i10]);
            }
            length = i10;
        }
    }

    @Override
    public void y9(ee.C c10) {
        cf(c10.size());
        Zd.G it = c10.iterator();
        while (it.hasNext()) {
            it.g();
            M5(it.key(), it.value());
        }
    }

    @Override
    public boolean yc(he.F f10) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f27435q;
        int[] iArr = this.f88516v;
        kf();
        try {
            int length = fArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !f10.a(fArr[i10], iArr[i10])) {
                    hf(i10);
                    z10 = true;
                }
                length = i10;
            }
        } finally {
            ff(true);
        }
    }

    public final int zf(float f10, int i10, int i11) {
        int i12 = this.f27437s;
        boolean z10 = true;
        if (i11 < 0) {
            i11 = (-i11) - 1;
            i12 = this.f88516v[i11];
            z10 = false;
        }
        this.f88516v[i11] = i10;
        if (z10) {
            ef(this.f27438t);
        }
        return i12;
    }

    public C13326D(int i10) {
        super(i10);
    }

    public C13326D(int i10, float f10) {
        super(i10, f10);
    }

    public C13326D(int i10, float f10, float f11, int i11) {
        super(i10, f10, f11, i11);
    }

    public C13326D(float[] fArr, int[] iArr) {
        super(Math.max(fArr.length, iArr.length));
        int min = Math.min(fArr.length, iArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            M5(fArr[i10], iArr[i10]);
        }
    }

    public C13326D(ee.C c10) {
        super(c10.size());
        if (c10 instanceof C13326D) {
            C13326D c13326d = (C13326D) c10;
            this.f27454d = c13326d.f27454d;
            float f10 = c13326d.f27436r;
            this.f27436r = f10;
            this.f27437s = c13326d.f27437s;
            if (f10 != 0.0f) {
                Arrays.fill(this.f27435q, f10);
            }
            int i10 = this.f27437s;
            if (i10 != 0) {
                Arrays.fill(this.f88516v, i10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        y9(c10);
    }
}
