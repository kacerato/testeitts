package ge;

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

public class N extends Wd.Q implements ee.L, Externalizable {

    public static final long f88680w = 1;

    public transient long[] f88681v;

    public class a implements he.P {

        public boolean f88682a = true;

        public final StringBuilder f88683b;

        public a(StringBuilder sb2) {
            this.f88683b = sb2;
        }

        @Override
        public boolean a(int i10, long j10) {
            if (this.f88682a) {
                this.f88682a = false;
            } else {
                this.f88683b.append(", ");
            }
            this.f88683b.append(i10);
            this.f88683b.append("=");
            this.f88683b.append(j10);
            return true;
        }
    }

    public class b extends Wd.J implements Zd.S {
        public b(N n10) {
            super(n10);
        }

        @Override
        public long d(long j10) {
            long value = value();
            N.this.f88681v[this.f27465d] = j10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public int key() {
            return N.this.f27496q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                N.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public long value() {
            return N.this.f88681v[this.f27465d];
        }
    }

    public class c extends Wd.J implements Zd.Q {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public int next() {
            j();
            return N.this.f27496q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                N.this.hf(this.f27465d);
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
            return N.this.f88681v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                N.this.hf(this.f27465d);
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

            public boolean f88689a = true;

            public final StringBuilder f88690b;

            public a(StringBuilder sb2) {
                this.f88690b = sb2;
            }

            @Override
            public boolean a(int i10) {
                if (this.f88689a) {
                    this.f88689a = false;
                } else {
                    this.f88690b.append(", ");
                }
                this.f88690b.append(i10);
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
                if (!N.this.contains(i10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean M1(int[] iArr) {
            Arrays.sort(iArr);
            N n10 = N.this;
            int[] iArr2 = n10.f27496q;
            byte[] bArr = n10.f27568l;
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
                    N.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public int[] P0(int[] iArr) {
            return N.this.f0(iArr);
        }

        @Override
        public boolean U0(he.S s10) {
            return N.this.J(s10);
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
            N.this.clear();
        }

        @Override
        public boolean contains(int i10) {
            return N.this.contains(i10);
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Integer) {
                    if (!N.this.F(((Integer) obj).intValue())) {
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
            int length = N.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                N n10 = N.this;
                if (n10.f27568l[i10] == 1 && !interfaceC13971e.contains(n10.f27496q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public boolean h2(Sd.g gVar) {
            Zd.Q it = gVar.iterator();
            while (it.hasNext()) {
                if (!N.this.F(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int hashCode() {
            int length = N.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                N n10 = N.this;
                if (n10.f27568l[i11] == 1) {
                    i10 += Vd.b.d(n10.f27496q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public int i() {
            return N.this.f27497r;
        }

        @Override
        public boolean isEmpty() {
            return N.this.f27452b == 0;
        }

        @Override
        public Zd.Q iterator() {
            N n10 = N.this;
            return new c(n10);
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
            return N.this.f27498s != N.this.remove(i10);
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
            return N.this.f27452b;
        }

        @Override
        public int[] toArray() {
            return N.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            N.this.J(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean z2(int[] iArr) {
            throw new UnsupportedOperationException();
        }
    }

    public class f implements Sd.h {

        public class a implements he.b0 {

            public boolean f88693a = true;

            public final StringBuilder f88694b;

            public a(StringBuilder sb2) {
                this.f88694b = sb2;
            }

            @Override
            public boolean a(long j10) {
                if (this.f88693a) {
                    this.f88693a = false;
                } else {
                    this.f88694b.append(", ");
                }
                this.f88694b.append(j10);
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
                if (!N.this.R(it.next())) {
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
            return N.this.g0(jArr);
        }

        @Override
        public boolean Q1(long[] jArr) {
            Arrays.sort(jArr);
            N n10 = N.this;
            long[] jArr2 = n10.f88681v;
            byte[] bArr = n10.f27568l;
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
                    N.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean U1(long[] jArr) {
            for (long j10 : jArr) {
                if (!N.this.R(j10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean X0(long j10) {
            return N.this.R(j10);
        }

        @Override
        public boolean addAll(Collection<? extends Long> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            N.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Long) {
                    if (!N.this.R(((Long) obj).longValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean e(long j10) {
            N n10 = N.this;
            long[] jArr = n10.f88681v;
            int[] iArr = n10.f27496q;
            int length = jArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                int i11 = iArr[i10];
                if (i11 != 0 && i11 != 2 && j10 == jArr[i10]) {
                    N.this.hf(i10);
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
            return N.this.f27498s;
        }

        @Override
        public boolean isEmpty() {
            return N.this.f27452b == 0;
        }

        @Override
        public Zd.b0 iterator() {
            N n10 = N.this;
            return new d(n10);
        }

        @Override
        public boolean j1(he.b0 b0Var) {
            return N.this.x(b0Var);
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
            return N.this.f27452b;
        }

        @Override
        public long[] toArray() {
            return N.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            N.this.x(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean y2(long[] jArr) {
            throw new UnsupportedOperationException();
        }
    }

    public N() {
    }

    @Override
    public boolean F(int i10) {
        return contains(i10);
    }

    @Override
    public boolean F0(int i10) {
        return Nb(i10, 1L);
    }

    @Override
    public boolean J(he.S s10) {
        return U0(s10);
    }

    @Override
    public boolean Nb(int i10, long j10) {
        int nf2 = nf(i10);
        if (nf2 < 0) {
            return false;
        }
        long[] jArr = this.f88681v;
        jArr[nf2] = jArr[nf2] + j10;
        return true;
    }

    @Override
    public boolean R(long j10) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f88681v;
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
    public boolean Ua(he.P p10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f27496q;
        long[] jArr = this.f88681v;
        kf();
        try {
            int length = iArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !p10.a(iArr[i10], jArr[i10])) {
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
    public void Va(ee.L l10) {
        cf(l10.size());
        Zd.S it = l10.iterator();
        while (it.hasNext()) {
            it.g();
            h5(it.key(), it.value());
        }
    }

    @Override
    public void clear() {
        super.clear();
        int[] iArr = this.f27496q;
        Arrays.fill(iArr, 0, iArr.length, this.f27497r);
        long[] jArr = this.f88681v;
        Arrays.fill(jArr, 0, jArr.length, this.f27498s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ee.L)) {
            return false;
        }
        ee.L l10 = (ee.L) obj;
        if (l10.size() != size()) {
            return false;
        }
        long[] jArr = this.f88681v;
        byte[] bArr = this.f27568l;
        long i10 = i();
        long i11 = l10.i();
        int length = jArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1) {
                long j10 = l10.get(this.f27496q[i12]);
                long j11 = jArr[i12];
                if (j11 != j10 && j11 != i10 && j10 != i11) {
                    return false;
                }
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
        int[] iArr2 = this.f27496q;
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
    public long[] g0(long[] jArr) {
        int size = size();
        if (jArr.length < size) {
            jArr = new long[size];
        }
        long[] jArr2 = this.f88681v;
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
    public long get(int i10) {
        int nf2 = nf(i10);
        return nf2 < 0 ? this.f27498s : this.f88681v[nf2];
    }

    @Override
    public void gf(int i10) {
        int[] iArr = this.f27496q;
        int length = iArr.length;
        long[] jArr = this.f88681v;
        byte[] bArr = this.f27568l;
        this.f27496q = new int[i10];
        this.f88681v = new long[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f88681v[pf(iArr[i11])] = jArr[i11];
            }
            length = i11;
        }
    }

    @Override
    public void h(Ud.f fVar) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f88681v;
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

    @Override
    public long h5(int i10, long j10) {
        return zf(i10, j10, pf(i10));
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f88681v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.d(this.f27496q[i11]) ^ Vd.b.e(this.f88681v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f88681v[i10] = this.f27498s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public Zd.S iterator() {
        return new b(this);
    }

    @Override
    public int[] j() {
        int[] iArr = new int[size()];
        int[] iArr2 = this.f27496q;
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
        this.f88681v = new long[jf2];
        return jf2;
    }

    @Override
    public Sd.h k() {
        return new f();
    }

    @Override
    public InterfaceC13971e keySet() {
        return new e();
    }

    @Override
    public long la(int i10, long j10, long j11) {
        int pf2 = pf(i10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            long[] jArr = this.f88681v;
            long j12 = j10 + jArr[pf2];
            jArr[pf2] = j12;
            z10 = false;
            j11 = j12;
        } else {
            this.f88681v[pf2] = j11;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27499t);
        }
        return j11;
    }

    @Override
    public long nd(int i10, long j10) {
        int pf2 = pf(i10);
        return pf2 < 0 ? this.f88681v[(-pf2) - 1] : zf(i10, j10, pf2);
    }

    @Override
    public void putAll(Map<? extends Integer, ? extends Long> map) {
        cf(map.size());
        for (Map.Entry<? extends Integer, ? extends Long> entry : map.entrySet()) {
            h5(entry.getKey().intValue(), entry.getValue().longValue());
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
            h5(objectInput.readInt(), objectInput.readLong());
            readInt = i10;
        }
    }

    @Override
    public long remove(int i10) {
        long j10 = this.f27498s;
        int nf2 = nf(i10);
        if (nf2 < 0) {
            return j10;
        }
        long j11 = this.f88681v[nf2];
        hf(nf2);
        return j11;
    }

    @Override
    public boolean sc(he.P p10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f27496q;
        long[] jArr = this.f88681v;
        int length = iArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !p10.a(iArr[i10], jArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        sc(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public long[] values() {
        long[] jArr = new long[size()];
        long[] jArr2 = this.f88681v;
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
                objectOutput.writeInt(this.f27496q[i10]);
                objectOutput.writeLong(this.f88681v[i10]);
            }
            length = i10;
        }
    }

    @Override
    public boolean x(he.b0 b0Var) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f88681v;
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

    public final long zf(int i10, long j10, int i11) {
        long j11 = this.f27498s;
        boolean z10 = true;
        if (i11 < 0) {
            i11 = (-i11) - 1;
            j11 = this.f88681v[i11];
            z10 = false;
        }
        this.f88681v[i11] = j10;
        if (z10) {
            ef(this.f27499t);
        }
        return j11;
    }

    public N(int i10) {
        super(i10);
    }

    public N(int i10, float f10) {
        super(i10, f10);
    }

    public N(int i10, float f10, int i11, long j10) {
        super(i10, f10, i11, j10);
    }

    public N(int[] iArr, long[] jArr) {
        super(Math.max(iArr.length, jArr.length));
        int min = Math.min(iArr.length, jArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            h5(iArr[i10], jArr[i10]);
        }
    }

    public N(ee.L l10) {
        super(l10.size());
        if (l10 instanceof N) {
            N n10 = (N) l10;
            this.f27454d = n10.f27454d;
            int i10 = n10.f27497r;
            this.f27497r = i10;
            this.f27498s = n10.f27498s;
            if (i10 != 0) {
                Arrays.fill(this.f27496q, i10);
            }
            long j10 = this.f27498s;
            if (j10 != 0) {
                Arrays.fill(this.f88681v, j10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        Va(l10);
    }
}
