package ge;

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

public class V extends Wd.Y implements ee.T, Externalizable {

    public static final long f88794w = 1;

    public transient int[] f88795v;

    public class a implements he.Y {

        public boolean f88796a = true;

        public final StringBuilder f88797b;

        public a(StringBuilder sb2) {
            this.f88797b = sb2;
        }

        @Override
        public boolean a(long j10, int i10) {
            if (this.f88796a) {
                this.f88796a = false;
            } else {
                this.f88797b.append(", ");
            }
            this.f88797b.append(j10);
            this.f88797b.append("=");
            this.f88797b.append(i10);
            return true;
        }
    }

    public class b implements InterfaceC13972f {

        public class a implements he.b0 {

            public boolean f88800a = true;

            public final StringBuilder f88801b;

            public a(StringBuilder sb2) {
                this.f88801b = sb2;
            }

            @Override
            public boolean a(long j10) {
                if (this.f88800a) {
                    this.f88800a = false;
                } else {
                    this.f88801b.append(", ");
                }
                this.f88801b.append(j10);
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
                if (!V.this.E(it.next())) {
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
            return V.this.h0(jArr);
        }

        @Override
        public boolean Q1(long[] jArr) {
            Arrays.sort(jArr);
            V v10 = V.this;
            long[] jArr2 = v10.f27530q;
            byte[] bArr = v10.f27568l;
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
                    V.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean U1(long[] jArr) {
            for (long j10 : jArr) {
                if (!V.this.X0(j10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean X0(long j10) {
            return V.this.X0(j10);
        }

        @Override
        public boolean addAll(Collection<? extends Long> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            V.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Long) {
                    if (!V.this.E(((Long) obj).longValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean e(long j10) {
            return V.this.f27532s != V.this.e(j10);
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
            int length = V.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                V v10 = V.this;
                if (v10.f27568l[i10] == 1 && !interfaceC13972f.X0(v10.f27530q[i10])) {
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
            int length = V.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                V v10 = V.this;
                if (v10.f27568l[i11] == 1) {
                    i10 += Vd.b.e(v10.f27530q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public long i() {
            return V.this.f27531r;
        }

        @Override
        public boolean isEmpty() {
            return V.this.f27452b == 0;
        }

        @Override
        public Zd.b0 iterator() {
            V v10 = V.this;
            return new d(v10);
        }

        @Override
        public boolean j1(he.b0 b0Var) {
            return V.this.l0(b0Var);
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
            return V.this.f27452b;
        }

        @Override
        public long[] toArray() {
            return V.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            V.this.l0(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean y2(long[] jArr) {
            throw new UnsupportedOperationException();
        }
    }

    public class c extends Wd.J implements Zd.a0 {
        public c(V v10) {
            super(v10);
        }

        @Override
        public int e(int i10) {
            int value = value();
            V.this.f88795v[this.f27465d] = i10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public long key() {
            return V.this.f27530q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                V.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public int value() {
            return V.this.f88795v[this.f27465d];
        }
    }

    public class d extends Wd.J implements Zd.b0 {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public long next() {
            j();
            return V.this.f27530q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                V.this.hf(this.f27465d);
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
            return V.this.f88795v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                V.this.hf(this.f27465d);
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

            public boolean f88807a = true;

            public final StringBuilder f88808b;

            public a(StringBuilder sb2) {
                this.f88808b = sb2;
            }

            @Override
            public boolean a(int i10) {
                if (this.f88807a) {
                    this.f88807a = false;
                } else {
                    this.f88808b.append(", ");
                }
                this.f88808b.append(i10);
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
                if (!V.this.Q(i10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean M1(int[] iArr) {
            Arrays.sort(iArr);
            V v10 = V.this;
            int[] iArr2 = v10.f88795v;
            byte[] bArr = v10.f27568l;
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
                    V.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public int[] P0(int[] iArr) {
            return V.this.e0(iArr);
        }

        @Override
        public boolean U0(he.S s10) {
            return V.this.m0(s10);
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
            V.this.clear();
        }

        @Override
        public boolean contains(int i10) {
            return V.this.Q(i10);
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Integer) {
                    if (!V.this.Q(((Integer) obj).intValue())) {
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
                if (!V.this.Q(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int i() {
            return V.this.f27532s;
        }

        @Override
        public boolean isEmpty() {
            return V.this.f27452b == 0;
        }

        @Override
        public Zd.Q iterator() {
            V v10 = V.this;
            return new e(v10);
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
            V v10 = V.this;
            int[] iArr = v10.f88795v;
            long[] jArr = v10.f27530q;
            int length = iArr.length;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return false;
                }
                long j10 = jArr[i11];
                if (j10 != 0 && j10 != 2 && i10 == iArr[i11]) {
                    V.this.hf(i11);
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
            return V.this.f27452b;
        }

        @Override
        public int[] toArray() {
            return V.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            V.this.m0(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean z2(int[] iArr) {
            throw new UnsupportedOperationException();
        }
    }

    public V() {
    }

    @Override
    public boolean Cb(he.Y y10) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f27530q;
        int[] iArr = this.f88795v;
        int length = jArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !y10.a(jArr[i10], iArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean E(long j10) {
        return X0(j10);
    }

    @Override
    public boolean H0(long j10) {
        return gb(j10, 1);
    }

    @Override
    public boolean Q(int i10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f88795v;
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
    public int Xb(long j10, int i10, int i11) {
        int pf2 = pf(j10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            int[] iArr = this.f88795v;
            i11 = iArr[pf2] + i10;
            iArr[pf2] = i11;
            z10 = false;
        } else {
            this.f88795v[pf2] = i11;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27533t);
        }
        return i11;
    }

    @Override
    public boolean Y4(he.Y y10) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f27530q;
        int[] iArr = this.f88795v;
        kf();
        try {
            int length = jArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !y10.a(jArr[i10], iArr[i10])) {
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
        long[] jArr = this.f27530q;
        Arrays.fill(jArr, 0, jArr.length, this.f27531r);
        int[] iArr = this.f88795v;
        Arrays.fill(iArr, 0, iArr.length, this.f27532s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    @Override
    public int e(long j10) {
        int i10 = this.f27532s;
        int nf2 = nf(j10);
        if (nf2 < 0) {
            return i10;
        }
        int i11 = this.f88795v[nf2];
        hf(nf2);
        return i11;
    }

    @Override
    public int[] e0(int[] iArr) {
        int size = size();
        if (iArr.length < size) {
            iArr = new int[size];
        }
        int[] iArr2 = this.f88795v;
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
        int u10;
        int i10;
        if (!(obj instanceof ee.T)) {
            return false;
        }
        ee.T t10 = (ee.T) obj;
        if (t10.size() != size()) {
            return false;
        }
        int[] iArr = this.f88795v;
        byte[] bArr = this.f27568l;
        int i11 = i();
        int i12 = t10.i();
        int length = iArr.length;
        while (true) {
            int i13 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i13] == 1 && (i10 = iArr[i13]) != (u10 = t10.u(this.f27530q[i13])) && i10 != i11 && u10 != i12) {
                return false;
            }
            length = i13;
        }
    }

    @Override
    public void f(Ud.e eVar) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f88795v;
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
    public boolean gb(long j10, int i10) {
        int nf2 = nf(j10);
        if (nf2 < 0) {
            return false;
        }
        int[] iArr = this.f88795v;
        iArr[nf2] = iArr[nf2] + i10;
        return true;
    }

    @Override
    public void gf(int i10) {
        long[] jArr = this.f27530q;
        int length = jArr.length;
        int[] iArr = this.f88795v;
        byte[] bArr = this.f27568l;
        this.f27530q = new long[i10];
        this.f88795v = new int[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f88795v[pf(jArr[i11])] = iArr[i11];
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
        long[] jArr2 = this.f27530q;
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

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f88795v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.e(this.f27530q[i11]) ^ Vd.b.d(this.f88795v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f88795v[i10] = this.f27532s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public Zd.a0 iterator() {
        return new c(this);
    }

    @Override
    public long[] j() {
        long[] jArr = new long[size()];
        long[] jArr2 = this.f27530q;
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
        this.f88795v = new int[jf2];
        return jf2;
    }

    @Override
    public Sd.g k() {
        return new f();
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
    public boolean m0(he.S s10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f88795v;
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
    public void m3(ee.T t10) {
        cf(t10.size());
        Zd.a0 it = t10.iterator();
        while (it.hasNext()) {
            it.g();
            m7(it.key(), it.value());
        }
    }

    @Override
    public int m7(long j10, int i10) {
        return zf(j10, i10, pf(j10));
    }

    @Override
    public void putAll(Map<? extends Long, ? extends Integer> map) {
        cf(map.size());
        for (Map.Entry<? extends Long, ? extends Integer> entry : map.entrySet()) {
            m7(entry.getKey().longValue(), entry.getValue().intValue());
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
            m7(objectInput.readLong(), objectInput.readInt());
            readInt = i10;
        }
    }

    @Override
    public int sd(long j10, int i10) {
        int pf2 = pf(j10);
        return pf2 < 0 ? this.f88795v[(-pf2) - 1] : zf(j10, i10, pf2);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        Cb(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public int u(long j10) {
        int nf2 = nf(j10);
        return nf2 < 0 ? this.f27532s : this.f88795v[nf2];
    }

    @Override
    public int[] values() {
        int[] iArr = new int[size()];
        int[] iArr2 = this.f88795v;
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
                objectOutput.writeLong(this.f27530q[i10]);
                objectOutput.writeInt(this.f88795v[i10]);
            }
            length = i10;
        }
    }

    public final int zf(long j10, int i10, int i11) {
        int i12 = this.f27532s;
        boolean z10 = true;
        if (i11 < 0) {
            i11 = (-i11) - 1;
            i12 = this.f88795v[i11];
            z10 = false;
        }
        this.f88795v[i11] = i10;
        if (z10) {
            ef(this.f27533t);
        }
        return i12;
    }

    public V(int i10) {
        super(i10);
    }

    public V(int i10, float f10) {
        super(i10, f10);
    }

    public V(int i10, float f10, long j10, int i11) {
        super(i10, f10, j10, i11);
    }

    public V(long[] jArr, int[] iArr) {
        super(Math.max(jArr.length, iArr.length));
        int min = Math.min(jArr.length, iArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            m7(jArr[i10], iArr[i10]);
        }
    }

    public V(ee.T t10) {
        super(t10.size());
        if (t10 instanceof V) {
            V v10 = (V) t10;
            this.f27454d = v10.f27454d;
            long j10 = v10.f27531r;
            this.f27531r = j10;
            this.f27532s = v10.f27532s;
            if (j10 != 0) {
                Arrays.fill(this.f27530q, j10);
            }
            int i10 = this.f27532s;
            if (i10 != 0) {
                Arrays.fill(this.f88795v, i10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        m3(t10);
    }
}
