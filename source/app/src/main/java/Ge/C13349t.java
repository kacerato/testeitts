package ge;

import Wd.AbstractC3176t;
import Zd.InterfaceC3463v;
import Zd.InterfaceC3466y;
import ee.InterfaceC13077s;
import he.InterfaceC13465u;
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

public class C13349t extends AbstractC3176t implements InterfaceC13077s, Externalizable {

    public static final long f89440w = 1;

    public transient double[] f89441v;

    public class a implements InterfaceC13465u {

        public boolean f89442a = true;

        public final StringBuilder f89443b;

        public a(StringBuilder sb2) {
            this.f89443b = sb2;
        }

        @Override
        public boolean a(double d10, double d11) {
            if (this.f89442a) {
                this.f89442a = false;
            } else {
                this.f89443b.append(", ");
            }
            this.f89443b.append(d10);
            this.f89443b.append("=");
            this.f89443b.append(d11);
            return true;
        }
    }

    public class b extends Wd.J implements InterfaceC3463v {
        public b(C13349t c13349t) {
            super(c13349t);
        }

        @Override
        public double f(double d10) {
            double value = value();
            C13349t.this.f89441v[this.f27465d] = d10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public double key() {
            return C13349t.this.f27684q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13349t.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public double value() {
            return C13349t.this.f89441v[this.f27465d];
        }
    }

    public class c extends Wd.J implements InterfaceC3466y {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public double next() {
            j();
            return C13349t.this.f27684q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13349t.this.hf(this.f27465d);
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
            return C13349t.this.f89441v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13349t.this.hf(this.f27465d);
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

            public boolean f89449a = true;

            public final StringBuilder f89450b;

            public a(StringBuilder sb2) {
                this.f89450b = sb2;
            }

            @Override
            public boolean a(double d10) {
                if (this.f89449a) {
                    this.f89449a = false;
                } else {
                    this.f89450b.append(", ");
                }
                this.f89450b.append(d10);
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
                if (!C13349t.this.A(it.next())) {
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
            return C13349t.this.Y0(d10);
        }

        @Override
        public boolean Y1(double[] dArr) {
            Arrays.sort(dArr);
            C13349t c13349t = C13349t.this;
            double[] dArr2 = c13349t.f27684q;
            byte[] bArr = c13349t.f27568l;
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
                    C13349t.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean a(double d10) {
            return C13349t.this.f27686s != C13349t.this.a(d10);
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
            C13349t.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Double) {
                    if (!C13349t.this.A(((Double) obj).doubleValue())) {
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
            int length = C13349t.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                C13349t c13349t = C13349t.this;
                if (c13349t.f27568l[i10] == 1 && !interfaceC13969c.Y0(c13349t.f27684q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public int hashCode() {
            int length = C13349t.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                C13349t c13349t = C13349t.this;
                if (c13349t.f27568l[i11] == 1) {
                    i10 += Vd.b.b(c13349t.f27684q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public double i() {
            return C13349t.this.f27685r;
        }

        @Override
        public boolean i1(InterfaceC13470z interfaceC13470z) {
            return C13349t.this.k0(interfaceC13470z);
        }

        @Override
        public boolean isEmpty() {
            return C13349t.this.f27452b == 0;
        }

        @Override
        public InterfaceC3466y iterator() {
            C13349t c13349t = C13349t.this;
            return new c(c13349t);
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
                if (!C13349t.this.Y0(d10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int size() {
            return C13349t.this.f27452b;
        }

        @Override
        public double[] toArray() {
            return C13349t.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13349t.this.k0(new a(sb2));
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
            return C13349t.this.W(dArr);
        }
    }

    public class f implements Sd.e {

        public class a implements InterfaceC13470z {

            public boolean f89453a = true;

            public final StringBuilder f89454b;

            public a(StringBuilder sb2) {
                this.f89454b = sb2;
            }

            @Override
            public boolean a(double d10) {
                if (this.f89453a) {
                    this.f89453a = false;
                } else {
                    this.f89454b.append(", ");
                }
                this.f89454b.append(d10);
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
                if (!C13349t.this.T(it.next())) {
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
            return C13349t.this.T(d10);
        }

        @Override
        public boolean Y1(double[] dArr) {
            Arrays.sort(dArr);
            C13349t c13349t = C13349t.this;
            double[] dArr2 = c13349t.f89441v;
            byte[] bArr = c13349t.f27568l;
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
                    C13349t.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean a(double d10) {
            C13349t c13349t = C13349t.this;
            double[] dArr = c13349t.f89441v;
            double[] dArr2 = c13349t.f27684q;
            int length = dArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                double d11 = dArr2[i10];
                if (d11 != 0.0d && d11 != 2.0d && d10 == dArr[i10]) {
                    C13349t.this.hf(i10);
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
            C13349t.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Double) {
                    if (!C13349t.this.T(((Double) obj).doubleValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public double i() {
            return C13349t.this.f27686s;
        }

        @Override
        public boolean i1(InterfaceC13470z interfaceC13470z) {
            return C13349t.this.I(interfaceC13470z);
        }

        @Override
        public boolean isEmpty() {
            return C13349t.this.f27452b == 0;
        }

        @Override
        public InterfaceC3466y iterator() {
            C13349t c13349t = C13349t.this;
            return new d(c13349t);
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
                if (!C13349t.this.T(d10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int size() {
            return C13349t.this.f27452b;
        }

        @Override
        public double[] toArray() {
            return C13349t.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13349t.this.I(new a(sb2));
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
            return C13349t.this.b0(dArr);
        }
    }

    public C13349t() {
    }

    @Override
    public boolean A(double d10) {
        return Y0(d10);
    }

    @Override
    public boolean Fa(double d10, double d11) {
        int nf2 = nf(d10);
        if (nf2 < 0) {
            return false;
        }
        double[] dArr = this.f89441v;
        dArr[nf2] = dArr[nf2] + d11;
        return true;
    }

    @Override
    public boolean I(InterfaceC13470z interfaceC13470z) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f89441v;
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
    public double J2(double d10, double d11) {
        return zf(d10, d11, pf(d10));
    }

    @Override
    public void Rd(InterfaceC13077s interfaceC13077s) {
        cf(interfaceC13077s.size());
        InterfaceC3463v it = interfaceC13077s.iterator();
        while (it.hasNext()) {
            it.g();
            J2(it.key(), it.value());
        }
    }

    @Override
    public boolean T(double d10) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f89441v;
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
    public boolean T9(InterfaceC13465u interfaceC13465u) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f27684q;
        double[] dArr2 = this.f89441v;
        kf();
        try {
            int length = dArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !interfaceC13465u.a(dArr[i10], dArr2[i10])) {
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
    public double[] W(double[] dArr) {
        int size = size();
        if (dArr.length < size) {
            dArr = new double[size];
        }
        double[] dArr2 = this.f27684q;
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
    public double a(double d10) {
        double d11 = this.f27686s;
        int nf2 = nf(d10);
        if (nf2 < 0) {
            return d11;
        }
        double d12 = this.f89441v[nf2];
        hf(nf2);
        return d12;
    }

    @Override
    public double[] b0(double[] dArr) {
        int size = size();
        if (dArr.length < size) {
            dArr = new double[size];
        }
        double[] dArr2 = this.f89441v;
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
    public void clear() {
        super.clear();
        double[] dArr = this.f27684q;
        Arrays.fill(dArr, 0, dArr.length, this.f27685r);
        double[] dArr2 = this.f89441v;
        Arrays.fill(dArr2, 0, dArr2.length, this.f27686s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof InterfaceC13077s)) {
            return false;
        }
        InterfaceC13077s interfaceC13077s = (InterfaceC13077s) obj;
        if (interfaceC13077s.size() != size()) {
            return false;
        }
        double[] dArr = this.f89441v;
        byte[] bArr = this.f27568l;
        double i10 = i();
        double i11 = interfaceC13077s.i();
        int length = dArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1) {
                double p02 = interfaceC13077s.p0(this.f27684q[i12]);
                double d10 = dArr[i12];
                if (d10 != p02 && d10 != i10 && p02 != i11) {
                    return false;
                }
            }
            length = i12;
        }
    }

    @Override
    public void gf(int i10) {
        double[] dArr = this.f27684q;
        int length = dArr.length;
        double[] dArr2 = this.f89441v;
        byte[] bArr = this.f27568l;
        this.f27684q = new double[i10];
        this.f89441v = new double[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f89441v[pf(dArr[i11])] = dArr2[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f89441v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.b(this.f27684q[i11]) ^ Vd.b.b(this.f89441v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f89441v[i10] = this.f27686s;
        super.hf(i10);
    }

    @Override
    public boolean increment(double d10) {
        return Fa(d10, 1.0d);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public InterfaceC3463v iterator() {
        return new b(this);
    }

    @Override
    public double[] j() {
        double[] dArr = new double[size()];
        double[] dArr2 = this.f27684q;
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
    public double j9(double d10, double d11) {
        int pf2 = pf(d10);
        return pf2 < 0 ? this.f89441v[(-pf2) - 1] : zf(d10, d11, pf2);
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f89441v = new double[jf2];
        return jf2;
    }

    @Override
    public Sd.e k() {
        return new f();
    }

    @Override
    public boolean k0(InterfaceC13470z interfaceC13470z) {
        return i1(interfaceC13470z);
    }

    @Override
    public double kd(double d10, double d11, double d12) {
        int pf2 = pf(d10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            double[] dArr = this.f89441v;
            d12 = dArr[pf2] + d11;
            dArr[pf2] = d12;
            z10 = false;
        } else {
            this.f89441v[pf2] = d12;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27687t);
        }
        return d12;
    }

    @Override
    public InterfaceC13969c keySet() {
        return new e();
    }

    @Override
    public boolean mc(InterfaceC13465u interfaceC13465u) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f27684q;
        double[] dArr2 = this.f89441v;
        int length = dArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13465u.a(dArr[i10], dArr2[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public void p(Ud.c cVar) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f89441v;
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
    public double p0(double d10) {
        int nf2 = nf(d10);
        return nf2 < 0 ? this.f27686s : this.f89441v[nf2];
    }

    @Override
    public void putAll(Map<? extends Double, ? extends Double> map) {
        cf(map.size());
        for (Map.Entry<? extends Double, ? extends Double> entry : map.entrySet()) {
            J2(entry.getKey().doubleValue(), entry.getValue().doubleValue());
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
            J2(objectInput.readDouble(), objectInput.readDouble());
            readInt = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        mc(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public double[] values() {
        double[] dArr = new double[size()];
        double[] dArr2 = this.f89441v;
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
                objectOutput.writeDouble(this.f27684q[i10]);
                objectOutput.writeDouble(this.f89441v[i10]);
            }
            length = i10;
        }
    }

    public final double zf(double d10, double d11, int i10) {
        double d12 = this.f27686s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            z10 = false;
            d12 = this.f89441v[i10];
        }
        this.f89441v[i10] = d11;
        if (z10) {
            ef(this.f27687t);
        }
        return d12;
    }

    public C13349t(int i10) {
        super(i10);
    }

    public C13349t(int i10, float f10) {
        super(i10, f10);
    }

    public C13349t(int i10, float f10, double d10, double d11) {
        super(i10, f10, d10, d11);
    }

    public C13349t(double[] dArr, double[] dArr2) {
        super(Math.max(dArr.length, dArr2.length));
        int min = Math.min(dArr.length, dArr2.length);
        for (int i10 = 0; i10 < min; i10++) {
            J2(dArr[i10], dArr2[i10]);
        }
    }

    public C13349t(InterfaceC13077s interfaceC13077s) {
        super(interfaceC13077s.size());
        if (interfaceC13077s instanceof C13349t) {
            C13349t c13349t = (C13349t) interfaceC13077s;
            this.f27454d = c13349t.f27454d;
            double d10 = c13349t.f27685r;
            this.f27685r = d10;
            this.f27686s = c13349t.f27686s;
            if (d10 != 0.0d) {
                Arrays.fill(this.f27684q, d10);
            }
            double d11 = this.f27686s;
            if (d11 != 0.0d) {
                Arrays.fill(this.f89441v, d11);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        Rd(interfaceC13077s);
    }
}
