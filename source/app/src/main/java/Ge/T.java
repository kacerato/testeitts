package ge;

import Zd.InterfaceC3466y;
import he.InterfaceC13470z;
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

public class T extends Wd.V implements ee.Q, Externalizable {

    public static final long f88762w = 1;

    public transient double[] f88763v;

    public class a implements he.W {

        public boolean f88764a = true;

        public final StringBuilder f88765b;

        public a(StringBuilder sb2) {
            this.f88765b = sb2;
        }

        @Override
        public boolean a(long j10, double d10) {
            if (this.f88764a) {
                this.f88764a = false;
            } else {
                this.f88765b.append(", ");
            }
            this.f88765b.append(j10);
            this.f88765b.append("=");
            this.f88765b.append(d10);
            return true;
        }
    }

    public class b implements InterfaceC13972f {

        public class a implements he.b0 {

            public boolean f88768a = true;

            public final StringBuilder f88769b;

            public a(StringBuilder sb2) {
                this.f88769b = sb2;
            }

            @Override
            public boolean a(long j10) {
                if (this.f88768a) {
                    this.f88768a = false;
                } else {
                    this.f88769b.append(", ");
                }
                this.f88769b.append(j10);
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
                if (!T.this.E(it.next())) {
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
            return T.this.h0(jArr);
        }

        @Override
        public boolean Q1(long[] jArr) {
            Arrays.sort(jArr);
            T t10 = T.this;
            long[] jArr2 = t10.f27516q;
            byte[] bArr = t10.f27568l;
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
                    T.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean U1(long[] jArr) {
            for (long j10 : jArr) {
                if (!T.this.X0(j10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean X0(long j10) {
            return T.this.X0(j10);
        }

        @Override
        public boolean addAll(Collection<? extends Long> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            T.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Long) {
                    if (!T.this.E(((Long) obj).longValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean e(long j10) {
            return T.this.f27518s != T.this.e(j10);
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
            int length = T.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                T t10 = T.this;
                if (t10.f27568l[i10] == 1 && !interfaceC13972f.X0(t10.f27516q[i10])) {
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
            int length = T.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                T t10 = T.this;
                if (t10.f27568l[i11] == 1) {
                    i10 += Vd.b.e(t10.f27516q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public long i() {
            return T.this.f27517r;
        }

        @Override
        public boolean isEmpty() {
            return T.this.f27452b == 0;
        }

        @Override
        public Zd.b0 iterator() {
            T t10 = T.this;
            return new d(t10);
        }

        @Override
        public boolean j1(he.b0 b0Var) {
            return T.this.l0(b0Var);
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
            return T.this.f27452b;
        }

        @Override
        public long[] toArray() {
            return T.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            T.this.l0(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean y2(long[] jArr) {
            throw new UnsupportedOperationException();
        }
    }

    public class c extends Wd.J implements Zd.Y {
        public c(T t10) {
            super(t10);
        }

        @Override
        public double f(double d10) {
            double value = value();
            T.this.f88763v[this.f27465d] = d10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public long key() {
            return T.this.f27516q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                T.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public double value() {
            return T.this.f88763v[this.f27465d];
        }
    }

    public class d extends Wd.J implements Zd.b0 {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public long next() {
            j();
            return T.this.f27516q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                T.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class e extends Wd.J implements InterfaceC3466y {
        public e(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public double next() {
            j();
            return T.this.f88763v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                T.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class f implements Sd.e {

        public class a implements InterfaceC13470z {

            public boolean f88775a = true;

            public final StringBuilder f88776b;

            public a(StringBuilder sb2) {
                this.f88776b = sb2;
            }

            @Override
            public boolean a(double d10) {
                if (this.f88775a) {
                    this.f88775a = false;
                } else {
                    this.f88776b.append(", ");
                }
                this.f88776b.append(d10);
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
                if (!T.this.T(it.next())) {
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
            return T.this.T(d10);
        }

        @Override
        public boolean Y1(double[] dArr) {
            Arrays.sort(dArr);
            T t10 = T.this;
            double[] dArr2 = t10.f88763v;
            byte[] bArr = t10.f27568l;
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
                    T.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean a(double d10) {
            T t10 = T.this;
            double[] dArr = t10.f88763v;
            long[] jArr = t10.f27516q;
            int length = dArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                long j10 = jArr[i10];
                if (j10 != 0 && j10 != 2 && d10 == dArr[i10]) {
                    T.this.hf(i10);
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
            T.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Double) {
                    if (!T.this.T(((Double) obj).doubleValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public double i() {
            return T.this.f27518s;
        }

        @Override
        public boolean i1(InterfaceC13470z interfaceC13470z) {
            return T.this.I(interfaceC13470z);
        }

        @Override
        public boolean isEmpty() {
            return T.this.f27452b == 0;
        }

        @Override
        public InterfaceC3466y iterator() {
            T t10 = T.this;
            return new e(t10);
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
                if (!T.this.T(d10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int size() {
            return T.this.f27452b;
        }

        @Override
        public double[] toArray() {
            return T.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            T.this.I(new a(sb2));
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
            return T.this.b0(dArr);
        }
    }

    public T() {
    }

    @Override
    public boolean E(long j10) {
        return X0(j10);
    }

    @Override
    public boolean G6(he.W w10) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f27516q;
        double[] dArr = this.f88763v;
        kf();
        try {
            int length = jArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !w10.a(jArr[i10], dArr[i10])) {
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
    public boolean H0(long j10) {
        return jb(j10, 1.0d);
    }

    @Override
    public boolean I(InterfaceC13470z interfaceC13470z) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f88763v;
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
    public boolean T(double d10) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f88763v;
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
        double[] dArr2 = this.f88763v;
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
    public double c7(long j10, double d10, double d11) {
        int pf2 = pf(j10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            double[] dArr = this.f88763v;
            d11 = dArr[pf2] + d10;
            dArr[pf2] = d11;
            z10 = false;
        } else {
            this.f88763v[pf2] = d11;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27519t);
        }
        return d11;
    }

    @Override
    public void clear() {
        super.clear();
        long[] jArr = this.f27516q;
        Arrays.fill(jArr, 0, jArr.length, this.f27517r);
        double[] dArr = this.f88763v;
        Arrays.fill(dArr, 0, dArr.length, this.f27518s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    @Override
    public double e(long j10) {
        double d10 = this.f27518s;
        int nf2 = nf(j10);
        if (nf2 < 0) {
            return d10;
        }
        double d11 = this.f88763v[nf2];
        hf(nf2);
        return d11;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ee.Q)) {
            return false;
        }
        ee.Q q10 = (ee.Q) obj;
        if (q10.size() != size()) {
            return false;
        }
        double[] dArr = this.f88763v;
        byte[] bArr = this.f27568l;
        double i10 = i();
        double i11 = q10.i();
        int length = dArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1) {
                double u10 = q10.u(this.f27516q[i12]);
                double d10 = dArr[i12];
                if (d10 != u10 && d10 != i10 && u10 != i11) {
                    return false;
                }
            }
            length = i12;
        }
    }

    @Override
    public void gf(int i10) {
        long[] jArr = this.f27516q;
        int length = jArr.length;
        double[] dArr = this.f88763v;
        byte[] bArr = this.f27568l;
        this.f27516q = new long[i10];
        this.f88763v = new double[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f88763v[pf(jArr[i11])] = dArr[i11];
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
        long[] jArr2 = this.f27516q;
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
        int length = this.f88763v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.e(this.f27516q[i11]) ^ Vd.b.b(this.f88763v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f88763v[i10] = this.f27518s;
        super.hf(i10);
    }

    @Override
    public void ie(ee.Q q10) {
        cf(q10.size());
        Zd.Y it = q10.iterator();
        while (it.hasNext()) {
            it.g();
            j7(it.key(), it.value());
        }
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public Zd.Y iterator() {
        return new c(this);
    }

    @Override
    public long[] j() {
        long[] jArr = new long[size()];
        long[] jArr2 = this.f27516q;
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
    public double j7(long j10, double d10) {
        return zf(j10, d10, pf(j10));
    }

    @Override
    public boolean jb(long j10, double d10) {
        int nf2 = nf(j10);
        if (nf2 < 0) {
            return false;
        }
        double[] dArr = this.f88763v;
        dArr[nf2] = dArr[nf2] + d10;
        return true;
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f88763v = new double[jf2];
        return jf2;
    }

    @Override
    public Sd.e k() {
        return new f();
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
    public void p(Ud.c cVar) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f88763v;
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
    public void putAll(Map<? extends Long, ? extends Double> map) {
        cf(map.size());
        for (Map.Entry<? extends Long, ? extends Double> entry : map.entrySet()) {
            j7(entry.getKey().longValue(), entry.getValue().doubleValue());
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
            j7(objectInput.readLong(), objectInput.readDouble());
            readInt = i10;
        }
    }

    @Override
    public boolean te(he.W w10) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f27516q;
        double[] dArr = this.f88763v;
        int length = jArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !w10.a(jArr[i10], dArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        te(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public double u(long j10) {
        int nf2 = nf(j10);
        return nf2 < 0 ? this.f27518s : this.f88763v[nf2];
    }

    @Override
    public double[] values() {
        double[] dArr = new double[size()];
        double[] dArr2 = this.f88763v;
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
                objectOutput.writeLong(this.f27516q[i10]);
                objectOutput.writeDouble(this.f88763v[i10]);
            }
            length = i10;
        }
    }

    @Override
    public double xd(long j10, double d10) {
        int pf2 = pf(j10);
        return pf2 < 0 ? this.f88763v[(-pf2) - 1] : zf(j10, d10, pf2);
    }

    public final double zf(long j10, double d10, int i10) {
        double d11 = this.f27518s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            z10 = false;
            d11 = this.f88763v[i10];
        }
        this.f88763v[i10] = d10;
        if (z10) {
            ef(this.f27519t);
        }
        return d11;
    }

    public T(int i10) {
        super(i10);
    }

    public T(int i10, float f10) {
        super(i10, f10);
    }

    public T(int i10, float f10, long j10, double d10) {
        super(i10, f10, j10, d10);
    }

    public T(long[] jArr, double[] dArr) {
        super(Math.max(jArr.length, dArr.length));
        int min = Math.min(jArr.length, dArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            j7(jArr[i10], dArr[i10]);
        }
    }

    public T(ee.Q q10) {
        super(q10.size());
        if (q10 instanceof T) {
            T t10 = (T) q10;
            this.f27454d = t10.f27454d;
            long j10 = t10.f27517r;
            this.f27517r = j10;
            this.f27518s = t10.f27518s;
            if (j10 != 0) {
                Arrays.fill(this.f27516q, j10);
            }
            double d10 = this.f27518s;
            if (d10 != 0.0d) {
                Arrays.fill(this.f88763v, d10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        ie(q10);
    }
}
