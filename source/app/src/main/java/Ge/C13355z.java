package ge;

import Wd.AbstractC3182z;
import Zd.InterfaceC3449g;
import ee.InterfaceC13083y;
import he.InterfaceC13445B;
import he.InterfaceC13453h;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Map;
import ke.InterfaceC13970d;
import org.apache.commons.math3.geometry.VectorFormat;

public class C13355z extends AbstractC3182z implements InterfaceC13083y, Externalizable {

    public static final long f89538w = 1;

    public transient byte[] f89539v;

    public class a implements InterfaceC13445B {

        public boolean f89540a = true;

        public final StringBuilder f89541b;

        public a(StringBuilder sb2) {
            this.f89541b = sb2;
        }

        @Override
        public boolean a(float f10, byte b10) {
            if (this.f89540a) {
                this.f89540a = false;
            } else {
                this.f89541b.append(", ");
            }
            this.f89541b.append(f10);
            this.f89541b.append("=");
            this.f89541b.append((int) b10);
            return true;
        }
    }

    public class b extends Wd.J implements Zd.C {
        public b(C13355z c13355z) {
            super(c13355z);
        }

        @Override
        public byte b(byte b10) {
            byte value = value();
            C13355z.this.f89539v[this.f27465d] = b10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public float key() {
            return C13355z.this.f27713q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13355z.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public byte value() {
            return C13355z.this.f89539v[this.f27465d];
        }
    }

    public class c extends Wd.J implements Zd.H {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public float next() {
            j();
            return C13355z.this.f27713q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13355z.this.hf(this.f27465d);
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
            return C13355z.this.f89539v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13355z.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class e implements InterfaceC13970d {

        public class a implements he.I {

            public boolean f89547a = true;

            public final StringBuilder f89548b;

            public a(StringBuilder sb2) {
                this.f89548b = sb2;
            }

            @Override
            public boolean a(float f10) {
                if (this.f89547a) {
                    this.f89547a = false;
                } else {
                    this.f89548b.append(", ");
                }
                this.f89548b.append(f10);
                return true;
            }
        }

        public e() {
        }

        @Override
        public boolean C2(Sd.f fVar) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean D1(Sd.f fVar) {
            Zd.H it = fVar.iterator();
            while (it.hasNext()) {
                if (!C13355z.this.H(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean L1(float[] fArr) {
            for (float f10 : fArr) {
                if (!C13355z.this.Z0(f10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean V1(float[] fArr) {
            Arrays.sort(fArr);
            C13355z c13355z = C13355z.this;
            float[] fArr2 = c13355z.f27713q;
            byte[] bArr = c13355z.f27568l;
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
                    C13355z.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean Z0(float f10) {
            return C13355z.this.Z0(f10);
        }

        @Override
        public boolean addAll(Collection<? extends Float> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean c(float f10) {
            return C13355z.this.f27715s != C13355z.this.c(f10);
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
            C13355z.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Float) {
                    if (!C13355z.this.H(((Float) obj).floatValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean equals(Object obj) {
            if (!(obj instanceof InterfaceC13970d)) {
                return false;
            }
            InterfaceC13970d interfaceC13970d = (InterfaceC13970d) obj;
            if (interfaceC13970d.size() != size()) {
                return false;
            }
            int length = C13355z.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                C13355z c13355z = C13355z.this;
                if (c13355z.f27568l[i10] == 1 && !interfaceC13970d.Z0(c13355z.f27713q[i10])) {
                    return false;
                }
                length = i10;
            }
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
        public int hashCode() {
            int length = C13355z.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                C13355z c13355z = C13355z.this;
                if (c13355z.f27568l[i11] == 1) {
                    i10 += Vd.b.c(c13355z.f27713q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public float i() {
            return C13355z.this.f27714r;
        }

        @Override
        public boolean isEmpty() {
            return C13355z.this.f27452b == 0;
        }

        @Override
        public Zd.H iterator() {
            C13355z c13355z = C13355z.this;
            return new c(c13355z);
        }

        @Override
        public boolean k1(he.I i10) {
            return C13355z.this.j0(i10);
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
            return C13355z.this.f27452b;
        }

        @Override
        public float[] toArray() {
            return C13355z.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13355z.this.j0(new a(sb2));
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
            return C13355z.this.d0(fArr);
        }
    }

    public class f implements Sd.a {

        public class a implements InterfaceC13453h {

            public boolean f89551a = true;

            public final StringBuilder f89552b;

            public a(StringBuilder sb2) {
                this.f89552b = sb2;
            }

            @Override
            public boolean a(byte b10) {
                if (this.f89551a) {
                    this.f89551a = false;
                } else {
                    this.f89552b.append(", ");
                }
                this.f89552b.append((int) b10);
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
            return C13355z.this.a0(bArr);
        }

        @Override
        public boolean V0(InterfaceC13453h interfaceC13453h) {
            return C13355z.this.M(interfaceC13453h);
        }

        @Override
        public boolean W1(byte[] bArr) {
            Arrays.sort(bArr);
            C13355z c13355z = C13355z.this;
            byte[] bArr2 = c13355z.f89539v;
            byte[] bArr3 = c13355z.f27568l;
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
                    C13355z.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean a1(byte b10) {
            return C13355z.this.P(b10);
        }

        @Override
        public boolean addAll(Collection<? extends Byte> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C13355z.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Byte) {
                    if (!C13355z.this.P(((Byte) obj).byteValue())) {
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
            return C13355z.this.f27715s;
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
            return C13355z.this.f27452b == 0;
        }

        @Override
        public InterfaceC3449g iterator() {
            C13355z c13355z = C13355z.this;
            return new d(c13355z);
        }

        @Override
        public boolean m(byte b10) {
            C13355z c13355z = C13355z.this;
            byte[] bArr = c13355z.f89539v;
            float[] fArr = c13355z.f27713q;
            int length = bArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                float f10 = fArr[i10];
                if (f10 != 0.0f && f10 != 2.0f && b10 == bArr[i10]) {
                    C13355z.this.hf(i10);
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
            return C13355z.this.f27452b;
        }

        @Override
        public boolean t1(byte[] bArr) {
            for (byte b10 : bArr) {
                if (!C13355z.this.P(b10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public byte[] toArray() {
            return C13355z.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13355z.this.M(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean w2(Sd.a aVar) {
            InterfaceC3449g it = aVar.iterator();
            while (it.hasNext()) {
                if (!C13355z.this.P(it.next())) {
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

    public C13355z() {
    }

    @Override
    public byte D5(float f10, byte b10) {
        return zf(f10, b10, pf(f10));
    }

    @Override
    public boolean G0(float f10) {
        return K9(f10, (byte) 1);
    }

    @Override
    public boolean H(float f10) {
        return Z0(f10);
    }

    @Override
    public boolean K9(float f10, byte b10) {
        int nf2 = nf(f10);
        if (nf2 < 0) {
            return false;
        }
        byte[] bArr = this.f89539v;
        bArr[nf2] = (byte) (bArr[nf2] + b10);
        return true;
    }

    @Override
    public boolean M(InterfaceC13453h interfaceC13453h) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f89539v;
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
    public void Ma(InterfaceC13083y interfaceC13083y) {
        cf(interfaceC13083y.size());
        Zd.C it = interfaceC13083y.iterator();
        while (it.hasNext()) {
            it.g();
            D5(it.key(), it.value());
        }
    }

    @Override
    public boolean P(byte b10) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f89539v;
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
    public byte Qa(float f10, byte b10, byte b11) {
        int pf2 = pf(f10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            byte[] bArr = this.f89539v;
            byte b12 = (byte) (bArr[pf2] + b10);
            bArr[pf2] = b12;
            z10 = false;
            b11 = b12;
        } else {
            this.f89539v[pf2] = b11;
        }
        byte b13 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27716t);
        }
        return b11;
    }

    @Override
    public boolean Za(InterfaceC13445B interfaceC13445B) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f27713q;
        byte[] bArr2 = this.f89539v;
        kf();
        try {
            int length = fArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !interfaceC13445B.a(fArr[i10], bArr2[i10])) {
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
    public byte[] a0(byte[] bArr) {
        int size = size();
        if (bArr.length < size) {
            bArr = new byte[size];
        }
        byte[] bArr2 = this.f89539v;
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
    public byte c(float f10) {
        byte b10 = this.f27715s;
        int nf2 = nf(f10);
        if (nf2 < 0) {
            return b10;
        }
        byte b11 = this.f89539v[nf2];
        hf(nf2);
        return b11;
    }

    @Override
    public void clear() {
        super.clear();
        float[] fArr = this.f27713q;
        Arrays.fill(fArr, 0, fArr.length, this.f27714r);
        byte[] bArr = this.f89539v;
        Arrays.fill(bArr, 0, bArr.length, this.f27715s);
        byte[] bArr2 = this.f27568l;
        Arrays.fill(bArr2, 0, bArr2.length, (byte) 0);
    }

    @Override
    public float[] d0(float[] fArr) {
        int size = size();
        if (fArr.length < size) {
            fArr = new float[size];
        }
        float[] fArr2 = this.f27713q;
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

    public boolean equals(Object obj) {
        byte q02;
        byte b10;
        if (!(obj instanceof InterfaceC13083y)) {
            return false;
        }
        InterfaceC13083y interfaceC13083y = (InterfaceC13083y) obj;
        if (interfaceC13083y.size() != size()) {
            return false;
        }
        byte[] bArr = this.f89539v;
        byte[] bArr2 = this.f27568l;
        byte i10 = i();
        byte i11 = interfaceC13083y.i();
        int length = bArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr2[i12] == 1 && (b10 = bArr[i12]) != (q02 = interfaceC13083y.q0(this.f27713q[i12])) && b10 != i10 && q02 != i11) {
                return false;
            }
            length = i12;
        }
    }

    @Override
    public void gf(int i10) {
        float[] fArr = this.f27713q;
        int length = fArr.length;
        byte[] bArr = this.f89539v;
        byte[] bArr2 = this.f27568l;
        this.f27713q = new float[i10];
        this.f89539v = new byte[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr2[i11] == 1) {
                this.f89539v[pf(fArr[i11])] = bArr[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f89539v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.c(this.f27713q[i11]) ^ Vd.b.d(this.f89539v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f89539v[i10] = this.f27715s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public Zd.C iterator() {
        return new b(this);
    }

    @Override
    public float[] j() {
        float[] fArr = new float[size()];
        float[] fArr2 = this.f27713q;
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
    public boolean j0(he.I i10) {
        return k1(i10);
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f89539v = new byte[jf2];
        return jf2;
    }

    @Override
    public Sd.a k() {
        return new f();
    }

    @Override
    public boolean kc(InterfaceC13445B interfaceC13445B) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f27713q;
        byte[] bArr2 = this.f89539v;
        int length = fArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13445B.a(fArr[i10], bArr2[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public InterfaceC13970d keySet() {
        return new e();
    }

    @Override
    public void putAll(Map<? extends Float, ? extends Byte> map) {
        cf(map.size());
        for (Map.Entry<? extends Float, ? extends Byte> entry : map.entrySet()) {
            D5(entry.getKey().floatValue(), entry.getValue().byteValue());
        }
    }

    @Override
    public byte q0(float f10) {
        int nf2 = nf(f10);
        return nf2 < 0 ? this.f27715s : this.f89539v[nf2];
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
            D5(objectInput.readFloat(), objectInput.readByte());
            readInt = i10;
        }
    }

    @Override
    public void s(Ud.a aVar) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f89539v;
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
        kc(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public byte[] values() {
        byte[] bArr = new byte[size()];
        byte[] bArr2 = this.f89539v;
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
    public byte we(float f10, byte b10) {
        int pf2 = pf(f10);
        return pf2 < 0 ? this.f89539v[(-pf2) - 1] : zf(f10, b10, pf2);
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
                objectOutput.writeFloat(this.f27713q[i10]);
                objectOutput.writeByte(this.f89539v[i10]);
            }
            length = i10;
        }
    }

    public final byte zf(float f10, byte b10, int i10) {
        byte b11 = this.f27715s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            b11 = this.f89539v[i10];
            z10 = false;
        }
        this.f89539v[i10] = b10;
        if (z10) {
            ef(this.f27716t);
        }
        return b11;
    }

    public C13355z(int i10) {
        super(i10);
    }

    public C13355z(int i10, float f10) {
        super(i10, f10);
    }

    public C13355z(int i10, float f10, float f11, byte b10) {
        super(i10, f10, f11, b10);
    }

    public C13355z(float[] fArr, byte[] bArr) {
        super(Math.max(fArr.length, bArr.length));
        int min = Math.min(fArr.length, bArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            D5(fArr[i10], bArr[i10]);
        }
    }

    public C13355z(InterfaceC13083y interfaceC13083y) {
        super(interfaceC13083y.size());
        if (interfaceC13083y instanceof C13355z) {
            C13355z c13355z = (C13355z) interfaceC13083y;
            this.f27454d = c13355z.f27454d;
            float f10 = c13355z.f27714r;
            this.f27714r = f10;
            this.f27715s = c13355z.f27715s;
            if (f10 != 0.0f) {
                Arrays.fill(this.f27713q, f10);
            }
            byte b10 = this.f27715s;
            if (b10 != 0) {
                Arrays.fill(this.f89539v, b10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        Ma(interfaceC13083y);
    }
}
