package ge;

import Zd.InterfaceC3449g;
import Zd.s0;
import he.InterfaceC13453h;
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

public class g0 extends Wd.d0 implements ee.f0, Externalizable {

    public static final long f89114w = 1;

    public transient byte[] f89115v;

    public class a implements he.m0 {

        public boolean f89116a = true;

        public final StringBuilder f89117b;

        public a(StringBuilder sb2) {
            this.f89117b = sb2;
        }

        @Override
        public boolean a(short s10, byte b10) {
            if (this.f89116a) {
                this.f89116a = false;
            } else {
                this.f89117b.append(", ");
            }
            this.f89117b.append((int) s10);
            this.f89117b.append("=");
            this.f89117b.append((int) b10);
            return true;
        }
    }

    public class b implements InterfaceC13973g {

        public class a implements t0 {

            public boolean f89120a = true;

            public final StringBuilder f89121b;

            public a(StringBuilder sb2) {
                this.f89121b = sb2;
            }

            @Override
            public boolean a(short s10) {
                if (this.f89120a) {
                    this.f89120a = false;
                } else {
                    this.f89121b.append(", ");
                }
                this.f89121b.append((int) s10);
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
            return g0.this.Y(sArr);
        }

        @Override
        public boolean W0(short s10) {
            return g0.this.W0(s10);
        }

