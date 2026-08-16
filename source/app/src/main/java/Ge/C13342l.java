package ge;

import Wd.AbstractC3169l;
import Zd.InterfaceC3456n;
import Zd.InterfaceC3458p;
import ee.InterfaceC13071l;
import he.InterfaceC13458m;
import he.InterfaceC13462q;
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

public class C13342l extends AbstractC3169l implements InterfaceC13071l, Externalizable {

    public static final long f89258w = 1;

    public transient float[] f89259v;

    public class a implements InterfaceC13458m {

        public boolean f89260a = true;

        public final StringBuilder f89261b;

        public a(StringBuilder sb2) {
            this.f89261b = sb2;
        }

        @Override
        public boolean a(char c10, float f10) {
            if (this.f89260a) {
                this.f89260a = false;
            } else {
                this.f89261b.append(", ");
            }
            this.f89261b.append(c10);
            this.f89261b.append("=");
            this.f89261b.append(f10);
            return true;
        }
    }

    public class b extends Wd.J implements InterfaceC3456n {
        public b(C13342l c13342l) {
            super(c13342l);
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public char key() {
            return C13342l.this.f27648q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13342l.this.hf(this.f27465d);
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
            C13342l.this.f89259v[this.f27465d] = f10;
            return value;
        }

        @Override
        public float value() {
            return C13342l.this.f89259v[this.f27465d];
        }
    }

    public class c extends Wd.J implements InterfaceC3458p {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public char next() {
            j();
            return C13342l.this.f27648q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13342l.this.hf(this.f27465d);
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
            return C13342l.this.f89259v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13342l.this.hf(this.f27465d);
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

            public boolean f89267a = true;

            public final StringBuilder f89268b;

            public a(StringBuilder sb2) {
                this.f89268b = sb2;
            }

            @Override
            public boolean a(char c10) {
                if (this.f89267a) {
                    this.f89267a = false;
                } else {
                    this.f89268b.append(", ");
                }
                this.f89268b.append(c10);
                return true;
            }
        }

        public e() {
        }

        @Override
        public char[] Q0(char[] cArr) {
            return C13342l.this.V(cArr);
        }

        @Override
        public boolean X1(char[] cArr) {
            Arrays.sort(cArr);
            C13342l c13342l = C13342l.this;
            char[] cArr2 = c13342l.f27648q;
            byte[] bArr = c13342l.f27568l;
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
                    C13342l.this.hf(i10);
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
            return C13342l.this.f27650s != C13342l.this.b(c10);
        }

        @Override
        public boolean b1(char c10) {
            return C13342l.this.b1(c10);
        }

