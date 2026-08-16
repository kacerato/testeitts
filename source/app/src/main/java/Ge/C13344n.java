package ge;

import Wd.AbstractC3172o;
import Zd.InterfaceC3458p;
import Zd.InterfaceC3459q;
import ee.InterfaceC13073n;
import he.InterfaceC13460o;
import he.InterfaceC13462q;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Map;
import ke.InterfaceC13968b;
import org.apache.commons.math3.geometry.VectorFormat;

public class C13344n extends AbstractC3172o implements InterfaceC13073n, Externalizable {

    public static final long f89324w = 1;

    public transient long[] f89325v;

    public class a implements InterfaceC13460o {

        public boolean f89326a = true;

        public final StringBuilder f89327b;

        public a(StringBuilder sb2) {
            this.f89327b = sb2;
        }

        @Override
        public boolean a(char c10, long j10) {
            if (this.f89326a) {
                this.f89326a = false;
            } else {
                this.f89327b.append(", ");
            }
            this.f89327b.append(c10);
            this.f89327b.append("=");
            this.f89327b.append(j10);
            return true;
        }
    }

    public class b extends Wd.J implements InterfaceC3459q {
        public b(C13344n c13344n) {
            super(c13344n);
        }

        @Override
        public long d(long j10) {
            long value = value();
            C13344n.this.f89325v[this.f27465d] = j10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public char key() {
            return C13344n.this.f27662q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13344n.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public long value() {
            return C13344n.this.f89325v[this.f27465d];
        }
    }

    public class c extends Wd.J implements InterfaceC3458p {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public char next() {
            j();
            return C13344n.this.f27662q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13344n.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class d extends Wd.J implements Zd.b0 {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public long next() {
            j();
            return C13344n.this.f89325v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13344n.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class e implements InterfaceC13968b {

        public class a implements InterfaceC13462q {

            public boolean f89333a = true;

            public final StringBuilder f89334b;

            public a(StringBuilder sb2) {
                this.f89334b = sb2;
            }

            @Override
            public boolean a(char c10) {
                if (this.f89333a) {
                    this.f89333a = false;
                } else {
                    this.f89334b.append(", ");
                }
                this.f89334b.append(c10);
                return true;
            }
        }

        public e() {
        }

        @Override
        public char[] Q0(char[] cArr) {
            return C13344n.this.V(cArr);
        }

        @Override
        public boolean X1(char[] cArr) {
            Arrays.sort(cArr);
            C13344n c13344n = C13344n.this;
            char[] cArr2 = c13344n.f27662q;
            byte[] bArr = c13344n.f27568l;
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
                    C13344n.this.hf(i10);
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
            return C13344n.this.f27664s != C13344n.this.b(c10);
        }

        @Override
        public boolean b1(char c10) {
            return C13344n.this.b1(c10);
        }

        @Override
        public void clear() {
            C13344n.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Character) {
                    if (!C13344n.this.C(((Character) obj).charValue())) {
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
        public boolean equals(Object obj) {
            if (!(obj instanceof InterfaceC13968b)) {
                return false;
            }
            InterfaceC13968b interfaceC13968b = (InterfaceC13968b) obj;
            if (interfaceC13968b.size() != size()) {
                return false;
            }
            int length = C13344n.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                C13344n c13344n = C13344n.this;
                if (c13344n.f27568l[i10] == 1 && !interfaceC13968b.b1(c13344n.f27662q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public boolean g1(InterfaceC13462q interfaceC13462q) {
            return C13344n.this.y(interfaceC13462q);
        }

        @Override
        public int hashCode() {
            int length = C13344n.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                C13344n c13344n = C13344n.this;
                if (c13344n.f27568l[i11] == 1) {
                    i10 += Vd.b.d(c13344n.f27662q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public char i() {
            return C13344n.this.f27663r;
        }

        @Override
        public boolean isEmpty() {
            return C13344n.this.f27452b == 0;
        }

        @Override
        public InterfaceC3458p iterator() {
            C13344n c13344n = C13344n.this;
            return new c(c13344n);
        }

        @Override
        public boolean n2(char[] cArr) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean p2(Sd.b bVar) {
            InterfaceC3458p it = bVar.iterator();
            while (it.hasNext()) {
                if (!C13344n.this.C(it.next())) {
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
            return C13344n.this.f27452b;
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
            return C13344n.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13344n.this.y(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean u1(char[] cArr) {
            for (char c10 : cArr) {
                if (!C13344n.this.b1(c10)) {
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

    public class f implements Sd.h {

        public class a implements he.b0 {

            public boolean f89337a = true;

            public final StringBuilder f89338b;

            public a(StringBuilder sb2) {
                this.f89338b = sb2;
            }

            @Override
            public boolean a(long j10) {
                if (this.f89337a) {
                    this.f89337a = false;
                } else {
                    this.f89338b.append(", ");
                }
                this.f89338b.append(j10);
                return true;
            }
        }

        public f() {
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
                if (!C13344n.this.R(it.next())) {
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
            return C13344n.this.g0(jArr);
        }

        @Override
        public boolean Q1(long[] jArr) {
            Arrays.sort(jArr);
            C13344n c13344n = C13344n.this;
            long[] jArr2 = c13344n.f89325v;
            byte[] bArr = c13344n.f27568l;
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
                    C13344n.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean U1(long[] jArr) {
            for (long j10 : jArr) {
                if (!C13344n.this.R(j10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean X0(long j10) {
            return C13344n.this.R(j10);
        }

        @Override
        public boolean addAll(Collection<? extends Long> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C13344n.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Long) {
                    if (!C13344n.this.R(((Long) obj).longValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean e(long j10) {
            C13344n c13344n = C13344n.this;
            long[] jArr = c13344n.f89325v;
            char[] cArr = c13344n.f27662q;
            int length = jArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                char c10 = cArr[i10];
                if (c10 != 0 && c10 != 2 && j10 == jArr[i10]) {
                    C13344n.this.hf(i10);
                    return true;
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
        public long i() {
            return C13344n.this.f27664s;
        }

        @Override
        public boolean isEmpty() {
            return C13344n.this.f27452b == 0;
        }

        @Override
        public Zd.b0 iterator() {
            C13344n c13344n = C13344n.this;
            return new d(c13344n);
        }

        @Override
        public boolean j1(he.b0 b0Var) {
            return C13344n.this.x(b0Var);
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
            return C13344n.this.f27452b;
        }

        @Override
        public long[] toArray() {
            return C13344n.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13344n.this.x(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean y2(long[] jArr) {
            throw new UnsupportedOperationException();
        }
    }

    public C13344n() {
    }

    @Override
    public boolean C(char c10) {
        return b1(c10);
    }

    @Override
    public boolean D0(char c10) {
        return Ld(c10, 1L);
    }

    @Override
    public long D2(char c10, long j10, long j11) {
        int pf2 = pf(c10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            long[] jArr = this.f89325v;
            long j12 = j10 + jArr[pf2];
            jArr[pf2] = j12;
            z10 = false;
            j11 = j12;
        } else {
            this.f89325v[pf2] = j11;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27665t);
        }
        return j11;
    }

    @Override
    public long G4(char c10, long j10) {
        return zf(c10, j10, pf(c10));
    }

    @Override
    public boolean Ke(InterfaceC13460o interfaceC13460o) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f27662q;
        long[] jArr = this.f89325v;
        kf();
        try {
            int length = cArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !interfaceC13460o.a(cArr[i10], jArr[i10])) {
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
    public boolean Ld(char c10, long j10) {
        int nf2 = nf(c10);
        if (nf2 < 0) {
            return false;
        }
        long[] jArr = this.f89325v;
        jArr[nf2] = jArr[nf2] + j10;
        return true;
    }

    @Override
    public boolean R(long j10) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f89325v;
        int length = jArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return false;
            }
            if (bArr[i10] == 1 && j10 == jArr[i10]) {
                return true;
            }
            length = i10;
        }
    }

    @Override
    public char[] V(char[] cArr) {
        int size = size();
        if (cArr.length < size) {
            cArr = new char[size];
        }
        char[] cArr2 = this.f27662q;
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
    public boolean V7(InterfaceC13460o interfaceC13460o) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f27662q;
        long[] jArr = this.f89325v;
        int length = cArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13460o.a(cArr[i10], jArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public long b(char c10) {
        long j10 = this.f27664s;
        int nf2 = nf(c10);
        if (nf2 < 0) {
            return j10;
        }
        long j11 = this.f89325v[nf2];
        hf(nf2);
        return j11;
    }

    @Override
    public void clear() {
        super.clear();
        char[] cArr = this.f27662q;
        Arrays.fill(cArr, 0, cArr.length, this.f27663r);
        long[] jArr = this.f89325v;
        Arrays.fill(jArr, 0, jArr.length, this.f27664s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof InterfaceC13073n)) {
            return false;
        }
        InterfaceC13073n interfaceC13073n = (InterfaceC13073n) obj;
        if (interfaceC13073n.size() != size()) {
            return false;
        }
        long[] jArr = this.f89325v;
        byte[] bArr = this.f27568l;
        long i10 = i();
        long i11 = interfaceC13073n.i();
        int length = jArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1) {
                long o02 = interfaceC13073n.o0(this.f27662q[i12]);
                long j10 = jArr[i12];
                if (j10 != o02 && j10 != i10 && o02 != i11) {
                    return false;
                }
            }
            length = i12;
        }
    }

    @Override
    public long[] g0(long[] jArr) {
        int size = size();
        if (jArr.length < size) {
            jArr = new long[size];
        }
        long[] jArr2 = this.f89325v;
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
    public void gf(int i10) {
        char[] cArr = this.f27662q;
        int length = cArr.length;
        long[] jArr = this.f89325v;
        byte[] bArr = this.f27568l;
        this.f27662q = new char[i10];
        this.f89325v = new long[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f89325v[pf(cArr[i11])] = jArr[i11];
            }
            length = i11;
        }
    }

    @Override
    public void h(Ud.f fVar) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f89325v;
        int length = jArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i10] == 1) {
                jArr[i10] = fVar.a(jArr[i10]);
            }
            length = i10;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f89325v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.d(this.f27662q[i11]) ^ Vd.b.e(this.f89325v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f89325v[i10] = this.f27664s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public InterfaceC3459q iterator() {
        return new b(this);
    }

    @Override
    public char[] j() {
        char[] cArr = new char[size()];
        char[] cArr2 = this.f27662q;
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
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f89325v = new long[jf2];
        return jf2;
    }

    @Override
    public Sd.h k() {
        return new f();
    }

    @Override
    public InterfaceC13968b keySet() {
        return new e();
    }

    @Override
    public long o0(char c10) {
        int nf2 = nf(c10);
        return nf2 < 0 ? this.f27664s : this.f89325v[nf2];
    }

    @Override
    public void putAll(Map<? extends Character, ? extends Long> map) {
        cf(map.size());
        for (Map.Entry<? extends Character, ? extends Long> entry : map.entrySet()) {
            G4(entry.getKey().charValue(), entry.getValue().longValue());
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
            G4(objectInput.readChar(), objectInput.readLong());
            readInt = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        V7(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public long[] values() {
        long[] jArr = new long[size()];
        long[] jArr2 = this.f89325v;
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
                objectOutput.writeChar(this.f27662q[i10]);
                objectOutput.writeLong(this.f89325v[i10]);
            }
            length = i10;
        }
    }

    @Override
    public boolean x(he.b0 b0Var) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f89325v;
        int length = jArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !b0Var.a(jArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean y(InterfaceC13462q interfaceC13462q) {
        return g1(interfaceC13462q);
    }

    @Override
    public long z9(char c10, long j10) {
        int pf2 = pf(c10);
        return pf2 < 0 ? this.f89325v[(-pf2) - 1] : zf(c10, j10, pf2);
    }

    @Override
    public void za(InterfaceC13073n interfaceC13073n) {
        cf(interfaceC13073n.size());
        InterfaceC3459q it = interfaceC13073n.iterator();
        while (it.hasNext()) {
            it.g();
            G4(it.key(), it.value());
        }
    }

    public final long zf(char c10, long j10, int i10) {
        long j11 = this.f27664s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            j11 = this.f89325v[i10];
            z10 = false;
        }
        this.f89325v[i10] = j10;
        if (z10) {
            ef(this.f27665t);
        }
        return j11;
    }

    public C13344n(int i10) {
        super(i10);
    }

    public C13344n(int i10, float f10) {
        super(i10, f10);
    }

    public C13344n(int i10, float f10, char c10, long j10) {
        super(i10, f10, c10, j10);
    }

    public C13344n(char[] cArr, long[] jArr) {
        super(Math.max(cArr.length, jArr.length));
        int min = Math.min(cArr.length, jArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            G4(cArr[i10], jArr[i10]);
        }
    }

    public C13344n(InterfaceC13073n interfaceC13073n) {
        super(interfaceC13073n.size());
        if (interfaceC13073n instanceof C13344n) {
            C13344n c13344n = (C13344n) interfaceC13073n;
            this.f27454d = c13344n.f27454d;
            char c10 = c13344n.f27663r;
            this.f27663r = c10;
            this.f27664s = c13344n.f27664s;
            if (c10 != 0) {
                Arrays.fill(this.f27662q, c10);
            }
            long j10 = this.f27664s;
            if (j10 != 0) {
                Arrays.fill(this.f89325v, j10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        za(interfaceC13073n);
    }
}
