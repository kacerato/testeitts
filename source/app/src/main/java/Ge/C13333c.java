package ge;

import Wd.AbstractC3160c;
import Zd.InterfaceC3446d;
import Zd.InterfaceC3449g;
import Zd.InterfaceC3466y;
import ee.InterfaceC13062c;
import he.InterfaceC13448c;
import he.InterfaceC13453h;
import he.InterfaceC13470z;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Map;
import ke.InterfaceC13967a;
import org.apache.commons.math3.geometry.VectorFormat;

public class C13333c extends AbstractC3160c implements InterfaceC13062c, Externalizable {

    public static final long f88952w = 1;

    public transient double[] f88953v;

    public class a implements InterfaceC13448c {

        public boolean f88954a = true;

        public final StringBuilder f88955b;

        public a(StringBuilder sb2) {
            this.f88955b = sb2;
        }

        @Override
        public boolean a(byte b10, double d10) {
            if (this.f88954a) {
                this.f88954a = false;
            } else {
                this.f88955b.append(", ");
            }
            this.f88955b.append((int) b10);
            this.f88955b.append("=");
            this.f88955b.append(d10);
            return true;
        }
    }

    public class b extends Wd.J implements InterfaceC3446d {
        public b(C13333c c13333c) {
            super(c13333c);
        }

