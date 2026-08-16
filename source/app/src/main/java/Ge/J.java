package ge;

import Zd.InterfaceC3458p;
import he.InterfaceC13462q;
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

public class J extends Wd.L implements ee.H, Externalizable {

    public static final long f88616w = 1;

    public transient char[] f88617v;

    public class a implements he.L {

        public boolean f88618a = true;

        public final StringBuilder f88619b;

        public a(StringBuilder sb2) {
            this.f88619b = sb2;
        }

        @Override
        public boolean a(int i10, char c10) {
            if (this.f88618a) {
                this.f88618a = false;
            } else {
                this.f88619b.append(", ");
            }
            this.f88619b.append(i10);
            this.f88619b.append("=");
            this.f88619b.append(c10);
            return true;
        }
    }

    public class b extends Wd.J implements Zd.M {
        public b(J j10) {
            super(j10);
        }

        @Override
        public char a(char c10) {
            char value = value();
            J.this.f88617v[this.f27465d] = c10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public int key() {
            return J.this.f27472q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                J.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public char value() {
            return J.this.f88617v[this.f27465d];
        }
    }

    public class c extends Wd.J implements Zd.Q {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public int next() {
            j();
            return J.this.f27472q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                J.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class d extends Wd.J implements InterfaceC3458p {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public char next() {
            j();
            return J.this.f88617v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                J.this.hf(this.f27465d);
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

            public boolean f88625a = true;

            public final StringBuilder f88626b;

            public a(StringBuilder sb2) {
                this.f88626b = sb2;
            }

            @Override
            public boolean a(int i10) {
                if (this.f88625a) {
                    this.f88625a = false;
                } else {
                    this.f88626b.append(", ");
                }
                this.f88626b.append(i10);
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
                if (!J.this.contains(i10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean M1(int[] iArr) {
            Arrays.sort(iArr);
            J j10 = J.this;
            int[] iArr2 = j10.f27472q;
            byte[] bArr = j10.f27568l;
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
                    J.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public int[] P0(int[] iArr) {
            return J.this.f0(iArr);
        }

        @Override
        public boolean U0(he.S s10) {
            return J.this.J(s10);
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
            J.this.clear();
        }

        @Override
        public boolean contains(int i10) {
            return J.this.contains(i10);
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Integer) {
                    if (!J.this.F(((Integer) obj).intValue())) {
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
            int length = J.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                J j10 = J.this;
                if (j10.f27568l[i10] == 1 && !interfaceC13971e.contains(j10.f27472q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public boolean h2(Sd.g gVar) {
            Zd.Q it = gVar.iterator();
            while (it.hasNext()) {
                if (!J.this.F(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int hashCode() {
            int length = J.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                J j10 = J.this;
                if (j10.f27568l[i11] == 1) {
                    i10 += Vd.b.d(j10.f27472q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public int i() {
            return J.this.f27473r;
        }

        @Override
        public boolean isEmpty() {
            return J.this.f27452b == 0;
        }

        @Override
        public Zd.Q iterator() {
            J j10 = J.this;
            return new c(j10);
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
            return J.this.f27474s != J.this.remove(i10);
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
            return J.this.f27452b;
        }

        @Override
        public int[] toArray() {
            return J.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            J.this.J(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean z2(int[] iArr) {
            throw new UnsupportedOperationException();
        }
    }

    public class f implements Sd.b {

        public class a implements InterfaceC13462q {

            public boolean f88629a = true;

            public final StringBuilder f88630b;

            public a(StringBuilder sb2) {
                this.f88630b = sb2;
            }

            @Override
            public boolean a(char c10) {
                if (this.f88629a) {
                    this.f88629a = false;
                } else {
                    this.f88630b.append(", ");
                }
                this.f88630b.append(c10);
                return true;
            }
        }

        public f() {
        }

        @Override
        public char[] Q0(char[] cArr) {
            return J.this.Z(cArr);
        }

        @Override
        public boolean X1(char[] cArr) {
            Arrays.sort(cArr);
            J j10 = J.this;
            char[] cArr2 = j10.f88617v;
            byte[] bArr = j10.f27568l;
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
                    J.this.hf(i10);
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
            J j10 = J.this;
            char[] cArr = j10.f88617v;
            int[] iArr = j10.f27472q;
            int length = cArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                int i11 = iArr[i10];
                if (i11 != 0 && i11 != 2 && c10 == cArr[i10]) {
                    J.this.hf(i10);
                    return true;
                }
                length = i10;
            }
        }

        @Override
        public boolean b1(char c10) {
            return J.this.O(c10);
        }

        @Override
        public void clear() {
            J.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Character) {
                    if (!J.this.O(((Character) obj).charValue())) {
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
            return J.this.K(interfaceC13462q);
        }

        @Override
        public char i() {
            return J.this.f27474s;
        }

        @Override
        public boolean isEmpty() {
            return J.this.f27452b == 0;
        }

        @Override
        public InterfaceC3458p iterator() {
            J j10 = J.this;
            return new d(j10);
        }

        @Override
        public boolean n2(char[] cArr) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean p2(Sd.b bVar) {
            InterfaceC3458p it = bVar.iterator();
            while (it.hasNext()) {
                if (!J.this.O(it.next())) {
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
            return J.this.f27452b;
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
            return J.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            J.this.K(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean u1(char[] cArr) {
            for (char c10 : cArr) {
                if (!J.this.O(c10)) {
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

    public J() {
    }

    @Override
    public boolean F(int i10) {
        return contains(i10);
    }

    @Override
    public boolean F0(int i10) {
        return Gb(i10, (char) 1);
    }

    @Override
    public boolean Gb(int i10, char c10) {
        int nf2 = nf(i10);
        if (nf2 < 0) {
            return false;
        }
        char[] cArr = this.f88617v;
        cArr[nf2] = (char) (cArr[nf2] + c10);
        return true;
    }

    @Override
    public boolean J(he.S s10) {
        return U0(s10);
    }

    @Override
    public char J7(int i10, char c10, char c11) {
        int pf2 = pf(i10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            char[] cArr = this.f88617v;
            char c12 = (char) (cArr[pf2] + c10);
            cArr[pf2] = c12;
            z10 = false;
            c11 = c12;
        } else {
            this.f88617v[pf2] = c11;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27475t);
        }
        return c11;
    }

    @Override
    public boolean K(InterfaceC13462q interfaceC13462q) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f88617v;
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
        char[] cArr = this.f88617v;
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
    public char Vd(int i10, char c10) {
        int pf2 = pf(i10);
        return pf2 < 0 ? this.f88617v[(-pf2) - 1] : zf(i10, c10, pf2);
    }

    @Override
    public char X4(int i10, char c10) {
        return zf(i10, c10, pf(i10));
    }

    @Override
    public char[] Z(char[] cArr) {
        int size = size();
        if (cArr.length < size) {
            cArr = new char[size];
        }
        char[] cArr2 = this.f88617v;
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
    public void clear() {
        super.clear();
        int[] iArr = this.f27472q;
        Arrays.fill(iArr, 0, iArr.length, this.f27473r);
        char[] cArr = this.f88617v;
        Arrays.fill(cArr, 0, cArr.length, this.f27474s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    public boolean equals(Object obj) {
        char c10;
        char c11;
        if (!(obj instanceof ee.H)) {
            return false;
        }
        ee.H h10 = (ee.H) obj;
        if (h10.size() != size()) {
            return false;
        }
        char[] cArr = this.f88617v;
        byte[] bArr = this.f27568l;
        char i10 = i();
        char i11 = h10.i();
        int length = cArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1 && (c11 = cArr[i12]) != (c10 = h10.get(this.f27472q[i12])) && c11 != i10 && c10 != i11) {
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
        int[] iArr2 = this.f27472q;
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
    public boolean f3(he.L l10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f27472q;
        char[] cArr = this.f88617v;
        int length = iArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !l10.a(iArr[i10], cArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public void g(Ud.b bVar) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f88617v;
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
    public char get(int i10) {
        int nf2 = nf(i10);
        return nf2 < 0 ? this.f27474s : this.f88617v[nf2];
    }

    @Override
    public void gf(int i10) {
        int[] iArr = this.f27472q;
        int length = iArr.length;
        char[] cArr = this.f88617v;
        byte[] bArr = this.f27568l;
        this.f27472q = new int[i10];
        this.f88617v = new char[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f88617v[pf(iArr[i11])] = cArr[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f88617v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.d(this.f27472q[i11]) ^ Vd.b.d(this.f88617v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f88617v[i10] = this.f27474s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public Zd.M iterator() {
        return new b(this);
    }

    @Override
    public int[] j() {
        int[] iArr = new int[size()];
        int[] iArr2 = this.f27472q;
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
        this.f88617v = new char[jf2];
        return jf2;
    }

    @Override
    public Sd.b k() {
        return new f();
    }

    @Override
    public InterfaceC13971e keySet() {
        return new e();
    }

    @Override
    public void m4(ee.H h10) {
        cf(h10.size());
        Zd.M it = h10.iterator();
        while (it.hasNext()) {
            it.g();
            X4(it.key(), it.value());
        }
    }

    @Override
    public boolean nc(he.L l10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f27472q;
        char[] cArr = this.f88617v;
        kf();
        try {
            int length = iArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !l10.a(iArr[i10], cArr[i10])) {
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
    public void putAll(Map<? extends Integer, ? extends Character> map) {
        cf(map.size());
        for (Map.Entry<? extends Integer, ? extends Character> entry : map.entrySet()) {
            X4(entry.getKey().intValue(), entry.getValue().charValue());
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
            X4(objectInput.readInt(), objectInput.readChar());
            readInt = i10;
        }
    }

    @Override
    public char remove(int i10) {
        char c10 = this.f27474s;
        int nf2 = nf(i10);
        if (nf2 < 0) {
            return c10;
        }
        char c11 = this.f88617v[nf2];
        hf(nf2);
        return c11;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        f3(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public char[] values() {
        char[] cArr = new char[size()];
        char[] cArr2 = this.f88617v;
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
                objectOutput.writeInt(this.f27472q[i10]);
                objectOutput.writeChar(this.f88617v[i10]);
            }
            length = i10;
        }
    }

    public final char zf(int i10, char c10, int i11) {
        char c11 = this.f27474s;
        boolean z10 = true;
        if (i11 < 0) {
            i11 = (-i11) - 1;
            c11 = this.f88617v[i11];
            z10 = false;
        }
        this.f88617v[i11] = c10;
        if (z10) {
            ef(this.f27475t);
        }
        return c11;
    }

    public J(int i10) {
        super(i10);
    }

    public J(int i10, float f10) {
        super(i10, f10);
    }

    public J(int i10, float f10, int i11, char c10) {
        super(i10, f10, i11, c10);
    }

    public J(int[] iArr, char[] cArr) {
        super(Math.max(iArr.length, cArr.length));
        int min = Math.min(iArr.length, cArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            X4(iArr[i10], cArr[i10]);
        }
    }

    public J(ee.H h10) {
        super(h10.size());
        if (h10 instanceof J) {
            J j10 = (J) h10;
            this.f27454d = j10.f27454d;
            int i10 = j10.f27473r;
            this.f27473r = i10;
            this.f27474s = j10.f27474s;
            if (i10 != 0) {
                Arrays.fill(this.f27472q, i10);
            }
            char c10 = this.f27474s;
            if (c10 != 0) {
                Arrays.fill(this.f88617v, c10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        m4(h10);
    }
}
