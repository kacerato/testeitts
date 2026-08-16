package ge;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Map;
import ke.InterfaceC13972f;
import org.apache.commons.math3.geometry.VectorFormat;

public class U extends Wd.W implements ee.S, Externalizable {

    public static final long f88778w = 1;

    public transient float[] f88779v;

    public class a implements he.X {

        public boolean f88780a = true;

        public final StringBuilder f88781b;

        public a(StringBuilder sb2) {
            this.f88781b = sb2;
        }

        @Override
        public boolean a(long j10, float f10) {
            if (this.f88780a) {
                this.f88780a = false;
            } else {
                this.f88781b.append(", ");
            }
            this.f88781b.append(j10);
            this.f88781b.append("=");
            this.f88781b.append(f10);
            return true;
        }
    }

    public class b implements InterfaceC13972f {

        public class a implements he.b0 {

            public boolean f88784a = true;

            public final StringBuilder f88785b;

            public a(StringBuilder sb2) {
                this.f88785b = sb2;
            }

            @Override
            public boolean a(long j10) {
                if (this.f88784a) {
                    this.f88784a = false;
                } else {
                    this.f88785b.append(", ");
                }
                this.f88785b.append(j10);
                return true;
            }
        }

        public b() {
        }

        @Override
        public boolean B1(long[] jArr) {
            int length = jArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (e(jArr[i10])) {
                    z10 = true;
                }
                length = i10;
            }
        }

