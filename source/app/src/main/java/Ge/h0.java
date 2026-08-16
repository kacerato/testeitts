package ge;

import Zd.InterfaceC3458p;
import Zd.o0;
import Zd.s0;
import he.InterfaceC13462q;
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

public class h0 extends Wd.e0 implements ee.g0, Externalizable {

    public static final long f89146w = 1;

    public transient char[] f89147v;

    public class a implements he.n0 {

        public boolean f89148a = true;

        public final StringBuilder f89149b;

        public a(StringBuilder sb2) {
            this.f89149b = sb2;
        }

        @Override
        public boolean a(short s10, char c10) {
            if (this.f89148a) {
                this.f89148a = false;
            } else {
                this.f89149b.append(", ");
            }
            this.f89149b.append((int) s10);
            this.f89149b.append("=");
            this.f89149b.append(c10);
            return true;
        }
    }

    public class b implements InterfaceC13973g {

        public class a implements t0 {

            public boolean f89152a = true;

            public final StringBuilder f89153b;

            public a(StringBuilder sb2) {
                this.f89153b = sb2;
            }

            @Override
            public boolean a(short s10) {
                if (this.f89152a) {
                    this.f89152a = false;
                } else {
                    this.f89153b.append(", ");
                }
                this.f89153b.append((int) s10);
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
            return h0.this.Y(sArr);
        }

        @Override
        public boolean W0(short s10) {
            return h0.this.W0(s10);
        }

