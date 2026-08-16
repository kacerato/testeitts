package ge;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Map;
import ke.InterfaceC13971e;
import org.apache.commons.math3.geometry.VectorFormat;

public class L extends Wd.N implements ee.J, Externalizable {

    public static final long f88648w = 1;

    public transient float[] f88649v;

    public class a implements he.N {

        public boolean f88650a = true;

        public final StringBuilder f88651b;

        public a(StringBuilder sb2) {
            this.f88651b = sb2;
        }

        @Override
        public boolean a(int i10, float f10) {
            if (this.f88650a) {
                this.f88650a = false;
            } else {
                this.f88651b.append(", ");
            }
            this.f88651b.append(i10);
            this.f88651b.append("=");
            this.f88651b.append(f10);
            return true;
        }
    }

    public class b extends Wd.J implements Zd.O {
        public b(L l10) {
            super(l10);
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public int key() {
            return L.this.f27482q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                L.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public float setValue(float f10) {
            float value = value();
            L.this.f88649v[this.f27465d] = f10;
            return value;
        }

        @Override
        public float value() {
            return L.this.f88649v[this.f27465d];
        }
    }

    public class c extends Wd.J implements Zd.Q {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public int next() {
            j();
            return L.this.f27482q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                L.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class d extends Wd.J implements Zd.H {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public float next() {
            j();
            return L.this.f88649v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                L.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class e implements InterfaceC13971e {

        public class a implements he.S {

            public boolean f88657a = true;

            public final StringBuilder f88658b;

            public a(StringBuilder sb2) {
                this.f88658b = sb2;
            }

            @Override
            public boolean a(int i10) {
                if (this.f88657a) {
                    this.f88657a = false;
                } else {
                    this.f88658b.append(", ");
                }
                this.f88658b.append(i10);
                return true;
            }
        }

        public e() {
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
                if (!L.this.contains(i10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean M1(int[] iArr) {
            Arrays.sort(iArr);
            L l10 = L.this;
            int[] iArr2 = l10.f27482q;
            byte[] bArr = l10.f27568l;
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
                    L.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public int[] P0(int[] iArr) {
            return L.this.f0(iArr);
        }

        @Override
        public boolean U0(he.S s10) {
            return L.this.J(s10);
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
            L.this.clear();
        }

        @Override
        public boolean contains(int i10) {
            return L.this.contains(i10);
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Integer) {
                    if (!L.this.F(((Integer) obj).intValue())) {
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
        public boolean equals(Object obj) {
            if (!(obj instanceof InterfaceC13971e)) {
                return false;
            }
            InterfaceC13971e interfaceC13971e = (InterfaceC13971e) obj;
            if (interfaceC13971e.size() != size()) {
                return false;
            }
            int length = L.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                L l10 = L.this;
                if (l10.f27568l[i10] == 1 && !interfaceC13971e.contains(l10.f27482q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public boolean h2(Sd.g gVar) {
            Zd.Q it = gVar.iterator();
            while (it.hasNext()) {
                if (!L.this.F(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int hashCode() {
            int length = L.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                L l10 = L.this;
                if (l10.f27568l[i11] == 1) {
                    i10 += Vd.b.d(l10.f27482q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public int i() {
            return L.this.f27483r;
        }

        @Override
        public boolean isEmpty() {
            return L.this.f27452b == 0;
        }

        @Override
        public Zd.Q iterator() {
            L l10 = L.this;
            return new c(l10);
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
            return L.this.f27484s != L.this.remove(i10);
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
            return L.this.f27452b;
        }

        @Override
        public int[] toArray() {
            return L.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            L.this.J(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean z2(int[] iArr) {
            throw new UnsupportedOperationException();
        }
    }

    public class f implements Sd.f {

        public class a implements he.I {

            public boolean f88661a = true;

            public final StringBuilder f88662b;

            public a(StringBuilder sb2) {
                this.f88662b = sb2;
            }

            @Override
            public boolean a(float f10) {
                if (this.f88661a) {
                    this.f88661a = false;
                } else {
                    this.f88662b.append(", ");
                }
                this.f88662b.append(f10);
                return true;
            }
        }

        public f() {
        }

        @Override
        public boolean C2(Sd.f fVar) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean D1(Sd.f fVar) {
            Zd.H it = fVar.iterator();
            while (it.hasNext()) {
                if (!L.this.U(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean L1(float[] fArr) {
            for (float f10 : fArr) {
                if (!L.this.U(f10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean V1(float[] fArr) {
            Arrays.sort(fArr);
            L l10 = L.this;
            float[] fArr2 = l10.f88649v;
            byte[] bArr = l10.f27568l;
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
                    L.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean Z0(float f10) {
            return L.this.U(f10);
        }

        @Override
        public boolean addAll(Collection<? extends Float> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean c(float f10) {
            L l10 = L.this;
            float[] fArr = l10.f88649v;
            int[] iArr = l10.f27482q;
            int length = fArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                int i11 = iArr[i10];
                if (i11 != 0 && i11 != 2 && f10 == fArr[i10]) {
                    L.this.hf(i10);
                    return true;
                }
                length = i10;
            }
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
            L.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Float) {
                    if (!L.this.U(((Float) obj).floatValue())) {
                    }
                }
                return false;
            }
            return true;
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
        public float i() {
            return L.this.f27484s;
        }

        @Override
        public boolean isEmpty() {
            return L.this.f27452b == 0;
        }

        @Override
        public Zd.H iterator() {
            L l10 = L.this;
            return new d(l10);
        }

        @Override
        public boolean k1(he.I i10) {
            return L.this.B(i10);
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
            return L.this.f27452b;
        }

        @Override
        public float[] toArray() {
            return L.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            L.this.B(new a(sb2));
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
            return L.this.c0(fArr);
        }
    }

    public L() {
    }

    @Override
    public boolean B(he.I i10) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f88649v;
        int length = fArr.length;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i11] == 1 && !i10.a(fArr[i11])) {
                return false;
            }
            length = i11;
        }
    }

    @Override
    public boolean Db(int i10, float f10) {
        int nf2 = nf(i10);
        if (nf2 < 0) {
            return false;
        }
        float[] fArr = this.f88649v;
        fArr[nf2] = fArr[nf2] + f10;
        return true;
    }

    @Override
    public boolean F(int i10) {
        return contains(i10);
    }

    @Override
    public boolean F0(int i10) {
        return Db(i10, 1.0f);
    }

    @Override
    public boolean J(he.S s10) {
        return U0(s10);
    }

    @Override
    public float Nd(int i10, float f10) {
        int pf2 = pf(i10);
        return pf2 < 0 ? this.f88649v[(-pf2) - 1] : zf(i10, f10, pf2);
    }

    @Override
    public boolean U(float f10) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f88649v;
        int length = fArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return false;
            }
            if (bArr[i10] == 1 && f10 == fArr[i10]) {
                return true;
            }
            length = i10;
        }
    }

    @Override
    public float Yb(int i10, float f10, float f11) {
        int pf2 = pf(i10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            float[] fArr = this.f88649v;
            float f12 = f10 + fArr[pf2];
            fArr[pf2] = f12;
            z10 = false;
            f11 = f12;
        } else {
            this.f88649v[pf2] = f11;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27485t);
        }
        return f11;
    }

    @Override
    public float Z4(int i10, float f10) {
        return zf(i10, f10, pf(i10));
    }

    @Override
    public float[] c0(float[] fArr) {
        int size = size();
        if (fArr.length < size) {
            fArr = new float[size];
        }
        float[] fArr2 = this.f88649v;
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
    public void c9(ee.J j10) {
        cf(j10.size());
        Zd.O it = j10.iterator();
        while (it.hasNext()) {
            it.g();
            Z4(it.key(), it.value());
        }
    }

    @Override
    public void clear() {
        super.clear();
        int[] iArr = this.f27482q;
        Arrays.fill(iArr, 0, iArr.length, this.f27483r);
        float[] fArr = this.f88649v;
        Arrays.fill(fArr, 0, fArr.length, this.f27484s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    @Override
    public boolean db(he.N n10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f27482q;
        float[] fArr = this.f88649v;
        int length = iArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !n10.a(iArr[i10], fArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ee.J)) {
            return false;
        }
        ee.J j10 = (ee.J) obj;
        if (j10.size() != size()) {
            return false;
        }
        float[] fArr = this.f88649v;
        byte[] bArr = this.f27568l;
        float i10 = i();
        float i11 = j10.i();
        int length = fArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1) {
                float f10 = j10.get(this.f27482q[i12]);
                float f11 = fArr[i12];
                if (f11 != f10 && f11 != i10 && f10 != i11) {
                    return false;
                }
            }
            length = i12;
        }
    }

    @Override
    public int[] f0(int[] iArr) {
        int size = size();
        if (iArr.length < size) {
            iArr = new int[size];
        }
        int[] iArr2 = this.f27482q;
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
    public float get(int i10) {
        int nf2 = nf(i10);
        return nf2 < 0 ? this.f27484s : this.f88649v[nf2];
    }

    @Override
    public void gf(int i10) {
        int[] iArr = this.f27482q;
        int length = iArr.length;
        float[] fArr = this.f88649v;
        byte[] bArr = this.f27568l;
        this.f27482q = new int[i10];
        this.f88649v = new float[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f88649v[pf(iArr[i11])] = fArr[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f88649v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.d(this.f27482q[i11]) ^ Vd.b.c(this.f88649v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f88649v[i10] = this.f27484s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public Zd.O iterator() {
        return new b(this);
    }

    @Override
    public int[] j() {
        int[] iArr = new int[size()];
        int[] iArr2 = this.f27482q;
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
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f88649v = new float[jf2];
        return jf2;
    }

    @Override
    public Sd.f k() {
        return new f();
    }

    @Override
    public InterfaceC13971e keySet() {
        return new e();
    }

    @Override
    public void n(Ud.d dVar) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f88649v;
        int length = fArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i10] == 1) {
                fArr[i10] = dVar.a(fArr[i10]);
            }
            length = i10;
        }
    }

    @Override
    public void putAll(Map<? extends Integer, ? extends Float> map) {
        cf(map.size());
        for (Map.Entry<? extends Integer, ? extends Float> entry : map.entrySet()) {
            Z4(entry.getKey().intValue(), entry.getValue().floatValue());
        }
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
            Z4(objectInput.readInt(), objectInput.readFloat());
            readInt = i10;
        }
    }

    @Override
    public float remove(int i10) {
        float f10 = this.f27484s;
        int nf2 = nf(i10);
        if (nf2 < 0) {
            return f10;
        }
        float f11 = this.f88649v[nf2];
        hf(nf2);
        return f11;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        db(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public float[] values() {
        float[] fArr = new float[size()];
        float[] fArr2 = this.f88649v;
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
    public boolean vd(he.N n10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f27482q;
        float[] fArr = this.f88649v;
        kf();
        try {
            int length = iArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !n10.a(iArr[i10], fArr[i10])) {
                    hf(i10);
                    z10 = true;
                }
                length = i10;
            }
        } finally {
            ff(true);
        }
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
                objectOutput.writeInt(this.f27482q[i10]);
                objectOutput.writeFloat(this.f88649v[i10]);
            }
            length = i10;
        }
    }

    public final float zf(int i10, float f10, int i11) {
        float f11 = this.f27484s;
        boolean z10 = true;
        if (i11 < 0) {
            i11 = (-i11) - 1;
            f11 = this.f88649v[i11];
            z10 = false;
        }
        this.f88649v[i11] = f10;
        if (z10) {
            ef(this.f27485t);
        }
        return f11;
    }

    public L(int i10) {
        super(i10);
    }

    public L(int i10, float f10) {
        super(i10, f10);
    }

    public L(int i10, float f10, int i11, float f11) {
        super(i10, f10, i11, f11);
    }

    public L(int[] iArr, float[] fArr) {
        super(Math.max(iArr.length, fArr.length));
        int min = Math.min(iArr.length, fArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            Z4(iArr[i10], fArr[i10]);
        }
    }

    public L(ee.J j10) {
        super(j10.size());
        if (j10 instanceof L) {
            L l10 = (L) j10;
            this.f27454d = l10.f27454d;
            int i10 = l10.f27483r;
            this.f27483r = i10;
            this.f27484s = l10.f27484s;
            if (i10 != 0) {
                Arrays.fill(this.f27482q, i10);
            }
            float f10 = this.f27484s;
            if (f10 != 0.0f) {
                Arrays.fill(this.f88649v, f10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        c9(j10);
    }
}
