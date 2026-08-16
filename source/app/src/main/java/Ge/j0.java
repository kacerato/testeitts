package ge;

import Zd.q0;
import Zd.s0;
import he.p0;
import he.t0;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Map;
import ke.InterfaceC13973g;
import org.apache.commons.math3.geometry.VectorFormat;

public class j0 extends Wd.g0 implements ee.i0, Externalizable {

    public static final long f89210w = 1;

    public transient float[] f89211v;

    public class a implements p0 {

        public boolean f89212a = true;

        public final StringBuilder f89213b;

        public a(StringBuilder sb2) {
            this.f89213b = sb2;
        }

        @Override
        public boolean a(short s10, float f10) {
            if (this.f89212a) {
                this.f89212a = false;
            } else {
                this.f89213b.append(", ");
            }
            this.f89213b.append((int) s10);
            this.f89213b.append("=");
            this.f89213b.append(f10);
            return true;
        }
    }

    public class b implements InterfaceC13973g {

        public class a implements t0 {

            public boolean f89216a = true;

            public final StringBuilder f89217b;

            public a(StringBuilder sb2) {
                this.f89217b = sb2;
            }

            @Override
            public boolean a(short s10) {
                if (this.f89216a) {
                    this.f89216a = false;
                } else {
                    this.f89217b.append(", ");
                }
                this.f89217b.append((int) s10);
                return true;
            }
        }

        public b() {
        }

        @Override
        public boolean A2(short[] sArr) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean F1(Sd.i iVar) {
            throw new UnsupportedOperationException();
        }

        @Override
        public short[] N0(short[] sArr) {
            return j0.this.Y(sArr);
        }

        @Override
        public boolean W0(short s10) {
            return j0.this.W0(s10);
        }