        @Override
        public void clear() {
            C13342l.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Character) {
                    if (!C13342l.this.C(((Character) obj).charValue())) {
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
            int length = C13342l.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                C13342l c13342l = C13342l.this;
                if (c13342l.f27568l[i10] == 1 && !interfaceC13968b.b1(c13342l.f27648q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public boolean g1(InterfaceC13462q interfaceC13462q) {
            return C13342l.this.y(interfaceC13462q);
        }

        @Override
        public int hashCode() {
            int length = C13342l.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                C13342l c13342l = C13342l.this;
                if (c13342l.f27568l[i11] == 1) {
                    i10 += Vd.b.d(c13342l.f27648q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public char i() {
            return C13342l.this.f27649r;
        }

        @Override
        public boolean isEmpty() {
            return C13342l.this.f27452b == 0;
        }

        @Override
        public InterfaceC3458p iterator() {
            C13342l c13342l = C13342l.this;
            return new c(c13342l);
        }

        @Override
        public boolean n2(char[] cArr) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean p2(Sd.b bVar) {
            InterfaceC3458p it = bVar.iterator();
            while (it.hasNext()) {
                if (!C13342l.this.C(it.next())) {
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
            return C13342l.this.f27452b;
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
            return C13342l.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13342l.this.y(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean u1(char[] cArr) {
            for (char c10 : cArr) {
                if (!C13342l.this.b1(c10)) {
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

    public class f implements Sd.f {

        public class a implements he.I {

            public boolean f89271a = true;

            public final StringBuilder f89272b;

            public a(StringBuilder sb2) {
                this.f89272b = sb2;
            }

            @Override
            public boolean a(float f10) {
                if (this.f89271a) {
                    this.f89271a = false;
                } else {
                    this.f89272b.append(", ");
                }
                this.f89272b.append(f10);
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
                if (!C13342l.this.U(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean L1(float[] fArr) {
            for (float f10 : fArr) {
                if (!C13342l.this.U(f10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean V1(float[] fArr) {
            Arrays.sort(fArr);
            C13342l c13342l = C13342l.this;
            float[] fArr2 = c13342l.f89259v;
            byte[] bArr = c13342l.f27568l;
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
                    C13342l.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean Z0(float f10) {
            return C13342l.this.U(f10);
        }

        @Override
        public boolean addAll(Collection<? extends Float> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean c(float f10) {
            C13342l c13342l = C13342l.this;
            float[] fArr = c13342l.f89259v;
            char[] cArr = c13342l.f27648q;
            int length = fArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                char c10 = cArr[i10];
                if (c10 != 0 && c10 != 2 && f10 == fArr[i10]) {
                    C13342l.this.hf(i10);
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
            C13342l.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Float) {
                    if (!C13342l.this.U(((Float) obj).floatValue())) {
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
            return C13342l.this.f27650s;
        }

        @Override
        public boolean isEmpty() {
            return C13342l.this.f27452b == 0;
        }

        @Override
        public Zd.H iterator() {
            C13342l c13342l = C13342l.this;
            return new d(c13342l);
        }

        @Override
        public boolean k1(he.I i10) {
            return C13342l.this.B(i10);
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
            return C13342l.this.f27452b;
        }

        @Override
        public float[] toArray() {
            return C13342l.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13342l.this.B(new a(sb2));
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
            return C13342l.this.c0(fArr);
        }
    }

    public C13342l() {
    }

    @Override
    public boolean B(he.I i10) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f89259v;
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
    public float B9(char c10, float f10) {
        int pf2 = pf(c10);
        return pf2 < 0 ? this.f89259v[(-pf2) - 1] : zf(c10, f10, pf2);
    }

    @Override
    public boolean C(char c10) {
        return b1(c10);
    }

    @Override
    public float C4(char c10, float f10) {
        return zf(c10, f10, pf(c10));
    }

    @Override
    public boolean D0(char c10) {
        return Sd(c10, 1.0f);
    }

    @Override
    public void E6(InterfaceC13071l interfaceC13071l) {
        cf(interfaceC13071l.size());
        InterfaceC3456n it = interfaceC13071l.iterator();
        while (it.hasNext()) {
            it.g();
            C4(it.key(), it.value());
        }
    }

    @Override
    public float M4(char c10, float f10, float f11) {
        int pf2 = pf(c10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            float[] fArr = this.f89259v;
            float f12 = f10 + fArr[pf2];
            fArr[pf2] = f12;
            z10 = false;
            f11 = f12;
        } else {
            this.f89259v[pf2] = f11;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27651t);
        }
        return f11;
    }

    @Override
    public boolean Sd(char c10, float f10) {
        int nf2 = nf(c10);
        if (nf2 < 0) {
            return false;
        }
        float[] fArr = this.f89259v;
        fArr[nf2] = fArr[nf2] + f10;
        return true;
    }

    @Override
    public boolean U(float f10) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f89259v;
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
    public char[] V(char[] cArr) {
        int size = size();
        if (cArr.length < size) {
            cArr = new char[size];
        }
        char[] cArr2 = this.f27648q;
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
    public boolean X8(InterfaceC13458m interfaceC13458m) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f27648q;
        float[] fArr = this.f89259v;
        int length = cArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13458m.a(cArr[i10], fArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public float b(char c10) {
        float f10 = this.f27650s;
        int nf2 = nf(c10);
        if (nf2 < 0) {
            return f10;
        }
        float f11 = this.f89259v[nf2];
        hf(nf2);
        return f11;
    }

    @Override
    public float[] c0(float[] fArr) {
        int size = size();
        if (fArr.length < size) {
            fArr = new float[size];
        }
        float[] fArr2 = this.f89259v;
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
        char[] cArr = this.f27648q;
        Arrays.fill(cArr, 0, cArr.length, this.f27649r);
        float[] fArr = this.f89259v;
        Arrays.fill(fArr, 0, fArr.length, this.f27650s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof InterfaceC13071l)) {
            return false;
        }
        InterfaceC13071l interfaceC13071l = (InterfaceC13071l) obj;
        if (interfaceC13071l.size() != size()) {
            return false;
        }
        float[] fArr = this.f89259v;
        byte[] bArr = this.f27568l;
        float i10 = i();
        float i11 = interfaceC13071l.i();
        int length = fArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1) {
                float o02 = interfaceC13071l.o0(this.f27648q[i12]);
                float f10 = fArr[i12];
                if (f10 != o02 && f10 != i10 && o02 != i11) {
                    return false;
                }
            }
            length = i12;
        }
    }

    @Override
    public boolean fd(InterfaceC13458m interfaceC13458m) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f27648q;
        float[] fArr = this.f89259v;
        kf();
        try {
            int length = cArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !interfaceC13458m.a(cArr[i10], fArr[i10])) {
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
    public void gf(int i10) {
        char[] cArr = this.f27648q;
        int length = cArr.length;
        float[] fArr = this.f89259v;
        byte[] bArr = this.f27568l;
        this.f27648q = new char[i10];
        this.f89259v = new float[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f89259v[pf(cArr[i11])] = fArr[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f89259v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.d(this.f27648q[i11]) ^ Vd.b.c(this.f89259v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f89259v[i10] = this.f27650s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public InterfaceC3456n iterator() {
        return new b(this);
    }

    @Override
    public char[] j() {
        char[] cArr = new char[size()];
        char[] cArr2 = this.f27648q;
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
        this.f89259v = new float[jf2];
        return jf2;
    }

    @Override
    public Sd.f k() {
        return new f();
    }

    @Override
    public InterfaceC13968b keySet() {
        return new e();
    }

    @Override
    public void n(Ud.d dVar) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f89259v;
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
    public float o0(char c10) {
        int nf2 = nf(c10);
        return nf2 < 0 ? this.f27650s : this.f89259v[nf2];
    }

    @Override
    public void putAll(Map<? extends Character, ? extends Float> map) {
        cf(map.size());
        for (Map.Entry<? extends Character, ? extends Float> entry : map.entrySet()) {
            C4(entry.getKey().charValue(), entry.getValue().floatValue());
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
            C4(objectInput.readChar(), objectInput.readFloat());
            readInt = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        X8(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public float[] values() {
        float[] fArr = new float[size()];
        float[] fArr2 = this.f89259v;
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
                objectOutput.writeChar(this.f27648q[i10]);
                objectOutput.writeFloat(this.f89259v[i10]);
            }
            length = i10;
        }
    }

    @Override
    public boolean y(InterfaceC13462q interfaceC13462q) {
        return g1(interfaceC13462q);
    }

    public final float zf(char c10, float f10, int i10) {
        float f11 = this.f27650s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            f11 = this.f89259v[i10];
            z10 = false;
        }
        this.f89259v[i10] = f10;
        if (z10) {
            ef(this.f27651t);
        }
        return f11;
    }

    public C13342l(int i10) {
        super(i10);
    }

    public C13342l(int i10, float f10) {
        super(i10, f10);
    }

    public C13342l(int i10, float f10, char c10, float f11) {
        super(i10, f10, c10, f11);
    }

    public C13342l(char[] cArr, float[] fArr) {
        super(Math.max(cArr.length, fArr.length));
        int min = Math.min(cArr.length, fArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            C4(cArr[i10], fArr[i10]);
        }
    }

    public C13342l(InterfaceC13071l interfaceC13071l) {
        super(interfaceC13071l.size());
        if (interfaceC13071l instanceof C13342l) {
            C13342l c13342l = (C13342l) interfaceC13071l;
            this.f27454d = c13342l.f27454d;
            char c10 = c13342l.f27649r;
            this.f27649r = c10;
            this.f27650s = c13342l.f27650s;
            if (c10 != 0) {
                Arrays.fill(this.f27648q, c10);
            }
            float f10 = this.f27650s;
            if (f10 != 0.0f) {
                Arrays.fill(this.f89259v, f10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        E6(interfaceC13071l);
    }
}
