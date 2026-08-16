package ge;

import Wd.AbstractC3168k;
import Zd.InterfaceC3455m;
import Zd.InterfaceC3458p;
import Zd.InterfaceC3466y;
import ee.InterfaceC13070k;
import he.InterfaceC13457l;
import he.InterfaceC13462q;
import he.InterfaceC13470z;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Map;
import ke.InterfaceC13968b;
import org.apache.commons.math3.geometry.VectorFormat;

public class C13341k extends AbstractC3168k implements InterfaceC13070k, Externalizable {

    public static final long f89226w = 1;

    public transient double[] f89227v;

    public class a implements InterfaceC13457l {

        public boolean f89228a = true;

        public final StringBuilder f89229b;

        public a(StringBuilder sb2) {
            this.f89229b = sb2;
        }

        @Override
        public boolean a(char c10, double d10) {
            if (this.f89228a) {
                this.f89228a = false;
            } else {
                this.f89229b.append(", ");
            }
            this.f89229b.append(c10);
            this.f89229b.append("=");
            this.f89229b.append(d10);
            return true;
        }
    }

    public class b extends Wd.J implements InterfaceC3455m {
        public b(C13341k c13341k) {
            super(c13341k);
        }

        @Override
        public double f(double d10) {
            double value = value();
            C13341k.this.f89227v[this.f27465d] = d10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public char key() {
            return C13341k.this.f27638q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13341k.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public double value() {
            return C13341k.this.f89227v[this.f27465d];
        }
    }

    public class c extends Wd.J implements InterfaceC3458p {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public char next() {
            j();
            return C13341k.this.f27638q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13341k.this.hf(this.f27465d);
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
            return C13341k.this.f89227v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13341k.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class e implements InterfaceC13968b {

        public class a implements InterfaceC13462q {

            public boolean f89235a = true;

            public final StringBuilder f89236b;

            public a(StringBuilder sb2) {
                this.f89236b = sb2;
            }

            @Override
            public boolean a(char c10) {
                if (this.f89235a) {
                    this.f89235a = false;
                } else {
                    this.f89236b.append(", ");
                }
                this.f89236b.append(c10);
                return true;
            }
        }

        public e() {
        }

        @Override
        public char[] Q0(char[] cArr) {
            return C13341k.this.V(cArr);
        }

        @Override
        public boolean X1(char[] cArr) {
            Arrays.sort(cArr);
            C13341k c13341k = C13341k.this;
            char[] cArr2 = c13341k.f27638q;
            byte[] bArr = c13341k.f27568l;
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
                    C13341k.this.hf(i10);
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
            return C13341k.this.f27640s != C13341k.this.b(c10);
        }

        @Override
        public boolean b1(char c10) {
            return C13341k.this.b1(c10);
        }

        @Override
        public void clear() {
            C13341k.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Character) {
                    if (!C13341k.this.C(((Character) obj).charValue())) {
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
        public boolean equals(Object obj) {
            if (!(obj instanceof InterfaceC13968b)) {
                return false;
            }
            InterfaceC13968b interfaceC13968b = (InterfaceC13968b) obj;
            if (interfaceC13968b.size() != size()) {
                return false;
            }
            int length = C13341k.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                C13341k c13341k = C13341k.this;
                if (c13341k.f27568l[i10] == 1 && !interfaceC13968b.b1(c13341k.f27638q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public boolean g1(InterfaceC13462q interfaceC13462q) {
            return C13341k.this.y(interfaceC13462q);
        }

        @Override
        public int hashCode() {
            int length = C13341k.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                C13341k c13341k = C13341k.this;
                if (c13341k.f27568l[i11] == 1) {
                    i10 += Vd.b.d(c13341k.f27638q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public char i() {
            return C13341k.this.f27639r;
        }

        @Override
        public boolean isEmpty() {
            return C13341k.this.f27452b == 0;
        }

        @Override
        public InterfaceC3458p iterator() {
            C13341k c13341k = C13341k.this;
            return new c(c13341k);
        }

        @Override
        public boolean n2(char[] cArr) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean p2(Sd.b bVar) {
            InterfaceC3458p it = bVar.iterator();
            while (it.hasNext()) {
                if (!C13341k.this.C(it.next())) {
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
            return C13341k.this.f27452b;
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
            return C13341k.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13341k.this.y(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean u1(char[] cArr) {
            for (char c10 : cArr) {
                if (!C13341k.this.b1(c10)) {
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

    public class f implements Sd.e {

        public class a implements InterfaceC13470z {

            public boolean f89239a = true;

            public final StringBuilder f89240b;

            public a(StringBuilder sb2) {
                this.f89240b = sb2;
            }

            @Override
            public boolean a(double d10) {
                if (this.f89239a) {
                    this.f89239a = false;
                } else {
                    this.f89240b.append(", ");
                }
                this.f89240b.append(d10);
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
                if (!C13341k.this.T(it.next())) {
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
            return C13341k.this.T(d10);
        }

        @Override
        public boolean Y1(double[] dArr) {
            Arrays.sort(dArr);
            C13341k c13341k = C13341k.this;
            double[] dArr2 = c13341k.f89227v;
            byte[] bArr = c13341k.f27568l;
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
                    C13341k.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean a(double d10) {
            C13341k c13341k = C13341k.this;
            double[] dArr = c13341k.f89227v;
            char[] cArr = c13341k.f27638q;
            int length = dArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                char c10 = cArr[i10];
                if (c10 != 0 && c10 != 2 && d10 == dArr[i10]) {
                    C13341k.this.hf(i10);
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
            C13341k.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Double) {
                    if (!C13341k.this.T(((Double) obj).doubleValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public double i() {
            return C13341k.this.f27640s;
        }

        @Override
        public boolean i1(InterfaceC13470z interfaceC13470z) {
            return C13341k.this.I(interfaceC13470z);
        }

        @Override
        public boolean isEmpty() {
            return C13341k.this.f27452b == 0;
        }

        @Override
        public InterfaceC3466y iterator() {
            C13341k c13341k = C13341k.this;
            return new d(c13341k);
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
                if (!C13341k.this.T(d10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int size() {
            return C13341k.this.f27452b;
        }

        @Override
        public double[] toArray() {
            return C13341k.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13341k.this.I(new a(sb2));
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
            return C13341k.this.b0(dArr);
        }
    }

    public C13341k() {
    }

    @Override
    public double A9(char c10, double d10) {
        int pf2 = pf(c10);
        return pf2 < 0 ? this.f89227v[(-pf2) - 1] : zf(c10, d10, pf2);
    }

    @Override
    public double B4(char c10, double d10) {
        return zf(c10, d10, pf(c10));
    }

    @Override
    public boolean C(char c10) {
        return b1(c10);
    }

    @Override
    public double C5(char c10, double d10, double d11) {
        int pf2 = pf(c10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            double[] dArr = this.f89227v;
            double d12 = d10 + dArr[pf2];
            dArr[pf2] = d12;
            z10 = false;
            d11 = d12;
        } else {
            this.f89227v[pf2] = d11;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27641t);
        }
        return d11;
    }

    @Override
    public boolean D0(char c10) {
        return Ud(c10, 1.0d);
    }

    @Override
    public boolean Hd(InterfaceC13457l interfaceC13457l) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f27638q;
        double[] dArr = this.f89227v;
        int length = cArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13457l.a(cArr[i10], dArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean I(InterfaceC13470z interfaceC13470z) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f89227v;
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
    public boolean M8(InterfaceC13457l interfaceC13457l) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f27638q;
        double[] dArr = this.f89227v;
        kf();
        try {
            int length = cArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !interfaceC13457l.a(cArr[i10], dArr[i10])) {
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
    public boolean T(double d10) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f89227v;
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
    public boolean Ud(char c10, double d10) {
        int nf2 = nf(c10);
        if (nf2 < 0) {
            return false;
        }
        double[] dArr = this.f89227v;
        dArr[nf2] = dArr[nf2] + d10;
        return true;
    }

    @Override
    public char[] V(char[] cArr) {
        int size = size();
        if (cArr.length < size) {
            cArr = new char[size];
        }
        char[] cArr2 = this.f27638q;
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
    public double b(char c10) {
        double d10 = this.f27640s;
        int nf2 = nf(c10);
        if (nf2 < 0) {
            return d10;
        }
        double d11 = this.f89227v[nf2];
        hf(nf2);
        return d11;
    }

    @Override
    public double[] b0(double[] dArr) {
        int size = size();
        if (dArr.length < size) {
            dArr = new double[size];
        }
        double[] dArr2 = this.f89227v;
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
        char[] cArr = this.f27638q;
        Arrays.fill(cArr, 0, cArr.length, this.f27639r);
        double[] dArr = this.f89227v;
        Arrays.fill(dArr, 0, dArr.length, this.f27640s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof InterfaceC13070k)) {
            return false;
        }
        InterfaceC13070k interfaceC13070k = (InterfaceC13070k) obj;
        if (interfaceC13070k.size() != size()) {
            return false;
        }
        double[] dArr = this.f89227v;
        byte[] bArr = this.f27568l;
        double i10 = i();
        double i11 = interfaceC13070k.i();
        int length = dArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1) {
                double o02 = interfaceC13070k.o0(this.f27638q[i12]);
                double d10 = dArr[i12];
                if (d10 != o02 && d10 != i10 && o02 != i11) {
                    return false;
                }
            }
            length = i12;
        }
    }

    @Override
    public void gf(int i10) {
        char[] cArr = this.f27638q;
        int length = cArr.length;
        double[] dArr = this.f89227v;
        byte[] bArr = this.f27568l;
        this.f27638q = new char[i10];
        this.f89227v = new double[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f89227v[pf(cArr[i11])] = dArr[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f89227v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.d(this.f27638q[i11]) ^ Vd.b.b(this.f89227v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f89227v[i10] = this.f27640s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public InterfaceC3455m iterator() {
        return new b(this);
    }

    @Override
    public char[] j() {
        char[] cArr = new char[size()];
        char[] cArr2 = this.f27638q;
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
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f89227v = new double[jf2];
        return jf2;
    }

    @Override
    public Sd.e k() {
        return new f();
    }

    @Override
    public InterfaceC13968b keySet() {
        return new e();
    }

    @Override
    public void l6(InterfaceC13070k interfaceC13070k) {
        cf(interfaceC13070k.size());
        InterfaceC3455m it = interfaceC13070k.iterator();
        while (it.hasNext()) {
            it.g();
            B4(it.key(), it.value());
        }
    }

    @Override
    public double o0(char c10) {
        int nf2 = nf(c10);
        return nf2 < 0 ? this.f27640s : this.f89227v[nf2];
    }

    @Override
    public void p(Ud.c cVar) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f89227v;
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
    public void putAll(Map<? extends Character, ? extends Double> map) {
        cf(map.size());
        for (Map.Entry<? extends Character, ? extends Double> entry : map.entrySet()) {
            B4(entry.getKey().charValue(), entry.getValue().doubleValue());
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
            B4(objectInput.readChar(), objectInput.readDouble());
            readInt = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        Hd(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public double[] values() {
        double[] dArr = new double[size()];
        double[] dArr2 = this.f89227v;
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
                objectOutput.writeChar(this.f27638q[i10]);
                objectOutput.writeDouble(this.f89227v[i10]);
            }
            length = i10;
        }
    }

    @Override
    public boolean y(InterfaceC13462q interfaceC13462q) {
        return g1(interfaceC13462q);
    }

    public final double zf(char c10, double d10, int i10) {
        double d11 = this.f27640s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            d11 = this.f89227v[i10];
            z10 = false;
        }
        this.f89227v[i10] = d10;
        if (z10) {
            ef(this.f27641t);
        }
        return d11;
    }

    public C13341k(int i10) {
        super(i10);
    }

    public C13341k(int i10, float f10) {
        super(i10, f10);
    }

    public C13341k(int i10, float f10, char c10, double d10) {
        super(i10, f10, c10, d10);
    }

    public C13341k(char[] cArr, double[] dArr) {
        super(Math.max(cArr.length, dArr.length));
        int min = Math.min(cArr.length, dArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            B4(cArr[i10], dArr[i10]);
        }
    }

    public C13341k(InterfaceC13070k interfaceC13070k) {
        super(interfaceC13070k.size());
        if (interfaceC13070k instanceof C13341k) {
            C13341k c13341k = (C13341k) interfaceC13070k;
            this.f27454d = c13341k.f27454d;
            char c10 = c13341k.f27639r;
            this.f27639r = c10;
            this.f27640s = c13341k.f27640s;
            if (c10 != 0) {
                Arrays.fill(this.f27638q, c10);
            }
            double d10 = this.f27640s;
            if (d10 != 0.0d) {
                Arrays.fill(this.f89227v, d10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        l6(interfaceC13070k);
    }
}
