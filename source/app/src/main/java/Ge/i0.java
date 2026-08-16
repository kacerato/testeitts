package ge;

import Zd.InterfaceC3466y;
import Zd.p0;
import Zd.s0;
import he.InterfaceC13470z;
import he.o0;
import he.t0;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Map;
import ke.InterfaceC13973g;
import org.apache.commons.math3.geometry.VectorFormat;

public class i0 extends Wd.f0 implements ee.h0, Externalizable {

    public static final long f89178w = 1;

    public transient double[] f89179v;

    public class a implements o0 {

        public boolean f89180a = true;

        public final StringBuilder f89181b;

        public a(StringBuilder sb2) {
            this.f89181b = sb2;
        }

        @Override
        public boolean a(short s10, double d10) {
            if (this.f89180a) {
                this.f89180a = false;
            } else {
                this.f89181b.append(", ");
            }
            this.f89181b.append((int) s10);
            this.f89181b.append("=");
            this.f89181b.append(d10);
            return true;
        }
    }

    public class b implements InterfaceC13973g {

        public class a implements t0 {

            public boolean f89184a = true;

            public final StringBuilder f89185b;

            public a(StringBuilder sb2) {
                this.f89185b = sb2;
            }

            @Override
            public boolean a(short s10) {
                if (this.f89184a) {
                    this.f89184a = false;
                } else {
                    this.f89185b.append(", ");
                }
                this.f89185b.append((int) s10);
                return true;
            }
        }

        public b() {
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
            return i0.this.Y(sArr);
        }

        @Override
        public boolean W0(short s10) {
            return i0.this.W0(s10);
        }

