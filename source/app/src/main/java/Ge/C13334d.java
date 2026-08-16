package ge;

import Wd.AbstractC3161d;
import Zd.InterfaceC3447e;
import Zd.InterfaceC3449g;
import ee.InterfaceC13063d;
import he.InterfaceC13449d;
import he.InterfaceC13453h;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Map;
import ke.InterfaceC13967a;
import org.apache.commons.math3.geometry.VectorFormat;

public class C13334d extends AbstractC3161d implements InterfaceC13063d, Externalizable {

    public static final long f88988w = 1;

    public transient float[] f88989v;

    public class a implements InterfaceC13449d {

        public boolean f88990a = true;

        public final StringBuilder f88991b;

        public a(StringBuilder sb2) {
            this.f88991b = sb2;
        }

        @Override
        public boolean a(byte b10, float f10) {
            if (this.f88990a) {
                this.f88990a = false;
            } else {
                this.f88991b.append(", ");
            }
            this.f88991b.append((int) b10);
            this.f88991b.append("=");
            this.f88991b.append(f10);
            return true;
        }
    }

    public class b extends Wd.J implements InterfaceC3447e {
        public b(C13334d c13334d) {
            super(c13334d);
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public byte key() {
            return C13334d.this.f27570q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13334d.this.hf(this.f27465d);
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
            C13334d.this.f88989v[this.f27465d] = f10;
            return value;
        }

        @Override
        public float value() {
            return C13334d.this.f88989v[this.f27465d];
        }
    }

