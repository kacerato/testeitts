package ge;

import Zd.r0;
import Zd.s0;
import he.q0;
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

public class k0 extends Wd.i0 implements ee.j0, Externalizable {

    public static final long f89242w = 1;

    public transient int[] f89243v;

    public class a implements q0 {

        public boolean f89244a = true;

        public final StringBuilder f89245b;

        public a(StringBuilder sb2) {
            this.f89245b = sb2;
        }

        @Override
        public boolean a(short s10, int i10) {
            if (this.f89244a) {
                this.f89244a = false;
            } else {
                this.f89245b.append(", ");
            }
            this.f89245b.append((int) s10);
            this.f89245b.append("=");
            this.f89245b.append(i10);
            return true;
        }
    }

    public class b implements InterfaceC13973g {

        public class a implements t0 {

            public boolean f89248a = true;

            public final StringBuilder f89249b;

            public a(StringBuilder sb2) {
                this.f89249b = sb2;
            }

            @Override
            public boolean a(short s10) {
                if (this.f89248a) {
                    this.f89248a = false;
                } else {
                    this.f89249b.append(", ");
                }
                this.f89249b.append((int) s10);
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
            return k0.this.Y(sArr);
        }

        @Override
        public boolean W0(short s10) {
            return k0.this.W0(s10);
        }