        @Override
        public boolean Z1(short[] sArr) {
            for (short s10 : sArr) {
                if (!i0.this.W0(s10)) {
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
            i0.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Short) {
                    if (!i0.this.z(((Short) obj).shortValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean d(short s10) {
            return i0.this.f27596s != i0.this.d(s10);
        }

        @Override
        public boolean equals(Object obj) {
            if (!(obj instanceof InterfaceC13973g)) {
                return false;
            }
            InterfaceC13973g interfaceC13973g = (InterfaceC13973g) obj;
            if (interfaceC13973g.size() != size()) {
                return false;
            }
            int length = i0.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                i0 i0Var = i0.this;
                if (i0Var.f27568l[i10] == 1 && !interfaceC13973g.W0(i0Var.f27594q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public boolean h1(t0 t0Var) {
            return i0.this.v(t0Var);
        }

        @Override
        public int hashCode() {
            int length = i0.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                i0 i0Var = i0.this;
                if (i0Var.f27568l[i11] == 1) {
                    i10 += Vd.b.d(i0Var.f27594q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public short i() {
            return i0.this.f27595r;
        }

        @Override
        public boolean isEmpty() {
            return i0.this.f27452b == 0;
        }

        @Override
        public s0 iterator() {
            i0 i0Var = i0.this;
            return new d(i0Var);
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
            i0 i0Var = i0.this;
            short[] sArr2 = i0Var.f27594q;
            byte[] bArr = i0Var.f27568l;
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
                    i0.this.hf(i10);
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
            return i0.this.f27452b;
        }

        @Override
        public short[] toArray() {
            return i0.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            i0.this.v(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean v2(Sd.i iVar) {
            s0 it = iVar.iterator();
            while (it.hasNext()) {
                if (!i0.this.z(it.next())) {
                    return false;
                }
            }
            return true;
        }
    }

    public class c extends Wd.J implements p0 {
        public c(i0 i0Var) {
            super(i0Var);
        }

        @Override
        public double f(double d10) {
            double value = value();
            i0.this.f89179v[this.f27465d] = d10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public short key() {
            return i0.this.f27594q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                i0.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public double value() {
            return i0.this.f89179v[this.f27465d];
        }
    }

    public class d extends Wd.J implements s0 {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public short next() {
            j();
            return i0.this.f27594q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                i0.this.hf(this.f27465d);
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
            return i0.this.f89179v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                i0.this.hf(this.f27465d);
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

            public boolean f89191a = true;

            public final StringBuilder f89192b;

            public a(StringBuilder sb2) {
                this.f89192b = sb2;
            }

            @Override
            public boolean a(double d10) {
                if (this.f89191a) {
                    this.f89191a = false;
                } else {
                    this.f89192b.append(", ");
                }
                this.f89192b.append(d10);
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
                if (!i0.this.T(it.next())) {
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
            return i0.this.T(d10);
        }

        @Override
        public boolean Y1(double[] dArr) {
            Arrays.sort(dArr);
            i0 i0Var = i0.this;
            double[] dArr2 = i0Var.f89179v;
            byte[] bArr = i0Var.f27568l;
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
                    i0.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean a(double d10) {
            i0 i0Var = i0.this;
            double[] dArr = i0Var.f89179v;
            short[] sArr = i0Var.f27594q;
            int length = dArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                short s10 = sArr[i10];
                if (s10 != 0 && s10 != 2 && d10 == dArr[i10]) {
                    i0.this.hf(i10);
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
            i0.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Double) {
                    if (!i0.this.T(((Double) obj).doubleValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public double i() {
            return i0.this.f27596s;
        }

        @Override
        public boolean i1(InterfaceC13470z interfaceC13470z) {
            return i0.this.I(interfaceC13470z);
        }

        @Override
        public boolean isEmpty() {
            return i0.this.f27452b == 0;
        }

        @Override
        public InterfaceC3466y iterator() {
            i0 i0Var = i0.this;
            return new e(i0Var);
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
                if (!i0.this.T(d10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int size() {
            return i0.this.f27452b;
        }

        @Override
        public double[] toArray() {
            return i0.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            i0.this.I(new a(sb2));
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
            return i0.this.b0(dArr);
        }
    }

    public i0() {
    }

    @Override
    public double E3(short s10, double d10) {
        int pf2 = pf(s10);
        return pf2 < 0 ? this.f89179v[(-pf2) - 1] : zf(s10, d10, pf2);
    }

    @Override
    public boolean I(InterfaceC13470z interfaceC13470z) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f89179v;
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
    public boolean I0(short s10) {
        return g8(s10, 1.0d);
    }

    @Override
    public boolean Nc(o0 o0Var) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f27594q;
        double[] dArr = this.f89179v;
        kf();
        try {
            int length = sArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !o0Var.a(sArr[i10], dArr[i10])) {
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
    public void Q7(ee.h0 h0Var) {
        cf(h0Var.size());
        p0 it = h0Var.iterator();
        while (it.hasNext()) {
            it.g();
            ma(it.key(), it.value());
        }
    }

    @Override
    public boolean T(double d10) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f89179v;
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
    public short[] Y(short[] sArr) {
        int size = size();
        if (sArr.length < size) {
            sArr = new short[size];
        }
        short[] sArr2 = this.f27594q;
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
    public double[] b0(double[] dArr) {
        int size = size();
        if (dArr.length < size) {
            dArr = new double[size];
        }
        double[] dArr2 = this.f89179v;
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
        short[] sArr = this.f27594q;
        Arrays.fill(sArr, 0, sArr.length, this.f27595r);
        double[] dArr = this.f89179v;
        Arrays.fill(dArr, 0, dArr.length, this.f27596s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    @Override
    public double d(short s10) {
        double d10 = this.f27596s;
        int nf2 = nf(s10);
        if (nf2 < 0) {
            return d10;
        }
        double d11 = this.f89179v[nf2];
        hf(nf2);
        return d11;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ee.h0)) {
            return false;
        }
        ee.h0 h0Var = (ee.h0) obj;
        if (h0Var.size() != size()) {
            return false;
        }
        double[] dArr = this.f89179v;
        byte[] bArr = this.f27568l;
        double i10 = i();
        double i11 = h0Var.i();
        int length = dArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1) {
                double n02 = h0Var.n0(this.f27594q[i12]);
                double d10 = dArr[i12];
                if (d10 != n02 && d10 != i10 && n02 != i11) {
                    return false;
                }
            }
            length = i12;
        }
    }

    @Override
    public boolean g8(short s10, double d10) {
        int nf2 = nf(s10);
        if (nf2 < 0) {
            return false;
        }
        double[] dArr = this.f89179v;
        dArr[nf2] = dArr[nf2] + d10;
        return true;
    }

    @Override
    public void gf(int i10) {
        short[] sArr = this.f27594q;
        int length = sArr.length;
        double[] dArr = this.f89179v;
        byte[] bArr = this.f27568l;
        this.f27594q = new short[i10];
        this.f89179v = new double[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f89179v[pf(sArr[i11])] = dArr[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f89179v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.d(this.f27594q[i11]) ^ Vd.b.b(this.f89179v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f89179v[i10] = this.f27596s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public p0 iterator() {
        return new c(this);
    }

    @Override
    public short[] j() {
        short[] sArr = new short[size()];
        short[] sArr2 = this.f27594q;
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
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f89179v = new double[jf2];
        return jf2;
    }

    @Override
    public Sd.e k() {
        return new f();
    }

    @Override
    public InterfaceC13973g keySet() {
        return new b();
    }

    @Override
    public double lc(short s10, double d10, double d11) {
        int pf2 = pf(s10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            double[] dArr = this.f89179v;
            double d12 = d10 + dArr[pf2];
            dArr[pf2] = d12;
            z10 = false;
            d11 = d12;
        } else {
            this.f89179v[pf2] = d11;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27597t);
        }
        return d11;
    }

    @Override
    public boolean m8(o0 o0Var) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f27594q;
        double[] dArr = this.f89179v;
        int length = sArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !o0Var.a(sArr[i10], dArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public double ma(short s10, double d10) {
        return zf(s10, d10, pf(s10));
    }

    @Override
    public double n0(short s10) {
        int nf2 = nf(s10);
        return nf2 < 0 ? this.f27596s : this.f89179v[nf2];
    }

    @Override
    public void p(Ud.c cVar) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f89179v;
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
    public void putAll(Map<? extends Short, ? extends Double> map) {
        cf(map.size());
        for (Map.Entry<? extends Short, ? extends Double> entry : map.entrySet()) {
            ma(entry.getKey().shortValue(), entry.getValue().doubleValue());
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
            ma(objectInput.readShort(), objectInput.readDouble());
            readInt = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        m8(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public boolean v(t0 t0Var) {
        return h1(t0Var);
    }

    @Override
    public double[] values() {
        double[] dArr = new double[size()];
        double[] dArr2 = this.f89179v;
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
                objectOutput.writeShort(this.f27594q[i10]);
                objectOutput.writeDouble(this.f89179v[i10]);
            }
            length = i10;
        }
    }

    @Override
    public boolean z(short s10) {
        return W0(s10);
    }

    public final double zf(short s10, double d10, int i10) {
        double d11 = this.f27596s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            d11 = this.f89179v[i10];
            z10 = false;
        }
        this.f89179v[i10] = d10;
        if (z10) {
            ef(this.f27597t);
        }
        return d11;
    }

    public i0(int i10) {
        super(i10);
    }

    public i0(int i10, float f10) {
        super(i10, f10);
    }

    public i0(int i10, float f10, short s10, double d10) {
        super(i10, f10, s10, d10);
    }

    public i0(short[] sArr, double[] dArr) {
        super(Math.max(sArr.length, dArr.length));
        int min = Math.min(sArr.length, dArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            ma(sArr[i10], dArr[i10]);
        }
    }

    public i0(ee.h0 h0Var) {
        super(h0Var.size());
        if (h0Var instanceof i0) {
            i0 i0Var = (i0) h0Var;
            this.f27454d = i0Var.f27454d;
            short s10 = i0Var.f27595r;
            this.f27595r = s10;
            this.f27596s = i0Var.f27596s;
            if (s10 != 0) {
                Arrays.fill(this.f27594q, s10);
            }
            double d10 = this.f27596s;
            if (d10 != 0.0d) {
                Arrays.fill(this.f89179v, d10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        Q7(h0Var);
    }
}
