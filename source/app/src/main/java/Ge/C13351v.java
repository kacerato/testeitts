package ge;

import Wd.AbstractC3179w;
import Zd.InterfaceC3465x;
import Zd.InterfaceC3466y;
import ee.InterfaceC13079u;
import he.InterfaceC13467w;
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

public class C13351v extends AbstractC3179w implements InterfaceC13079u, Externalizable {

    public static final long f89472w = 1;

    public transient int[] f89473v;

    public class a implements InterfaceC13467w {

        public boolean f89474a = true;

        public final StringBuilder f89475b;

        public a(StringBuilder sb2) {
            this.f89475b = sb2;
        }

        @Override
        public boolean a(double d10, int i10) {
            if (this.f89474a) {
                this.f89474a = false;
            } else {
                this.f89475b.append(", ");
            }
            this.f89475b.append(d10);
            this.f89475b.append("=");
            this.f89475b.append(i10);
            return true;
        }
    }

    public class b extends Wd.J implements InterfaceC3465x {
        public b(C13351v c13351v) {
            super(c13351v);
        }

        @Override
        public int e(int i10) {
            int value = value();
            C13351v.this.f89473v[this.f27465d] = i10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public double key() {
            return C13351v.this.f27698q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13351v.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public int value() {
            return C13351v.this.f89473v[this.f27465d];
        }
    }

    public class c extends Wd.J implements InterfaceC3466y {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public double next() {
            j();
            return C13351v.this.f27698q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13351v.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class d extends Wd.J implements Zd.Q {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public int next() {
            j();
            return C13351v.this.f89473v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13351v.this.hf(this.f27465d);
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

            public boolean f89481a = true;

            public final StringBuilder f89482b;

            public a(StringBuilder sb2) {
                this.f89482b = sb2;
            }

            @Override
            public boolean a(double d10) {
                if (this.f89481a) {
                    this.f89481a = false;
                } else {
                    this.f89482b.append(", ");
                }
                this.f89482b.append(d10);
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
                if (!C13351v.this.A(it.next())) {
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
            return C13351v.this.Y0(d10);
        }

        @Override
        public boolean Y1(double[] dArr) {
            Arrays.sort(dArr);
            C13351v c13351v = C13351v.this;
            double[] dArr2 = c13351v.f27698q;
            byte[] bArr = c13351v.f27568l;
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
                    C13351v.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean a(double d10) {
            return C13351v.this.f27700s != C13351v.this.a(d10);
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
            C13351v.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Double) {
                    if (!C13351v.this.A(((Double) obj).doubleValue())) {
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
            int length = C13351v.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                C13351v c13351v = C13351v.this;
                if (c13351v.f27568l[i10] == 1 && !interfaceC13969c.Y0(c13351v.f27698q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public int hashCode() {
            int length = C13351v.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                C13351v c13351v = C13351v.this;
                if (c13351v.f27568l[i11] == 1) {
                    i10 += Vd.b.b(c13351v.f27698q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public double i() {
            return C13351v.this.f27699r;
        }

        @Override
        public boolean i1(InterfaceC13470z interfaceC13470z) {
            return C13351v.this.k0(interfaceC13470z);
        }

        @Override
        public boolean isEmpty() {
            return C13351v.this.f27452b == 0;
        }

        @Override
        public InterfaceC3466y iterator() {
            C13351v c13351v = C13351v.this;
            return new c(c13351v);
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
                if (!C13351v.this.Y0(d10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int size() {
            return C13351v.this.f27452b;
        }

        @Override
        public double[] toArray() {
            return C13351v.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13351v.this.k0(new a(sb2));
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
            return C13351v.this.W(dArr);
        }
    }

    public class f implements Sd.g {

        public class a implements he.S {

            public boolean f89485a = true;

            public final StringBuilder f89486b;

            public a(StringBuilder sb2) {
                this.f89486b = sb2;
            }

            @Override
            public boolean a(int i10) {
                if (this.f89485a) {
                    this.f89485a = false;
                } else {
                    this.f89486b.append(", ");
                }
                this.f89486b.append(i10);
                return true;
            }
        }

        public f() {
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
                if (!C13351v.this.Q(i10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean M1(int[] iArr) {
            Arrays.sort(iArr);
            C13351v c13351v = C13351v.this;
            int[] iArr2 = c13351v.f89473v;
            byte[] bArr = c13351v.f27568l;
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
                    C13351v.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public int[] P0(int[] iArr) {
            return C13351v.this.e0(iArr);
        }

        @Override
        public boolean U0(he.S s10) {
            return C13351v.this.m0(s10);
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
            C13351v.this.clear();
        }

        @Override
        public boolean contains(int i10) {
            return C13351v.this.Q(i10);
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Integer) {
                    if (!C13351v.this.Q(((Integer) obj).intValue())) {
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
        public boolean h2(Sd.g gVar) {
            Zd.Q it = gVar.iterator();
            while (it.hasNext()) {
                if (!C13351v.this.Q(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int i() {
            return C13351v.this.f27700s;
        }

        @Override
        public boolean isEmpty() {
            return C13351v.this.f27452b == 0;
        }

        @Override
        public Zd.Q iterator() {
            C13351v c13351v = C13351v.this;
            return new d(c13351v);
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
            C13351v c13351v = C13351v.this;
            int[] iArr = c13351v.f89473v;
            double[] dArr = c13351v.f27698q;
            int length = iArr.length;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return false;
                }
                double d10 = dArr[i11];
                if (d10 != 0.0d && d10 != 2.0d && i10 == iArr[i11]) {
                    C13351v.this.hf(i11);
                    return true;
                }
                length = i11;
            }
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
            return C13351v.this.f27452b;
        }

        @Override
        public int[] toArray() {
            return C13351v.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13351v.this.m0(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean z2(int[] iArr) {
            throw new UnsupportedOperationException();
        }
    }

    public C13351v() {
    }

    @Override
    public boolean A(double d10) {
        return Y0(d10);
    }

    @Override
    public int N2(double d10, int i10) {
        return zf(d10, i10, pf(d10));
    }

    @Override
    public int N4(double d10, int i10, int i11) {
        int pf2 = pf(d10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            int[] iArr = this.f89473v;
            i11 = iArr[pf2] + i10;
            iArr[pf2] = i11;
            z10 = false;
        } else {
            this.f89473v[pf2] = i11;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27701t);
        }
        return i11;
    }

    @Override
    public boolean Pa(double d10, int i10) {
        int nf2 = nf(d10);
        if (nf2 < 0) {
            return false;
        }
        int[] iArr = this.f89473v;
        iArr[nf2] = iArr[nf2] + i10;
        return true;
    }

    @Override
    public boolean Q(int i10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f89473v;
        int length = iArr.length;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return false;
            }
            if (bArr[i11] == 1 && i10 == iArr[i11]) {
                return true;
            }
            length = i11;
        }
    }

    @Override
    public boolean S5(InterfaceC13467w interfaceC13467w) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f27698q;
        int[] iArr = this.f89473v;
        int length = dArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13467w.a(dArr[i10], iArr[i10])) {
                return false;
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
        double[] dArr2 = this.f27698q;
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
    public boolean W5(InterfaceC13467w interfaceC13467w) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f27698q;
        int[] iArr = this.f89473v;
        kf();
        try {
            int length = dArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !interfaceC13467w.a(dArr[i10], iArr[i10])) {
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
    public int a(double d10) {
        int i10 = this.f27700s;
        int nf2 = nf(d10);
        if (nf2 < 0) {
            return i10;
        }
        int i11 = this.f89473v[nf2];
        hf(nf2);
        return i11;
    }

    @Override
    public void clear() {
        super.clear();
        double[] dArr = this.f27698q;
        Arrays.fill(dArr, 0, dArr.length, this.f27699r);
        int[] iArr = this.f89473v;
        Arrays.fill(iArr, 0, iArr.length, this.f27700s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    @Override
    public int[] e0(int[] iArr) {
        int size = size();
        if (iArr.length < size) {
            iArr = new int[size];
        }
        int[] iArr2 = this.f89473v;
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
    public int e9(double d10, int i10) {
        int pf2 = pf(d10);
        return pf2 < 0 ? this.f89473v[(-pf2) - 1] : zf(d10, i10, pf2);
    }

    public boolean equals(Object obj) {
        int p02;
        int i10;
        if (!(obj instanceof InterfaceC13079u)) {
            return false;
        }
        InterfaceC13079u interfaceC13079u = (InterfaceC13079u) obj;
        if (interfaceC13079u.size() != size()) {
            return false;
        }
        int[] iArr = this.f89473v;
        byte[] bArr = this.f27568l;
        int i11 = i();
        int i12 = interfaceC13079u.i();
        int length = iArr.length;
        while (true) {
            int i13 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i13] == 1 && (i10 = iArr[i13]) != (p02 = interfaceC13079u.p0(this.f27698q[i13])) && i10 != i11 && p02 != i12) {
                return false;
            }
            length = i13;
        }
    }

    @Override
    public void f(Ud.e eVar) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f89473v;
        int length = iArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i10] == 1) {
                iArr[i10] = eVar.a(iArr[i10]);
            }
            length = i10;
        }
    }

    @Override
    public void g3(InterfaceC13079u interfaceC13079u) {
        cf(interfaceC13079u.size());
        InterfaceC3465x it = interfaceC13079u.iterator();
        while (it.hasNext()) {
            it.g();
            N2(it.key(), it.value());
        }
    }

    @Override
    public void gf(int i10) {
        double[] dArr = this.f27698q;
        int length = dArr.length;
        int[] iArr = this.f89473v;
        byte[] bArr = this.f27568l;
        this.f27698q = new double[i10];
        this.f89473v = new int[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f89473v[pf(dArr[i11])] = iArr[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f89473v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.b(this.f27698q[i11]) ^ Vd.b.d(this.f89473v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f89473v[i10] = this.f27700s;
        super.hf(i10);
    }

    @Override
    public boolean increment(double d10) {
        return Pa(d10, 1);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public InterfaceC3465x iterator() {
        return new b(this);
    }

    @Override
    public double[] j() {
        double[] dArr = new double[size()];
        double[] dArr2 = this.f27698q;
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
        this.f89473v = new int[jf2];
        return jf2;
    }

    @Override
    public Sd.g k() {
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
    public boolean m0(he.S s10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f89473v;
        int length = iArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !s10.a(iArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public int p0(double d10) {
        int nf2 = nf(d10);
        return nf2 < 0 ? this.f27700s : this.f89473v[nf2];
    }

    @Override
    public void putAll(Map<? extends Double, ? extends Integer> map) {
        cf(map.size());
        for (Map.Entry<? extends Double, ? extends Integer> entry : map.entrySet()) {
            N2(entry.getKey().doubleValue(), entry.getValue().intValue());
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
            N2(objectInput.readDouble(), objectInput.readInt());
            readInt = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        S5(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public int[] values() {
        int[] iArr = new int[size()];
        int[] iArr2 = this.f89473v;
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
                objectOutput.writeDouble(this.f27698q[i10]);
                objectOutput.writeInt(this.f89473v[i10]);
            }
            length = i10;
        }
    }

    public final int zf(double d10, int i10, int i11) {
        int i12 = this.f27700s;
        boolean z10 = true;
        if (i11 < 0) {
            i11 = (-i11) - 1;
            i12 = this.f89473v[i11];
            z10 = false;
        }
        this.f89473v[i11] = i10;
        if (z10) {
            ef(this.f27701t);
        }
        return i12;
    }

    public C13351v(int i10) {
        super(i10);
    }

    public C13351v(int i10, float f10) {
        super(i10, f10);
    }

    public C13351v(int i10, float f10, double d10, int i11) {
        super(i10, f10, d10, i11);
    }

    public C13351v(double[] dArr, int[] iArr) {
        super(Math.max(dArr.length, iArr.length));
        int min = Math.min(dArr.length, iArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            N2(dArr[i10], iArr[i10]);
        }
    }

    public C13351v(InterfaceC13079u interfaceC13079u) {
        super(interfaceC13079u.size());
        if (interfaceC13079u instanceof C13351v) {
            C13351v c13351v = (C13351v) interfaceC13079u;
            this.f27454d = c13351v.f27454d;
            double d10 = c13351v.f27699r;
            this.f27699r = d10;
            this.f27700s = c13351v.f27700s;
            if (d10 != 0.0d) {
                Arrays.fill(this.f27698q, d10);
            }
            int i10 = this.f27700s;
            if (i10 != 0) {
                Arrays.fill(this.f89473v, i10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        g3(interfaceC13079u);
    }
}