        @Override
        public boolean Z1(short[] sArr) {
            for (short s10 : sArr) {
                if (!k0.this.W0(s10)) {
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
            k0.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Short) {
                    if (!k0.this.z(((Short) obj).shortValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean d(short s10) {
            return k0.this.f27625s != k0.this.d(s10);
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
            int length = k0.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                k0 k0Var = k0.this;
                if (k0Var.f27568l[i10] == 1 && !interfaceC13973g.W0(k0Var.f27623q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public boolean h1(t0 t0Var) {
            return k0.this.v(t0Var);
        }

        @Override
        public int hashCode() {
            int length = k0.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                k0 k0Var = k0.this;
                if (k0Var.f27568l[i11] == 1) {
                    i10 += Vd.b.d(k0Var.f27623q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public short i() {
            return k0.this.f27624r;
        }

        @Override
        public boolean isEmpty() {
            return k0.this.f27452b == 0;
        }

        @Override
        public s0 iterator() {
            k0 k0Var = k0.this;
            return new d(k0Var);
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
            k0 k0Var = k0.this;
            short[] sArr2 = k0Var.f27623q;
            byte[] bArr = k0Var.f27568l;
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
                    k0.this.hf(i10);
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
            return k0.this.f27452b;
        }

        @Override
        public short[] toArray() {
            return k0.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            k0.this.v(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean v2(Sd.i iVar) {
            s0 it = iVar.iterator();
            while (it.hasNext()) {
                if (!k0.this.z(it.next())) {
                    return false;
                }
            }
            return true;
        }
    }

    public class c extends Wd.J implements r0 {
        public c(k0 k0Var) {
            super(k0Var);
        }

        @Override
        public int e(int i10) {
            int value = value();
            k0.this.f89243v[this.f27465d] = i10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public short key() {
            return k0.this.f27623q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                k0.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public int value() {
            return k0.this.f89243v[this.f27465d];
        }
    }

    public class d extends Wd.J implements s0 {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public short next() {
            j();
            return k0.this.f27623q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                k0.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class e extends Wd.J implements Zd.Q {
        public e(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public int next() {
            j();
            return k0.this.f89243v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                k0.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class f implements Sd.g {

        public class a implements he.S {

            public boolean f89255a = true;

            public final StringBuilder f89256b;

            public a(StringBuilder sb2) {
                this.f89256b = sb2;
            }

            @Override
            public boolean a(int i10) {
                if (this.f89255a) {
                    this.f89255a = false;
                } else {
                    this.f89256b.append(", ");
                }
                this.f89256b.append(i10);
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
                if (!k0.this.Q(i10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean M1(int[] iArr) {
            Arrays.sort(iArr);
            k0 k0Var = k0.this;
            int[] iArr2 = k0Var.f89243v;
            byte[] bArr = k0Var.f27568l;
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
                    k0.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public int[] P0(int[] iArr) {
            return k0.this.e0(iArr);
        }

        @Override
        public boolean U0(he.S s10) {
            return k0.this.m0(s10);
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
            k0.this.clear();
        }

        @Override
        public boolean contains(int i10) {
            return k0.this.Q(i10);
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Integer) {
                    if (!k0.this.Q(((Integer) obj).intValue())) {
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
                if (!k0.this.Q(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int i() {
            return k0.this.f27625s;
        }

        @Override
        public boolean isEmpty() {
            return k0.this.f27452b == 0;
        }

        @Override
        public Zd.Q iterator() {
            k0 k0Var = k0.this;
            return new e(k0Var);
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
            k0 k0Var = k0.this;
            int[] iArr = k0Var.f89243v;
            short[] sArr = k0Var.f27623q;
            int length = iArr.length;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return false;
                }
                short s10 = sArr[i11];
                if (s10 != 0 && s10 != 2 && i10 == iArr[i11]) {
                    k0.this.hf(i11);
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
            return k0.this.f27452b;
        }

        @Override
        public int[] toArray() {
            return k0.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            k0.this.m0(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean z2(int[] iArr) {
            throw new UnsupportedOperationException();
        }
    }

    public k0() {
    }

    @Override
    public int A3(short s10, int i10) {
        int pf2 = pf(s10);
        return pf2 < 0 ? this.f89243v[(-pf2) - 1] : zf(s10, i10, pf2);
    }

    @Override
    public boolean De(q0 q0Var) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f27623q;
        int[] iArr = this.f89243v;
        kf();
        try {
            int length = sArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !q0Var.a(sArr[i10], iArr[i10])) {
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
    public boolean I0(short s10) {
        return d8(s10, 1);
    }

    @Override
    public boolean Q(int i10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f89243v;
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
    public void Ta(ee.j0 j0Var) {
        cf(j0Var.size());
        r0 it = j0Var.iterator();
        while (it.hasNext()) {
            it.g();
            va(it.key(), it.value());
        }
    }

    @Override
    public short[] Y(short[] sArr) {
        int size = size();
        if (sArr.length < size) {
            sArr = new short[size];
        }
        short[] sArr2 = this.f27623q;
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
    public void clear() {
        super.clear();
        short[] sArr = this.f27623q;
        Arrays.fill(sArr, 0, sArr.length, this.f27624r);
        int[] iArr = this.f89243v;
        Arrays.fill(iArr, 0, iArr.length, this.f27625s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    @Override
    public int d(short s10) {
        int i10 = this.f27625s;
        int nf2 = nf(s10);
        if (nf2 < 0) {
            return i10;
        }
        int i11 = this.f89243v[nf2];
        hf(nf2);
        return i11;
    }

    @Override
    public boolean d8(short s10, int i10) {
        int nf2 = nf(s10);
        if (nf2 < 0) {
            return false;
        }
        int[] iArr = this.f89243v;
        iArr[nf2] = iArr[nf2] + i10;
        return true;
    }

    @Override
    public int[] e0(int[] iArr) {
        int size = size();
        if (iArr.length < size) {
            iArr = new int[size];
        }
        int[] iArr2 = this.f89243v;
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

    public boolean equals(Object obj) {
        int n02;
        int i10;
        if (!(obj instanceof ee.j0)) {
            return false;
        }
        ee.j0 j0Var = (ee.j0) obj;
        if (j0Var.size() != size()) {
            return false;
        }
        int[] iArr = this.f89243v;
        byte[] bArr = this.f27568l;
        int i11 = i();
        int i12 = j0Var.i();
        int length = iArr.length;
        while (true) {
            int i13 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i13] == 1 && (i10 = iArr[i13]) != (n02 = j0Var.n0(this.f27623q[i13])) && i10 != i11 && n02 != i12) {
                return false;
            }
            length = i13;
        }
    }

    @Override
    public void f(Ud.e eVar) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f89243v;
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
    public void gf(int i10) {
        short[] sArr = this.f27623q;
        int length = sArr.length;
        int[] iArr = this.f89243v;
        byte[] bArr = this.f27568l;
        this.f27623q = new short[i10];
        this.f89243v = new int[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f89243v[pf(sArr[i11])] = iArr[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f89243v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.d(this.f27623q[i11]) ^ Vd.b.d(this.f89243v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f89243v[i10] = this.f27625s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public r0 iterator() {
        return new c(this);
    }

    @Override
    public short[] j() {
        short[] sArr = new short[size()];
        short[] sArr2 = this.f27623q;
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
        this.f89243v = new int[jf2];
        return jf2;
    }

    @Override
    public Sd.g k() {
        return new f();
    }

    @Override
    public InterfaceC13973g keySet() {
        return new b();
    }

    @Override
    public boolean m0(he.S s10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f89243v;
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
    public int n0(short s10) {
        int nf2 = nf(s10);
        return nf2 < 0 ? this.f27625s : this.f89243v[nf2];
    }

    @Override
    public int o9(short s10, int i10, int i11) {
        int pf2 = pf(s10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            int[] iArr = this.f89243v;
            int i12 = i10 + iArr[pf2];
            iArr[pf2] = i12;
            z10 = false;
            i11 = i12;
        } else {
            this.f89243v[pf2] = i11;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27626t);
        }
        return i11;
    }

    @Override
    public void putAll(Map<? extends Short, ? extends Integer> map) {
        cf(map.size());
        for (Map.Entry<? extends Short, ? extends Integer> entry : map.entrySet()) {
            va(entry.getKey().shortValue(), entry.getValue().intValue());
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
            va(objectInput.readShort(), objectInput.readInt());
            readInt = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        w8(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public boolean v(t0 t0Var) {
        return h1(t0Var);
    }

    @Override
    public int va(short s10, int i10) {
        return zf(s10, i10, pf(s10));
    }

    @Override
    public int[] values() {
        int[] iArr = new int[size()];
        int[] iArr2 = this.f89243v;
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
    public boolean w8(q0 q0Var) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f27623q;
        int[] iArr = this.f89243v;
        int length = sArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !q0Var.a(sArr[i10], iArr[i10])) {
                return false;
            }
            length = i10;
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
                objectOutput.writeShort(this.f27623q[i10]);
                objectOutput.writeInt(this.f89243v[i10]);
            }
            length = i10;
        }
    }

    @Override
    public boolean z(short s10) {
        return W0(s10);
    }

    public final int zf(short s10, int i10, int i11) {
        int i12 = this.f27625s;
        boolean z10 = true;
        if (i11 < 0) {
            i11 = (-i11) - 1;
            i12 = this.f89243v[i11];
            z10 = false;
        }
        this.f89243v[i11] = i10;
        if (z10) {
            ef(this.f27626t);
        }
        return i12;
    }

    public k0(int i10) {
        super(i10);
    }

    public k0(int i10, float f10) {
        super(i10, f10);
    }

    public k0(int i10, float f10, short s10, int i11) {
        super(i10, f10, s10, i11);
    }

    public k0(short[] sArr, int[] iArr) {
        super(Math.max(sArr.length, iArr.length));
        int min = Math.min(sArr.length, iArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            va(sArr[i10], iArr[i10]);
        }
    }

    public k0(ee.j0 j0Var) {
        super(j0Var.size());
        if (j0Var instanceof k0) {
            k0 k0Var = (k0) j0Var;
            this.f27454d = k0Var.f27454d;
            short s10 = k0Var.f27624r;
            this.f27624r = s10;
            this.f27625s = k0Var.f27625s;
            if (s10 != 0) {
                Arrays.fill(this.f27623q, s10);
            }
            int i10 = this.f27625s;
            if (i10 != 0) {
                Arrays.fill(this.f89243v, i10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        Ta(j0Var);
    }
}
