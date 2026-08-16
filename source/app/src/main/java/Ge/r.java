package ge;

import Zd.InterfaceC3449g;
import Zd.InterfaceC3461t;
import Zd.InterfaceC3466y;
import ee.InterfaceC13076q;
import he.InterfaceC13453h;
import he.InterfaceC13463s;
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

public class r extends Wd.r implements InterfaceC13076q, Externalizable {

    public static final long f89408w = 1;

    public transient byte[] f89409v;

    public class a implements InterfaceC13463s {

        public boolean f89410a = true;

        public final StringBuilder f89411b;

        public a(StringBuilder sb2) {
            this.f89411b = sb2;
        }

        @Override
        public boolean a(double d10, byte b10) {
            if (this.f89410a) {
                this.f89410a = false;
            } else {
                this.f89411b.append(", ");
            }
            this.f89411b.append(d10);
            this.f89411b.append("=");
            this.f89411b.append((int) b10);
            return true;
        }
    }

    public class b extends Wd.J implements InterfaceC3461t {
        public b(r rVar) {
            super(rVar);
        }

        @Override
        public byte b(byte b10) {
            byte value = value();
            r.this.f89409v[this.f27465d] = b10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public double key() {
            return r.this.f27674q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                r.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public byte value() {
            return r.this.f89409v[this.f27465d];
        }
    }

    public class c extends Wd.J implements InterfaceC3466y {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public double next() {
            j();
            return r.this.f27674q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                r.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class d extends Wd.J implements InterfaceC3449g {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public byte next() {
            j();
            return r.this.f89409v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                r.this.hf(this.f27465d);
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

            public boolean f89417a = true;

            public final StringBuilder f89418b;

            public a(StringBuilder sb2) {
                this.f89418b = sb2;
            }

            @Override
            public boolean a(double d10) {
                if (this.f89417a) {
                    this.f89417a = false;
                } else {
                    this.f89418b.append(", ");
                }
                this.f89418b.append(d10);
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
                if (!r.this.A(it.next())) {
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
            return r.this.Y0(d10);
        }

        @Override
        public boolean Y1(double[] dArr) {
            Arrays.sort(dArr);
            r rVar = r.this;
            double[] dArr2 = rVar.f27674q;
            byte[] bArr = rVar.f27568l;
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
                    r.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean a(double d10) {
            return r.this.f27676s != r.this.a(d10);
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
            r.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Double) {
                    if (!r.this.A(((Double) obj).doubleValue())) {
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
            int length = r.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                r rVar = r.this;
                if (rVar.f27568l[i10] == 1 && !interfaceC13969c.Y0(rVar.f27674q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public int hashCode() {
            int length = r.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                r rVar = r.this;
                if (rVar.f27568l[i11] == 1) {
                    i10 += Vd.b.b(rVar.f27674q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public double i() {
            return r.this.f27675r;
        }

        @Override
        public boolean i1(InterfaceC13470z interfaceC13470z) {
            return r.this.k0(interfaceC13470z);
        }

        @Override
        public boolean isEmpty() {
            return r.this.f27452b == 0;
        }

        @Override
        public InterfaceC3466y iterator() {
            r rVar = r.this;
            return new c(rVar);
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
                if (!r.this.Y0(d10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int size() {
            return r.this.f27452b;
        }

        @Override
        public double[] toArray() {
            return r.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            r.this.k0(new a(sb2));
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
            return r.this.W(dArr);
        }
    }

    public class f implements Sd.a {

        public class a implements InterfaceC13453h {

            public boolean f89421a = true;

            public final StringBuilder f89422b;

            public a(StringBuilder sb2) {
                this.f89422b = sb2;
            }

            @Override
            public boolean a(byte b10) {
                if (this.f89421a) {
                    this.f89421a = false;
                } else {
                    this.f89422b.append(", ");
                }
                this.f89422b.append((int) b10);
                return true;
            }
        }

        public f() {
        }

        @Override
        public boolean E1(Sd.a aVar) {
            throw new UnsupportedOperationException();
        }

        @Override
        public byte[] R0(byte[] bArr) {
            return r.this.a0(bArr);
        }

        @Override
        public boolean V0(InterfaceC13453h interfaceC13453h) {
            return r.this.M(interfaceC13453h);
        }

        @Override
        public boolean W1(byte[] bArr) {
            Arrays.sort(bArr);
            r rVar = r.this;
            byte[] bArr2 = rVar.f89409v;
            byte[] bArr3 = rVar.f27568l;
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
                    r.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean a1(byte b10) {
            return r.this.P(b10);
        }

        @Override
        public boolean addAll(Collection<? extends Byte> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            r.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Byte) {
                    if (!r.this.P(((Byte) obj).byteValue())) {
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
        public byte i() {
            return r.this.f27676s;
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
            return r.this.f27452b == 0;
        }

        @Override
        public InterfaceC3449g iterator() {
            r rVar = r.this;
            return new d(rVar);
        }

        @Override
        public boolean m(byte b10) {
            r rVar = r.this;
            byte[] bArr = rVar.f89409v;
            double[] dArr = rVar.f27674q;
            int length = bArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                double d10 = dArr[i10];
                if (d10 != 0.0d && d10 != 2.0d && b10 == bArr[i10]) {
                    r.this.hf(i10);
                    return true;
                }
                length = i10;
            }
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
            return r.this.f27452b;
        }

        @Override
        public boolean t1(byte[] bArr) {
            for (byte b10 : bArr) {
                if (!r.this.P(b10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public byte[] toArray() {
            return r.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            r.this.M(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean w2(Sd.a aVar) {
            InterfaceC3449g it = aVar.iterator();
            while (it.hasNext()) {
                if (!r.this.P(it.next())) {
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

    public r() {
    }

    @Override
    public boolean A(double d10) {
        return Y0(d10);
    }

    @Override
    public byte H2(double d10, byte b10) {
        return zf(d10, b10, pf(d10));
    }

    @Override
    public boolean Ia(double d10, byte b10) {
        int nf2 = nf(d10);
        if (nf2 < 0) {
            return false;
        }
        byte[] bArr = this.f89409v;
        bArr[nf2] = (byte) (bArr[nf2] + b10);
        return true;
    }

    @Override
    public boolean M(InterfaceC13453h interfaceC13453h) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f89409v;
        int length = bArr2.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13453h.a(bArr2[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean P(byte b10) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f89409v;
        int length = bArr2.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return false;
            }
            if (bArr[i10] == 1 && b10 == bArr2[i10]) {
                return true;
            }
            length = i10;
        }
    }

    @Override
    public void Q5(InterfaceC13076q interfaceC13076q) {
        cf(interfaceC13076q.size());
        InterfaceC3461t it = interfaceC13076q.iterator();
        while (it.hasNext()) {
            it.g();
            H2(it.key(), it.value());
        }
    }

    @Override
    public double[] W(double[] dArr) {
        int size = size();
        if (dArr.length < size) {
            dArr = new double[size];
        }
        double[] dArr2 = this.f27674q;
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
    public byte a(double d10) {
        byte b10 = this.f27676s;
        int nf2 = nf(d10);
        if (nf2 < 0) {
            return b10;
        }
        byte b11 = this.f89409v[nf2];
        hf(nf2);
        return b11;
    }

    @Override
    public byte[] a0(byte[] bArr) {
        int size = size();
        if (bArr.length < size) {
            bArr = new byte[size];
        }
        byte[] bArr2 = this.f89409v;
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
    public void clear() {
        super.clear();
        double[] dArr = this.f27674q;
        Arrays.fill(dArr, 0, dArr.length, this.f27675r);
        byte[] bArr = this.f89409v;
        Arrays.fill(bArr, 0, bArr.length, this.f27676s);
        byte[] bArr2 = this.f27568l;
        Arrays.fill(bArr2, 0, bArr2.length, (byte) 0);
    }

    public boolean equals(Object obj) {
        byte p02;
        byte b10;
        if (!(obj instanceof InterfaceC13076q)) {
            return false;
        }
        InterfaceC13076q interfaceC13076q = (InterfaceC13076q) obj;
        if (interfaceC13076q.size() != size()) {
            return false;
        }
        byte[] bArr = this.f89409v;
        byte[] bArr2 = this.f27568l;
        byte i10 = i();
        byte i11 = interfaceC13076q.i();
        int length = bArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr2[i12] == 1 && (b10 = bArr[i12]) != (p02 = interfaceC13076q.p0(this.f27674q[i12])) && b10 != i10 && p02 != i11) {
                return false;
            }
            length = i12;
        }
    }

    @Override
    public byte fe(double d10, byte b10, byte b11) {
        int pf2 = pf(d10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            byte[] bArr = this.f89409v;
            b11 = (byte) (bArr[pf2] + b10);
            bArr[pf2] = b11;
            z10 = false;
        } else {
            this.f89409v[pf2] = b11;
        }
        byte b12 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27677t);
        }
        return b11;
    }

    @Override
    public byte g9(double d10, byte b10) {
        int pf2 = pf(d10);
        return pf2 < 0 ? this.f89409v[(-pf2) - 1] : zf(d10, b10, pf2);
    }

    @Override
    public void gf(int i10) {
        double[] dArr = this.f27674q;
        int length = dArr.length;
        byte[] bArr = this.f89409v;
        byte[] bArr2 = this.f27568l;
        this.f27674q = new double[i10];
        this.f89409v = new byte[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr2[i11] == 1) {
                this.f89409v[pf(dArr[i11])] = bArr[i11];
            }
            length = i11;
        }
    }

    @Override
    public boolean h9(InterfaceC13463s interfaceC13463s) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f27674q;
        byte[] bArr2 = this.f89409v;
        int length = dArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13463s.a(dArr[i10], bArr2[i10])) {
                return false;
            }
            length = i10;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f89409v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.b(this.f27674q[i11]) ^ Vd.b.d(this.f89409v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f89409v[i10] = this.f27676s;
        super.hf(i10);
    }

    @Override
    public boolean increment(double d10) {
        return Ia(d10, (byte) 1);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public InterfaceC3461t iterator() {
        return new b(this);
    }

    @Override
    public double[] j() {
        double[] dArr = new double[size()];
        double[] dArr2 = this.f27674q;
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
        this.f89409v = new byte[jf2];
        return jf2;
    }

    @Override
    public Sd.a k() {
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
    public byte p0(double d10) {
        int nf2 = nf(d10);
        return nf2 < 0 ? this.f27676s : this.f89409v[nf2];
    }

    @Override
    public void putAll(Map<? extends Double, ? extends Byte> map) {
        cf(map.size());
        for (Map.Entry<? extends Double, ? extends Byte> entry : map.entrySet()) {
            H2(entry.getKey().doubleValue(), entry.getValue().byteValue());
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
            H2(objectInput.readDouble(), objectInput.readByte());
            readInt = i10;
        }
    }

    @Override
    public void s(Ud.a aVar) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f89409v;
        int length = bArr2.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i10] == 1) {
                bArr2[i10] = aVar.a(bArr2[i10]);
            }
            length = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        h9(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public byte[] values() {
        byte[] bArr = new byte[size()];
        byte[] bArr2 = this.f89409v;
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
    public boolean vc(InterfaceC13463s interfaceC13463s) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f27674q;
        byte[] bArr2 = this.f89409v;
        kf();
        try {
            int length = dArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !interfaceC13463s.a(dArr[i10], bArr2[i10])) {
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
                objectOutput.writeDouble(this.f27674q[i10]);
                objectOutput.writeByte(this.f89409v[i10]);
            }
            length = i10;
        }
    }

    public final byte zf(double d10, byte b10, int i10) {
        byte b11 = this.f27676s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            b11 = this.f89409v[i10];
            z10 = false;
        }
        this.f89409v[i10] = b10;
        if (z10) {
            ef(this.f27677t);
        }
        return b11;
    }

    public r(int i10) {
        super(i10);
    }

    public r(int i10, float f10) {
        super(i10, f10);
    }

    public r(int i10, float f10, double d10, byte b10) {
        super(i10, f10, d10, b10);
    }

    public r(double[] dArr, byte[] bArr) {
        super(Math.max(dArr.length, bArr.length));
        int min = Math.min(dArr.length, bArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            H2(dArr[i10], bArr[i10]);
        }
    }

    public r(InterfaceC13076q interfaceC13076q) {
        super(interfaceC13076q.size());
        if (interfaceC13076q instanceof r) {
            r rVar = (r) interfaceC13076q;
            this.f27454d = rVar.f27454d;
            double d10 = rVar.f27675r;
            this.f27675r = d10;
            this.f27676s = rVar.f27676s;
            if (d10 != 0.0d) {
                Arrays.fill(this.f27674q, d10);
            }
            byte b10 = this.f27676s;
            if (b10 != 0) {
                Arrays.fill(this.f89409v, b10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        Q5(interfaceC13076q);
    }
}
