package ge;

import Wd.AbstractC3177u;
import Zd.InterfaceC3464w;
import Zd.InterfaceC3466y;
import ee.InterfaceC13078t;
import he.InterfaceC13466v;
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

public class C13350u extends AbstractC3177u implements InterfaceC13078t, Externalizable {

    public static final long f89456w = 1;

    public transient float[] f89457v;

    public class a implements InterfaceC13466v {

        public boolean f89458a = true;

        public final StringBuilder f89459b;

        public a(StringBuilder sb2) {
            this.f89459b = sb2;
        }

        @Override
        public boolean a(double d10, float f10) {
            if (this.f89458a) {
                this.f89458a = false;
            } else {
                this.f89459b.append(", ");
            }
            this.f89459b.append(d10);
            this.f89459b.append("=");
            this.f89459b.append(f10);
            return true;
        }
    }

    public class b extends Wd.J implements InterfaceC3464w {
        public b(C13350u c13350u) {
            super(c13350u);
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public double key() {
            return C13350u.this.f27689q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13350u.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public float setValue(float f10) {
            float value = value();
            C13350u.this.f89457v[this.f27465d] = f10;
            return value;
        }

        @Override
        public float value() {
            return C13350u.this.f89457v[this.f27465d];
        }
    }

    public class c extends Wd.J implements InterfaceC3466y {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public double next() {
            j();
            return C13350u.this.f27689q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13350u.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class d extends Wd.J implements Zd.H {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public float next() {
            j();
            return C13350u.this.f89457v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13350u.this.hf(this.f27465d);
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

            public boolean f89465a = true;

            public final StringBuilder f89466b;

            public a(StringBuilder sb2) {
                this.f89466b = sb2;
            }

            @Override
            public boolean a(double d10) {
                if (this.f89465a) {
                    this.f89465a = false;
                } else {
                    this.f89466b.append(", ");
                }
                this.f89466b.append(d10);
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
                if (!C13350u.this.A(it.next())) {
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
            return C13350u.this.Y0(d10);
        }

        @Override
        public boolean Y1(double[] dArr) {
            Arrays.sort(dArr);
            C13350u c13350u = C13350u.this;
            double[] dArr2 = c13350u.f27689q;
            byte[] bArr = c13350u.f27568l;
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
                    C13350u.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean a(double d10) {
            return C13350u.this.f27691s != C13350u.this.a(d10);
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
            C13350u.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Double) {
                    if (!C13350u.this.A(((Double) obj).doubleValue())) {
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
            int length = C13350u.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                C13350u c13350u = C13350u.this;
                if (c13350u.f27568l[i10] == 1 && !interfaceC13969c.Y0(c13350u.f27689q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public int hashCode() {
            int length = C13350u.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                C13350u c13350u = C13350u.this;
                if (c13350u.f27568l[i11] == 1) {
                    i10 += Vd.b.b(c13350u.f27689q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public double i() {
            return C13350u.this.f27690r;
        }

        @Override
        public boolean i1(InterfaceC13470z interfaceC13470z) {
            return C13350u.this.k0(interfaceC13470z);
        }

        @Override
        public boolean isEmpty() {
            return C13350u.this.f27452b == 0;
        }

        @Override
        public InterfaceC3466y iterator() {
            C13350u c13350u = C13350u.this;
            return new c(c13350u);
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
                if (!C13350u.this.Y0(d10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int size() {
            return C13350u.this.f27452b;
        }

        @Override
        public double[] toArray() {
            return C13350u.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13350u.this.k0(new a(sb2));
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
            return C13350u.this.W(dArr);
        }
    }

    public class f implements Sd.f {

        public class a implements he.I {

            public boolean f89469a = true;

            public final StringBuilder f89470b;

            public a(StringBuilder sb2) {
                this.f89470b = sb2;
            }

            @Override
            public boolean a(float f10) {
                if (this.f89469a) {
                    this.f89469a = false;
                } else {
                    this.f89470b.append(", ");
                }
                this.f89470b.append(f10);
                return true;
            }
        }

        public f() {
        }

        @Override
        public boolean C2(Sd.f fVar) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean D1(Sd.f fVar) {
            Zd.H it = fVar.iterator();
            while (it.hasNext()) {
                if (!C13350u.this.U(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean L1(float[] fArr) {
            for (float f10 : fArr) {
                if (!C13350u.this.U(f10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean V1(float[] fArr) {
            Arrays.sort(fArr);
            C13350u c13350u = C13350u.this;
            float[] fArr2 = c13350u.f89457v;
            byte[] bArr = c13350u.f27568l;
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
                    C13350u.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean Z0(float f10) {
            return C13350u.this.U(f10);
        }

        @Override
        public boolean addAll(Collection<? extends Float> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean c(float f10) {
            C13350u c13350u = C13350u.this;
            float[] fArr = c13350u.f89457v;
            double[] dArr = c13350u.f27689q;
            int length = fArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                double d10 = dArr[i10];
                if (d10 != 0.0d && d10 != 2.0d && f10 == fArr[i10]) {
                    C13350u.this.hf(i10);
                    return true;
                }
                length = i10;
            }
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
            C13350u.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Float) {
                    if (!C13350u.this.U(((Float) obj).floatValue())) {
                    }
                }
                return false;
            }
            return true;
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
        public float i() {
            return C13350u.this.f27691s;
        }

        @Override
        public boolean isEmpty() {
            return C13350u.this.f27452b == 0;
        }

        @Override
        public Zd.H iterator() {
            C13350u c13350u = C13350u.this;
            return new d(c13350u);
        }

        @Override
        public boolean k1(he.I i10) {
            return C13350u.this.B(i10);
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
            return C13350u.this.f27452b;
        }

        @Override
        public float[] toArray() {
            return C13350u.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13350u.this.B(new a(sb2));
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
            return C13350u.this.c0(fArr);
        }
    }

    public C13350u() {
    }

    @Override
    public boolean A(double d10) {
        return Y0(d10);
    }

    @Override
    public boolean B(he.I i10) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f89457v;
        int length = fArr.length;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i11] == 1 && !i10.a(fArr[i11])) {
                return false;
            }
            length = i11;
        }
    }

    @Override
    public float Dc(double d10, float f10, float f11) {
        int pf2 = pf(d10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            float[] fArr = this.f89457v;
            f11 = fArr[pf2] + f10;
            fArr[pf2] = f11;
            z10 = false;
        } else {
            this.f89457v[pf2] = f11;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27692t);
        }
        return f11;
    }

    @Override
    public float K2(double d10, float f10) {
        return zf(d10, f10, pf(d10));
    }

    @Override
    public boolean Ra(double d10, float f10) {
        int nf2 = nf(d10);
        if (nf2 < 0) {
            return false;
        }
        float[] fArr = this.f89457v;
        fArr[nf2] = fArr[nf2] + f10;
        return true;
    }

    @Override
    public void Sb(InterfaceC13078t interfaceC13078t) {
        cf(interfaceC13078t.size());
        InterfaceC3464w it = interfaceC13078t.iterator();
        while (it.hasNext()) {
            it.g();
            K2(it.key(), it.value());
        }
    }

    @Override
    public boolean U(float f10) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f89457v;
        int length = fArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return false;
            }
            if (bArr[i10] == 1 && f10 == fArr[i10]) {
                return true;
            }
            length = i10;
        }
    }

    @Override
    public double[] W(double[] dArr) {
        int size = size();
        if (dArr.length < size) {
            dArr = new double[size];
        }
        double[] dArr2 = this.f27689q;
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
    public boolean X6(InterfaceC13466v interfaceC13466v) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f27689q;
        float[] fArr = this.f89457v;
        kf();
        try {
            int length = dArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !interfaceC13466v.a(dArr[i10], fArr[i10])) {
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
    public float a(double d10) {
        float f10 = this.f27691s;
        int nf2 = nf(d10);
        if (nf2 < 0) {
            return f10;
        }
        float f11 = this.f89457v[nf2];
        hf(nf2);
        return f11;
    }

    @Override
    public float b9(double d10, float f10) {
        int pf2 = pf(d10);
        return pf2 < 0 ? this.f89457v[(-pf2) - 1] : zf(d10, f10, pf2);
    }

    @Override
    public float[] c0(float[] fArr) {
        int size = size();
        if (fArr.length < size) {
            fArr = new float[size];
        }
        float[] fArr2 = this.f89457v;
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
    public void clear() {
        super.clear();
        double[] dArr = this.f27689q;
        Arrays.fill(dArr, 0, dArr.length, this.f27690r);
        float[] fArr = this.f89457v;
        Arrays.fill(fArr, 0, fArr.length, this.f27691s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof InterfaceC13078t)) {
            return false;
        }
        InterfaceC13078t interfaceC13078t = (InterfaceC13078t) obj;
        if (interfaceC13078t.size() != size()) {
            return false;
        }
        float[] fArr = this.f89457v;
        byte[] bArr = this.f27568l;
        float i10 = i();
        float i11 = interfaceC13078t.i();
        int length = fArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1) {
                float p02 = interfaceC13078t.p0(this.f27689q[i12]);
                float f10 = fArr[i12];
                if (f10 != p02 && f10 != i10 && p02 != i11) {
                    return false;
                }
            }
            length = i12;
        }
    }

    @Override
    public void gf(int i10) {
        double[] dArr = this.f27689q;
        int length = dArr.length;
        float[] fArr = this.f89457v;
        byte[] bArr = this.f27568l;
        this.f27689q = new double[i10];
        this.f89457v = new float[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f89457v[pf(dArr[i11])] = fArr[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f89457v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.b(this.f27689q[i11]) ^ Vd.b.c(this.f89457v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f89457v[i10] = this.f27691s;
        super.hf(i10);
    }

    @Override
    public boolean increment(double d10) {
        return Ra(d10, 1.0f);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public InterfaceC3464w iterator() {
        return new b(this);
    }

    @Override
    public double[] j() {
        double[] dArr = new double[size()];
        double[] dArr2 = this.f27689q;
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
        this.f89457v = new float[jf2];
        return jf2;
    }

    @Override
    public Sd.f k() {
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
    public void n(Ud.d dVar) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f89457v;
        int length = fArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i10] == 1) {
                fArr[i10] = dVar.a(fArr[i10]);
            }
            length = i10;
        }
    }

    @Override
    public float p0(double d10) {
        int nf2 = nf(d10);
        return nf2 < 0 ? this.f27691s : this.f89457v[nf2];
    }

    @Override
    public void putAll(Map<? extends Double, ? extends Float> map) {
        cf(map.size());
        for (Map.Entry<? extends Double, ? extends Float> entry : map.entrySet()) {
            K2(entry.getKey().doubleValue(), entry.getValue().floatValue());
        }
    }

    @Override
    public boolean q9(InterfaceC13466v interfaceC13466v) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f27689q;
        float[] fArr = this.f89457v;
        int length = dArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13466v.a(dArr[i10], fArr[i10])) {
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
            K2(objectInput.readDouble(), objectInput.readFloat());
            readInt = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        q9(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public float[] values() {
        float[] fArr = new float[size()];
        float[] fArr2 = this.f89457v;
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
                objectOutput.writeDouble(this.f27689q[i10]);
                objectOutput.writeFloat(this.f89457v[i10]);
            }
            length = i10;
        }
    }

    public final float zf(double d10, float f10, int i10) {
        float f11 = this.f27691s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            f11 = this.f89457v[i10];
            z10 = false;
        }
        this.f89457v[i10] = f10;
        if (z10) {
            ef(this.f27692t);
        }
        return f11;
    }

    public C13350u(int i10) {
        super(i10);
    }

    public C13350u(int i10, float f10) {
        super(i10, f10);
    }

    public C13350u(int i10, float f10, double d10, float f11) {
        super(i10, f10, d10, f11);
    }

    public C13350u(double[] dArr, float[] fArr) {
        super(Math.max(dArr.length, fArr.length));
        int min = Math.min(dArr.length, fArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            K2(dArr[i10], fArr[i10]);
        }
    }

    public C13350u(InterfaceC13078t interfaceC13078t) {
        super(interfaceC13078t.size());
        if (interfaceC13078t instanceof C13350u) {
            C13350u c13350u = (C13350u) interfaceC13078t;
            this.f27454d = c13350u.f27454d;
            double d10 = c13350u.f27690r;
            this.f27690r = d10;
            this.f27691s = c13350u.f27691s;
            if (d10 != 0.0d) {
                Arrays.fill(this.f27689q, d10);
            }
            float f10 = this.f27691s;
            if (f10 != 0.0f) {
                Arrays.fill(this.f89457v, f10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        Sb(interfaceC13078t);
    }
}