        @Override
        public boolean Z1(short[] sArr) {
            for (short s10 : sArr) {
                if (!j0.this.W0(s10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean addAll(Collection<? extends Short> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean c1(short s10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            j0.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Short) {
                    if (!j0.this.z(((Short) obj).shortValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean d(short s10) {
            return j0.this.f27606s != j0.this.d(s10);
        }

        @Override
        public boolean equals(Object obj) {
            if (!(obj instanceof InterfaceC13973g)) {
                return false;
            }
            InterfaceC13973g interfaceC13973g = (InterfaceC13973g) obj;
            if (interfaceC13973g.size() != size()) {
                return false;
            }
            int length = j0.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                j0 j0Var = j0.this;
                if (j0Var.f27568l[i10] == 1 && !interfaceC13973g.W0(j0Var.f27604q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public boolean h1(t0 t0Var) {
            return j0.this.v(t0Var);
        }

        @Override
        public int hashCode() {
            int length = j0.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                j0 j0Var = j0.this;
                if (j0Var.f27568l[i11] == 1) {
                    i10 += Vd.b.d(j0Var.f27604q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public short i() {
            return j0.this.f27605r;
        }

        @Override
        public boolean isEmpty() {
            return j0.this.f27452b == 0;
        }

        @Override
        public s0 iterator() {
            j0 j0Var = j0.this;
            return new d(j0Var);
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
        public boolean o1(Sd.i iVar) {
            if (this == iVar) {
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
        public boolean q2(Sd.i iVar) {
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
        public boolean r1(short[] sArr) {
            Arrays.sort(sArr);
            j0 j0Var = j0.this;
            short[] sArr2 = j0Var.f27604q;
            byte[] bArr = j0Var.f27568l;
            int length = sArr2.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] != 1 || Arrays.binarySearch(sArr, sArr2[i10]) >= 0) {
                    length = i10;
                } else {
                    j0.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
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
            return j0.this.f27452b;
        }

        @Override
        public short[] toArray() {
            return j0.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            j0.this.v(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean v2(Sd.i iVar) {
            s0 it = iVar.iterator();
            while (it.hasNext()) {
                if (!j0.this.z(it.next())) {
                    return false;
                }
            }
            return true;
        }
    }

    public class c extends Wd.J implements q0 {
        public c(j0 j0Var) {
            super(j0Var);
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public short key() {
            return j0.this.f27604q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                j0.this.hf(this.f27465d);
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
            j0.this.f89211v[this.f27465d] = f10;
            return value;
        }

        @Override
        public float value() {
            return j0.this.f89211v[this.f27465d];
        }
    }

    public class d extends Wd.J implements s0 {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public short next() {
            j();
            return j0.this.f27604q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                j0.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class e extends Wd.J implements Zd.H {
        public e(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public float next() {
            j();
            return j0.this.f89211v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                j0.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class f implements Sd.f {

        public class a implements he.I {

            public boolean f89223a = true;

            public final StringBuilder f89224b;

            public a(StringBuilder sb2) {
                this.f89224b = sb2;
            }

            @Override
            public boolean a(float f10) {
                if (this.f89223a) {
                    this.f89223a = false;
                } else {
                    this.f89224b.append(", ");
                }
                this.f89224b.append(f10);
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
                if (!j0.this.U(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean L1(float[] fArr) {
            for (float f10 : fArr) {
                if (!j0.this.U(f10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean V1(float[] fArr) {
            Arrays.sort(fArr);
            j0 j0Var = j0.this;
            float[] fArr2 = j0Var.f89211v;
            byte[] bArr = j0Var.f27568l;
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
                    j0.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean Z0(float f10) {
            return j0.this.U(f10);
        }

        @Override
        public boolean addAll(Collection<? extends Float> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean c(float f10) {
            j0 j0Var = j0.this;
            float[] fArr = j0Var.f89211v;
            short[] sArr = j0Var.f27604q;
            int length = fArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                short s10 = sArr[i10];
                if (s10 != 0 && s10 != 2 && f10 == fArr[i10]) {
                    j0.this.hf(i10);
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
            j0.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Float) {
                    if (!j0.this.U(((Float) obj).floatValue())) {
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
            return j0.this.f27606s;
        }

        @Override
        public boolean isEmpty() {
            return j0.this.f27452b == 0;
        }

        @Override
        public Zd.H iterator() {
            j0 j0Var = j0.this;
            return new e(j0Var);
        }

        @Override
        public boolean k1(he.I i10) {
            return j0.this.B(i10);
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
            return j0.this.f27452b;
        }

        @Override
        public float[] toArray() {
            return j0.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            j0.this.B(new a(sb2));
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
            return j0.this.c0(fArr);
        }
    }

    public j0() {
    }

    @Override
    public void A6(ee.i0 i0Var) {
        cf(i0Var.size());
        q0 it = i0Var.iterator();
        while (it.hasNext()) {
            it.g();
            pa(it.key(), it.value());
        }
    }

    @Override
    public boolean B(he.I i10) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f89211v;
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
    public boolean B8(p0 p0Var) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f27604q;
        float[] fArr = this.f89211v;
        int length = sArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !p0Var.a(sArr[i10], fArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean I0(short s10) {
        return e8(s10, 1.0f);
    }

    @Override
    public float J3(short s10, float f10) {
        int pf2 = pf(s10);
        return pf2 < 0 ? this.f89211v[(-pf2) - 1] : zf(s10, f10, pf2);
    }

    @Override
    public boolean Kd(p0 p0Var) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f27604q;
        float[] fArr = this.f89211v;
        kf();
        try {
            int length = sArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !p0Var.a(sArr[i10], fArr[i10])) {
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
    public boolean U(float f10) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f89211v;
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
    public short[] Y(short[] sArr) {
        int size = size();
        if (sArr.length < size) {
            sArr = new short[size];
        }
        short[] sArr2 = this.f27604q;
        byte[] bArr = this.f27568l;
        int length = sArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return sArr;
            }
            if (bArr[i11] == 1) {
                sArr[i10] = sArr2[i11];
                i10++;
            }
            length = i11;
        }
    }

    @Override
    public float[] c0(float[] fArr) {
        int size = size();
        if (fArr.length < size) {
            fArr = new float[size];
        }
        float[] fArr2 = this.f89211v;
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
    public void clear() {
        super.clear();
        short[] sArr = this.f27604q;
        Arrays.fill(sArr, 0, sArr.length, this.f27605r);
        float[] fArr = this.f89211v;
        Arrays.fill(fArr, 0, fArr.length, this.f27606s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    @Override
    public float d(short s10) {
        float f10 = this.f27606s;
        int nf2 = nf(s10);
        if (nf2 < 0) {
            return f10;
        }
        float f11 = this.f89211v[nf2];
        hf(nf2);
        return f11;
    }

    @Override
    public boolean e8(short s10, float f10) {
        int nf2 = nf(s10);
        if (nf2 < 0) {
            return false;
        }
        float[] fArr = this.f89211v;
        fArr[nf2] = fArr[nf2] + f10;
        return true;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ee.i0)) {
            return false;
        }
        ee.i0 i0Var = (ee.i0) obj;
        if (i0Var.size() != size()) {
            return false;
        }
        float[] fArr = this.f89211v;
        byte[] bArr = this.f27568l;
        float i10 = i();
        float i11 = i0Var.i();
        int length = fArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1) {
                float n02 = i0Var.n0(this.f27604q[i12]);
                float f10 = fArr[i12];
                if (f10 != n02 && f10 != i10 && n02 != i11) {
                    return false;
                }
            }
            length = i12;
        }
    }

    @Override
    public void gf(int i10) {
        short[] sArr = this.f27604q;
        int length = sArr.length;
        float[] fArr = this.f89211v;
        byte[] bArr = this.f27568l;
        this.f27604q = new short[i10];
        this.f89211v = new float[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f89211v[pf(sArr[i11])] = fArr[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f89211v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.d(this.f27604q[i11]) ^ Vd.b.c(this.f89211v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f89211v[i10] = this.f27606s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public q0 iterator() {
        return new c(this);
    }

    @Override
    public short[] j() {
        short[] sArr = new short[size()];
        short[] sArr2 = this.f27604q;
        byte[] bArr = this.f27568l;
        int length = sArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return sArr;
            }
            if (bArr[i11] == 1) {
                sArr[i10] = sArr2[i11];
                i10++;
            }
            length = i11;
        }
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f89211v = new float[jf2];
        return jf2;
    }

    @Override
    public Sd.f k() {
        return new f();
    }

    @Override
    public InterfaceC13973g keySet() {
        return new b();
    }

    @Override
    public void n(Ud.d dVar) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f89211v;
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
    public float n0(short s10) {
        int nf2 = nf(s10);
        return nf2 < 0 ? this.f27606s : this.f89211v[nf2];
    }

    @Override
    public float pa(short s10, float f10) {
        return zf(s10, f10, pf(s10));
    }

    @Override
    public void putAll(Map<? extends Short, ? extends Float> map) {
        cf(map.size());
        for (Map.Entry<? extends Short, ? extends Float> entry : map.entrySet()) {
            pa(entry.getKey().shortValue(), entry.getValue().floatValue());
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
            pa(objectInput.readShort(), objectInput.readFloat());
            readInt = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        B8(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public boolean v(t0 t0Var) {
        return h1(t0Var);
    }

    @Override
    public float[] values() {
        float[] fArr = new float[size()];
        float[] fArr2 = this.f89211v;
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
                objectOutput.writeShort(this.f27604q[i10]);
                objectOutput.writeFloat(this.f89211v[i10]);
            }
            length = i10;
        }
    }

    @Override
    public float yb(short s10, float f10, float f11) {
        int pf2 = pf(s10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            float[] fArr = this.f89211v;
            float f12 = f10 + fArr[pf2];
            fArr[pf2] = f12;
            z10 = false;
            f11 = f12;
        } else {
            this.f89211v[pf2] = f11;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27607t);
        }
        return f11;
    }

    @Override
    public boolean z(short s10) {
        return W0(s10);
    }

    public final float zf(short s10, float f10, int i10) {
        float f11 = this.f27606s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            f11 = this.f89211v[i10];
            z10 = false;
        }
        this.f89211v[i10] = f10;
        if (z10) {
            ef(this.f27607t);
        }
        return f11;
    }

    public j0(int i10) {
        super(i10);
    }

    public j0(int i10, float f10) {
        super(i10, f10);
    }

    public j0(int i10, float f10, short s10, float f11) {
        super(i10, f10, s10, f11);
    }

    public j0(short[] sArr, float[] fArr) {
        super(Math.max(sArr.length, fArr.length));
        int min = Math.min(sArr.length, fArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            pa(sArr[i10], fArr[i10]);
        }
    }

    public j0(ee.i0 i0Var) {
        super(i0Var.size());
        if (i0Var instanceof j0) {
            j0 j0Var = (j0) i0Var;
            this.f27454d = j0Var.f27454d;
            short s10 = j0Var.f27605r;
            this.f27605r = s10;
            this.f27606s = j0Var.f27606s;
            if (s10 != 0) {
                Arrays.fill(this.f27604q, s10);
            }
            float f10 = this.f27606s;
            if (f10 != 0.0f) {
                Arrays.fill(this.f89211v, f10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        A6(i0Var);
    }
}
