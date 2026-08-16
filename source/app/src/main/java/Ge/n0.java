package ge;

import Zd.s0;
import Zd.v0;
import he.t0;
import he.u0;
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

public class n0 extends Wd.k0 implements ee.m0, Externalizable {

    public static final long f89340w = 1;

    public transient short[] f89341v;

    public class a implements u0 {

        public boolean f89342a = true;

        public final StringBuilder f89343b;

        public a(StringBuilder sb2) {
            this.f89343b = sb2;
        }

        @Override
        public boolean a(short s10, short s11) {
            if (this.f89342a) {
                this.f89342a = false;
            } else {
                this.f89343b.append(", ");
            }
            this.f89343b.append((int) s10);
            this.f89343b.append("=");
            this.f89343b.append((int) s11);
            return true;
        }
    }

    public class b implements InterfaceC13973g {

        public class a implements t0 {

            public boolean f89346a = true;

            public final StringBuilder f89347b;

            public a(StringBuilder sb2) {
                this.f89347b = sb2;
            }

            @Override
            public boolean a(short s10) {
                if (this.f89346a) {
                    this.f89346a = false;
                } else {
                    this.f89347b.append(", ");
                }
                this.f89347b.append((int) s10);
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
            return n0.this.Y(sArr);
        }

        @Override
        public boolean W0(short s10) {
            return n0.this.W0(s10);
        }

