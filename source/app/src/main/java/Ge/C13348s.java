package ge;

import Wd.AbstractC3175s;
import Zd.InterfaceC3458p;
import Zd.InterfaceC3462u;
import Zd.InterfaceC3466y;
import he.InterfaceC13462q;
import he.InterfaceC13464t;
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

public class C13348s extends AbstractC3175s implements ee.r, Externalizable {

    public static final long f89424w = 1;

    public transient char[] f89425v;

    public class a implements InterfaceC13464t {

        public boolean f89426a = true;

        public final StringBuilder f89427b;

        public a(StringBuilder sb2) {
            this.f89427b = sb2;
        }

        @Override
        public boolean a(double d10, char c10) {
            if (this.f89426a) {
                this.f89426a = false;
            } else {
                this.f89427b.append(", ");
            }
            this.f89427b.append(d10);
            this.f89427b.append("=");
            this.f89427b.append(c10);
            return true;
        }
    }

    public class b extends Wd.J implements InterfaceC3462u {
        public b(C13348s c13348s) {
            super(c13348s);
        }

        @Override
        public char a(char c10) {
            char value = value();
            C13348s.this.f89425v[this.f27465d] = c10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public double key() {
            return C13348s.this.f27679q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13348s.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public char value() {
            return C13348s.this.f89425v[this.f27465d];
        }
    }

    public class c extends Wd.J implements InterfaceC3466y {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public double next() {
            j();
            return C13348s.this.f27679q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13348s.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class d extends Wd.J implements InterfaceC3458p {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public char next() {
            j();
            return C13348s.this.f89425v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13348s.this.hf(this.f27465d);
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

            public boolean f89433a = true;

            public final StringBuilder f89434b;

            public a(StringBuilder sb2) {
                this.f89434b = sb2;
            }

            @Override
            public boolean a(double d10) {
                if (this.f89433a) {
                    this.f89433a = false;
                } else {
                    this.f89434b.append(", ");
                }
                this.f89434b.append(d10);
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
                if (!C13348s.this.A(it.next())) {
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
            return C13348s.this.Y0(d10);
        }

        @Override
        public boolean Y1(double[] dArr) {
            Arrays.sort(dArr);
            C13348s c13348s = C13348s.this;
            double[] dArr2 = c13348s.f27679q;
            byte[] bArr = c13348s.f27568l;
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
                    C13348s.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean a(double d10) {
            return C13348s.this.f27681s != C13348s.this.a(d10);
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
            C13348s.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Double) {
                    if (!C13348s.this.A(((Double) obj).doubleValue())) {
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
            int length = C13348s.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                C13348s c13348s = C13348s.this;
                if (c13348s.f27568l[i10] == 1 && !interfaceC13969c.Y0(c13348s.f27679q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public int hashCode() {
            int length = C13348s.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                C13348s c13348s = C13348s.this;
                if (c13348s.f27568l[i11] == 1) {
                    i10 += Vd.b.b(c13348s.f27679q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public double i() {
            return C13348s.this.f27680r;
        }

        @Override
        public boolean i1(InterfaceC13470z interfaceC13470z) {
            return C13348s.this.k0(interfaceC13470z);
        }

        @Override
        public boolean isEmpty() {
            return C13348s.this.f27452b == 0;
        }

        @Override
        public InterfaceC3466y iterator() {
            C13348s c13348s = C13348s.this;
            return new c(c13348s);
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
                if (!C13348s.this.Y0(d10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int size() {
            return C13348s.this.f27452b;
        }

        @Override
        public double[] toArray() {
            return C13348s.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13348s.this.k0(new a(sb2));
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
            return C13348s.this.W(dArr);
        }
    }

    public class f implements Sd.b {

        public class a implements InterfaceC13462q {

            public boolean f89437a = true;

            public final StringBuilder f89438b;

            public a(StringBuilder sb2) {
                this.f89438b = sb2;
            }

            @Override
            public boolean a(char c10) {
                if (this.f89437a) {
                    this.f89437a = false;
                } else {
                    this.f89438b.append(", ");
                }
                this.f89438b.append(c10);
                return true;
            }
        }

        public f() {
        }

        @Override
        public char[] Q0(char[] cArr) {
            return C13348s.this.Z(cArr);
        }

        @Override
        public boolean X1(char[] cArr) {
            Arrays.sort(cArr);
            C13348s c13348s = C13348s.this;
            char[] cArr2 = c13348s.f89425v;
            byte[] bArr = c13348s.f27568l;
            int length = cArr2.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] != 1 || Arrays.binarySearch(cArr, cArr2[i10]) >= 0) {
                    length = i10;
                } else {
                    C13348s.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean addAll(Collection<? extends Character> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean b(char c10) {
            C13348s c13348s = C13348s.this;
            char[] cArr = c13348s.f89425v;
            double[] dArr = c13348s.f27679q;
            int length = cArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                double d10 = dArr[i10];
                if (d10 != 0.0d && d10 != 2.0d && c10 == cArr[i10]) {
                    C13348s.this.hf(i10);
                    return true;
                }
                length = i10;
            }
        }

        @Override
        public boolean b1(char c10) {
            return C13348s.this.O(c10);
        }

        @Override
        public void clear() {
            C13348s.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Character) {
                    if (!C13348s.this.O(((Character) obj).charValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean e1(char c10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean g1(InterfaceC13462q interfaceC13462q) {
            return C13348s.this.K(interfaceC13462q);
        }

        @Override
        public char i() {
            return C13348s.this.f27681s;
        }

        @Override
        public boolean isEmpty() {
            return C13348s.this.f27452b == 0;
        }

        @Override
        public InterfaceC3458p iterator() {
            C13348s c13348s = C13348s.this;
            return new d(c13348s);
        }

        @Override
        public boolean n2(char[] cArr) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean p2(Sd.b bVar) {
            InterfaceC3458p it = bVar.iterator();
            while (it.hasNext()) {
                if (!C13348s.this.O(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            boolean z10 = false;
            for (Object obj : collection) {
                if ((obj instanceof Character) && b(((Character) obj).charValue())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            InterfaceC3458p it = iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (!collection.contains(Character.valueOf(it.next()))) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public int size() {
            return C13348s.this.f27452b;
        }

        @Override
        public boolean t2(Sd.b bVar) {
            if (this == bVar) {
                clear();
                return true;
            }
            InterfaceC3458p it = bVar.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (b(it.next())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public char[] toArray() {
            return C13348s.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13348s.this.K(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean u1(char[] cArr) {
            for (char c10 : cArr) {
                if (!C13348s.this.O(c10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean u2(Sd.b bVar) {
            boolean z10 = false;
            if (this == bVar) {
                return false;
            }
            InterfaceC3458p it = iterator();
            while (it.hasNext()) {
                if (!bVar.b1(it.next())) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean v1(char[] cArr) {
            int length = cArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (b(cArr[i10])) {
                    z10 = true;
                }
                length = i10;
            }
        }

        @Override
        public boolean z1(Sd.b bVar) {
            throw new UnsupportedOperationException();
        }
    }

    public C13348s() {
    }

    @Override
    public boolean A(double d10) {
        return Y0(d10);
    }

    @Override
    public boolean Ga(double d10, char c10) {
        int nf2 = nf(d10);
        if (nf2 < 0) {
            return false;
        }
        char[] cArr = this.f89425v;
        cArr[nf2] = (char) (cArr[nf2] + c10);
        return true;
    }

    @Override
    public char I2(double d10, char c10) {
        return zf(d10, c10, pf(d10));
    }

    @Override
    public boolean K(InterfaceC13462q interfaceC13462q) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f89425v;
        int length = cArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13462q.a(cArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean O(char c10) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f89425v;
        int length = cArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return false;
            }
            if (bArr[i10] == 1 && c10 == cArr[i10]) {
                return true;
            }
            length = i10;
        }
    }

    @Override
    public void Qe(ee.r rVar) {
        cf(rVar.size());
        InterfaceC3462u it = rVar.iterator();
        while (it.hasNext()) {
            it.g();
            I2(it.key(), it.value());
        }
    }

    @Override
    public char Rc(double d10, char c10, char c11) {
        int pf2 = pf(d10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            char[] cArr = this.f89425v;
            c11 = (char) (cArr[pf2] + c10);
            cArr[pf2] = c11;
            z10 = false;
        } else {
            this.f89425v[pf2] = c11;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27682t);
        }
        return c11;
    }

    @Override
    public double[] W(double[] dArr) {
        int size = size();
        if (dArr.length < size) {
            dArr = new double[size];
        }
        double[] dArr2 = this.f27679q;
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
    public char[] Z(char[] cArr) {
        int size = size();
        if (cArr.length < size) {
            cArr = new char[size];
        }
        char[] cArr2 = this.f89425v;
        byte[] bArr = this.f27568l;
        int length = cArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return cArr;
            }
            if (bArr[i11] == 1) {
                cArr[i10] = cArr2[i11];
                i10++;
            }
            length = i11;
        }
    }

    @Override
    public char a(double d10) {
        char c10 = this.f27681s;
        int nf2 = nf(d10);
        if (nf2 < 0) {
            return c10;
        }
        char c11 = this.f89425v[nf2];
        hf(nf2);
        return c11;
    }

    @Override
    public void clear() {
        super.clear();
        double[] dArr = this.f27679q;
        Arrays.fill(dArr, 0, dArr.length, this.f27680r);
        char[] cArr = this.f89425v;
        Arrays.fill(cArr, 0, cArr.length, this.f27681s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    public boolean equals(Object obj) {
        char p02;
        char c10;
        if (!(obj instanceof ee.r)) {
            return false;
        }
        ee.r rVar = (ee.r) obj;
        if (rVar.size() != size()) {
            return false;
        }
        char[] cArr = this.f89425v;
        byte[] bArr = this.f27568l;
        char i10 = i();
        char i11 = rVar.i();
        int length = cArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1 && (c10 = cArr[i12]) != (p02 = rVar.p0(this.f27679q[i12])) && c10 != i10 && p02 != i11) {
                return false;
            }
            length = i12;
        }
    }

    @Override
    public void g(Ud.b bVar) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f89425v;
        int length = cArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i10] == 1) {
                cArr[i10] = bVar.a(cArr[i10]);
            }
            length = i10;
        }
    }

    @Override
    public void gf(int i10) {
        double[] dArr = this.f27679q;
        int length = dArr.length;
        char[] cArr = this.f89425v;
        byte[] bArr = this.f27568l;
        this.f27679q = new double[i10];
        this.f89425v = new char[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f89425v[pf(dArr[i11])] = cArr[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f89425v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.b(this.f27679q[i11]) ^ Vd.b.d(this.f89425v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f89425v[i10] = this.f27681s;
        super.hf(i10);
    }

    @Override
    public char i9(double d10, char c10) {
        int pf2 = pf(d10);
        return pf2 < 0 ? this.f89425v[(-pf2) - 1] : zf(d10, c10, pf2);
    }

    @Override
    public boolean increment(double d10) {
        return Ga(d10, (char) 1);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public InterfaceC3462u iterator() {
        return new b(this);
    }

    @Override
    public double[] j() {
        double[] dArr = new double[size()];
        double[] dArr2 = this.f27679q;
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
        this.f89425v = new char[jf2];
        return jf2;
    }

    @Override
    public Sd.b k() {
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
    public char p0(double d10) {
        int nf2 = nf(d10);
        return nf2 < 0 ? this.f27681s : this.f89425v[nf2];
    }

    @Override
    public void putAll(Map<? extends Double, ? extends Character> map) {
        cf(map.size());
        for (Map.Entry<? extends Double, ? extends Character> entry : map.entrySet()) {
            I2(entry.getKey().doubleValue(), entry.getValue().charValue());
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
            I2(objectInput.readDouble(), objectInput.readChar());
            readInt = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        y8(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public boolean u3(InterfaceC13464t interfaceC13464t) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f27679q;
        char[] cArr = this.f89425v;
        kf();
        try {
            int length = dArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !interfaceC13464t.a(dArr[i10], cArr[i10])) {
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
    public char[] values() {
        char[] cArr = new char[size()];
        char[] cArr2 = this.f89425v;
        byte[] bArr = this.f27568l;
        int length = cArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return cArr;
            }
            if (bArr[i11] == 1) {
                cArr[i10] = cArr2[i11];
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
                objectOutput.writeDouble(this.f27679q[i10]);
                objectOutput.writeChar(this.f89425v[i10]);
            }
            length = i10;
        }
    }

    @Override
    public boolean y8(InterfaceC13464t interfaceC13464t) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f27679q;
        char[] cArr = this.f89425v;
        int length = dArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13464t.a(dArr[i10], cArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    public final char zf(double d10, char c10, int i10) {
        char c11 = this.f27681s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            c11 = this.f89425v[i10];
            z10 = false;
        }
        this.f89425v[i10] = c10;
        if (z10) {
            ef(this.f27682t);
        }
        return c11;
    }

    public C13348s(int i10) {
        super(i10);
    }

    public C13348s(int i10, float f10) {
        super(i10, f10);
    }

    public C13348s(int i10, float f10, double d10, char c10) {
        super(i10, f10, d10, c10);
    }

    public C13348s(double[] dArr, char[] cArr) {
        super(Math.max(dArr.length, cArr.length));
        int min = Math.min(dArr.length, cArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            I2(dArr[i10], cArr[i10]);
        }
    }

    public C13348s(ee.r rVar) {
        super(rVar.size());
        if (rVar instanceof C13348s) {
            C13348s c13348s = (C13348s) rVar;
            this.f27454d = c13348s.f27454d;
            double d10 = c13348s.f27680r;
            this.f27680r = d10;
            this.f27681s = c13348s.f27681s;
            if (d10 != 0.0d) {
                Arrays.fill(this.f27679q, d10);
            }
            char c10 = this.f27681s;
            if (c10 != 0) {
                Arrays.fill(this.f89425v, c10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        Qe(rVar);
    }
}