    public class c extends Wd.J implements InterfaceC3449g {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public byte next() {
            j();
            return C13334d.this.f27570q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13334d.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class C1714d extends Wd.J implements Zd.H {
        public C1714d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public float next() {
            j();
            return C13334d.this.f88989v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13334d.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class e implements InterfaceC13967a {

        public class a implements InterfaceC13453h {

            public boolean f88997a = true;

            public final StringBuilder f88998b;

            public a(StringBuilder sb2) {
                this.f88998b = sb2;
            }

            @Override
            public boolean a(byte b10) {
                if (this.f88997a) {
                    this.f88997a = false;
                } else {
                    this.f88998b.append(", ");
                }
                this.f88998b.append((int) b10);
                return true;
            }
        }

        public e() {
        }

        @Override
        public boolean E1(Sd.a aVar) {
            throw new UnsupportedOperationException();
        }

        @Override
        public byte[] R0(byte[] bArr) {
            return C13334d.this.X(bArr);
        }

        @Override
        public boolean V0(InterfaceC13453h interfaceC13453h) {
            return C13334d.this.w(interfaceC13453h);
        }

        @Override
        public boolean W1(byte[] bArr) {
            Arrays.sort(bArr);
            C13334d c13334d = C13334d.this;
            byte[] bArr2 = c13334d.f27570q;
            byte[] bArr3 = c13334d.f27568l;
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
                    C13334d.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean a1(byte b10) {
            return C13334d.this.a1(b10);
        }

        @Override
        public boolean addAll(Collection<? extends Byte> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C13334d.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Byte) {
                    if (!C13334d.this.D(((Byte) obj).byteValue())) {
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
        public boolean equals(Object obj) {
            if (!(obj instanceof InterfaceC13967a)) {
                return false;
            }
            InterfaceC13967a interfaceC13967a = (InterfaceC13967a) obj;
            if (interfaceC13967a.size() != size()) {
                return false;
            }
            int length = C13334d.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                C13334d c13334d = C13334d.this;
                if (c13334d.f27568l[i10] == 1 && !interfaceC13967a.a1(c13334d.f27570q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public int hashCode() {
            int length = C13334d.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                C13334d c13334d = C13334d.this;
                if (c13334d.f27568l[i11] == 1) {
                    i10 += Vd.b.d(c13334d.f27570q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public byte i() {
            return C13334d.this.f27571r;
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
            return C13334d.this.f27452b == 0;
        }

        @Override
        public InterfaceC3449g iterator() {
            C13334d c13334d = C13334d.this;
            return new c(c13334d);
        }

        @Override
        public boolean m(byte b10) {
            return C13334d.this.f27572s != C13334d.this.m(b10);
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
            return C13334d.this.f27452b;
        }

        @Override
        public boolean t1(byte[] bArr) {
            for (byte b10 : bArr) {
                if (!C13334d.this.a1(b10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public byte[] toArray() {
            return C13334d.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13334d.this.w(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean w2(Sd.a aVar) {
            InterfaceC3449g it = aVar.iterator();
            while (it.hasNext()) {
                if (!C13334d.this.D(it.next())) {
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

    public class f implements Sd.f {

        public class a implements he.I {

            public boolean f89001a = true;

            public final StringBuilder f89002b;

            public a(StringBuilder sb2) {
                this.f89002b = sb2;
            }

            @Override
            public boolean a(float f10) {
                if (this.f89001a) {
                    this.f89001a = false;
                } else {
                    this.f89002b.append(", ");
                }
                this.f89002b.append(f10);
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
                if (!C13334d.this.U(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean L1(float[] fArr) {
            for (float f10 : fArr) {
                if (!C13334d.this.U(f10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean V1(float[] fArr) {
            Arrays.sort(fArr);
            C13334d c13334d = C13334d.this;
            float[] fArr2 = c13334d.f88989v;
            byte[] bArr = c13334d.f27568l;
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
                    C13334d.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean Z0(float f10) {
            return C13334d.this.U(f10);
        }

        @Override
        public boolean addAll(Collection<? extends Float> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean c(float f10) {
            C13334d c13334d = C13334d.this;
            float[] fArr = c13334d.f88989v;
            byte[] bArr = c13334d.f27570q;
            int length = fArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                byte b10 = bArr[i10];
                if (b10 != 0 && b10 != 2 && f10 == fArr[i10]) {
                    C13334d.this.hf(i10);
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
            C13334d.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Float) {
                    if (!C13334d.this.U(((Float) obj).floatValue())) {
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
            return C13334d.this.f27572s;
        }

        @Override
        public boolean isEmpty() {
            return C13334d.this.f27452b == 0;
        }

        @Override
        public Zd.H iterator() {
            C13334d c13334d = C13334d.this;
            return new C1714d(c13334d);
        }

        @Override
        public boolean k1(he.I i10) {
            return C13334d.this.B(i10);
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
            return C13334d.this.f27452b;
        }

        @Override
        public float[] toArray() {
            return C13334d.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13334d.this.B(new a(sb2));
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
            return C13334d.this.c0(fArr);
        }
    }

    public C13334d() {
    }

    @Override
    public boolean B(he.I i10) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f88989v;
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
    public boolean D(byte b10) {
        return a1(b10);
    }

    @Override
    public boolean E0(byte b10) {
        return he(b10, 1.0f);
    }

    @Override
    public boolean U(float f10) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f88989v;
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
    public float V3(byte b10, float f10) {
        return zf(b10, f10, pf(b10));
    }

    @Override
    public byte[] X(byte[] bArr) {
        int size = size();
        if (bArr.length < size) {
            bArr = new byte[size];
        }
        byte[] bArr2 = this.f27570q;
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
    public float X9(byte b10, float f10) {
        int pf2 = pf(b10);
        return pf2 < 0 ? this.f88989v[(-pf2) - 1] : zf(b10, f10, pf2);
    }

    @Override
    public float[] c0(float[] fArr) {
        int size = size();
        if (fArr.length < size) {
            fArr = new float[size];
        }
        float[] fArr2 = this.f88989v;
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
        byte[] bArr = this.f27570q;
        Arrays.fill(bArr, 0, bArr.length, this.f27571r);
        float[] fArr = this.f88989v;
        Arrays.fill(fArr, 0, fArr.length, this.f27572s);
        byte[] bArr2 = this.f27568l;
        Arrays.fill(bArr2, 0, bArr2.length, (byte) 0);
    }

    @Override
    public void d9(InterfaceC13063d interfaceC13063d) {
        cf(interfaceC13063d.size());
        InterfaceC3447e it = interfaceC13063d.iterator();
        while (it.hasNext()) {
            it.g();
            V3(it.key(), it.value());
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof InterfaceC13063d)) {
            return false;
        }
        InterfaceC13063d interfaceC13063d = (InterfaceC13063d) obj;
        if (interfaceC13063d.size() != size()) {
            return false;
        }
        float[] fArr = this.f88989v;
        byte[] bArr = this.f27568l;
        float i10 = i();
        float i11 = interfaceC13063d.i();
        int length = fArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1) {
                float s02 = interfaceC13063d.s0(this.f27570q[i12]);
                float f10 = fArr[i12];
                if (f10 != s02 && f10 != i10 && s02 != i11) {
                    return false;
                }
            }
            length = i12;
        }
    }

    @Override
    public void gf(int i10) {
        byte[] bArr = this.f27570q;
        int length = bArr.length;
        float[] fArr = this.f88989v;
        byte[] bArr2 = this.f27568l;
        this.f27570q = new byte[i10];
        this.f88989v = new float[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr2[i11] == 1) {
                this.f88989v[pf(bArr[i11])] = fArr[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f88989v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.d(this.f27570q[i11]) ^ Vd.b.c(this.f88989v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public boolean he(byte b10, float f10) {
        int nf2 = nf(b10);
        if (nf2 < 0) {
            return false;
        }
        float[] fArr = this.f88989v;
        fArr[nf2] = fArr[nf2] + f10;
        return true;
    }

    @Override
    public void hf(int i10) {
        this.f88989v[i10] = this.f27572s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public InterfaceC3447e iterator() {
        return new b(this);
    }

    @Override
    public byte[] j() {
        byte[] bArr = new byte[size()];
        byte[] bArr2 = this.f27570q;
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
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f88989v = new float[jf2];
        return jf2;
    }

    @Override
    public Sd.f k() {
        return new f();
    }

    @Override
    public InterfaceC13967a keySet() {
        return new e();
    }

    @Override
    public float m(byte b10) {
        float f10 = this.f27572s;
        int nf2 = nf(b10);
        if (nf2 < 0) {
            return f10;
        }
        float f11 = this.f88989v[nf2];
        hf(nf2);
        return f11;
    }

    @Override
    public void n(Ud.d dVar) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f88989v;
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
    public float n4(byte b10, float f10, float f11) {
        int pf2 = pf(b10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            float[] fArr = this.f88989v;
            float f12 = f10 + fArr[pf2];
            fArr[pf2] = f12;
            z10 = false;
            f11 = f12;
        } else {
            this.f88989v[pf2] = f11;
        }
        byte b11 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27573t);
        }
        return f11;
    }

    @Override
    public boolean ob(InterfaceC13449d interfaceC13449d) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f27570q;
        float[] fArr = this.f88989v;
        int length = bArr2.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13449d.a(bArr2[i10], fArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public void putAll(Map<? extends Byte, ? extends Float> map) {
        cf(map.size());
        for (Map.Entry<? extends Byte, ? extends Float> entry : map.entrySet()) {
            V3(entry.getKey().byteValue(), entry.getValue().floatValue());
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
            V3(objectInput.readByte(), objectInput.readFloat());
            readInt = i10;
        }
    }

    @Override
    public float s0(byte b10) {
        int nf2 = nf(b10);
        return nf2 < 0 ? this.f27572s : this.f88989v[nf2];
    }

    @Override
    public boolean s3(InterfaceC13449d interfaceC13449d) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f27570q;
        float[] fArr = this.f88989v;
        kf();
        try {
            int length = bArr2.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !interfaceC13449d.a(bArr2[i10], fArr[i10])) {
                    hf(i10);
                    z10 = true;
                }
                length = i10;
            }
        } finally {
            ff(true);
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        ob(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public float[] values() {
        float[] fArr = new float[size()];
        float[] fArr2 = this.f88989v;
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
    public boolean w(InterfaceC13453h interfaceC13453h) {
        return V0(interfaceC13453h);
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
                objectOutput.writeByte(this.f27570q[i10]);
                objectOutput.writeFloat(this.f88989v[i10]);
            }
            length = i10;
        }
    }

    public final float zf(byte b10, float f10, int i10) {
        float f11 = this.f27572s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            f11 = this.f88989v[i10];
            z10 = false;
        }
        this.f88989v[i10] = f10;
        if (z10) {
            ef(this.f27573t);
        }
        return f11;
    }

    public C13334d(int i10) {
        super(i10);
    }

    public C13334d(int i10, float f10) {
        super(i10, f10);
    }

    public C13334d(int i10, float f10, byte b10, float f11) {
        super(i10, f10, b10, f11);
    }

    public C13334d(byte[] bArr, float[] fArr) {
        super(Math.max(bArr.length, fArr.length));
        int min = Math.min(bArr.length, fArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            V3(bArr[i10], fArr[i10]);
        }
    }

    public C13334d(InterfaceC13063d interfaceC13063d) {
        super(interfaceC13063d.size());
        if (interfaceC13063d instanceof C13334d) {
            C13334d c13334d = (C13334d) interfaceC13063d;
            this.f27454d = c13334d.f27454d;
            byte b10 = c13334d.f27571r;
            this.f27571r = b10;
            this.f27572s = c13334d.f27572s;
            if (b10 != 0) {
                Arrays.fill(this.f27570q, b10);
            }
            float f10 = this.f27572s;
            if (f10 != 0.0f) {
                Arrays.fill(this.f88989v, f10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        d9(interfaceC13063d);
    }
}
