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

public class C13327E extends Wd.F implements ee.D, Externalizable {

    public static final long f88531w = 1;

    public transient long[] f88532v;

    public class a implements he.G {

        public boolean f88533a = true;

        public final StringBuilder f88534b;

        public a(StringBuilder sb2) {
            this.f88534b = sb2;
        }

        @Override
        public boolean a(float f10, long j10) {
            if (this.f88533a) {
                this.f88533a = false;
            } else {
                this.f88534b.append(", ");
            }
            this.f88534b.append(f10);
            this.f88534b.append("=");
            this.f88534b.append(j10);
            return true;
        }
    }

    public class b extends Wd.J implements Zd.I {
        public b(C13327E c13327e) {
            super(c13327e);
        }

        @Override
        public long d(long j10) {
            long value = value();
            C13327E.this.f88532v[this.f27465d] = j10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public float key() {
            return C13327E.this.f27440q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13327E.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public long value() {
            return C13327E.this.f88532v[this.f27465d];
        }
    }

    public class c extends Wd.J implements Zd.H {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public float next() {
            j();
            return C13327E.this.f27440q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13327E.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class d extends Wd.J implements Zd.b0 {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public long next() {
            j();
            return C13327E.this.f88532v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13327E.this.hf(this.f27465d);
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

            public boolean f88540a = true;

            public final StringBuilder f88541b;

            public a(StringBuilder sb2) {
                this.f88541b = sb2;
            }

            @Override
            public boolean a(float f10) {
                if (this.f88540a) {
                    this.f88540a = false;
                } else {
                    this.f88541b.append(", ");
                }
                this.f88541b.append(f10);
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
                if (!C13327E.this.H(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean L1(float[] fArr) {
            for (float f10 : fArr) {
                if (!C13327E.this.Z0(f10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean V1(float[] fArr) {
            Arrays.sort(fArr);
            C13327E c13327e = C13327E.this;
            float[] fArr2 = c13327e.f27440q;
            byte[] bArr = c13327e.f27568l;
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
                    C13327E.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean Z0(float f10) {
            return C13327E.this.Z0(f10);
        }

        @Override
        public boolean addAll(Collection<? extends Float> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean c(float f10) {
            return C13327E.this.f27442s != C13327E.this.c(f10);
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
            C13327E.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Float) {
                    if (!C13327E.this.H(((Float) obj).floatValue())) {
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
            int length = C13327E.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                C13327E c13327e = C13327E.this;
                if (c13327e.f27568l[i10] == 1 && !interfaceC13970d.Z0(c13327e.f27440q[i10])) {
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
            int length = C13327E.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                C13327E c13327e = C13327E.this;
                if (c13327e.f27568l[i11] == 1) {
                    i10 += Vd.b.c(c13327e.f27440q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public float i() {
            return C13327E.this.f27441r;
        }

        @Override
        public boolean isEmpty() {
            return C13327E.this.f27452b == 0;
        }

        @Override
        public Zd.H iterator() {
            C13327E c13327e = C13327E.this;
            return new c(c13327e);
        }

        @Override
        public boolean k1(he.I i10) {
            return C13327E.this.j0(i10);
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
            return C13327E.this.f27452b;
        }

        @Override
        public float[] toArray() {
            return C13327E.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13327E.this.j0(new a(sb2));
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
            return C13327E.this.d0(fArr);
        }
    }

    public class f implements Sd.h {

        public class a implements he.b0 {

            public boolean f88544a = true;

            public final StringBuilder f88545b;

            public a(StringBuilder sb2) {
                this.f88545b = sb2;
            }

            @Override
            public boolean a(long j10) {
                if (this.f88544a) {
                    this.f88544a = false;
                } else {
                    this.f88545b.append(", ");
                }
                this.f88545b.append(j10);
                return true;
            }
        }

        public f() {
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
                if (!C13327E.this.R(it.next())) {
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
            return C13327E.this.g0(jArr);
        }

        @Override
        public boolean Q1(long[] jArr) {
            Arrays.sort(jArr);
            C13327E c13327e = C13327E.this;
            long[] jArr2 = c13327e.f88532v;
            byte[] bArr = c13327e.f27568l;
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
                    C13327E.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean U1(long[] jArr) {
            for (long j10 : jArr) {
                if (!C13327E.this.R(j10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean X0(long j10) {
            return C13327E.this.R(j10);
        }

        @Override
        public boolean addAll(Collection<? extends Long> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C13327E.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Long) {
                    if (!C13327E.this.R(((Long) obj).longValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean e(long j10) {
            C13327E c13327e = C13327E.this;
            long[] jArr = c13327e.f88532v;
            float[] fArr = c13327e.f27440q;
            int length = jArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                float f10 = fArr[i10];
                if (f10 != 0.0f && f10 != 2.0f && j10 == jArr[i10]) {
                    C13327E.this.hf(i10);
                    return true;
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
        public long i() {
            return C13327E.this.f27442s;
        }

        @Override
        public boolean isEmpty() {
            return C13327E.this.f27452b == 0;
        }

        @Override
        public Zd.b0 iterator() {
            C13327E c13327e = C13327E.this;
            return new d(c13327e);
        }

        @Override
        public boolean j1(he.b0 b0Var) {
            return C13327E.this.x(b0Var);
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
            return C13327E.this.f27452b;
        }

        @Override
        public long[] toArray() {
            return C13327E.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13327E.this.x(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean y2(long[] jArr) {
            throw new UnsupportedOperationException();
        }
    }

    public C13327E() {
    }

    @Override
    public boolean G0(float f10) {
        return O9(f10, 1L);
    }

    @Override
    public boolean H(float f10) {
        return Z0(f10);
    }

    @Override
    public long O5(float f10, long j10) {
        return zf(f10, j10, pf(f10));
    }

    @Override
    public boolean O9(float f10, long j10) {
        int nf2 = nf(f10);
        if (nf2 < 0) {
            return false;
        }
        long[] jArr = this.f88532v;
        jArr[nf2] = jArr[nf2] + j10;
        return true;
    }

    @Override
    public boolean R(long j10) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f88532v;
        int length = jArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return false;
            }
            if (bArr[i10] == 1 && j10 == jArr[i10]) {
                return true;
            }
            length = i10;
        }
    }

    @Override
    public long c(float f10) {
        long j10 = this.f27442s;
        int nf2 = nf(f10);
        if (nf2 < 0) {
            return j10;
        }
        long j11 = this.f88532v[nf2];
        hf(nf2);
        return j11;
    }

    @Override
    public boolean ce(he.G g10) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f27440q;
        long[] jArr = this.f88532v;
        kf();
        try {
            int length = fArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !g10.a(fArr[i10], jArr[i10])) {
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
    public void clear() {
        super.clear();
        float[] fArr = this.f27440q;
        Arrays.fill(fArr, 0, fArr.length, this.f27441r);
        long[] jArr = this.f88532v;
        Arrays.fill(jArr, 0, jArr.length, this.f27442s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    @Override
    public float[] d0(float[] fArr) {
        int size = size();
        if (fArr.length < size) {
            fArr = new float[size];
        }
        float[] fArr2 = this.f27440q;
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

    public boolean equals(Object obj) {
        if (!(obj instanceof ee.D)) {
            return false;
        }
        ee.D d10 = (ee.D) obj;
        if (d10.size() != size()) {
            return false;
        }
        long[] jArr = this.f88532v;
        byte[] bArr = this.f27568l;
        long i10 = i();
        long i11 = d10.i();
        int length = jArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1) {
                long q02 = d10.q0(this.f27440q[i12]);
                long j10 = jArr[i12];
                if (j10 != q02 && j10 != i10 && q02 != i11) {
                    return false;
                }
            }
            length = i12;
        }
    }

    @Override
    public long[] g0(long[] jArr) {
        int size = size();
        if (jArr.length < size) {
            jArr = new long[size];
        }
        long[] jArr2 = this.f88532v;
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
    public void gf(int i10) {
        float[] fArr = this.f27440q;
        int length = fArr.length;
        long[] jArr = this.f88532v;
        byte[] bArr = this.f27568l;
        this.f27440q = new float[i10];
        this.f88532v = new long[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f88532v[pf(fArr[i11])] = jArr[i11];
            }
            length = i11;
        }
    }

    @Override
    public void h(Ud.f fVar) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f88532v;
        int length = jArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i10] == 1) {
                jArr[i10] = fVar.a(jArr[i10]);
            }
            length = i10;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f88532v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.c(this.f27440q[i11]) ^ Vd.b.e(this.f88532v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f88532v[i10] = this.f27442s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public Zd.I iterator() {
        return new b(this);
    }

    @Override
    public float[] j() {
        float[] fArr = new float[size()];
        float[] fArr2 = this.f27440q;
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
        this.f88532v = new long[jf2];
        return jf2;
    }

    @Override
    public Sd.h k() {
        return new f();
    }

    @Override
    public InterfaceC13970d keySet() {
        return new e();
    }

    @Override
    public long ld(float f10, long j10, long j11) {
        int pf2 = pf(f10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            long[] jArr = this.f88532v;
            long j12 = j10 + jArr[pf2];
            jArr[pf2] = j12;
            z10 = false;
            j11 = j12;
        } else {
            this.f88532v[pf2] = j11;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27443t);
        }
        return j11;
    }

    @Override
    public void putAll(Map<? extends Float, ? extends Long> map) {
        cf(map.size());
        for (Map.Entry<? extends Float, ? extends Long> entry : map.entrySet()) {
            O5(entry.getKey().floatValue(), entry.getValue().longValue());
        }
    }

    @Override
    public long q0(float f10) {
        int nf2 = nf(f10);
        return nf2 < 0 ? this.f27442s : this.f88532v[nf2];
    }

    @Override
    public long re(float f10, long j10) {
        int pf2 = pf(f10);
        return pf2 < 0 ? this.f88532v[(-pf2) - 1] : zf(f10, j10, pf2);
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
            O5(objectInput.readFloat(), objectInput.readLong());
            readInt = i10;
        }
    }

    @Override
    public boolean s7(he.G g10) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f27440q;
        long[] jArr = this.f88532v;
        int length = fArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !g10.a(fArr[i10], jArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        s7(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public long[] values() {
        long[] jArr = new long[size()];
        long[] jArr2 = this.f88532v;
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
    public void w7(ee.D d10) {
        cf(d10.size());
        Zd.I it = d10.iterator();
        while (it.hasNext()) {
            it.g();
            O5(it.key(), it.value());
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
                objectOutput.writeFloat(this.f27440q[i10]);
                objectOutput.writeLong(this.f88532v[i10]);
            }
            length = i10;
        }
    }

    @Override
    public boolean x(he.b0 b0Var) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f88532v;
        int length = jArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !b0Var.a(jArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    public final long zf(float f10, long j10, int i10) {
        long j11 = this.f27442s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            j11 = this.f88532v[i10];
            z10 = false;
        }
        this.f88532v[i10] = j10;
        if (z10) {
            ef(this.f27443t);
        }
        return j11;
    }

    public C13327E(int i10) {
        super(i10);
    }

    public C13327E(int i10, float f10) {
        super(i10, f10);
    }

    public C13327E(int i10, float f10, float f11, long j10) {
        super(i10, f10, f11, j10);
    }

    public C13327E(float[] fArr, long[] jArr) {
        super(Math.max(fArr.length, jArr.length));
        int min = Math.min(fArr.length, jArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            O5(fArr[i10], jArr[i10]);
        }
    }

    public C13327E(ee.D d10) {
        super(d10.size());
        if (d10 instanceof C13327E) {
            C13327E c13327e = (C13327E) d10;
            this.f27454d = c13327e.f27454d;
            float f10 = c13327e.f27441r;
            this.f27441r = f10;
            this.f27442s = c13327e.f27442s;
            if (f10 != 0.0f) {
                Arrays.fill(this.f27440q, f10);
            }
            long j10 = this.f27442s;
            if (j10 != 0) {
                Arrays.fill(this.f88532v, j10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        w7(d10);
    }
}