        @Override
        public double f(double d10) {
            double value = value();
            C13333c.this.f88953v[this.f27465d] = d10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public byte key() {
            return C13333c.this.f27560q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13333c.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public double value() {
            return C13333c.this.f88953v[this.f27465d];
        }
    }

    public class C1713c extends Wd.J implements InterfaceC3449g {
        public C1713c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public byte next() {
            j();
            return C13333c.this.f27560q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13333c.this.hf(this.f27465d);
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
            return C13333c.this.f88953v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13333c.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class e implements InterfaceC13967a {

        public class a implements InterfaceC13453h {

            public boolean f88961a = true;

            public final StringBuilder f88962b;

            public a(StringBuilder sb2) {
                this.f88962b = sb2;
            }

            @Override
            public boolean a(byte b10) {
                if (this.f88961a) {
                    this.f88961a = false;
                } else {
                    this.f88962b.append(", ");
                }
                this.f88962b.append((int) b10);
                return true;
            }
        }

        public e() {
        }

        @Override
        public boolean E1(Sd.a aVar) {
            throw new UnsupportedOperationException();
        }

        @Override
        public byte[] R0(byte[] bArr) {
            return C13333c.this.X(bArr);
        }

        @Override
        public boolean V0(InterfaceC13453h interfaceC13453h) {
            return C13333c.this.w(interfaceC13453h);
        }

        @Override
        public boolean W1(byte[] bArr) {
            Arrays.sort(bArr);
            C13333c c13333c = C13333c.this;
            byte[] bArr2 = c13333c.f27560q;
            byte[] bArr3 = c13333c.f27568l;
            int length = bArr2.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr3[i10] != 1 || Arrays.binarySearch(bArr, bArr2[i10]) >= 0) {
                    length = i10;
                } else {
                    C13333c.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean a1(byte b10) {
            return C13333c.this.a1(b10);
        }

        @Override
        public boolean addAll(Collection<? extends Byte> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C13333c.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Byte) {
                    if (!C13333c.this.D(((Byte) obj).byteValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean d1(byte b10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean equals(Object obj) {
            if (!(obj instanceof InterfaceC13967a)) {
                return false;
            }
            InterfaceC13967a interfaceC13967a = (InterfaceC13967a) obj;
            if (interfaceC13967a.size() != size()) {
                return false;
            }
            int length = C13333c.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                C13333c c13333c = C13333c.this;
                if (c13333c.f27568l[i10] == 1 && !interfaceC13967a.a1(c13333c.f27560q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public int hashCode() {
            int length = C13333c.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                C13333c c13333c = C13333c.this;
                if (c13333c.f27568l[i11] == 1) {
                    i10 += Vd.b.d(c13333c.f27560q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public byte i() {
            return C13333c.this.f27561r;
        }

        @Override
        public boolean i2(Sd.a aVar) {
            if (this == aVar) {
                clear();
                return true;
            }
            InterfaceC3449g it = aVar.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (m(it.next())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean isEmpty() {
            return C13333c.this.f27452b == 0;
        }

        @Override
        public InterfaceC3449g iterator() {
            C13333c c13333c = C13333c.this;
            return new C1713c(c13333c);
        }

        @Override
        public boolean m(byte b10) {
            return C13333c.this.f27562s != C13333c.this.m(b10);
        }

        @Override
        public boolean o2(byte[] bArr) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            boolean z10 = false;
            for (Object obj : collection) {
                if ((obj instanceof Byte) && m(((Byte) obj).byteValue())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            InterfaceC3449g it = iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (!collection.contains(Byte.valueOf(it.next()))) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean s2(Sd.a aVar) {
            boolean z10 = false;
            if (this == aVar) {
                return false;
            }
            InterfaceC3449g it = iterator();
            while (it.hasNext()) {
                if (!aVar.a1(it.next())) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public int size() {
            return C13333c.this.f27452b;
        }

        @Override
        public boolean t1(byte[] bArr) {
            for (byte b10 : bArr) {
                if (!C13333c.this.a1(b10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public byte[] toArray() {
            return C13333c.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13333c.this.w(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean w2(Sd.a aVar) {
            InterfaceC3449g it = aVar.iterator();
            while (it.hasNext()) {
                if (!C13333c.this.D(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean y1(byte[] bArr) {
            int length = bArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (m(bArr[i10])) {
                    z10 = true;
                }
                length = i10;
            }
        }
    }

    public class f implements Sd.e {

        public class a implements InterfaceC13470z {

            public boolean f88965a = true;

            public final StringBuilder f88966b;

            public a(StringBuilder sb2) {
                this.f88966b = sb2;
            }

            @Override
            public boolean a(double d10) {
                if (this.f88965a) {
                    this.f88965a = false;
                } else {
                    this.f88966b.append(", ");
                }
                this.f88966b.append(d10);
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
                if (!C13333c.this.T(it.next())) {
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
            return C13333c.this.T(d10);
        }

        @Override
        public boolean Y1(double[] dArr) {
            Arrays.sort(dArr);
            C13333c c13333c = C13333c.this;
            double[] dArr2 = c13333c.f88953v;
            byte[] bArr = c13333c.f27568l;
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
                    C13333c.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean a(double d10) {
            C13333c c13333c = C13333c.this;
            double[] dArr = c13333c.f88953v;
            byte[] bArr = c13333c.f27560q;
            int length = dArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                byte b10 = bArr[i10];
                if (b10 != 0 && b10 != 2 && d10 == dArr[i10]) {
                    C13333c.this.hf(i10);
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
            C13333c.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Double) {
                    if (!C13333c.this.T(((Double) obj).doubleValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public double i() {
            return C13333c.this.f27562s;
        }

        @Override
        public boolean i1(InterfaceC13470z interfaceC13470z) {
            return C13333c.this.I(interfaceC13470z);
        }

        @Override
        public boolean isEmpty() {
            return C13333c.this.f27452b == 0;
        }

        @Override
        public InterfaceC3466y iterator() {
            C13333c c13333c = C13333c.this;
            return new d(c13333c);
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
                if (!C13333c.this.T(d10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int size() {
            return C13333c.this.f27452b;
        }

        @Override
        public double[] toArray() {
            return C13333c.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13333c.this.I(new a(sb2));
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
            return C13333c.this.b0(dArr);
        }
    }

    public C13333c() {
    }

    @Override
    public boolean Ac(InterfaceC13448c interfaceC13448c) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f27560q;
        double[] dArr = this.f88953v;
        kf();
        try {
            int length = bArr2.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !interfaceC13448c.a(bArr2[i10], dArr[i10])) {
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
    public boolean D(byte b10) {
        return a1(b10);
    }

    @Override
    public boolean E0(byte b10) {
        return ke(b10, 1.0d);
    }

    @Override
    public boolean I(InterfaceC13470z interfaceC13470z) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f88953v;
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
    public void Jb(InterfaceC13062c interfaceC13062c) {
        cf(interfaceC13062c.size());
        InterfaceC3446d it = interfaceC13062c.iterator();
        while (it.hasNext()) {
            it.g();
            U3(it.key(), it.value());
        }
    }

    @Override
    public boolean T(double d10) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f88953v;
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
    public double T4(byte b10, double d10, double d11) {
        int pf2 = pf(b10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            double[] dArr = this.f88953v;
            double d12 = d10 + dArr[pf2];
            dArr[pf2] = d12;
            z10 = false;
            d11 = d12;
        } else {
            this.f88953v[pf2] = d11;
        }
        byte b11 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27563t);
        }
        return d11;
    }

    @Override
    public double U3(byte b10, double d10) {
        return zf(b10, d10, pf(b10));
    }

    @Override
    public byte[] X(byte[] bArr) {
        int size = size();
        if (bArr.length < size) {
            bArr = new byte[size];
        }
        byte[] bArr2 = this.f27560q;
        byte[] bArr3 = this.f27568l;
        int length = bArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return bArr;
            }
            if (bArr3[i11] == 1) {
                bArr[i10] = bArr2[i11];
                i10++;
            }
            length = i11;
        }
    }

    @Override
    public double[] b0(double[] dArr) {
        int size = size();
        if (dArr.length < size) {
            dArr = new double[size];
        }
        double[] dArr2 = this.f88953v;
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
        byte[] bArr = this.f27560q;
        Arrays.fill(bArr, 0, bArr.length, this.f27561r);
        double[] dArr = this.f88953v;
        Arrays.fill(dArr, 0, dArr.length, this.f27562s);
        byte[] bArr2 = this.f27568l;
        Arrays.fill(bArr2, 0, bArr2.length, (byte) 0);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof InterfaceC13062c)) {
            return false;
        }
        InterfaceC13062c interfaceC13062c = (InterfaceC13062c) obj;
        if (interfaceC13062c.size() != size()) {
            return false;
        }
        double[] dArr = this.f88953v;
        byte[] bArr = this.f27568l;
        double i10 = i();
        double i11 = interfaceC13062c.i();
        int length = dArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1) {
                double s02 = interfaceC13062c.s0(this.f27560q[i12]);
                double d10 = dArr[i12];
                if (d10 != s02 && d10 != i10 && s02 != i11) {
                    return false;
                }
            }
            length = i12;
        }
    }

    @Override
    public double fa(byte b10, double d10) {
        int pf2 = pf(b10);
        return pf2 < 0 ? this.f88953v[(-pf2) - 1] : zf(b10, d10, pf2);
    }

    @Override
    public void gf(int i10) {
        byte[] bArr = this.f27560q;
        int length = bArr.length;
        double[] dArr = this.f88953v;
        byte[] bArr2 = this.f27568l;
        this.f27560q = new byte[i10];
        this.f88953v = new double[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr2[i11] == 1) {
                this.f88953v[pf(bArr[i11])] = dArr[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f88953v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.d(this.f27560q[i11]) ^ Vd.b.b(this.f88953v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f88953v[i10] = this.f27562s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public InterfaceC3446d iterator() {
        return new b(this);
    }

    @Override
    public byte[] j() {
        byte[] bArr = new byte[size()];
        byte[] bArr2 = this.f27560q;
        byte[] bArr3 = this.f27568l;
        int length = bArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return bArr;
            }
            if (bArr3[i11] == 1) {
                bArr[i10] = bArr2[i11];
                i10++;
            }
            length = i11;
        }
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f88953v = new double[jf2];
        return jf2;
    }

    @Override
    public Sd.e k() {
        return new f();
    }

    @Override
    public boolean ke(byte b10, double d10) {
        int nf2 = nf(b10);
        if (nf2 < 0) {
            return false;
        }
        double[] dArr = this.f88953v;
        dArr[nf2] = dArr[nf2] + d10;
        return true;
    }

    @Override
    public InterfaceC13967a keySet() {
        return new e();
    }

    @Override
    public double m(byte b10) {
        double d10 = this.f27562s;
        int nf2 = nf(b10);
        if (nf2 < 0) {
            return d10;
        }
        double d11 = this.f88953v[nf2];
        hf(nf2);
        return d11;
    }

    @Override
    public void p(Ud.c cVar) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f88953v;
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
    public void putAll(Map<? extends Byte, ? extends Double> map) {
        cf(map.size());
        for (Map.Entry<? extends Byte, ? extends Double> entry : map.entrySet()) {
            U3(entry.getKey().byteValue(), entry.getValue().doubleValue());
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
            U3(objectInput.readByte(), objectInput.readDouble());
            readInt = i10;
        }
    }

    @Override
    public double s0(byte b10) {
        int nf2 = nf(b10);
        return nf2 < 0 ? this.f27562s : this.f88953v[nf2];
    }

    @Override
    public boolean t3(InterfaceC13448c interfaceC13448c) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f27560q;
        double[] dArr = this.f88953v;
        int length = bArr2.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13448c.a(bArr2[i10], dArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        t3(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public double[] values() {
        double[] dArr = new double[size()];
        double[] dArr2 = this.f88953v;
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
    public boolean w(InterfaceC13453h interfaceC13453h) {
        return V0(interfaceC13453h);
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
                objectOutput.writeByte(this.f27560q[i10]);
                objectOutput.writeDouble(this.f88953v[i10]);
            }
            length = i10;
        }
    }

    public final double zf(byte b10, double d10, int i10) {
        double d11 = this.f27562s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            d11 = this.f88953v[i10];
            z10 = false;
        }
        this.f88953v[i10] = d10;
        if (z10) {
            ef(this.f27563t);
        }
        return d11;
    }

    public C13333c(int i10) {
        super(i10);
    }

    public C13333c(int i10, float f10) {
        super(i10, f10);
    }

    public C13333c(int i10, float f10, byte b10, double d10) {
        super(i10, f10, b10, d10);
    }

    public C13333c(byte[] bArr, double[] dArr) {
        super(Math.max(bArr.length, dArr.length));
        int min = Math.min(bArr.length, dArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            U3(bArr[i10], dArr[i10]);
        }
    }

    public C13333c(InterfaceC13062c interfaceC13062c) {
        super(interfaceC13062c.size());
        if (interfaceC13062c instanceof C13333c) {
            C13333c c13333c = (C13333c) interfaceC13062c;
            this.f27454d = c13333c.f27454d;
            byte b10 = c13333c.f27561r;
            this.f27561r = b10;
            this.f27562s = c13333c.f27562s;
            if (b10 != 0) {
                Arrays.fill(this.f27560q, b10);
            }
            double d10 = this.f27562s;
            if (d10 != 0.0d) {
                Arrays.fill(this.f88953v, d10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        Jb(interfaceC13062c);
    }
}
