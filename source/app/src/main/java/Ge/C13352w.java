package ge;

import Wd.AbstractC3180x;
import Zd.InterfaceC3466y;
import Zd.InterfaceC3467z;
import ee.InterfaceC13080v;
import he.InterfaceC13468x;
import he.InterfaceC13470z;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Map;
import ke.InterfaceC13969c;
import org.apache.commons.math3.geometry.VectorFormat;

public class C13352w extends AbstractC3180x implements InterfaceC13080v, Externalizable {

    public static final long f89488w = 1;

    public transient long[] f89489v;

    public class a implements InterfaceC13468x {

        public boolean f89490a = true;

        public final StringBuilder f89491b;

        public a(StringBuilder sb2) {
            this.f89491b = sb2;
        }

        @Override
        public boolean a(double d10, long j10) {
            if (this.f89490a) {
                this.f89490a = false;
            } else {
                this.f89491b.append(", ");
            }
            this.f89491b.append(d10);
            this.f89491b.append("=");
            this.f89491b.append(j10);
            return true;
        }
    }

    public class b extends Wd.J implements InterfaceC3467z {
        public b(C13352w c13352w) {
            super(c13352w);
        }

        @Override
        public long d(long j10) {
            long value = value();
            C13352w.this.f89489v[this.f27465d] = j10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public double key() {
            return C13352w.this.f27703q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13352w.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public long value() {
            return C13352w.this.f89489v[this.f27465d];
        }
    }

    public class c extends Wd.J implements InterfaceC3466y {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public double next() {
            j();
            return C13352w.this.f27703q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13352w.this.hf(this.f27465d);
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
            return C13352w.this.f89489v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13352w.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class e implements InterfaceC13969c {

        public class a implements InterfaceC13470z {

            public boolean f89497a = true;

            public final StringBuilder f89498b;

            public a(StringBuilder sb2) {
                this.f89498b = sb2;
            }

            @Override
            public boolean a(double d10) {
                if (this.f89497a) {
                    this.f89497a = false;
                } else {
                    this.f89498b.append(", ");
                }
                this.f89498b.append(d10);
                return true;
            }
        }

        public e() {
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
                if (!C13352w.this.A(it.next())) {
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
            return C13352w.this.Y0(d10);
        }

        @Override
        public boolean Y1(double[] dArr) {
            Arrays.sort(dArr);
            C13352w c13352w = C13352w.this;
            double[] dArr2 = c13352w.f27703q;
            byte[] bArr = c13352w.f27568l;
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
                    C13352w.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean a(double d10) {
            return C13352w.this.f27705s != C13352w.this.a(d10);
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
            C13352w.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Double) {
                    if (!C13352w.this.A(((Double) obj).doubleValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean equals(Object obj) {
            if (!(obj instanceof InterfaceC13969c)) {
                return false;
            }
            InterfaceC13969c interfaceC13969c = (InterfaceC13969c) obj;
            if (interfaceC13969c.size() != size()) {
                return false;
            }
            int length = C13352w.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                C13352w c13352w = C13352w.this;
                if (c13352w.f27568l[i10] == 1 && !interfaceC13969c.Y0(c13352w.f27703q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public int hashCode() {
            int length = C13352w.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                C13352w c13352w = C13352w.this;
                if (c13352w.f27568l[i11] == 1) {
                    i10 += Vd.b.b(c13352w.f27703q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public double i() {
            return C13352w.this.f27704r;
        }

        @Override
        public boolean i1(InterfaceC13470z interfaceC13470z) {
            return C13352w.this.k0(interfaceC13470z);
        }

        @Override
        public boolean isEmpty() {
            return C13352w.this.f27452b == 0;
        }

        @Override
        public InterfaceC3466y iterator() {
            C13352w c13352w = C13352w.this;
            return new c(c13352w);
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
                if (!C13352w.this.Y0(d10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int size() {
            return C13352w.this.f27452b;
        }

        @Override
        public double[] toArray() {
            return C13352w.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13352w.this.k0(new a(sb2));
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
            return C13352w.this.W(dArr);
        }
    }

    public class f implements Sd.h {

        public class a implements he.b0 {

            public boolean f89501a = true;

            public final StringBuilder f89502b;

            public a(StringBuilder sb2) {
                this.f89502b = sb2;
            }

            @Override
            public boolean a(long j10) {
                if (this.f89501a) {
                    this.f89501a = false;
                } else {
                    this.f89502b.append(", ");
                }
                this.f89502b.append(j10);
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
                if (!C13352w.this.R(it.next())) {
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
            return C13352w.this.g0(jArr);
        }

        @Override
        public boolean Q1(long[] jArr) {
            Arrays.sort(jArr);
            C13352w c13352w = C13352w.this;
            long[] jArr2 = c13352w.f89489v;
            byte[] bArr = c13352w.f27568l;
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
                    C13352w.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean U1(long[] jArr) {
            for (long j10 : jArr) {
                if (!C13352w.this.R(j10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean X0(long j10) {
            return C13352w.this.R(j10);
        }

        @Override
        public boolean addAll(Collection<? extends Long> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C13352w.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Long) {
                    if (!C13352w.this.R(((Long) obj).longValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean e(long j10) {
            C13352w c13352w = C13352w.this;
            long[] jArr = c13352w.f89489v;
            double[] dArr = c13352w.f27703q;
            int length = jArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                double d10 = dArr[i10];
                if (d10 != 0.0d && d10 != 2.0d && j10 == jArr[i10]) {
                    C13352w.this.hf(i10);
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
            return C13352w.this.f27705s;
        }

        @Override
        public boolean isEmpty() {
            return C13352w.this.f27452b == 0;
        }

        @Override
        public Zd.b0 iterator() {
            C13352w c13352w = C13352w.this;
            return new d(c13352w);
        }

        @Override
        public boolean j1(he.b0 b0Var) {
            return C13352w.this.x(b0Var);
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
            return C13352w.this.f27452b;
        }

        @Override
        public long[] toArray() {
            return C13352w.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13352w.this.x(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean y2(long[] jArr) {
            throw new UnsupportedOperationException();
        }
    }

    public C13352w() {
    }

    @Override
    public boolean A(double d10) {
        return Y0(d10);
    }

    @Override
    public boolean L2(InterfaceC13468x interfaceC13468x) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f27703q;
        long[] jArr = this.f89489v;
        int length = dArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13468x.a(dArr[i10], jArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public long O2(double d10, long j10) {
        return zf(d10, j10, pf(d10));
    }

    @Override
    public boolean Oa(double d10, long j10) {
        int nf2 = nf(d10);
        if (nf2 < 0) {
            return false;
        }
        long[] jArr = this.f89489v;
        jArr[nf2] = jArr[nf2] + j10;
        return true;
    }

    @Override
    public boolean R(long j10) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f89489v;
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
    public long U4(double d10, long j10, long j11) {
        int pf2 = pf(d10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            long[] jArr = this.f89489v;
            j11 = jArr[pf2] + j10;
            jArr[pf2] = j11;
            z10 = false;
        } else {
            this.f89489v[pf2] = j11;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27706t);
        }
        return j11;
    }

    @Override
    public double[] W(double[] dArr) {
        int size = size();
        if (dArr.length < size) {
            dArr = new double[size];
        }
        double[] dArr2 = this.f27703q;
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
    public long Y8(double d10, long j10) {
        int pf2 = pf(d10);
        return pf2 < 0 ? this.f89489v[(-pf2) - 1] : zf(d10, j10, pf2);
    }

    @Override
    public long a(double d10) {
        long j10 = this.f27705s;
        int nf2 = nf(d10);
        if (nf2 < 0) {
            return j10;
        }
        long j11 = this.f89489v[nf2];
        hf(nf2);
        return j11;
    }

    @Override
    public void clear() {
        super.clear();
        double[] dArr = this.f27703q;
        Arrays.fill(dArr, 0, dArr.length, this.f27704r);
        long[] jArr = this.f89489v;
        Arrays.fill(jArr, 0, jArr.length, this.f27705s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof InterfaceC13080v)) {
            return false;
        }
        InterfaceC13080v interfaceC13080v = (InterfaceC13080v) obj;
        if (interfaceC13080v.size() != size()) {
            return false;
        }
        long[] jArr = this.f89489v;
        byte[] bArr = this.f27568l;
        long i10 = i();
        long i11 = interfaceC13080v.i();
        int length = jArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1) {
                long p02 = interfaceC13080v.p0(this.f27703q[i12]);
                long j10 = jArr[i12];
                if (j10 != p02 && j10 != i10 && p02 != i11) {
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
        long[] jArr2 = this.f89489v;
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
        double[] dArr = this.f27703q;
        int length = dArr.length;
        long[] jArr = this.f89489v;
        byte[] bArr = this.f27568l;
        this.f27703q = new double[i10];
        this.f89489v = new long[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f89489v[pf(dArr[i11])] = jArr[i11];
            }
            length = i11;
        }
    }

    @Override
    public void h(Ud.f fVar) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f89489v;
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
        int length = this.f89489v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.b(this.f27703q[i11]) ^ Vd.b.e(this.f89489v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f89489v[i10] = this.f27705s;
        super.hf(i10);
    }

    @Override
    public boolean increment(double d10) {
        return Oa(d10, 1L);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public InterfaceC3467z iterator() {
        return new b(this);
    }

    @Override
    public double[] j() {
        double[] dArr = new double[size()];
        double[] dArr2 = this.f27703q;
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
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f89489v = new long[jf2];
        return jf2;
    }

    @Override
    public Sd.h k() {
        return new f();
    }

    @Override
    public boolean k0(InterfaceC13470z interfaceC13470z) {
        return i1(interfaceC13470z);
    }

    @Override
    public InterfaceC13969c keySet() {
        return new e();
    }

    @Override
    public boolean oc(InterfaceC13468x interfaceC13468x) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f27703q;
        long[] jArr = this.f89489v;
        kf();
        try {
            int length = dArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !interfaceC13468x.a(dArr[i10], jArr[i10])) {
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
    public long p0(double d10) {
        int nf2 = nf(d10);
        return nf2 < 0 ? this.f27705s : this.f89489v[nf2];
    }

    @Override
    public void pe(InterfaceC13080v interfaceC13080v) {
        cf(interfaceC13080v.size());
        InterfaceC3467z it = interfaceC13080v.iterator();
        while (it.hasNext()) {
            it.g();
            O2(it.key(), it.value());
        }
    }

    @Override
    public void putAll(Map<? extends Double, ? extends Long> map) {
        cf(map.size());
        for (Map.Entry<? extends Double, ? extends Long> entry : map.entrySet()) {
            O2(entry.getKey().doubleValue(), entry.getValue().longValue());
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
            O2(objectInput.readDouble(), objectInput.readLong());
            readInt = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        L2(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public long[] values() {
        long[] jArr = new long[size()];
        long[] jArr2 = this.f89489v;
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
                objectOutput.writeDouble(this.f27703q[i10]);
                objectOutput.writeLong(this.f89489v[i10]);
            }
            length = i10;
        }
    }

    @Override
    public boolean x(he.b0 b0Var) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f89489v;
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

    public final long zf(double d10, long j10, int i10) {
        long j11 = this.f27705s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            z10 = false;
            j11 = this.f89489v[i10];
        }
        this.f89489v[i10] = j10;
        if (z10) {
            ef(this.f27706t);
        }
        return j11;
    }

    public C13352w(int i10) {
        super(i10);
    }

    public C13352w(int i10, float f10) {
        super(i10, f10);
    }

    public C13352w(int i10, float f10, double d10, long j10) {
        super(i10, f10, d10, j10);
    }

    public C13352w(double[] dArr, long[] jArr) {
        super(Math.max(dArr.length, jArr.length));
        int min = Math.min(dArr.length, jArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            O2(dArr[i10], jArr[i10]);
        }
    }

    public C13352w(InterfaceC13080v interfaceC13080v) {
        super(interfaceC13080v.size());
        if (interfaceC13080v instanceof C13352w) {
            C13352w c13352w = (C13352w) interfaceC13080v;
            this.f27454d = c13352w.f27454d;
            double d10 = c13352w.f27704r;
            this.f27704r = d10;
            this.f27705s = c13352w.f27705s;
            if (d10 != 0.0d) {
                Arrays.fill(this.f27703q, d10);
            }
            long j10 = this.f27705s;
            if (j10 != 0) {
                Arrays.fill(this.f89489v, j10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        pe(interfaceC13080v);
    }
}
