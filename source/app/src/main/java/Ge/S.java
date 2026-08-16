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
import ke.InterfaceC13972f;
import org.apache.commons.math3.geometry.VectorFormat;

public class S extends Wd.U implements ee.P, Externalizable {

    public static final long f88746w = 1;

    public transient char[] f88747v;

    public class a implements he.V {

        public boolean f88748a = true;

        public final StringBuilder f88749b;

        public a(StringBuilder sb2) {
            this.f88749b = sb2;
        }

        @Override
        public boolean a(long j10, char c10) {
            if (this.f88748a) {
                this.f88748a = false;
            } else {
                this.f88749b.append(", ");
            }
            this.f88749b.append(j10);
            this.f88749b.append("=");
            this.f88749b.append(c10);
            return true;
        }
    }

    public class b implements InterfaceC13972f {

        public class a implements he.b0 {

            public boolean f88752a = true;

            public final StringBuilder f88753b;

            public a(StringBuilder sb2) {
                this.f88753b = sb2;
            }

            @Override
            public boolean a(long j10) {
                if (this.f88752a) {
                    this.f88752a = false;
                } else {
                    this.f88753b.append(", ");
                }
                this.f88753b.append(j10);
                return true;
            }
        }

        public b() {
        }

        @Override
        public boolean B1(long[] jArr) {
            int length = jArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (e(jArr[i10])) {
                    z10 = true;
                }
                length = i10;
            }
        }

