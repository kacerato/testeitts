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
import ke.InterfaceC13971e;
import org.apache.commons.math3.geometry.VectorFormat;

public class K extends Wd.M implements ee.I, Externalizable {

    public static final long f88632w = 1;

    public transient double[] f88633v;

    public class a implements he.M {

        public boolean f88634a = true;

        public final StringBuilder f88635b;

        public a(StringBuilder sb2) {
            this.f88635b = sb2;
        }

        @Override
        public boolean a(int i10, double d10) {
            if (this.f88634a) {
                this.f88634a = false;
            } else {
                this.f88635b.append(", ");
            }
            this.f88635b.append(i10);
            this.f88635b.append("=");
            this.f88635b.append(d10);
            return true;
        }
    }

    public class b extends Wd.J implements Zd.N {
        public b(K k10) {
            super(k10);
        }

        @Override
        public double f(double d10) {
            double value = value();
            K.this.f88633v[this.f27465d] = d10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public int key() {
            return K.this.f27477q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                K.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public double value() {
            return K.this.f88633v[this.f27465d];
        }
    }

    public class c extends Wd.J implements Zd.Q {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public int next() {
            j();
            return K.this.f27477q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                K.this.hf(this.f27465d);
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
            return K.this.f88633v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                K.this.hf(this.f27465d);
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

            public boolean f88641a = true;

            public final StringBuilder f88642b;

            public a(StringBuilder sb2) {
                this.f88642b = sb2;
            }

            @Override
            public boolean a(int i10) {
                if (this.f88641a) {
                    this.f88641a = false;
                } else {
                    this.f88642b.append(", ");
                }
                this.f88642b.append(i10);
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
                if (!K.this.contains(i10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean M1(int[] iArr) {
            Arrays.sort(iArr);
            K k10 = K.this;
            int[] iArr2 = k10.f27477q;
            byte[] bArr = k10.f27568l;
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
                    K.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public int[] P0(int[] iArr) {
            return K.this.f0(iArr);
        }

        @Override
        public boolean U0(he.S s10) {
            return K.this.J(s10);
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
            K.this.clear();
        }

        @Override
        public boolean contains(int i10) {
            return K.this.contains(i10);
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Integer) {
                    if (!K.this.F(((Integer) obj).intValue())) {
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
            int length = K.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                K k10 = K.this;
                if (k10.f27568l[i10] == 1 && !interfaceC13971e.contains(k10.f27477q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public boolean h2(Sd.g gVar) {
            Zd.Q it = gVar.iterator();
            while (it.hasNext()) {
                if (!K.this.F(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int hashCode() {
            int length = K.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                K k10 = K.this;
                if (k10.f27568l[i11] == 1) {
                    i10 += Vd.b.d(k10.f27477q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public int i() {
            return K.this.f27478r;
        }

        @Override
        public boolean isEmpty() {
            return K.this.f27452b == 0;
        }

        @Override
        public Zd.Q iterator() {
            K k10 = K.this;
            return new c(k10);
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
            return K.this.f27479s != K.this.remove(i10);
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
            return K.this.f27452b;
        }

        @Override
        public int[] toArray() {
            return K.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            K.this.J(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean z2(int[] iArr) {
            throw new UnsupportedOperationException();
        }
    }

    public class f implements Sd.e {

        public class a implements InterfaceC13470z {

            public boolean f88645a = true;

            public final StringBuilder f88646b;

            public a(StringBuilder sb2) {
                this.f88646b = sb2;
            }

            @Override
            public boolean a(double d10) {
                if (this.f88645a) {
                    this.f88645a = false;
                } else {
                    this.f88646b.append(", ");
                }
                this.f88646b.append(d10);
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
                if (!K.this.T(it.next())) {
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
            return K.this.T(d10);
        }

        @Override
        public boolean Y1(double[] dArr) {
            Arrays.sort(dArr);
            K k10 = K.this;
            double[] dArr2 = k10.f88633v;
            byte[] bArr = k10.f27568l;
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
                    K.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean a(double d10) {
            K k10 = K.this;
            double[] dArr = k10.f88633v;
            int[] iArr = k10.f27477q;
            int length = dArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                int i11 = iArr[i10];
                if (i11 != 0 && i11 != 2 && d10 == dArr[i10]) {
                    K.this.hf(i10);
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
            K.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Double) {
                    if (!K.this.T(((Double) obj).doubleValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public double i() {
            return K.this.f27479s;
        }

        @Override
        public boolean i1(InterfaceC13470z interfaceC13470z) {
            return K.this.I(interfaceC13470z);
        }

        @Override
        public boolean isEmpty() {
            return K.this.f27452b == 0;
        }

        @Override
        public InterfaceC3466y iterator() {
            K k10 = K.this;
            return new d(k10);
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
                if (!K.this.T(d10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int size() {
            return K.this.f27452b;
        }

        @Override
        public double[] toArray() {
            return K.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            K.this.I(new a(sb2));
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
            return K.this.b0(dArr);
        }
    }

    public K() {
    }

    @Override
    public boolean F(int i10) {
        return contains(i10);
    }

    @Override
    public boolean F0(int i10) {
        return Fb(i10, 1.0d);
    }

    @Override
    public double F6(int i10, double d10, double d11) {
        int pf2 = pf(i10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            double[] dArr = this.f88633v;
            double d12 = d10 + dArr[pf2];
            dArr[pf2] = d12;
            z10 = false;
            d11 = d12;
        } else {
            this.f88633v[pf2] = d11;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27480t);
        }
        return d11;
    }

    @Override
    public boolean Fb(int i10, double d10) {
        int nf2 = nf(i10);
        if (nf2 < 0) {
            return false;
        }
        double[] dArr = this.f88633v;
        dArr[nf2] = dArr[nf2] + d10;
        return true;
    }

    @Override
    public boolean I(InterfaceC13470z interfaceC13470z) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f88633v;
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
    public double Id(int i10, double d10) {
        int pf2 = pf(i10);
        return pf2 < 0 ? this.f88633v[(-pf2) - 1] : zf(i10, d10, pf2);
    }

    @Override
    public boolean J(he.S s10) {
        return U0(s10);
    }

    @Override
    public boolean T(double d10) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f88633v;
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
    public double W4(int i10, double d10) {
        return zf(i10, d10, pf(i10));
    }

    @Override
    public void W7(ee.I i10) {
        cf(i10.size());
        Zd.N it = i10.iterator();
        while (it.hasNext()) {
            it.g();
            W4(it.key(), it.value());
        }
    }

    @Override
    public double[] b0(double[] dArr) {
        int size = size();
        if (dArr.length < size) {
            dArr = new double[size];
        }
        double[] dArr2 = this.f88633v;
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
        int[] iArr = this.f27477q;
        Arrays.fill(iArr, 0, iArr.length, this.f27478r);
        double[] dArr = this.f88633v;
        Arrays.fill(dArr, 0, dArr.length, this.f27479s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ee.I)) {
            return false;
        }
        ee.I i10 = (ee.I) obj;
        if (i10.size() != size()) {
            return false;
        }
        double[] dArr = this.f88633v;
        byte[] bArr = this.f27568l;
        double i11 = i();
        double i12 = i10.i();
        int length = dArr.length;
        while (true) {
            int i13 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i13] == 1) {
                double d10 = i10.get(this.f27477q[i13]);
                double d11 = dArr[i13];
                if (d11 != d10 && d11 != i11 && d10 != i12) {
                    return false;
                }
            }
            length = i13;
        }
    }

    @Override
    public int[] f0(int[] iArr) {
        int size = size();
        if (iArr.length < size) {
            iArr = new int[size];
        }
        int[] iArr2 = this.f27477q;
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
    public double get(int i10) {
        int nf2 = nf(i10);
        return nf2 < 0 ? this.f27479s : this.f88633v[nf2];
    }

    @Override
    public void gf(int i10) {
        int[] iArr = this.f27477q;
        int length = iArr.length;
        double[] dArr = this.f88633v;
        byte[] bArr = this.f27568l;
        this.f27477q = new int[i10];
        this.f88633v = new double[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f88633v[pf(iArr[i11])] = dArr[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f88633v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.d(this.f27477q[i11]) ^ Vd.b.b(this.f88633v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f88633v[i10] = this.f27479s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public Zd.N iterator() {
        return new b(this);
    }

    @Override
    public int[] j() {
        int[] iArr = new int[size()];
        int[] iArr2 = this.f27477q;
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
        this.f88633v = new double[jf2];
        return jf2;
    }

    @Override
    public Sd.e k() {
        return new f();
    }

    @Override
    public InterfaceC13971e keySet() {
        return new e();
    }

    @Override
    public void p(Ud.c cVar) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f88633v;
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
    public boolean p3(he.M m10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f27477q;
        double[] dArr = this.f88633v;
        kf();
        try {
            int length = iArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !m10.a(iArr[i10], dArr[i10])) {
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
    public void putAll(Map<? extends Integer, ? extends Double> map) {
        cf(map.size());
        for (Map.Entry<? extends Integer, ? extends Double> entry : map.entrySet()) {
            W4(entry.getKey().intValue(), entry.getValue().doubleValue());
        }
    }

    @Override
    public boolean qc(he.M m10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f27477q;
        double[] dArr = this.f88633v;
        int length = iArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !m10.a(iArr[i10], dArr[i10])) {
                return false;
            }
            length = i10;
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
            W4(objectInput.readInt(), objectInput.readDouble());
            readInt = i10;
        }
    }

    @Override
    public double remove(int i10) {
        double d10 = this.f27479s;
        int nf2 = nf(i10);
        if (nf2 < 0) {
            return d10;
        }
        double d11 = this.f88633v[nf2];
        hf(nf2);
        return d11;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        qc(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public double[] values() {
        double[] dArr = new double[size()];
        double[] dArr2 = this.f88633v;
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
                objectOutput.writeInt(this.f27477q[i10]);
                objectOutput.writeDouble(this.f88633v[i10]);
            }
            length = i10;
        }
    }

    public final double zf(int i10, double d10, int i11) {
        double d11 = this.f27479s;
        boolean z10 = true;
        if (i11 < 0) {
            i11 = (-i11) - 1;
            d11 = this.f88633v[i11];
            z10 = false;
        }
        this.f88633v[i11] = d10;
        if (z10) {
            ef(this.f27480t);
        }
        return d11;
    }

    public K(int i10) {
        super(i10);
    }

    public K(int i10, float f10) {
        super(i10, f10);
    }

    public K(int i10, float f10, int i11, double d10) {
        super(i10, f10, i11, d10);
    }

    public K(int[] iArr, double[] dArr) {
        super(Math.max(iArr.length, dArr.length));
        int min = Math.min(iArr.length, dArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            W4(iArr[i10], dArr[i10]);
        }
    }

    public K(ee.I i10) {
        super(i10.size());
        if (i10 instanceof K) {
            K k10 = (K) i10;
            this.f27454d = k10.f27454d;
            int i11 = k10.f27478r;
            this.f27478r = i11;
            this.f27479s = k10.f27479s;
            if (i11 != 0) {
                Arrays.fill(this.f27477q, i11);
            }
            double d10 = this.f27479s;
            if (d10 != 0.0d) {
                Arrays.fill(this.f88633v, d10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        W7(i10);
    }
}