        @Override
        public boolean Z1(short[] sArr) {
            for (short s10 : sArr) {
                if (!g0.this.W0(s10)) {
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
            g0.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Short) {
                    if (!g0.this.z(((Short) obj).shortValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean d(short s10) {
            return g0.this.f27577s != g0.this.d(s10);
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
            int length = g0.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                g0 g0Var = g0.this;
                if (g0Var.f27568l[i10] == 1 && !interfaceC13973g.W0(g0Var.f27575q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public boolean h1(t0 t0Var) {
            return g0.this.v(t0Var);
        }

        @Override
        public int hashCode() {
            int length = g0.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                g0 g0Var = g0.this;
                if (g0Var.f27568l[i11] == 1) {
                    i10 += Vd.b.d(g0Var.f27575q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public short i() {
            return g0.this.f27576r;
        }

        @Override
        public boolean isEmpty() {
            return g0.this.f27452b == 0;
        }

        @Override
        public s0 iterator() {
            g0 g0Var = g0.this;
            return new d(g0Var);
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
            g0 g0Var = g0.this;
            short[] sArr2 = g0Var.f27575q;
            byte[] bArr = g0Var.f27568l;
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
                    g0.this.hf(i10);
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
            return g0.this.f27452b;
        }

        @Override
        public short[] toArray() {
            return g0.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            g0.this.v(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean v2(Sd.i iVar) {
            s0 it = iVar.iterator();
            while (it.hasNext()) {
                if (!g0.this.z(it.next())) {
                    return false;
                }
            }
            return true;
        }
    }

    public class c extends Wd.J implements Zd.n0 {
        public c(g0 g0Var) {
            super(g0Var);
        }

        @Override
        public byte b(byte b10) {
            byte value = value();
            g0.this.f89115v[this.f27465d] = b10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public short key() {
            return g0.this.f27575q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                g0.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public byte value() {
            return g0.this.f89115v[this.f27465d];
        }
    }

    public class d extends Wd.J implements s0 {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public short next() {
            j();
            return g0.this.f27575q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                g0.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class e extends Wd.J implements InterfaceC3449g {
        public e(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public byte next() {
            j();
            return g0.this.f89115v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                g0.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class f implements Sd.a {

        public class a implements InterfaceC13453h {

            public boolean f89127a = true;

            public final StringBuilder f89128b;

            public a(StringBuilder sb2) {
                this.f89128b = sb2;
            }

            @Override
            public boolean a(byte b10) {
                if (this.f89127a) {
                    this.f89127a = false;
                } else {
                    this.f89128b.append(", ");
                }
                this.f89128b.append((int) b10);
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
            return g0.this.a0(bArr);
        }

        @Override
        public boolean V0(InterfaceC13453h interfaceC13453h) {
            return g0.this.M(interfaceC13453h);
        }

        @Override
        public boolean W1(byte[] bArr) {
            Arrays.sort(bArr);
            g0 g0Var = g0.this;
            byte[] bArr2 = g0Var.f89115v;
            byte[] bArr3 = g0Var.f27568l;
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
                    g0.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean a1(byte b10) {
            return g0.this.P(b10);
        }

        @Override
        public boolean addAll(Collection<? extends Byte> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            g0.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Byte) {
                    if (!g0.this.P(((Byte) obj).byteValue())) {
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
            return g0.this.f27577s;
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
            return g0.this.f27452b == 0;
        }

        @Override
        public InterfaceC3449g iterator() {
            g0 g0Var = g0.this;
            return new e(g0Var);
        }

        @Override
        public boolean m(byte b10) {
            g0 g0Var = g0.this;
            byte[] bArr = g0Var.f89115v;
            short[] sArr = g0Var.f27575q;
            int length = bArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                short s10 = sArr[i10];
                if (s10 != 0 && s10 != 2 && b10 == bArr[i10]) {
                    g0.this.hf(i10);
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
            return g0.this.f27452b;
        }

        @Override
        public boolean t1(byte[] bArr) {
            for (byte b10 : bArr) {
                if (!g0.this.P(b10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public byte[] toArray() {
            return g0.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            g0.this.M(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean w2(Sd.a aVar) {
            InterfaceC3449g it = aVar.iterator();
            while (it.hasNext()) {
                if (!g0.this.P(it.next())) {
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

    public g0() {
    }

    @Override
    public boolean I0(short s10) {
        return Z7(s10, (byte) 1);
    }

    @Override
    public byte K3(short s10, byte b10) {
        int pf2 = pf(s10);
        return pf2 < 0 ? this.f89115v[(-pf2) - 1] : zf(s10, b10, pf2);
    }

    @Override
    public boolean M(InterfaceC13453h interfaceC13453h) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f89115v;
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
    public boolean P(byte b10) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f89115v;
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
    public short[] Y(short[] sArr) {
        int size = size();
        if (sArr.length < size) {
            sArr = new short[size];
        }
        short[] sArr2 = this.f27575q;
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
    public boolean Z7(short s10, byte b10) {
        int nf2 = nf(s10);
        if (nf2 < 0) {
            return false;
        }
        byte[] bArr = this.f89115v;
        bArr[nf2] = (byte) (bArr[nf2] + b10);
        return true;
    }

    @Override
    public byte[] a0(byte[] bArr) {
        int size = size();
        if (bArr.length < size) {
            bArr = new byte[size];
        }
        byte[] bArr2 = this.f89115v;
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
    public byte a7(short s10, byte b10, byte b11) {
        int pf2 = pf(s10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            byte[] bArr = this.f89115v;
            byte b12 = (byte) (bArr[pf2] + b10);
            bArr[pf2] = b12;
            z10 = false;
            b11 = b12;
        } else {
            this.f89115v[pf2] = b11;
        }
        byte b13 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27578t);
        }
        return b11;
    }

    @Override
    public void clear() {
        super.clear();
        short[] sArr = this.f27575q;
        Arrays.fill(sArr, 0, sArr.length, this.f27576r);
        byte[] bArr = this.f89115v;
        Arrays.fill(bArr, 0, bArr.length, this.f27577s);
        byte[] bArr2 = this.f27568l;
        Arrays.fill(bArr2, 0, bArr2.length, (byte) 0);
    }

    @Override
    public byte d(short s10) {
        byte b10 = this.f27577s;
        int nf2 = nf(s10);
        if (nf2 < 0) {
            return b10;
        }
        byte b11 = this.f89115v[nf2];
        hf(nf2);
        return b11;
    }

    public boolean equals(Object obj) {
        byte n02;
        byte b10;
        if (!(obj instanceof ee.f0)) {
            return false;
        }
        ee.f0 f0Var = (ee.f0) obj;
        if (f0Var.size() != size()) {
            return false;
        }
        byte[] bArr = this.f89115v;
        byte[] bArr2 = this.f27568l;
        byte i10 = i();
        byte i11 = f0Var.i();
        int length = bArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr2[i12] == 1 && (b10 = bArr[i12]) != (n02 = f0Var.n0(this.f27575q[i12])) && b10 != i10 && n02 != i11) {
                return false;
            }
            length = i12;
        }
    }

    @Override
    public void gf(int i10) {
        short[] sArr = this.f27575q;
        int length = sArr.length;
        byte[] bArr = this.f89115v;
        byte[] bArr2 = this.f27568l;
        this.f27575q = new short[i10];
        this.f89115v = new byte[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr2[i11] == 1) {
                this.f89115v[pf(sArr[i11])] = bArr[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f89115v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.d(this.f27575q[i11]) ^ Vd.b.d(this.f89115v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hd(ee.f0 f0Var) {
        cf(f0Var.size());
        Zd.n0 it = f0Var.iterator();
        while (it.hasNext()) {
            it.g();
            ja(it.key(), it.value());
        }
    }

    @Override
    public void hf(int i10) {
        this.f89115v[i10] = this.f27577s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public Zd.n0 iterator() {
        return new c(this);
    }

    @Override
    public short[] j() {
        short[] sArr = new short[size()];
        short[] sArr2 = this.f27575q;
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
    public byte ja(short s10, byte b10) {
        return zf(s10, b10, pf(s10));
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f89115v = new byte[jf2];
        return jf2;
    }

    @Override
    public Sd.a k() {
        return new f();
    }

    @Override
    public InterfaceC13973g keySet() {
        return new b();
    }

    @Override
    public byte n0(short s10) {
        int nf2 = nf(s10);
        return nf2 < 0 ? this.f27577s : this.f89115v[nf2];
    }

    @Override
    public void putAll(Map<? extends Short, ? extends Byte> map) {
        cf(map.size());
        for (Map.Entry<? extends Short, ? extends Byte> entry : map.entrySet()) {
            ja(entry.getKey().shortValue(), entry.getValue().byteValue());
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
            ja(objectInput.readShort(), objectInput.readByte());
            readInt = i10;
        }
    }

    @Override
    public void s(Ud.a aVar) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f89115v;
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
        z5(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public boolean v(t0 t0Var) {
        return h1(t0Var);
    }

    @Override
    public byte[] values() {
        byte[] bArr = new byte[size()];
        byte[] bArr2 = this.f89115v;
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
                objectOutput.writeShort(this.f27575q[i10]);
                objectOutput.writeByte(this.f89115v[i10]);
            }
            length = i10;
        }
    }

    @Override
    public boolean xc(he.m0 m0Var) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f27575q;
        byte[] bArr2 = this.f89115v;
        kf();
        try {
            int length = sArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !m0Var.a(sArr[i10], bArr2[i10])) {
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
    public boolean z(short s10) {
        return W0(s10);
    }

    @Override
    public boolean z5(he.m0 m0Var) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f27575q;
        byte[] bArr2 = this.f89115v;
        int length = sArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !m0Var.a(sArr[i10], bArr2[i10])) {
                return false;
            }
            length = i10;
        }
    }

    public final byte zf(short s10, byte b10, int i10) {
        byte b11 = this.f27577s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            b11 = this.f89115v[i10];
            z10 = false;
        }
        this.f89115v[i10] = b10;
        if (z10) {
            ef(this.f27578t);
        }
        return b11;
    }

    public g0(int i10) {
        super(i10);
    }

    public g0(int i10, float f10) {
        super(i10, f10);
    }

    public g0(int i10, float f10, short s10, byte b10) {
        super(i10, f10, s10, b10);
    }

    public g0(short[] sArr, byte[] bArr) {
        super(Math.max(sArr.length, bArr.length));
        int min = Math.min(sArr.length, bArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            ja(sArr[i10], bArr[i10]);
        }
    }

    public g0(ee.f0 f0Var) {
        super(f0Var.size());
        if (f0Var instanceof g0) {
            g0 g0Var = (g0) f0Var;
            this.f27454d = g0Var.f27454d;
            short s10 = g0Var.f27576r;
            this.f27576r = s10;
            this.f27577s = g0Var.f27577s;
            if (s10 != 0) {
                Arrays.fill(this.f27575q, s10);
            }
            byte b10 = this.f27577s;
            if (b10 != 0) {
                Arrays.fill(this.f89115v, b10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        hd(f0Var);
    }
}