        @Override
        public boolean B2(Sd.h hVar) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean H1(Sd.h hVar) {
            Zd.b0 it = hVar.iterator();
            while (it.hasNext()) {
                if (!S.this.E(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean M0(long j10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public long[] O0(long[] jArr) {
            return S.this.h0(jArr);
        }

        @Override
        public boolean Q1(long[] jArr) {
            Arrays.sort(jArr);
            S s10 = S.this;
            long[] jArr2 = s10.f27511q;
            byte[] bArr = s10.f27568l;
            int length = jArr2.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] != 1 || Arrays.binarySearch(jArr, jArr2[i10]) >= 0) {
                    length = i10;
                } else {
                    S.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean U1(long[] jArr) {
            for (long j10 : jArr) {
                if (!S.this.X0(j10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean X0(long j10) {
            return S.this.X0(j10);
        }

        @Override
        public boolean addAll(Collection<? extends Long> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            S.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Long) {
                    if (!S.this.E(((Long) obj).longValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean e(long j10) {
            return S.this.f27513s != S.this.e(j10);
        }

        @Override
        public boolean equals(Object obj) {
            if (!(obj instanceof InterfaceC13972f)) {
                return false;
            }
            InterfaceC13972f interfaceC13972f = (InterfaceC13972f) obj;
            if (interfaceC13972f.size() != size()) {
                return false;
            }
            int length = S.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                S s10 = S.this;
                if (s10.f27568l[i10] == 1 && !interfaceC13972f.X0(s10.f27511q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public boolean f2(Sd.h hVar) {
            if (this == hVar) {
                clear();
                return true;
            }
            Zd.b0 it = hVar.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (e(it.next())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public int hashCode() {
            int length = S.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                S s10 = S.this;
                if (s10.f27568l[i11] == 1) {
                    i10 += Vd.b.e(s10.f27511q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public long i() {
            return S.this.f27512r;
        }

        @Override
        public boolean isEmpty() {
            return S.this.f27452b == 0;
        }

        @Override
        public Zd.b0 iterator() {
            S s10 = S.this;
            return new d(s10);
        }

        @Override
        public boolean j1(he.b0 b0Var) {
            return S.this.l0(b0Var);
        }

        @Override
        public boolean q1(Sd.h hVar) {
            boolean z10 = false;
            if (this == hVar) {
                return false;
            }
            Zd.b0 it = iterator();
            while (it.hasNext()) {
                if (!hVar.X0(it.next())) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            boolean z10 = false;
            for (Object obj : collection) {
                if ((obj instanceof Long) && e(((Long) obj).longValue())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            Zd.b0 it = iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (!collection.contains(Long.valueOf(it.next()))) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public int size() {
            return S.this.f27452b;
        }

        @Override
        public long[] toArray() {
            return S.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            S.this.l0(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean y2(long[] jArr) {
            throw new UnsupportedOperationException();
        }
    }

    public class c extends Wd.J implements Zd.X {
        public c(S s10) {
            super(s10);
        }

        @Override
        public char a(char c10) {
            char value = value();
            S.this.f88747v[this.f27465d] = c10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public long key() {
            return S.this.f27511q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                S.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public char value() {
            return S.this.f88747v[this.f27465d];
        }
    }

    public class d extends Wd.J implements Zd.b0 {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public long next() {
            j();
            return S.this.f27511q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                S.this.hf(this.f27465d);
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
            return S.this.f88747v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                S.this.hf(this.f27465d);
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

            public boolean f88759a = true;

            public final StringBuilder f88760b;

            public a(StringBuilder sb2) {
                this.f88760b = sb2;
            }

            @Override
            public boolean a(char c10) {
                if (this.f88759a) {
                    this.f88759a = false;
                } else {
                    this.f88760b.append(", ");
                }
                this.f88760b.append(c10);
                return true;
            }
        }

        public f() {
        }

        @Override
        public char[] Q0(char[] cArr) {
            return S.this.Z(cArr);
        }

        @Override
        public boolean X1(char[] cArr) {
            Arrays.sort(cArr);
            S s10 = S.this;
            char[] cArr2 = s10.f88747v;
            byte[] bArr = s10.f27568l;
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
                    S.this.hf(i10);
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
            S s10 = S.this;
            char[] cArr = s10.f88747v;
            long[] jArr = s10.f27511q;
            int length = cArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                long j10 = jArr[i10];
                if (j10 != 0 && j10 != 2 && c10 == cArr[i10]) {
                    S.this.hf(i10);
                    return true;
                }
                length = i10;
            }
        }

        @Override
        public boolean b1(char c10) {
            return S.this.O(c10);
        }

        @Override
        public void clear() {
            S.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Character) {
                    if (!S.this.O(((Character) obj).charValue())) {
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
            return S.this.K(interfaceC13462q);
        }

        @Override
        public char i() {
            return S.this.f27513s;
        }

        @Override
        public boolean isEmpty() {
            return S.this.f27452b == 0;
        }

        @Override
        public InterfaceC3458p iterator() {
            S s10 = S.this;
            return new e(s10);
        }

        @Override
        public boolean n2(char[] cArr) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean p2(Sd.b bVar) {
            InterfaceC3458p it = bVar.iterator();
            while (it.hasNext()) {
                if (!S.this.O(it.next())) {
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
            return S.this.f27452b;
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
            return S.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            S.this.K(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean u1(char[] cArr) {
            for (char c10 : cArr) {
                if (!S.this.O(c10)) {
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

    public S() {
    }

    @Override
    public boolean E(long j10) {
        return X0(j10);
    }

    @Override
    public boolean H0(long j10) {
        return kb(j10, (char) 1);
    }

    @Override
    public boolean K(InterfaceC13462q interfaceC13462q) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f88747v;
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
        char[] cArr = this.f88747v;
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
    public void P4(ee.P p10) {
        cf(p10.size());
        Zd.X it = p10.iterator();
        while (it.hasNext()) {
            it.g();
            h7(it.key(), it.value());
        }
    }

    @Override
    public char X7(long j10, char c10, char c11) {
        int pf2 = pf(j10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            char[] cArr = this.f88747v;
            c11 = (char) (cArr[pf2] + c10);
            cArr[pf2] = c11;
            z10 = false;
        } else {
            this.f88747v[pf2] = c11;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27514t);
        }
        return c11;
    }

    @Override
    public boolean Xd(he.V v10) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f27511q;
        char[] cArr = this.f88747v;
        int length = jArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !v10.a(jArr[i10], cArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public char[] Z(char[] cArr) {
        int size = size();
        if (cArr.length < size) {
            cArr = new char[size];
        }
        char[] cArr2 = this.f88747v;
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
    public boolean a8(he.V v10) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f27511q;
        char[] cArr = this.f88747v;
        kf();
        try {
            int length = jArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !v10.a(jArr[i10], cArr[i10])) {
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
        long[] jArr = this.f27511q;
        Arrays.fill(jArr, 0, jArr.length, this.f27512r);
        char[] cArr = this.f88747v;
        Arrays.fill(cArr, 0, cArr.length, this.f27513s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    @Override
    public char e(long j10) {
        char c10 = this.f27513s;
        int nf2 = nf(j10);
        if (nf2 < 0) {
            return c10;
        }
        char c11 = this.f88747v[nf2];
        hf(nf2);
        return c11;
    }

    public boolean equals(Object obj) {
        char u10;
        char c10;
        if (!(obj instanceof ee.P)) {
            return false;
        }
        ee.P p10 = (ee.P) obj;
        if (p10.size() != size()) {
            return false;
        }
        char[] cArr = this.f88747v;
        byte[] bArr = this.f27568l;
        char i10 = i();
        char i11 = p10.i();
        int length = cArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1 && (c10 = cArr[i12]) != (u10 = p10.u(this.f27511q[i12])) && c10 != i10 && u10 != i11) {
                return false;
            }
            length = i12;
        }
    }

    @Override
    public void g(Ud.b bVar) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f88747v;
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
        long[] jArr = this.f27511q;
        int length = jArr.length;
        char[] cArr = this.f88747v;
        byte[] bArr = this.f27568l;
        this.f27511q = new long[i10];
        this.f88747v = new char[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f88747v[pf(jArr[i11])] = cArr[i11];
            }
            length = i11;
        }
    }

    @Override
    public long[] h0(long[] jArr) {
        int size = size();
        if (jArr.length < size) {
            jArr = new long[size];
        }
        long[] jArr2 = this.f27511q;
        byte[] bArr = this.f27568l;
        int length = jArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return jArr;
            }
            if (bArr[i11] == 1) {
                jArr[i10] = jArr2[i11];
                i10++;
            }
            length = i11;
        }
    }

    @Override
    public char h7(long j10, char c10) {
        return zf(j10, c10, pf(j10));
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f88747v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.e(this.f27511q[i11]) ^ Vd.b.d(this.f88747v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f88747v[i10] = this.f27513s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public Zd.X iterator() {
        return new c(this);
    }

    @Override
    public long[] j() {
        long[] jArr = new long[size()];
        long[] jArr2 = this.f27511q;
        byte[] bArr = this.f27568l;
        int length = jArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return jArr;
            }
            if (bArr[i11] == 1) {
                jArr[i10] = jArr2[i11];
                i10++;
            }
            length = i11;
        }
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f88747v = new char[jf2];
        return jf2;
    }

    @Override
    public Sd.b k() {
        return new f();
    }

    @Override
    public boolean kb(long j10, char c10) {
        int nf2 = nf(j10);
        if (nf2 < 0) {
            return false;
        }
        char[] cArr = this.f88747v;
        cArr[nf2] = (char) (cArr[nf2] + c10);
        return true;
    }

    @Override
    public InterfaceC13972f keySet() {
        return new b();
    }

    @Override
    public boolean l0(he.b0 b0Var) {
        return j1(b0Var);
    }

    @Override
    public void putAll(Map<? extends Long, ? extends Character> map) {
        cf(map.size());
        for (Map.Entry<? extends Long, ? extends Character> entry : map.entrySet()) {
            h7(entry.getKey().longValue(), entry.getValue().charValue());
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
            h7(objectInput.readLong(), objectInput.readChar());
            readInt = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        Xd(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public char u(long j10) {
        int nf2 = nf(j10);
        return nf2 < 0 ? this.f27513s : this.f88747v[nf2];
    }

    @Override
    public char[] values() {
        char[] cArr = new char[size()];
        char[] cArr2 = this.f88747v;
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
    public char wd(long j10, char c10) {
        int pf2 = pf(j10);
        return pf2 < 0 ? this.f88747v[(-pf2) - 1] : zf(j10, c10, pf2);
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
                objectOutput.writeLong(this.f27511q[i10]);
                objectOutput.writeChar(this.f88747v[i10]);
            }
            length = i10;
        }
    }

    public final char zf(long j10, char c10, int i10) {
        char c11 = this.f27513s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            c11 = this.f88747v[i10];
            z10 = false;
        }
        this.f88747v[i10] = c10;
        if (z10) {
            ef(this.f27514t);
        }
        return c11;
    }

    public S(int i10) {
        super(i10);
    }

    public S(int i10, float f10) {
        super(i10, f10);
    }

    public S(int i10, float f10, long j10, char c10) {
        super(i10, f10, j10, c10);
    }

    public S(long[] jArr, char[] cArr) {
        super(Math.max(jArr.length, cArr.length));
        int min = Math.min(jArr.length, cArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            h7(jArr[i10], cArr[i10]);
        }
    }

    public S(ee.P p10) {
        super(p10.size());
        if (p10 instanceof S) {
            S s10 = (S) p10;
            this.f27454d = s10.f27454d;
            long j10 = s10.f27512r;
            this.f27512r = j10;
            this.f27513s = s10.f27513s;
            if (j10 != 0) {
                Arrays.fill(this.f27511q, j10);
            }
            char c10 = this.f27513s;
            if (c10 != 0) {
                Arrays.fill(this.f88747v, c10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        P4(p10);
    }
}