        @Override
        public boolean Z1(short[] sArr) {
            for (short s10 : sArr) {
                if (!n0.this.W0(s10)) {
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
            n0.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Short) {
                    if (!n0.this.z(((Short) obj).shortValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean d(short s10) {
            return n0.this.f27645s != n0.this.d(s10);
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
            int length = n0.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                n0 n0Var = n0.this;
                if (n0Var.f27568l[i10] == 1 && !interfaceC13973g.W0(n0Var.f27643q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public boolean h1(t0 t0Var) {
            return n0.this.v(t0Var);
        }

        @Override
        public int hashCode() {
            int length = n0.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                n0 n0Var = n0.this;
                if (n0Var.f27568l[i11] == 1) {
                    i10 += Vd.b.d(n0Var.f27643q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public short i() {
            return n0.this.f27644r;
        }

        @Override
        public boolean isEmpty() {
            return n0.this.f27452b == 0;
        }

        @Override
        public s0 iterator() {
            n0 n0Var = n0.this;
            return new d(n0Var);
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
            n0 n0Var = n0.this;
            short[] sArr2 = n0Var.f27643q;
            byte[] bArr = n0Var.f27568l;
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
                    n0.this.hf(i10);
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
            return n0.this.f27452b;
        }

        @Override
        public short[] toArray() {
            return n0.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            n0.this.v(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean v2(Sd.i iVar) {
            s0 it = iVar.iterator();
            while (it.hasNext()) {
                if (!n0.this.z(it.next())) {
                    return false;
                }
            }
            return true;
        }
    }

    public class c extends Wd.J implements v0 {
        public c(n0 n0Var) {
            super(n0Var);
        }

        @Override
        public short c(short s10) {
            short value = value();
            n0.this.f89341v[this.f27465d] = s10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public short key() {
            return n0.this.f27643q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                n0.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public short value() {
            return n0.this.f89341v[this.f27465d];
        }
    }

    public class d extends Wd.J implements s0 {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public short next() {
            j();
            return n0.this.f27643q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                n0.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class e extends Wd.J implements s0 {
        public e(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public short next() {
            j();
            return n0.this.f89341v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                n0.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class f implements Sd.i {

        public class a implements t0 {

            public boolean f89353a = true;

            public final StringBuilder f89354b;

            public a(StringBuilder sb2) {
                this.f89354b = sb2;
            }

            @Override
            public boolean a(short s10) {
                if (this.f89353a) {
                    this.f89353a = false;
                } else {
                    this.f89354b.append(", ");
                }
                this.f89354b.append((int) s10);
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
            return n0.this.i0(sArr);
        }

        @Override
        public boolean W0(short s10) {
            return n0.this.L(s10);
        }

        @Override
        public boolean Z1(short[] sArr) {
            for (short s10 : sArr) {
                if (!n0.this.L(s10)) {
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
            n0.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Short) {
                    if (!n0.this.L(((Short) obj).shortValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean d(short s10) {
            n0 n0Var = n0.this;
            short[] sArr = n0Var.f89341v;
            short[] sArr2 = n0Var.f27643q;
            int length = sArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                short s11 = sArr2[i10];
                if (s11 != 0 && s11 != 2 && s10 == sArr[i10]) {
                    n0.this.hf(i10);
                    return true;
                }
                length = i10;
            }
        }

        @Override
        public boolean h1(t0 t0Var) {
            return n0.this.N(t0Var);
        }

        @Override
        public short i() {
            return n0.this.f27645s;
        }

        @Override
        public boolean isEmpty() {
            return n0.this.f27452b == 0;
        }

        @Override
        public s0 iterator() {
            n0 n0Var = n0.this;
            return new e(n0Var);
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
            n0 n0Var = n0.this;
            short[] sArr2 = n0Var.f89341v;
            byte[] bArr = n0Var.f27568l;
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
                    n0.this.hf(i10);
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
            return n0.this.f27452b;
        }

        @Override
        public short[] toArray() {
            return n0.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            n0.this.N(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean v2(Sd.i iVar) {
            s0 it = iVar.iterator();
            while (it.hasNext()) {
                if (!n0.this.L(it.next())) {
                    return false;
                }
            }
            return true;
        }
    }

    public n0() {
    }

    @Override
    public short A5(short s10, short s11, short s12) {
        int pf2 = pf(s10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            short[] sArr = this.f89341v;
            short s13 = (short) (sArr[pf2] + s11);
            sArr[pf2] = s13;
            z10 = false;
            s12 = s13;
        } else {
            this.f89341v[pf2] = s12;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27646t);
        }
        return s12;
    }

    @Override
    public short Da(short s10, short s11) {
        return zf(s10, s11, pf(s10));
    }

    @Override
    public boolean I0(short s10) {
        return j8(s10, (short) 1);
    }

    @Override
    public boolean L(short s10) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f89341v;
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
        short[] sArr = this.f89341v;
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
    public boolean N6(u0 u0Var) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f27643q;
        short[] sArr2 = this.f89341v;
        int length = sArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !u0Var.a(sArr[i10], sArr2[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public short W3(short s10, short s11) {
        int pf2 = pf(s10);
        return pf2 < 0 ? this.f89341v[(-pf2) - 1] : zf(s10, s11, pf2);
    }

    @Override
    public short[] Y(short[] sArr) {
        int size = size();
        if (sArr.length < size) {
            sArr = new short[size];
        }
        short[] sArr2 = this.f27643q;
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
    public boolean Z9(u0 u0Var) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f27643q;
        short[] sArr2 = this.f89341v;
        kf();
        try {
            int length = sArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !u0Var.a(sArr[i10], sArr2[i10])) {
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
    public void clear() {
        super.clear();
        short[] sArr = this.f27643q;
        Arrays.fill(sArr, 0, sArr.length, this.f27644r);
        short[] sArr2 = this.f89341v;
        Arrays.fill(sArr2, 0, sArr2.length, this.f27645s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    @Override
    public short d(short s10) {
        short s11 = this.f27645s;
        int nf2 = nf(s10);
        if (nf2 < 0) {
            return s11;
        }
        short s12 = this.f89341v[nf2];
        hf(nf2);
        return s12;
    }

    public boolean equals(Object obj) {
        short n02;
        short s10;
        if (!(obj instanceof ee.m0)) {
            return false;
        }
        ee.m0 m0Var = (ee.m0) obj;
        if (m0Var.size() != size()) {
            return false;
        }
        short[] sArr = this.f89341v;
        byte[] bArr = this.f27568l;
        short i10 = i();
        short i11 = m0Var.i();
        int length = sArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1 && (s10 = sArr[i12]) != (n02 = m0Var.n0(this.f27643q[i12])) && s10 != i10 && n02 != i11) {
                return false;
            }
            length = i12;
        }
    }

    @Override
    public void gf(int i10) {
        short[] sArr = this.f27643q;
        int length = sArr.length;
        short[] sArr2 = this.f89341v;
        byte[] bArr = this.f27568l;
        this.f27643q = new short[i10];
        this.f89341v = new short[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f89341v[pf(sArr[i11])] = sArr2[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f89341v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.d(this.f27643q[i11]) ^ Vd.b.d(this.f89341v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f89341v[i10] = this.f27645s;
        super.hf(i10);
    }

    @Override
    public short[] i0(short[] sArr) {
        int size = size();
        if (sArr.length < size) {
            sArr = new short[size];
        }
        short[] sArr2 = this.f89341v;
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
    public v0 iterator() {
        return new c(this);
    }

    @Override
    public short[] j() {
        short[] sArr = new short[size()];
        short[] sArr2 = this.f27643q;
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
    public boolean j8(short s10, short s11) {
        int nf2 = nf(s10);
        if (nf2 < 0) {
            return false;
        }
        short[] sArr = this.f89341v;
        sArr[nf2] = (short) (sArr[nf2] + s11);
        return true;
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f89341v = new short[jf2];
        return jf2;
    }

    @Override
    public Sd.i k() {
        return new f();
    }

    @Override
    public InterfaceC13973g keySet() {
        return new b();
    }

    @Override
    public short n0(short s10) {
        int nf2 = nf(s10);
        return nf2 < 0 ? this.f27645s : this.f89341v[nf2];
    }

    @Override
    public void putAll(Map<? extends Short, ? extends Short> map) {
        cf(map.size());
        for (Map.Entry<? extends Short, ? extends Short> entry : map.entrySet()) {
            Da(entry.getKey().shortValue(), entry.getValue().shortValue());
        }
    }

    @Override
    public void r(Ud.h hVar) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f89341v;
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
            Da(objectInput.readShort(), objectInput.readShort());
            readInt = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        N6(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public boolean v(t0 t0Var) {
        return h1(t0Var);
    }

    @Override
    public short[] values() {
        short[] sArr = new short[size()];
        short[] sArr2 = this.f89341v;
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
                objectOutput.writeShort(this.f27643q[i10]);
                objectOutput.writeShort(this.f89341v[i10]);
            }
            length = i10;
        }
    }

    @Override
    public void x4(ee.m0 m0Var) {
        cf(m0Var.size());
        v0 it = m0Var.iterator();
        while (it.hasNext()) {
            it.g();
            Da(it.key(), it.value());
        }
    }

    @Override
    public boolean z(short s10) {
        return W0(s10);
    }

    public final short zf(short s10, short s11, int i10) {
        short s12 = this.f27645s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            s12 = this.f89341v[i10];
            z10 = false;
        }
        this.f89341v[i10] = s11;
        if (z10) {
            ef(this.f27646t);
        }
        return s12;
    }

    public n0(int i10) {
        super(i10);
    }

    public n0(int i10, float f10) {
        super(i10, f10);
    }

    public n0(int i10, float f10, short s10, short s11) {
        super(i10, f10, s10, s11);
    }

    public n0(short[] sArr, short[] sArr2) {
        super(Math.max(sArr.length, sArr2.length));
        int min = Math.min(sArr.length, sArr2.length);
        for (int i10 = 0; i10 < min; i10++) {
            Da(sArr[i10], sArr2[i10]);
        }
    }

    public n0(ee.m0 m0Var) {
        super(m0Var.size());
        if (m0Var instanceof n0) {
            n0 n0Var = (n0) m0Var;
            this.f27454d = n0Var.f27454d;
            short s10 = n0Var.f27644r;
            this.f27644r = s10;
            this.f27645s = n0Var.f27645s;
            if (s10 != 0) {
                Arrays.fill(this.f27643q, s10);
            }
            short s11 = this.f27645s;
            if (s11 != 0) {
                Arrays.fill(this.f89341v, s11);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        x4(m0Var);
    }
}
