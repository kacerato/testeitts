package ge;

import Wd.AbstractC3181y;
import Zd.InterfaceC3466y;
import Zd.s0;
import ee.InterfaceC13082x;
import he.InterfaceC13444A;
import he.InterfaceC13470z;
import he.t0;
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

public class C13354y extends AbstractC3181y implements InterfaceC13082x, Externalizable {

    public static final long f89522w = 1;

    public transient short[] f89523v;

    public class a implements InterfaceC13444A {

        public boolean f89524a = true;

        public final StringBuilder f89525b;

        public a(StringBuilder sb2) {
            this.f89525b = sb2;
        }

        @Override
        public boolean a(double d10, short s10) {
            if (this.f89524a) {
                this.f89524a = false;
            } else {
                this.f89525b.append(", ");
            }
            this.f89525b.append(d10);
            this.f89525b.append("=");
            this.f89525b.append((int) s10);
            return true;
        }
    }

    public class b extends Wd.J implements Zd.B {
        public b(C13354y c13354y) {
            super(c13354y);
        }

        @Override
        public short c(short s10) {
            short value = value();
            C13354y.this.f89523v[this.f27465d] = s10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public double key() {
            return C13354y.this.f27708q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13354y.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public short value() {
            return C13354y.this.f89523v[this.f27465d];
        }
    }

    public class c extends Wd.J implements InterfaceC3466y {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public double next() {
            j();
            return C13354y.this.f27708q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13354y.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class d extends Wd.J implements s0 {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public short next() {
            j();
            return C13354y.this.f89523v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13354y.this.hf(this.f27465d);
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

            public boolean f89531a = true;

            public final StringBuilder f89532b;

            public a(StringBuilder sb2) {
                this.f89532b = sb2;
            }

            @Override
            public boolean a(double d10) {
                if (this.f89531a) {
                    this.f89531a = false;
                } else {
                    this.f89532b.append(", ");
                }
                this.f89532b.append(d10);
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
                if (!C13354y.this.A(it.next())) {
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
            return C13354y.this.Y0(d10);
        }

        @Override
        public boolean Y1(double[] dArr) {
            Arrays.sort(dArr);
            C13354y c13354y = C13354y.this;
            double[] dArr2 = c13354y.f27708q;
            byte[] bArr = c13354y.f27568l;
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
                    C13354y.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean a(double d10) {
            return C13354y.this.f27710s != C13354y.this.a(d10);
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
            C13354y.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Double) {
                    if (!C13354y.this.A(((Double) obj).doubleValue())) {
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
            int length = C13354y.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                C13354y c13354y = C13354y.this;
                if (c13354y.f27568l[i10] == 1 && !interfaceC13969c.Y0(c13354y.f27708q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public int hashCode() {
            int length = C13354y.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                C13354y c13354y = C13354y.this;
                if (c13354y.f27568l[i11] == 1) {
                    i10 += Vd.b.b(c13354y.f27708q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public double i() {
            return C13354y.this.f27709r;
        }

        @Override
        public boolean i1(InterfaceC13470z interfaceC13470z) {
            return C13354y.this.k0(interfaceC13470z);
        }

        @Override
        public boolean isEmpty() {
            return C13354y.this.f27452b == 0;
        }

        @Override
        public InterfaceC3466y iterator() {
            C13354y c13354y = C13354y.this;
            return new c(c13354y);
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
                if (!C13354y.this.Y0(d10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int size() {
            return C13354y.this.f27452b;
        }

        @Override
        public double[] toArray() {
            return C13354y.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13354y.this.k0(new a(sb2));
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
            return C13354y.this.W(dArr);
        }
    }

    public class f implements Sd.i {

        public class a implements t0 {

            public boolean f89535a = true;

            public final StringBuilder f89536b;

            public a(StringBuilder sb2) {
                this.f89536b = sb2;
            }

            @Override
            public boolean a(short s10) {
                if (this.f89535a) {
                    this.f89535a = false;
                } else {
                    this.f89536b.append(", ");
                }
                this.f89536b.append((int) s10);
                return true;
            }
        }

        public f() {
        }

        @Override
        public boolean A2(short[] sArr) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean F1(Sd.i iVar) {
            throw new UnsupportedOperationException();
        }

        @Override
        public short[] N0(short[] sArr) {
            return C13354y.this.i0(sArr);
        }

        @Override
        public boolean W0(short s10) {
            return C13354y.this.L(s10);
        }

        @Override
        public boolean Z1(short[] sArr) {
            for (short s10 : sArr) {
                if (!C13354y.this.L(s10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean addAll(Collection<? extends Short> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean c1(short s10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C13354y.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Short) {
                    if (!C13354y.this.L(((Short) obj).shortValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean d(short s10) {
            C13354y c13354y = C13354y.this;
            short[] sArr = c13354y.f89523v;
            double[] dArr = c13354y.f27708q;
            int length = sArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                double d10 = dArr[i10];
                if (d10 != 0.0d && d10 != 2.0d && s10 == sArr[i10]) {
                    C13354y.this.hf(i10);
                    return true;
                }
                length = i10;
            }
        }

        @Override
        public boolean h1(t0 t0Var) {
            return C13354y.this.N(t0Var);
        }

        @Override
        public short i() {
            return C13354y.this.f27710s;
        }

        @Override
        public boolean isEmpty() {
            return C13354y.this.f27452b == 0;
        }

        @Override
        public s0 iterator() {
            C13354y c13354y = C13354y.this;
            return new d(c13354y);
        }

        @Override
        public boolean n1(short[] sArr) {
            int length = sArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (d(sArr[i10])) {
                    z10 = true;
                }
                length = i10;
            }
        }

        @Override
        public boolean o1(Sd.i iVar) {
            if (this == iVar) {
                clear();
                return true;
            }
            s0 it = iVar.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (d(it.next())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean q2(Sd.i iVar) {
            boolean z10 = false;
            if (this == iVar) {
                return false;
            }
            s0 it = iterator();
            while (it.hasNext()) {
                if (!iVar.W0(it.next())) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean r1(short[] sArr) {
            Arrays.sort(sArr);
            C13354y c13354y = C13354y.this;
            short[] sArr2 = c13354y.f89523v;
            byte[] bArr = c13354y.f27568l;
            int length = sArr2.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] != 1 || Arrays.binarySearch(sArr, sArr2[i10]) >= 0) {
                    length = i10;
                } else {
                    C13354y.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            boolean z10 = false;
            for (Object obj : collection) {
                if ((obj instanceof Short) && d(((Short) obj).shortValue())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            s0 it = iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (!collection.contains(Short.valueOf(it.next()))) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public int size() {
            return C13354y.this.f27452b;
        }

        @Override
        public short[] toArray() {
            return C13354y.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13354y.this.N(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean v2(Sd.i iVar) {
            s0 it = iVar.iterator();
            while (it.hasNext()) {
                if (!C13354y.this.L(it.next())) {
                    return false;
                }
            }
            return true;
        }
    }

    public C13354y() {
    }

    @Override
    public boolean A(double d10) {
        return Y0(d10);
    }

    @Override
    public void H4(InterfaceC13082x interfaceC13082x) {
        cf(interfaceC13082x.size());
        Zd.B it = interfaceC13082x.iterator();
        while (it.hasNext()) {
            it.g();
            Y2(it.key(), it.value());
        }
    }

    @Override
    public boolean Je(InterfaceC13444A interfaceC13444A) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f27708q;
        short[] sArr = this.f89523v;
        int length = dArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13444A.a(dArr[i10], sArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean L(short s10) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f89523v;
        int length = sArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return false;
            }
            if (bArr[i10] == 1 && s10 == sArr[i10]) {
                return true;
            }
            length = i10;
        }
    }

    @Override
    public boolean N(t0 t0Var) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f89523v;
        int length = sArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !t0Var.a(sArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean Sa(double d10, short s10) {
        int nf2 = nf(d10);
        if (nf2 < 0) {
            return false;
        }
        short[] sArr = this.f89523v;
        sArr[nf2] = (short) (sArr[nf2] + s10);
        return true;
    }

    @Override
    public double[] W(double[] dArr) {
        int size = size();
        if (dArr.length < size) {
            dArr = new double[size];
        }
        double[] dArr2 = this.f27708q;
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
    public short Y2(double d10, short s10) {
        return zf(d10, s10, pf(d10));
    }

    @Override
    public short a(double d10) {
        short s10 = this.f27710s;
        int nf2 = nf(d10);
        if (nf2 < 0) {
            return s10;
        }
        short s11 = this.f89523v[nf2];
        hf(nf2);
        return s11;
    }

    @Override
    public void clear() {
        super.clear();
        double[] dArr = this.f27708q;
        Arrays.fill(dArr, 0, dArr.length, this.f27709r);
        short[] sArr = this.f89523v;
        Arrays.fill(sArr, 0, sArr.length, this.f27710s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    public boolean equals(Object obj) {
        short p02;
        short s10;
        if (!(obj instanceof InterfaceC13082x)) {
            return false;
        }
        InterfaceC13082x interfaceC13082x = (InterfaceC13082x) obj;
        if (interfaceC13082x.size() != size()) {
            return false;
        }
        short[] sArr = this.f89523v;
        byte[] bArr = this.f27568l;
        short i10 = i();
        short i11 = interfaceC13082x.i();
        int length = sArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1 && (s10 = sArr[i12]) != (p02 = interfaceC13082x.p0(this.f27708q[i12])) && s10 != i10 && p02 != i11) {
                return false;
            }
            length = i12;
        }
    }

    @Override
    public void gf(int i10) {
        double[] dArr = this.f27708q;
        int length = dArr.length;
        short[] sArr = this.f89523v;
        byte[] bArr = this.f27568l;
        this.f27708q = new double[i10];
        this.f89523v = new short[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f89523v[pf(dArr[i11])] = sArr[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f89523v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.b(this.f27708q[i11]) ^ Vd.b.d(this.f89523v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f89523v[i10] = this.f27710s;
        super.hf(i10);
    }

    @Override
    public short[] i0(short[] sArr) {
        int size = size();
        if (sArr.length < size) {
            sArr = new short[size];
        }
        short[] sArr2 = this.f89523v;
        byte[] bArr = this.f27568l;
        int length = sArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return sArr;
            }
            if (bArr[i11] == 1) {
                sArr[i10] = sArr2[i11];
                i10++;
            }
            length = i11;
        }
    }

    @Override
    public boolean increment(double d10) {
        return Sa(d10, (short) 1);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public Zd.B iterator() {
        return new b(this);
    }

    @Override
    public double[] j() {
        double[] dArr = new double[size()];
        double[] dArr2 = this.f27708q;
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
        this.f89523v = new short[jf2];
        return jf2;
    }

    @Override
    public Sd.i k() {
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
    public short p0(double d10) {
        int nf2 = nf(d10);
        return nf2 < 0 ? this.f27710s : this.f89523v[nf2];
    }

    @Override
    public short p8(double d10, short s10, short s11) {
        int pf2 = pf(d10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            short[] sArr = this.f89523v;
            s11 = (short) (sArr[pf2] + s10);
            sArr[pf2] = s11;
            z10 = false;
        } else {
            this.f89523v[pf2] = s11;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27711t);
        }
        return s11;
    }

    @Override
    public void putAll(Map<? extends Double, ? extends Short> map) {
        cf(map.size());
        for (Map.Entry<? extends Double, ? extends Short> entry : map.entrySet()) {
            Y2(entry.getKey().doubleValue(), entry.getValue().shortValue());
        }
    }

    @Override
    public void r(Ud.h hVar) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f89523v;
        int length = sArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i10] == 1) {
                sArr[i10] = hVar.a(sArr[i10]);
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
            Y2(objectInput.readDouble(), objectInput.readShort());
            readInt = i10;
        }
    }

    @Override
    public short s9(double d10, short s10) {
        int pf2 = pf(d10);
        return pf2 < 0 ? this.f89523v[(-pf2) - 1] : zf(d10, s10, pf2);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        Je(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public boolean u9(InterfaceC13444A interfaceC13444A) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f27708q;
        short[] sArr = this.f89523v;
        kf();
        try {
            int length = dArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !interfaceC13444A.a(dArr[i10], sArr[i10])) {
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
    public short[] values() {
        short[] sArr = new short[size()];
        short[] sArr2 = this.f89523v;
        byte[] bArr = this.f27568l;
        int length = sArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return sArr;
            }
            if (bArr[i11] == 1) {
                sArr[i10] = sArr2[i11];
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
                objectOutput.writeDouble(this.f27708q[i10]);
                objectOutput.writeShort(this.f89523v[i10]);
            }
            length = i10;
        }
    }

    public final short zf(double d10, short s10, int i10) {
        short s11 = this.f27710s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            s11 = this.f89523v[i10];
            z10 = false;
        }
        this.f89523v[i10] = s10;
        if (z10) {
            ef(this.f27711t);
        }
        return s11;
    }

    public C13354y(int i10) {
        super(i10);
    }

    public C13354y(int i10, float f10) {
        super(i10, f10);
    }

    public C13354y(int i10, float f10, double d10, short s10) {
        super(i10, f10, d10, s10);
    }

    public C13354y(double[] dArr, short[] sArr) {
        super(Math.max(dArr.length, sArr.length));
        int min = Math.min(dArr.length, sArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            Y2(dArr[i10], sArr[i10]);
        }
    }

    public C13354y(InterfaceC13082x interfaceC13082x) {
        super(interfaceC13082x.size());
        if (interfaceC13082x instanceof C13354y) {
            C13354y c13354y = (C13354y) interfaceC13082x;
            this.f27454d = c13354y.f27454d;
            double d10 = c13354y.f27709r;
            this.f27709r = d10;
            this.f27710s = c13354y.f27710s;
            if (d10 != 0.0d) {
                Arrays.fill(this.f27708q, d10);
            }
            short s10 = this.f27710s;
            if (s10 != 0) {
                Arrays.fill(this.f89523v, s10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        H4(interfaceC13082x);
    }
}
