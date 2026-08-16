package ge;

import Zd.s0;
import he.t0;
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

public class P extends Wd.S implements ee.N, Externalizable {

    public static final long f88714w = 1;

    public transient short[] f88715v;

    public class a implements he.T {

        public boolean f88716a = true;

        public final StringBuilder f88717b;

        public a(StringBuilder sb2) {
            this.f88717b = sb2;
        }

        @Override
        public boolean a(int i10, short s10) {
            if (this.f88716a) {
                this.f88716a = false;
            } else {
                this.f88717b.append(", ");
            }
            this.f88717b.append(i10);
            this.f88717b.append("=");
            this.f88717b.append((int) s10);
            return true;
        }
    }

    public class b extends Wd.J implements Zd.U {
        public b(P p10) {
            super(p10);
        }

        @Override
        public short c(short s10) {
            short value = value();
            P.this.f88715v[this.f27465d] = s10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public int key() {
            return P.this.f27501q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                P.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public short value() {
            return P.this.f88715v[this.f27465d];
        }
    }

    public class c extends Wd.J implements Zd.Q {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public int next() {
            j();
            return P.this.f27501q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                P.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class d extends Wd.J implements s0 {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public short next() {
            j();
            return P.this.f88715v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                P.this.hf(this.f27465d);
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

            public boolean f88723a = true;

            public final StringBuilder f88724b;

            public a(StringBuilder sb2) {
                this.f88724b = sb2;
            }

            @Override
            public boolean a(int i10) {
                if (this.f88723a) {
                    this.f88723a = false;
                } else {
                    this.f88724b.append(", ");
                }
                this.f88724b.append(i10);
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
                if (!P.this.contains(i10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean M1(int[] iArr) {
            Arrays.sort(iArr);
            P p10 = P.this;
            int[] iArr2 = p10.f27501q;
            byte[] bArr = p10.f27568l;
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
                    P.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public int[] P0(int[] iArr) {
            return P.this.f0(iArr);
        }

        @Override
        public boolean U0(he.S s10) {
            return P.this.J(s10);
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
            P.this.clear();
        }

        @Override
        public boolean contains(int i10) {
            return P.this.contains(i10);
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Integer) {
                    if (!P.this.F(((Integer) obj).intValue())) {
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
            int length = P.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                P p10 = P.this;
                if (p10.f27568l[i10] == 1 && !interfaceC13971e.contains(p10.f27501q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public boolean h2(Sd.g gVar) {
            Zd.Q it = gVar.iterator();
            while (it.hasNext()) {
                if (!P.this.F(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int hashCode() {
            int length = P.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                P p10 = P.this;
                if (p10.f27568l[i11] == 1) {
                    i10 += Vd.b.d(p10.f27501q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public int i() {
            return P.this.f27502r;
        }

        @Override
        public boolean isEmpty() {
            return P.this.f27452b == 0;
        }

        @Override
        public Zd.Q iterator() {
            P p10 = P.this;
            return new c(p10);
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
            return P.this.f27503s != P.this.remove(i10);
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
            return P.this.f27452b;
        }

        @Override
        public int[] toArray() {
            return P.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            P.this.J(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean z2(int[] iArr) {
            throw new UnsupportedOperationException();
        }
    }

    public class f implements Sd.i {

        public class a implements t0 {

            public boolean f88727a = true;

            public final StringBuilder f88728b;

            public a(StringBuilder sb2) {
                this.f88728b = sb2;
            }

            @Override
            public boolean a(short s10) {
                if (this.f88727a) {
                    this.f88727a = false;
                } else {
                    this.f88728b.append(", ");
                }
                this.f88728b.append((int) s10);
                return true;
            }
        }

        public f() {
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
            return P.this.i0(sArr);
        }

        @Override
        public boolean W0(short s10) {
            return P.this.L(s10);
        }

        @Override
        public boolean Z1(short[] sArr) {
            for (short s10 : sArr) {
                if (!P.this.L(s10)) {
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
            P.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Short) {
                    if (!P.this.L(((Short) obj).shortValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean d(short s10) {
            P p10 = P.this;
            short[] sArr = p10.f88715v;
            int[] iArr = p10.f27501q;
            int length = sArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                int i11 = iArr[i10];
                if (i11 != 0 && i11 != 2 && s10 == sArr[i10]) {
                    P.this.hf(i10);
                    return true;
                }
                length = i10;
            }
        }

        @Override
        public boolean h1(t0 t0Var) {
            return P.this.N(t0Var);
        }

        @Override
        public short i() {
            return P.this.f27503s;
        }

        @Override
        public boolean isEmpty() {
            return P.this.f27452b == 0;
        }

        @Override
        public s0 iterator() {
            P p10 = P.this;
            return new d(p10);
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
            P p10 = P.this;
            short[] sArr2 = p10.f88715v;
            byte[] bArr = p10.f27568l;
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
                    P.this.hf(i10);
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
            return P.this.f27452b;
        }

        @Override
        public short[] toArray() {
            return P.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            P.this.N(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean v2(Sd.i iVar) {
            s0 it = iVar.iterator();
            while (it.hasNext()) {
                if (!P.this.L(it.next())) {
                    return false;
                }
            }
            return true;
        }
    }

    public P() {
    }

    @Override
    public boolean E5(he.T t10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f27501q;
        short[] sArr = this.f88715v;
        int length = iArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !t10.a(iArr[i10], sArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean F(int i10) {
        return contains(i10);
    }

    @Override
    public boolean F0(int i10) {
        return Ub(i10, (short) 1);
    }

    @Override
    public boolean J(he.S s10) {
        return U0(s10);
    }

    @Override
    public boolean L(short s10) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f88715v;
        int length = sArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return false;
            }
            if (bArr[i10] == 1 && s10 == sArr[i10]) {
                return true;
            }
            length = i10;
        }
    }

    @Override
    public boolean N(t0 t0Var) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f88715v;
        int length = sArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !t0Var.a(sArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean Ub(int i10, short s10) {
        int nf2 = nf(i10);
        if (nf2 < 0) {
            return false;
        }
        short[] sArr = this.f88715v;
        sArr[nf2] = (short) (sArr[nf2] + s10);
        return true;
    }

    @Override
    public void clear() {
        super.clear();
        int[] iArr = this.f27501q;
        Arrays.fill(iArr, 0, iArr.length, this.f27502r);
        short[] sArr = this.f88715v;
        Arrays.fill(sArr, 0, sArr.length, this.f27503s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    @Override
    public boolean eb(he.T t10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f27501q;
        short[] sArr = this.f88715v;
        kf();
        try {
            int length = iArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !t10.a(iArr[i10], sArr[i10])) {
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
    public short ed(int i10, short s10) {
        int pf2 = pf(i10);
        return pf2 < 0 ? this.f88715v[(-pf2) - 1] : zf(i10, s10, pf2);
    }

    public boolean equals(Object obj) {
        short s10;
        short s11;
        if (!(obj instanceof ee.N)) {
            return false;
        }
        ee.N n10 = (ee.N) obj;
        if (n10.size() != size()) {
            return false;
        }
        short[] sArr = this.f88715v;
        byte[] bArr = this.f27568l;
        short i10 = i();
        short i11 = n10.i();
        int length = sArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1 && (s11 = sArr[i12]) != (s10 = n10.get(this.f27501q[i12])) && s11 != i10 && s10 != i11) {
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
        int[] iArr2 = this.f27501q;
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
    public short get(int i10) {
        int nf2 = nf(i10);
        return nf2 < 0 ? this.f27503s : this.f88715v[nf2];
    }

    @Override
    public void gf(int i10) {
        int[] iArr = this.f27501q;
        int length = iArr.length;
        short[] sArr = this.f88715v;
        byte[] bArr = this.f27568l;
        this.f27501q = new int[i10];
        this.f88715v = new short[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f88715v[pf(iArr[i11])] = sArr[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f88715v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.d(this.f27501q[i11]) ^ Vd.b.d(this.f88715v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f88715v[i10] = this.f27503s;
        super.hf(i10);
    }

    @Override
    public short[] i0(short[] sArr) {
        int size = size();
        if (sArr.length < size) {
            sArr = new short[size];
        }
        short[] sArr2 = this.f88715v;
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
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public Zd.U iterator() {
        return new b(this);
    }

    @Override
    public int[] j() {
        int[] iArr = new int[size()];
        int[] iArr2 = this.f27501q;
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
        this.f88715v = new short[jf2];
        return jf2;
    }

    @Override
    public Sd.i k() {
        return new f();
    }

    @Override
    public InterfaceC13971e keySet() {
        return new e();
    }

    @Override
    public short md(int i10, short s10, short s11) {
        int pf2 = pf(i10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            short[] sArr = this.f88715v;
            short s12 = (short) (sArr[pf2] + s10);
            sArr[pf2] = s12;
            z10 = false;
            s11 = s12;
        } else {
            this.f88715v[pf2] = s11;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27504t);
        }
        return s11;
    }

    @Override
    public short p5(int i10, short s10) {
        return zf(i10, s10, pf(i10));
    }

    @Override
    public void putAll(Map<? extends Integer, ? extends Short> map) {
        cf(map.size());
        for (Map.Entry<? extends Integer, ? extends Short> entry : map.entrySet()) {
            p5(entry.getKey().intValue(), entry.getValue().shortValue());
        }
    }

    @Override
    public void qe(ee.N n10) {
        cf(n10.size());
        Zd.U it = n10.iterator();
        while (it.hasNext()) {
            it.g();
            p5(it.key(), it.value());
        }
    }

    @Override
    public void r(Ud.h hVar) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f88715v;
        int length = sArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i10] == 1) {
                sArr[i10] = hVar.a(sArr[i10]);
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
            p5(objectInput.readInt(), objectInput.readShort());
            readInt = i10;
        }
    }

    @Override
    public short remove(int i10) {
        short s10 = this.f27503s;
        int nf2 = nf(i10);
        if (nf2 < 0) {
            return s10;
        }
        short s11 = this.f88715v[nf2];
        hf(nf2);
        return s11;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        E5(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public short[] values() {
        short[] sArr = new short[size()];
        short[] sArr2 = this.f88715v;
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
                objectOutput.writeInt(this.f27501q[i10]);
                objectOutput.writeShort(this.f88715v[i10]);
            }
            length = i10;
        }
    }

    public final short zf(int i10, short s10, int i11) {
        short s11 = this.f27503s;
        boolean z10 = true;
        if (i11 < 0) {
            i11 = (-i11) - 1;
            s11 = this.f88715v[i11];
            z10 = false;
        }
        this.f88715v[i11] = s10;
        if (z10) {
            ef(this.f27504t);
        }
        return s11;
    }

    public P(int i10) {
        super(i10);
    }

    public P(int i10, float f10) {
        super(i10, f10);
    }

    public P(int i10, float f10, int i11, short s10) {
        super(i10, f10, i11, s10);
    }

    public P(int[] iArr, short[] sArr) {
        super(Math.max(iArr.length, sArr.length));
        int min = Math.min(iArr.length, sArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            p5(iArr[i10], sArr[i10]);
        }
    }

    public P(ee.N n10) {
        super(n10.size());
        if (n10 instanceof P) {
            P p10 = (P) n10;
            this.f27454d = p10.f27454d;
            int i10 = p10.f27502r;
            this.f27502r = i10;
            this.f27503s = p10.f27503s;
            if (i10 != 0) {
                Arrays.fill(this.f27501q, i10);
            }
            short s10 = this.f27503s;
            if (s10 != 0) {
                Arrays.fill(this.f88715v, s10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        qe(n10);
    }
}
