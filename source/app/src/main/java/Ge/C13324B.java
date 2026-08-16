package ge;

import Zd.InterfaceC3466y;
import ee.InterfaceC13058A;
import he.InterfaceC13470z;
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

public class C13324B extends Wd.B implements InterfaceC13058A, Externalizable {

    public static final long f88483w = 1;

    public transient double[] f88484v;

    public class a implements he.D {

        public boolean f88485a = true;

        public final StringBuilder f88486b;

        public a(StringBuilder sb2) {
            this.f88486b = sb2;
        }

        @Override
        public boolean a(float f10, double d10) {
            if (this.f88485a) {
                this.f88485a = false;
            } else {
                this.f88486b.append(", ");
            }
            this.f88486b.append(f10);
            this.f88486b.append("=");
            this.f88486b.append(d10);
            return true;
        }
    }

    public class b extends Wd.J implements Zd.E {
        public b(C13324B c13324b) {
            super(c13324b);
        }

        @Override
        public double f(double d10) {
            double value = value();
            C13324B.this.f88484v[this.f27465d] = d10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public float key() {
            return C13324B.this.f27421q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13324B.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public double value() {
            return C13324B.this.f88484v[this.f27465d];
        }
    }

    public class c extends Wd.J implements Zd.H {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public float next() {
            j();
            return C13324B.this.f27421q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13324B.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class d extends Wd.J implements InterfaceC3466y {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public double next() {
            j();
            return C13324B.this.f88484v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13324B.this.hf(this.f27465d);
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

            public boolean f88492a = true;

            public final StringBuilder f88493b;

            public a(StringBuilder sb2) {
                this.f88493b = sb2;
            }

            @Override
            public boolean a(float f10) {
                if (this.f88492a) {
                    this.f88492a = false;
                } else {
                    this.f88493b.append(", ");
                }
                this.f88493b.append(f10);
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
                if (!C13324B.this.H(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean L1(float[] fArr) {
            for (float f10 : fArr) {
                if (!C13324B.this.Z0(f10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean V1(float[] fArr) {
            Arrays.sort(fArr);
            C13324B c13324b = C13324B.this;
            float[] fArr2 = c13324b.f27421q;
            byte[] bArr = c13324b.f27568l;
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
                    C13324B.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean Z0(float f10) {
            return C13324B.this.Z0(f10);
        }

        @Override
        public boolean addAll(Collection<? extends Float> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean c(float f10) {
            return C13324B.this.f27423s != C13324B.this.c(f10);
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
            C13324B.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Float) {
                    if (!C13324B.this.H(((Float) obj).floatValue())) {
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
            int length = C13324B.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                C13324B c13324b = C13324B.this;
                if (c13324b.f27568l[i10] == 1 && !interfaceC13970d.Z0(c13324b.f27421q[i10])) {
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
            int length = C13324B.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                C13324B c13324b = C13324B.this;
                if (c13324b.f27568l[i11] == 1) {
                    i10 += Vd.b.c(c13324b.f27421q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public float i() {
            return C13324B.this.f27422r;
        }

        @Override
        public boolean isEmpty() {
            return C13324B.this.f27452b == 0;
        }

        @Override
        public Zd.H iterator() {
            C13324B c13324b = C13324B.this;
            return new c(c13324b);
        }

        @Override
        public boolean k1(he.I i10) {
            return C13324B.this.j0(i10);
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
            return C13324B.this.f27452b;
        }

        @Override
        public float[] toArray() {
            return C13324B.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13324B.this.j0(new a(sb2));
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
            return C13324B.this.d0(fArr);
        }
    }

    public class f implements Sd.e {

        public class a implements InterfaceC13470z {

            public boolean f88496a = true;

            public final StringBuilder f88497b;

            public a(StringBuilder sb2) {
                this.f88497b = sb2;
            }

            @Override
            public boolean a(double d10) {
                if (this.f88496a) {
                    this.f88496a = false;
                } else {
                    this.f88497b.append(", ");
                }
                this.f88497b.append(d10);
                return true;
            }
        }

        public f() {
        }

        @Override
        public boolean C1(Sd.e eVar) {
            if (this == eVar) {
                clear();
                return true;
            }
            InterfaceC3466y it = eVar.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (a(it.next())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean G1(Sd.e eVar) {
            InterfaceC3466y it = eVar.iterator();
            while (it.hasNext()) {
                if (!C13324B.this.T(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean J1(Sd.e eVar) {
            boolean z10 = false;
            if (this == eVar) {
                return false;
            }
            InterfaceC3466y it = iterator();
            while (it.hasNext()) {
                if (!eVar.Y0(it.next())) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean Y0(double d10) {
            return C13324B.this.T(d10);
        }

        @Override
        public boolean Y1(double[] dArr) {
            Arrays.sort(dArr);
            C13324B c13324b = C13324B.this;
            double[] dArr2 = c13324b.f88484v;
            byte[] bArr = c13324b.f27568l;
            int length = dArr2.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] != 1 || Arrays.binarySearch(dArr, dArr2[i10]) >= 0) {
                    length = i10;
                } else {
                    C13324B.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean a(double d10) {
            C13324B c13324b = C13324B.this;
            double[] dArr = c13324b.f88484v;
            float[] fArr = c13324b.f27421q;
            int length = dArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                float f10 = fArr[i10];
                if (f10 != 0.0f && f10 != 2.0f && d10 == dArr[i10]) {
                    C13324B.this.hf(i10);
                    return true;
                }
                length = i10;
            }
        }

        @Override
        public boolean add(double d10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Double> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C13324B.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Double) {
                    if (!C13324B.this.T(((Double) obj).doubleValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public double i() {
            return C13324B.this.f27423s;
        }

        @Override
        public boolean i1(InterfaceC13470z interfaceC13470z) {
            return C13324B.this.I(interfaceC13470z);
        }

        @Override
        public boolean isEmpty() {
            return C13324B.this.f27452b == 0;
        }

        @Override
        public InterfaceC3466y iterator() {
            C13324B c13324b = C13324B.this;
            return new d(c13324b);
        }

        @Override
        public boolean m2(double[] dArr) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            boolean z10 = false;
            for (Object obj : collection) {
                if ((obj instanceof Double) && a(((Double) obj).doubleValue())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            InterfaceC3466y it = iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (!collection.contains(Double.valueOf(it.next()))) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean s1(double[] dArr) {
            for (double d10 : dArr) {
                if (!C13324B.this.T(d10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int size() {
            return C13324B.this.f27452b;
        }

        @Override
        public double[] toArray() {
            return C13324B.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13324B.this.I(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean w1(double[] dArr) {
            int length = dArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (a(dArr[i10])) {
                    z10 = true;
                }
                length = i10;
            }
        }

        @Override
        public boolean x2(Sd.e eVar) {
            throw new UnsupportedOperationException();
        }

        @Override
        public double[] toArray(double[] dArr) {
            return C13324B.this.b0(dArr);
        }
    }

    public C13324B() {
    }

    @Override
    public boolean G0(float f10) {
        return I9(f10, 1.0d);
    }

    @Override
    public boolean H(float f10) {
        return Z0(f10);
    }

    @Override
    public double H5(float f10, double d10) {
        return zf(f10, d10, pf(f10));
    }

    @Override
    public boolean I(InterfaceC13470z interfaceC13470z) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f88484v;
        int length = dArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13470z.a(dArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean I9(float f10, double d10) {
        int nf2 = nf(f10);
        if (nf2 < 0) {
            return false;
        }
        double[] dArr = this.f88484v;
        dArr[nf2] = dArr[nf2] + d10;
        return true;
    }

    @Override
    public boolean K5(he.D d10) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f27421q;
        double[] dArr = this.f88484v;
        int length = fArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !d10.a(fArr[i10], dArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public double M9(float f10, double d10, double d11) {
        int pf2 = pf(f10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            double[] dArr = this.f88484v;
            double d12 = d10 + dArr[pf2];
            dArr[pf2] = d12;
            z10 = false;
            d11 = d12;
        } else {
            this.f88484v[pf2] = d11;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27424t);
        }
        return d11;
    }

    @Override
    public boolean T(double d10) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f88484v;
        int length = dArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return false;
            }
            if (bArr[i10] == 1 && d10 == dArr[i10]) {
                return true;
            }
            length = i10;
        }
    }

    @Override
    public double[] b0(double[] dArr) {
        int size = size();
        if (dArr.length < size) {
            dArr = new double[size];
        }
        double[] dArr2 = this.f88484v;
        byte[] bArr = this.f27568l;
        int length = dArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return dArr;
            }
            if (bArr[i11] == 1) {
                dArr[i10] = dArr2[i11];
                i10++;
            }
            length = i11;
        }
    }

    @Override
    public double c(float f10) {
        double d10 = this.f27423s;
        int nf2 = nf(f10);
        if (nf2 < 0) {
            return d10;
        }
        double d11 = this.f88484v[nf2];
        hf(nf2);
        return d11;
    }

    @Override
    public boolean cb(he.D d10) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f27421q;
        double[] dArr = this.f88484v;
        kf();
        try {
            int length = fArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !d10.a(fArr[i10], dArr[i10])) {
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
        float[] fArr = this.f27421q;
        Arrays.fill(fArr, 0, fArr.length, this.f27422r);
        double[] dArr = this.f88484v;
        Arrays.fill(dArr, 0, dArr.length, this.f27423s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    @Override
    public float[] d0(float[] fArr) {
        int size = size();
        if (fArr.length < size) {
            fArr = new float[size];
        }
        float[] fArr2 = this.f27421q;
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
        if (!(obj instanceof InterfaceC13058A)) {
            return false;
        }
        InterfaceC13058A interfaceC13058A = (InterfaceC13058A) obj;
        if (interfaceC13058A.size() != size()) {
            return false;
        }
        double[] dArr = this.f88484v;
        byte[] bArr = this.f27568l;
        double i10 = i();
        double i11 = interfaceC13058A.i();
        int length = dArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1) {
                double q02 = interfaceC13058A.q0(this.f27421q[i12]);
                double d10 = dArr[i12];
                if (d10 != q02 && d10 != i10 && q02 != i11) {
                    return false;
                }
            }
            length = i12;
        }
    }

    @Override
    public void gf(int i10) {
        float[] fArr = this.f27421q;
        int length = fArr.length;
        double[] dArr = this.f88484v;
        byte[] bArr = this.f27568l;
        this.f27421q = new float[i10];
        this.f88484v = new double[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f88484v[pf(fArr[i11])] = dArr[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f88484v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.c(this.f27421q[i11]) ^ Vd.b.b(this.f88484v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f88484v[i10] = this.f27423s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public Zd.E iterator() {
        return new b(this);
    }

    @Override
    public float[] j() {
        float[] fArr = new float[size()];
        float[] fArr2 = this.f27421q;
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
        this.f88484v = new double[jf2];
        return jf2;
    }

    @Override
    public Sd.e k() {
        return new f();
    }

    @Override
    public InterfaceC13970d keySet() {
        return new e();
    }

    @Override
    public void p(Ud.c cVar) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f88484v;
        int length = dArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i10] == 1) {
                dArr[i10] = cVar.a(dArr[i10]);
            }
            length = i10;
        }
    }

    @Override
    public void putAll(Map<? extends Float, ? extends Double> map) {
        cf(map.size());
        for (Map.Entry<? extends Float, ? extends Double> entry : map.entrySet()) {
            H5(entry.getKey().floatValue(), entry.getValue().doubleValue());
        }
    }

    @Override
    public double q0(float f10) {
        int nf2 = nf(f10);
        return nf2 < 0 ? this.f27423s : this.f88484v[nf2];
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
            H5(objectInput.readFloat(), objectInput.readDouble());
            readInt = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        K5(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public double[] values() {
        double[] dArr = new double[size()];
        double[] dArr2 = this.f88484v;
        byte[] bArr = this.f27568l;
        int length = dArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return dArr;
            }
            if (bArr[i11] == 1) {
                dArr[i10] = dArr2[i11];
                i10++;
            }
            length = i11;
        }
    }

    @Override
    public void w5(InterfaceC13058A interfaceC13058A) {
        cf(interfaceC13058A.size());
        Zd.E it = interfaceC13058A.iterator();
        while (it.hasNext()) {
            it.g();
            H5(it.key(), it.value());
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
                objectOutput.writeFloat(this.f27421q[i10]);
                objectOutput.writeDouble(this.f88484v[i10]);
            }
            length = i10;
        }
    }

    @Override
    public double ye(float f10, double d10) {
        int pf2 = pf(f10);
        return pf2 < 0 ? this.f88484v[(-pf2) - 1] : zf(f10, d10, pf2);
    }

    public final double zf(float f10, double d10, int i10) {
        double d11 = this.f27423s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            d11 = this.f88484v[i10];
            z10 = false;
        }
        this.f88484v[i10] = d10;
        if (z10) {
            ef(this.f27424t);
        }
        return d11;
    }

    public C13324B(int i10) {
        super(i10);
    }

    public C13324B(int i10, float f10) {
        super(i10, f10);
    }

    public C13324B(int i10, float f10, float f11, double d10) {
        super(i10, f10, f11, d10);
    }

    public C13324B(float[] fArr, double[] dArr) {
        super(Math.max(fArr.length, dArr.length));
        int min = Math.min(fArr.length, dArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            H5(fArr[i10], dArr[i10]);
        }
    }

    public C13324B(InterfaceC13058A interfaceC13058A) {
        super(interfaceC13058A.size());
        if (interfaceC13058A instanceof C13324B) {
            C13324B c13324b = (C13324B) interfaceC13058A;
            this.f27454d = c13324b.f27454d;
            float f10 = c13324b.f27422r;
            this.f27422r = f10;
            this.f27423s = c13324b.f27423s;
            if (f10 != 0.0f) {
                Arrays.fill(this.f27421q, f10);
            }
            double d10 = this.f27423s;
            if (d10 != 0.0d) {
                Arrays.fill(this.f88484v, d10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        w5(interfaceC13058A);
    }
}