        @Override
        public boolean Z1(short[] sArr) {
            for (short s10 : sArr) {
                if (!h0.this.W0(s10)) {
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
            h0.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Short) {
                    if (!h0.this.z(((Short) obj).shortValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean d(short s10) {
            return h0.this.f27586s != h0.this.d(s10);
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
            int length = h0.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                h0 h0Var = h0.this;
                if (h0Var.f27568l[i10] == 1 && !interfaceC13973g.W0(h0Var.f27584q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public boolean h1(t0 t0Var) {
            return h0.this.v(t0Var);
        }

        @Override
        public int hashCode() {
            int length = h0.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                h0 h0Var = h0.this;
                if (h0Var.f27568l[i11] == 1) {
                    i10 += Vd.b.d(h0Var.f27584q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public short i() {
            return h0.this.f27585r;
        }

        @Override
        public boolean isEmpty() {
            return h0.this.f27452b == 0;
        }

        @Override
        public s0 iterator() {
            h0 h0Var = h0.this;
            return new d(h0Var);
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
            h0 h0Var = h0.this;
            short[] sArr2 = h0Var.f27584q;
            byte[] bArr = h0Var.f27568l;
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
                    h0.this.hf(i10);
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
            return h0.this.f27452b;
        }

        @Override
        public short[] toArray() {
            return h0.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            h0.this.v(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean v2(Sd.i iVar) {
            s0 it = iVar.iterator();
            while (it.hasNext()) {
                if (!h0.this.z(it.next())) {
                    return false;
                }
            }
            return true;
        }
    }

    public class c extends Wd.J implements o0 {
        public c(h0 h0Var) {
            super(h0Var);
        }

        @Override
        public char a(char c10) {
            char value = value();
            h0.this.f89147v[this.f27465d] = c10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public short key() {
            return h0.this.f27584q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                h0.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public char value() {
            return h0.this.f89147v[this.f27465d];
        }
    }

    public class d extends Wd.J implements s0 {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public short next() {
            j();
            return h0.this.f27584q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                h0.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class e extends Wd.J implements InterfaceC3458p {
        public e(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public char next() {
            j();
            return h0.this.f89147v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                h0.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class f implements Sd.b {

        public class a implements InterfaceC13462q {

            public boolean f89159a = true;

            public final StringBuilder f89160b;

            public a(StringBuilder sb2) {
                this.f89160b = sb2;
            }

            @Override
            public boolean a(char c10) {
                if (this.f89159a) {
                    this.f89159a = false;
                } else {
                    this.f89160b.append(", ");
                }
                this.f89160b.append(c10);
                return true;
            }
        }

        public f() {
        }

        @Override
        public char[] Q0(char[] cArr) {
            return h0.this.Z(cArr);
        }

        @Override
        public boolean X1(char[] cArr) {
            Arrays.sort(cArr);
            h0 h0Var = h0.this;
            char[] cArr2 = h0Var.f89147v;
            byte[] bArr = h0Var.f27568l;
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
                    h0.this.hf(i10);
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
            h0 h0Var = h0.this;
            char[] cArr = h0Var.f89147v;
            short[] sArr = h0Var.f27584q;
            int length = cArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                short s10 = sArr[i10];
                if (s10 != 0 && s10 != 2 && c10 == cArr[i10]) {
                    h0.this.hf(i10);
                    return true;
                }
                length = i10;
            }
        }

        @Override
        public boolean b1(char c10) {
            return h0.this.O(c10);
        }

        @Override
        public void clear() {
            h0.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Character) {
                    if (!h0.this.O(((Character) obj).charValue())) {
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
        public boolean g1(InterfaceC13462q interfaceC13462q) {
            return h0.this.K(interfaceC13462q);
        }

        @Override
        public char i() {
            return h0.this.f27586s;
        }

        @Override
        public boolean isEmpty() {
            return h0.this.f27452b == 0;
        }

        @Override
        public InterfaceC3458p iterator() {
            h0 h0Var = h0.this;
            return new e(h0Var);
        }

        @Override
        public boolean n2(char[] cArr) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean p2(Sd.b bVar) {
            InterfaceC3458p it = bVar.iterator();
            while (it.hasNext()) {
                if (!h0.this.O(it.next())) {
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
            return h0.this.f27452b;
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
            return h0.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            h0.this.K(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean u1(char[] cArr) {
            for (char c10 : cArr) {
                if (!h0.this.O(c10)) {
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

    public h0() {
    }

    @Override
    public void Ab(ee.g0 g0Var) {
        cf(g0Var.size());
        o0 it = g0Var.iterator();
        while (it.hasNext()) {
            it.g();
            ka(it.key(), it.value());
        }
    }

    @Override
    public char D3(short s10, char c10) {
        int pf2 = pf(s10);
        return pf2 < 0 ? this.f89147v[(-pf2) - 1] : zf(s10, c10, pf2);
    }

    @Override
    public boolean I0(short s10) {
        return h8(s10, (char) 1);
    }

    @Override
    public boolean K(InterfaceC13462q interfaceC13462q) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f89147v;
        int length = cArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13462q.a(cArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean O(char c10) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f89147v;
        int length = cArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return false;
            }
            if (bArr[i10] == 1 && c10 == cArr[i10]) {
                return true;
            }
            length = i10;
        }
    }

    @Override
    public char Wb(short s10, char c10, char c11) {
        int pf2 = pf(s10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            char[] cArr = this.f89147v;
            char c12 = (char) (cArr[pf2] + c10);
            cArr[pf2] = c12;
            z10 = false;
            c11 = c12;
        } else {
            this.f89147v[pf2] = c11;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27587t);
        }
        return c11;
    }

    @Override
    public short[] Y(short[] sArr) {
        int size = size();
        if (sArr.length < size) {
            sArr = new short[size];
        }
        short[] sArr2 = this.f27584q;
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
    public char[] Z(char[] cArr) {
        int size = size();
        if (cArr.length < size) {
            cArr = new char[size];
        }
        char[] cArr2 = this.f89147v;
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
    public boolean Z5(he.n0 n0Var) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f27584q;
        char[] cArr = this.f89147v;
        int length = sArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !n0Var.a(sArr[i10], cArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public void clear() {
        super.clear();
        short[] sArr = this.f27584q;
        Arrays.fill(sArr, 0, sArr.length, this.f27585r);
        char[] cArr = this.f89147v;
        Arrays.fill(cArr, 0, cArr.length, this.f27586s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    @Override
    public char d(short s10) {
        char c10 = this.f27586s;
        int nf2 = nf(s10);
        if (nf2 < 0) {
            return c10;
        }
        char c11 = this.f89147v[nf2];
        hf(nf2);
        return c11;
    }

    public boolean equals(Object obj) {
        char n02;
        char c10;
        if (!(obj instanceof ee.g0)) {
            return false;
        }
        ee.g0 g0Var = (ee.g0) obj;
        if (g0Var.size() != size()) {
            return false;
        }
        char[] cArr = this.f89147v;
        byte[] bArr = this.f27568l;
        char i10 = i();
        char i11 = g0Var.i();
        int length = cArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1 && (c10 = cArr[i12]) != (n02 = g0Var.n0(this.f27584q[i12])) && c10 != i10 && n02 != i11) {
                return false;
            }
            length = i12;
        }
    }

    @Override
    public boolean fc(he.n0 n0Var) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f27584q;
        char[] cArr = this.f89147v;
        kf();
        try {
            int length = sArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !n0Var.a(sArr[i10], cArr[i10])) {
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
    public void g(Ud.b bVar) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f89147v;
        int length = cArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i10] == 1) {
                cArr[i10] = bVar.a(cArr[i10]);
            }
            length = i10;
        }
    }

    @Override
    public void gf(int i10) {
        short[] sArr = this.f27584q;
        int length = sArr.length;
        char[] cArr = this.f89147v;
        byte[] bArr = this.f27568l;
        this.f27584q = new short[i10];
        this.f89147v = new char[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f89147v[pf(sArr[i11])] = cArr[i11];
            }
            length = i11;
        }
    }

    @Override
    public boolean h8(short s10, char c10) {
        int nf2 = nf(s10);
        if (nf2 < 0) {
            return false;
        }
        char[] cArr = this.f89147v;
        cArr[nf2] = (char) (cArr[nf2] + c10);
        return true;
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f89147v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.d(this.f27584q[i11]) ^ Vd.b.d(this.f89147v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f89147v[i10] = this.f27586s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public o0 iterator() {
        return new c(this);
    }

    @Override
    public short[] j() {
        short[] sArr = new short[size()];
        short[] sArr2 = this.f27584q;
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
        this.f89147v = new char[jf2];
        return jf2;
    }

    @Override
    public Sd.b k() {
        return new f();
    }

    @Override
    public char ka(short s10, char c10) {
        return zf(s10, c10, pf(s10));
    }

    @Override
    public InterfaceC13973g keySet() {
        return new b();
    }

    @Override
    public char n0(short s10) {
        int nf2 = nf(s10);
        return nf2 < 0 ? this.f27586s : this.f89147v[nf2];
    }

    @Override
    public void putAll(Map<? extends Short, ? extends Character> map) {
        cf(map.size());
        for (Map.Entry<? extends Short, ? extends Character> entry : map.entrySet()) {
            ka(entry.getKey().shortValue(), entry.getValue().charValue());
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
            ka(objectInput.readShort(), objectInput.readChar());
            readInt = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        Z5(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public boolean v(t0 t0Var) {
        return h1(t0Var);
    }

    @Override
    public char[] values() {
        char[] cArr = new char[size()];
        char[] cArr2 = this.f89147v;
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
                objectOutput.writeShort(this.f27584q[i10]);
                objectOutput.writeChar(this.f89147v[i10]);
            }
            length = i10;
        }
    }

    @Override
    public boolean z(short s10) {
        return W0(s10);
    }

    public final char zf(short s10, char c10, int i10) {
        char c11 = this.f27586s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            c11 = this.f89147v[i10];
            z10 = false;
        }
        this.f89147v[i10] = c10;
        if (z10) {
            ef(this.f27587t);
        }
        return c11;
    }

    public h0(int i10) {
        super(i10);
    }

    public h0(int i10, float f10) {
        super(i10, f10);
    }

    public h0(int i10, float f10, short s10, char c10) {
        super(i10, f10, s10, c10);
    }

    public h0(short[] sArr, char[] cArr) {
        super(Math.max(sArr.length, cArr.length));
        int min = Math.min(sArr.length, cArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            ka(sArr[i10], cArr[i10]);
        }
    }

    public h0(ee.g0 g0Var) {
        super(g0Var.size());
        if (g0Var instanceof h0) {
            h0 h0Var = (h0) g0Var;
            this.f27454d = h0Var.f27454d;
            short s10 = h0Var.f27585r;
            this.f27585r = s10;
            this.f27586s = h0Var.f27586s;
            if (s10 != 0) {
                Arrays.fill(this.f27584q, s10);
            }
            char c10 = this.f27586s;
            if (c10 != 0) {
                Arrays.fill(this.f89147v, c10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        Ab(g0Var);
    }
}
