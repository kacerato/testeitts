package ge;

import Zd.InterfaceC3449g;
import he.InterfaceC13453h;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Map;
import ke.InterfaceC13971e;
import org.apache.commons.math3.geometry.VectorFormat;

public class I extends Wd.K implements ee.G, Externalizable {

    public static final long f88600w = 1;

    public transient byte[] f88601v;

    public class a implements he.K {

        public boolean f88602a = true;

        public final StringBuilder f88603b;

        public a(StringBuilder sb2) {
            this.f88603b = sb2;
        }

        @Override
        public boolean a(int i10, byte b10) {
            if (this.f88602a) {
                this.f88602a = false;
            } else {
                this.f88603b.append(", ");
            }
            this.f88603b.append(i10);
            this.f88603b.append("=");
            this.f88603b.append((int) b10);
            return true;
        }
    }

    public class b extends Wd.J implements Zd.L {
        public b(I i10) {
            super(i10);
        }

        @Override
        public byte b(byte b10) {
            byte value = value();
            I.this.f88601v[this.f27465d] = b10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public int key() {
            return I.this.f27467q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                I.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public byte value() {
            return I.this.f88601v[this.f27465d];
        }
    }

    public class c extends Wd.J implements Zd.Q {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public int next() {
            j();
            return I.this.f27467q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                I.this.hf(this.f27465d);
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
            return I.this.f88601v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                I.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class e implements InterfaceC13971e {

        public class a implements he.S {

            public boolean f88609a = true;

            public final StringBuilder f88610b;

            public a(StringBuilder sb2) {
                this.f88610b = sb2;
            }

            @Override
            public boolean a(int i10) {
                if (this.f88609a) {
                    this.f88609a = false;
                } else {
                    this.f88610b.append(", ");
                }
                this.f88610b.append(i10);
                return true;
            }
        }

        public e() {
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
                if (!I.this.contains(i10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean M1(int[] iArr) {
            Arrays.sort(iArr);
            I i10 = I.this;
            int[] iArr2 = i10.f27467q;
            byte[] bArr = i10.f27568l;
            int length = iArr2.length;
            boolean z10 = false;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i11] != 1 || Arrays.binarySearch(iArr, iArr2[i11]) >= 0) {
                    length = i11;
                } else {
                    I.this.hf(i11);
                    length = i11;
                    z10 = true;
                }
            }
        }

        @Override
        public int[] P0(int[] iArr) {
            return I.this.f0(iArr);
        }

        @Override
        public boolean U0(he.S s10) {
            return I.this.J(s10);
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
            I.this.clear();
        }

        @Override
        public boolean contains(int i10) {
            return I.this.contains(i10);
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Integer) {
                    if (!I.this.F(((Integer) obj).intValue())) {
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
        public boolean equals(Object obj) {
            if (!(obj instanceof InterfaceC13971e)) {
                return false;
            }
            InterfaceC13971e interfaceC13971e = (InterfaceC13971e) obj;
            if (interfaceC13971e.size() != size()) {
                return false;
            }
            int length = I.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                I i11 = I.this;
                if (i11.f27568l[i10] == 1 && !interfaceC13971e.contains(i11.f27467q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public boolean h2(Sd.g gVar) {
            Zd.Q it = gVar.iterator();
            while (it.hasNext()) {
                if (!I.this.F(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int hashCode() {
            int length = I.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                I i12 = I.this;
                if (i12.f27568l[i11] == 1) {
                    i10 += Vd.b.d(i12.f27467q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public int i() {
            return I.this.f27468r;
        }

        @Override
        public boolean isEmpty() {
            return I.this.f27452b == 0;
        }

        @Override
        public Zd.Q iterator() {
            I i10 = I.this;
            return new c(i10);
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
            return I.this.f27469s != I.this.remove(i10);
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
            return I.this.f27452b;
        }

        @Override
        public int[] toArray() {
            return I.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            I.this.J(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean z2(int[] iArr) {
            throw new UnsupportedOperationException();
        }
    }

    public class f implements Sd.a {

        public class a implements InterfaceC13453h {

            public boolean f88613a = true;

            public final StringBuilder f88614b;

            public a(StringBuilder sb2) {
                this.f88614b = sb2;
            }

            @Override
            public boolean a(byte b10) {
                if (this.f88613a) {
                    this.f88613a = false;
                } else {
                    this.f88614b.append(", ");
                }
                this.f88614b.append((int) b10);
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
            return I.this.a0(bArr);
        }

        @Override
        public boolean V0(InterfaceC13453h interfaceC13453h) {
            return I.this.M(interfaceC13453h);
        }

        @Override
        public boolean W1(byte[] bArr) {
            Arrays.sort(bArr);
            I i10 = I.this;
            byte[] bArr2 = i10.f88601v;
            byte[] bArr3 = i10.f27568l;
            int length = bArr2.length;
            boolean z10 = false;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr3[i11] != 1 || Arrays.binarySearch(bArr, bArr2[i11]) >= 0) {
                    length = i11;
                } else {
                    I.this.hf(i11);
                    length = i11;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean a1(byte b10) {
            return I.this.P(b10);
        }

        @Override
        public boolean addAll(Collection<? extends Byte> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            I.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Byte) {
                    if (!I.this.P(((Byte) obj).byteValue())) {
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
            return I.this.f27469s;
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
            return I.this.f27452b == 0;
        }

        @Override
        public InterfaceC3449g iterator() {
            I i10 = I.this;
            return new d(i10);
        }

        @Override
        public boolean m(byte b10) {
            I i10 = I.this;
            byte[] bArr = i10.f88601v;
            int[] iArr = i10.f27467q;
            int length = bArr.length;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return false;
                }
                int i12 = iArr[i11];
                if (i12 != 0 && i12 != 2 && b10 == bArr[i11]) {
                    I.this.hf(i11);
                    return true;
                }
                length = i11;
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
            return I.this.f27452b;
        }

        @Override
        public boolean t1(byte[] bArr) {
            for (byte b10 : bArr) {
                if (!I.this.P(b10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public byte[] toArray() {
            return I.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            I.this.M(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean w2(Sd.a aVar) {
            InterfaceC3449g it = aVar.iterator();
            while (it.hasNext()) {
                if (!I.this.P(it.next())) {
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

    public I() {
    }

    @Override
    public boolean F(int i10) {
        return contains(i10);
    }

    @Override
    public boolean F0(int i10) {
        return Ib(i10, (byte) 1);
    }

    @Override
    public boolean Ib(int i10, byte b10) {
        int nf2 = nf(i10);
        if (nf2 < 0) {
            return false;
        }
        byte[] bArr = this.f88601v;
        bArr[nf2] = (byte) (bArr[nf2] + b10);
        return true;
    }

    @Override
    public boolean J(he.S s10) {
        return U0(s10);
    }

    @Override
    public boolean K6(he.K k10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f27467q;
        byte[] bArr2 = this.f88601v;
        int length = iArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !k10.a(iArr[i10], bArr2[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean M(InterfaceC13453h interfaceC13453h) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f88601v;
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
        byte[] bArr2 = this.f88601v;
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
    public byte Td(int i10, byte b10) {
        int pf2 = pf(i10);
        return pf2 < 0 ? this.f88601v[(-pf2) - 1] : zf(i10, b10, pf2);
    }

    @Override
    public byte V4(int i10, byte b10) {
        return zf(i10, b10, pf(i10));
    }

    @Override
    public byte[] a0(byte[] bArr) {
        int size = size();
        if (bArr.length < size) {
            bArr = new byte[size];
        }
        byte[] bArr2 = this.f88601v;
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
    public void clear() {
        super.clear();
        int[] iArr = this.f27467q;
        Arrays.fill(iArr, 0, iArr.length, this.f27468r);
        byte[] bArr = this.f88601v;
        Arrays.fill(bArr, 0, bArr.length, this.f27469s);
        byte[] bArr2 = this.f27568l;
        Arrays.fill(bArr2, 0, bArr2.length, (byte) 0);
    }

    public boolean equals(Object obj) {
        byte b10;
        byte b11;
        if (!(obj instanceof ee.G)) {
            return false;
        }
        ee.G g10 = (ee.G) obj;
        if (g10.size() != size()) {
            return false;
        }
        byte[] bArr = this.f88601v;
        byte[] bArr2 = this.f27568l;
        byte i10 = i();
        byte i11 = g10.i();
        int length = bArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr2[i12] == 1 && (b11 = bArr[i12]) != (b10 = g10.get(this.f27467q[i12])) && b11 != i10 && b10 != i11) {
                return false;
            }
            length = i12;
        }
    }

    @Override
    public int[] f0(int[] iArr) {
        int size = size();
        if (iArr.length < size) {
            iArr = new int[size];
        }
        int[] iArr2 = this.f27467q;
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
    public byte get(int i10) {
        int nf2 = nf(i10);
        return nf2 < 0 ? this.f27469s : this.f88601v[nf2];
    }

    @Override
    public void gf(int i10) {
        int[] iArr = this.f27467q;
        int length = iArr.length;
        byte[] bArr = this.f88601v;
        byte[] bArr2 = this.f27568l;
        this.f27467q = new int[i10];
        this.f88601v = new byte[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr2[i11] == 1) {
                this.f88601v[pf(iArr[i11])] = bArr[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f88601v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.d(this.f27467q[i11]) ^ Vd.b.d(this.f88601v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f88601v[i10] = this.f27469s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public Zd.L iterator() {
        return new b(this);
    }

    @Override
    public int[] j() {
        int[] iArr = new int[size()];
        int[] iArr2 = this.f27467q;
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
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f88601v = new byte[jf2];
        return jf2;
    }

    @Override
    public Sd.a k() {
        return new f();
    }

    @Override
    public InterfaceC13971e keySet() {
        return new e();
    }

    @Override
    public void putAll(Map<? extends Integer, ? extends Byte> map) {
        cf(map.size());
        for (Map.Entry<? extends Integer, ? extends Byte> entry : map.entrySet()) {
            V4(entry.getKey().intValue(), entry.getValue().byteValue());
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
            V4(objectInput.readInt(), objectInput.readByte());
            readInt = i10;
        }
    }

    @Override
    public byte remove(int i10) {
        byte b10 = this.f27469s;
        int nf2 = nf(i10);
        if (nf2 < 0) {
            return b10;
        }
        byte b11 = this.f88601v[nf2];
        hf(nf2);
        return b11;
    }

    @Override
    public void s(Ud.a aVar) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f88601v;
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

    @Override
    public void t7(ee.G g10) {
        cf(g10.size());
        Zd.L it = g10.iterator();
        while (it.hasNext()) {
            it.g();
            V4(it.key(), it.value());
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        K6(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public byte[] values() {
        byte[] bArr = new byte[size()];
        byte[] bArr2 = this.f88601v;
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
                objectOutput.writeInt(this.f27467q[i10]);
                objectOutput.writeByte(this.f88601v[i10]);
            }
            length = i10;
        }
    }

    @Override
    public boolean x5(he.K k10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f27467q;
        byte[] bArr2 = this.f88601v;
        kf();
        try {
            int length = iArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !k10.a(iArr[i10], bArr2[i10])) {
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
    public byte z7(int i10, byte b10, byte b11) {
        int pf2 = pf(i10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            byte[] bArr = this.f88601v;
            byte b12 = (byte) (bArr[pf2] + b10);
            bArr[pf2] = b12;
            z10 = false;
            b11 = b12;
        } else {
            this.f88601v[pf2] = b11;
        }
        byte b13 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27470t);
        }
        return b11;
    }

    public final byte zf(int i10, byte b10, int i11) {
        byte b11 = this.f27469s;
        boolean z10 = true;
        if (i11 < 0) {
            i11 = (-i11) - 1;
            b11 = this.f88601v[i11];
            z10 = false;
        }
        this.f88601v[i11] = b10;
        if (z10) {
            ef(this.f27470t);
        }
        return b11;
    }

    public I(int i10) {
        super(i10);
    }

    public I(int i10, float f10) {
        super(i10, f10);
    }

    public I(int i10, float f10, int i11, byte b10) {
        super(i10, f10, i11, b10);
    }

    public I(int[] iArr, byte[] bArr) {
        super(Math.max(iArr.length, bArr.length));
        int min = Math.min(iArr.length, bArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            V4(iArr[i10], bArr[i10]);
        }
    }

    public I(ee.G g10) {
        super(g10.size());
        if (g10 instanceof I) {
            I i10 = (I) g10;
            this.f27454d = i10.f27454d;
            int i11 = i10.f27468r;
            this.f27468r = i11;
            this.f27469s = i10.f27469s;
            if (i11 != 0) {
                Arrays.fill(this.f27467q, i11);
            }
            byte b10 = this.f27469s;
            if (b10 != 0) {
                Arrays.fill(this.f88601v, b10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        t7(g10);
    }
}