        @Override
        public boolean B2(Sd.h hVar) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean H1(Sd.h hVar) {
            Zd.b0 it = hVar.iterator();
            while (it.hasNext()) {
                if (!U.this.E(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean M0(long j10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public long[] O0(long[] jArr) {
            return U.this.h0(jArr);
        }

        @Override
        public boolean Q1(long[] jArr) {
            Arrays.sort(jArr);
            U u10 = U.this;
            long[] jArr2 = u10.f27521q;
            byte[] bArr = u10.f27568l;
            int length = jArr2.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] != 1 || Arrays.binarySearch(jArr, jArr2[i10]) >= 0) {
                    length = i10;
                } else {
                    U.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean U1(long[] jArr) {
            for (long j10 : jArr) {
                if (!U.this.X0(j10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean X0(long j10) {
            return U.this.X0(j10);
        }

        @Override
        public boolean addAll(Collection<? extends Long> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            U.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Long) {
                    if (!U.this.E(((Long) obj).longValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean e(long j10) {
            return U.this.f27523s != U.this.e(j10);
        }

        @Override
        public boolean equals(Object obj) {
            if (!(obj instanceof InterfaceC13972f)) {
                return false;
            }
            InterfaceC13972f interfaceC13972f = (InterfaceC13972f) obj;
            if (interfaceC13972f.size() != size()) {
                return false;
            }
            int length = U.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                U u10 = U.this;
                if (u10.f27568l[i10] == 1 && !interfaceC13972f.X0(u10.f27521q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public boolean f2(Sd.h hVar) {
            if (this == hVar) {
                clear();
                return true;
            }
            Zd.b0 it = hVar.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (e(it.next())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public int hashCode() {
            int length = U.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                U u10 = U.this;
                if (u10.f27568l[i11] == 1) {
                    i10 += Vd.b.e(u10.f27521q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public long i() {
            return U.this.f27522r;
        }

        @Override
        public boolean isEmpty() {
            return U.this.f27452b == 0;
        }

        @Override
        public Zd.b0 iterator() {
            U u10 = U.this;
            return new d(u10);
        }

        @Override
        public boolean j1(he.b0 b0Var) {
            return U.this.l0(b0Var);
        }

        @Override
        public boolean q1(Sd.h hVar) {
            boolean z10 = false;
            if (this == hVar) {
                return false;
            }
            Zd.b0 it = iterator();
            while (it.hasNext()) {
                if (!hVar.X0(it.next())) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            boolean z10 = false;
            for (Object obj : collection) {
                if ((obj instanceof Long) && e(((Long) obj).longValue())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            Zd.b0 it = iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (!collection.contains(Long.valueOf(it.next()))) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public int size() {
            return U.this.f27452b;
        }

        @Override
        public long[] toArray() {
            return U.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            U.this.l0(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean y2(long[] jArr) {
            throw new UnsupportedOperationException();
        }
    }

    public class c extends Wd.J implements Zd.Z {
        public c(U u10) {
            super(u10);
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public long key() {
            return U.this.f27521q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                U.this.hf(this.f27465d);
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
            U.this.f88779v[this.f27465d] = f10;
            return value;
        }

        @Override
        public float value() {
            return U.this.f88779v[this.f27465d];
        }
    }

    public class d extends Wd.J implements Zd.b0 {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public long next() {
            j();
            return U.this.f27521q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                U.this.hf(this.f27465d);
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
            return U.this.f88779v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                U.this.hf(this.f27465d);
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

            public boolean f88791a = true;

            public final StringBuilder f88792b;

            public a(StringBuilder sb2) {
                this.f88792b = sb2;
            }

            @Override
            public boolean a(float f10) {
                if (this.f88791a) {
                    this.f88791a = false;
                } else {
                    this.f88792b.append(", ");
                }
                this.f88792b.append(f10);
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
                if (!U.this.U(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean L1(float[] fArr) {
            for (float f10 : fArr) {
                if (!U.this.U(f10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean V1(float[] fArr) {
            Arrays.sort(fArr);
            U u10 = U.this;
            float[] fArr2 = u10.f88779v;
            byte[] bArr = u10.f27568l;
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
                    U.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean Z0(float f10) {
            return U.this.U(f10);
        }

        @Override
        public boolean addAll(Collection<? extends Float> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean c(float f10) {
            U u10 = U.this;
            float[] fArr = u10.f88779v;
            long[] jArr = u10.f27521q;
            int length = fArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                long j10 = jArr[i10];
                if (j10 != 0 && j10 != 2 && f10 == fArr[i10]) {
                    U.this.hf(i10);
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
            U.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Float) {
                    if (!U.this.U(((Float) obj).floatValue())) {
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
            return U.this.f27523s;
        }

        @Override
        public boolean isEmpty() {
            return U.this.f27452b == 0;
        }

        @Override
        public Zd.H iterator() {
            U u10 = U.this;
            return new e(u10);
        }

        @Override
        public boolean k1(he.I i10) {
            return U.this.B(i10);
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
            return U.this.f27452b;
        }

        @Override
        public float[] toArray() {
            return U.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            U.this.B(new a(sb2));
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
            return U.this.c0(fArr);
        }
    }

    public U() {
    }

    @Override
    public boolean B(he.I i10) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f88779v;
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
    public boolean E(long j10) {
        return X0(j10);
    }

    @Override
    public boolean H0(long j10) {
        return hb(j10, 1.0f);
    }

    @Override
    public float I7(long j10, float f10, float f11) {
        int pf2 = pf(j10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            float[] fArr = this.f88779v;
            f11 = fArr[pf2] + f10;
            fArr[pf2] = f11;
            z10 = false;
        } else {
            this.f88779v[pf2] = f11;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27524t);
        }
        return f11;
    }

    @Override
    public boolean U(float f10) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f88779v;
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
    public boolean Y5(he.X x10) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f27521q;
        float[] fArr = this.f88779v;
        kf();
        try {
            int length = jArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !x10.a(jArr[i10], fArr[i10])) {
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
    public float[] c0(float[] fArr) {
        int size = size();
        if (fArr.length < size) {
            fArr = new float[size];
        }
        float[] fArr2 = this.f88779v;
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
        long[] jArr = this.f27521q;
        Arrays.fill(jArr, 0, jArr.length, this.f27522r);
        float[] fArr = this.f88779v;
        Arrays.fill(fArr, 0, fArr.length, this.f27523s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    @Override
    public void d7(ee.S s10) {
        cf(s10.size());
        Zd.Z it = s10.iterator();
        while (it.hasNext()) {
            it.g();
            k7(it.key(), it.value());
        }
    }

    @Override
    public float e(long j10) {
        float f10 = this.f27523s;
        int nf2 = nf(j10);
        if (nf2 < 0) {
            return f10;
        }
        float f11 = this.f88779v[nf2];
        hf(nf2);
        return f11;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ee.S)) {
            return false;
        }
        ee.S s10 = (ee.S) obj;
        if (s10.size() != size()) {
            return false;
        }
        float[] fArr = this.f88779v;
        byte[] bArr = this.f27568l;
        float i10 = i();
        float i11 = s10.i();
        int length = fArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1) {
                float u10 = s10.u(this.f27521q[i12]);
                float f10 = fArr[i12];
                if (f10 != u10 && f10 != i10 && u10 != i11) {
                    return false;
                }
            }
            length = i12;
        }
    }

    @Override
    public void gf(int i10) {
        long[] jArr = this.f27521q;
        int length = jArr.length;
        float[] fArr = this.f88779v;
        byte[] bArr = this.f27568l;
        this.f27521q = new long[i10];
        this.f88779v = new float[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f88779v[pf(jArr[i11])] = fArr[i11];
            }
            length = i11;
        }
    }

    @Override
    public long[] h0(long[] jArr) {
        int size = size();
        if (jArr.length < size) {
            jArr = new long[size];
        }
        long[] jArr2 = this.f27521q;
        byte[] bArr = this.f27568l;
        int length = jArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return jArr;
            }
            if (bArr[i11] == 1) {
                jArr[i10] = jArr2[i11];
                i10++;
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f88779v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.e(this.f27521q[i11]) ^ Vd.b.c(this.f88779v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public boolean hb(long j10, float f10) {
        int nf2 = nf(j10);
        if (nf2 < 0) {
            return false;
        }
        float[] fArr = this.f88779v;
        fArr[nf2] = fArr[nf2] + f10;
        return true;
    }

    @Override
    public void hf(int i10) {
        this.f88779v[i10] = this.f27523s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public Zd.Z iterator() {
        return new c(this);
    }

    @Override
    public long[] j() {
        long[] jArr = new long[size()];
        long[] jArr2 = this.f27521q;
        byte[] bArr = this.f27568l;
        int length = jArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return jArr;
            }
            if (bArr[i11] == 1) {
                jArr[i10] = jArr2[i11];
                i10++;
            }
            length = i11;
        }
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f88779v = new float[jf2];
        return jf2;
    }

    @Override
    public Sd.f k() {
        return new f();
    }

    @Override
    public float k7(long j10, float f10) {
        return zf(j10, f10, pf(j10));
    }

    @Override
    public InterfaceC13972f keySet() {
        return new b();
    }

    @Override
    public boolean l0(he.b0 b0Var) {
        return j1(b0Var);
    }

    @Override
    public void n(Ud.d dVar) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f88779v;
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
    public float od(long j10, float f10) {
        int pf2 = pf(j10);
        return pf2 < 0 ? this.f88779v[(-pf2) - 1] : zf(j10, f10, pf2);
    }

    @Override
    public void putAll(Map<? extends Long, ? extends Float> map) {
        cf(map.size());
        for (Map.Entry<? extends Long, ? extends Float> entry : map.entrySet()) {
            k7(entry.getKey().longValue(), entry.getValue().floatValue());
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
            k7(objectInput.readLong(), objectInput.readFloat());
            readInt = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        wc(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public float u(long j10) {
        int nf2 = nf(j10);
        return nf2 < 0 ? this.f27523s : this.f88779v[nf2];
    }

    @Override
    public float[] values() {
        float[] fArr = new float[size()];
        float[] fArr2 = this.f88779v;
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
    public boolean wc(he.X x10) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f27521q;
        float[] fArr = this.f88779v;
        int length = jArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !x10.a(jArr[i10], fArr[i10])) {
                return false;
            }
            length = i10;
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
                objectOutput.writeLong(this.f27521q[i10]);
                objectOutput.writeFloat(this.f88779v[i10]);
            }
            length = i10;
        }
    }

    public final float zf(long j10, float f10, int i10) {
        float f11 = this.f27523s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            f11 = this.f88779v[i10];
            z10 = false;
        }
        this.f88779v[i10] = f10;
        if (z10) {
            ef(this.f27524t);
        }
        return f11;
    }

    public U(int i10) {
        super(i10);
    }

    public U(int i10, float f10) {
        super(i10, f10);
    }

    public U(int i10, float f10, long j10, float f11) {
        super(i10, f10, j10, f11);
    }

    public U(long[] jArr, float[] fArr) {
        super(Math.max(jArr.length, fArr.length));
        int min = Math.min(jArr.length, fArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            k7(jArr[i10], fArr[i10]);
        }
    }

    public U(ee.S s10) {
        super(s10.size());
        if (s10 instanceof U) {
            U u10 = (U) s10;
            this.f27454d = u10.f27454d;
            long j10 = u10.f27522r;
            this.f27522r = j10;
            this.f27523s = u10.f27523s;
            if (j10 != 0) {
                Arrays.fill(this.f27521q, j10);
            }
            float f10 = this.f27523s;
            if (f10 != 0.0f) {
                Arrays.fill(this.f88779v, f10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        d7(s10);
    }
}
