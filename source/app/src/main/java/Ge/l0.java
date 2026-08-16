package ge;

import Zd.s0;
import he.r0;
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

public class l0 extends Wd.j0 implements ee.k0, Externalizable {

    public static final long f89274w = 1;

    public transient long[] f89275v;

    public class a implements r0 {

        public boolean f89276a = true;

        public final StringBuilder f89277b;

        public a(StringBuilder sb2) {
            this.f89277b = sb2;
        }

        @Override
        public boolean a(short s10, long j10) {
            if (this.f89276a) {
                this.f89276a = false;
            } else {
                this.f89277b.append(", ");
            }
            this.f89277b.append((int) s10);
            this.f89277b.append("=");
            this.f89277b.append(j10);
            return true;
        }
    }

    public class b implements InterfaceC13973g {

        public class a implements t0 {

            public boolean f89280a = true;

            public final StringBuilder f89281b;

            public a(StringBuilder sb2) {
                this.f89281b = sb2;
            }

            @Override
            public boolean a(short s10) {
                if (this.f89280a) {
                    this.f89280a = false;
                } else {
                    this.f89281b.append(", ");
                }
                this.f89281b.append((int) s10);
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
            return l0.this.Y(sArr);
        }

        @Override
        public boolean W0(short s10) {
            return l0.this.W0(s10);
        }

        @Override
        public boolean Z1(short[] sArr) {
            for (short s10 : sArr) {
                if (!l0.this.W0(s10)) {
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
            l0.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Short) {
                    if (!l0.this.z(((Short) obj).shortValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean d(short s10) {
            return l0.this.f27635s != l0.this.d(s10);
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
            int length = l0.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                l0 l0Var = l0.this;
                if (l0Var.f27568l[i10] == 1 && !interfaceC13973g.W0(l0Var.f27633q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public boolean h1(t0 t0Var) {
            return l0.this.v(t0Var);
        }

        @Override
        public int hashCode() {
            int length = l0.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                l0 l0Var = l0.this;
                if (l0Var.f27568l[i11] == 1) {
                    i10 += Vd.b.d(l0Var.f27633q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public short i() {
            return l0.this.f27634r;
        }

        @Override
        public boolean isEmpty() {
            return l0.this.f27452b == 0;
        }

        @Override
        public s0 iterator() {
            l0 l0Var = l0.this;
            return new d(l0Var);
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
            l0 l0Var = l0.this;
            short[] sArr2 = l0Var.f27633q;
            byte[] bArr = l0Var.f27568l;
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
                    l0.this.hf(i10);
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
            return l0.this.f27452b;
        }

        @Override
        public short[] toArray() {
            return l0.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            l0.this.v(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean v2(Sd.i iVar) {
            s0 it = iVar.iterator();
            while (it.hasNext()) {
                if (!l0.this.z(it.next())) {
                    return false;
                }
            }
            return true;
        }
    }

    public class c extends Wd.J implements Zd.t0 {
        public c(l0 l0Var) {
            super(l0Var);
        }

        @Override
        public long d(long j10) {
            long value = value();
            l0.this.f89275v[this.f27465d] = j10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public short key() {
            return l0.this.f27633q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                l0.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public long value() {
            return l0.this.f89275v[this.f27465d];
        }
    }

    public class d extends Wd.J implements s0 {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public short next() {
            j();
            return l0.this.f27633q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                l0.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class e extends Wd.J implements Zd.b0 {
        public e(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public long next() {
            j();
            return l0.this.f89275v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                l0.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class f implements Sd.h {

        public class a implements he.b0 {

            public boolean f89287a = true;

            public final StringBuilder f89288b;

            public a(StringBuilder sb2) {
                this.f89288b = sb2;
            }

            @Override
            public boolean a(long j10) {
                if (this.f89287a) {
                    this.f89287a = false;
                } else {
                    this.f89288b.append(", ");
                }
                this.f89288b.append(j10);
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
                if (!l0.this.R(it.next())) {
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
            return l0.this.g0(jArr);
        }

        @Override
        public boolean Q1(long[] jArr) {
            Arrays.sort(jArr);
            l0 l0Var = l0.this;
            long[] jArr2 = l0Var.f89275v;
            byte[] bArr = l0Var.f27568l;
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
                    l0.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean U1(long[] jArr) {
            for (long j10 : jArr) {
                if (!l0.this.R(j10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean X0(long j10) {
            return l0.this.R(j10);
        }

        @Override
        public boolean addAll(Collection<? extends Long> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            l0.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Long) {
                    if (!l0.this.R(((Long) obj).longValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean e(long j10) {
            l0 l0Var = l0.this;
            long[] jArr = l0Var.f89275v;
            short[] sArr = l0Var.f27633q;
            int length = jArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                short s10 = sArr[i10];
                if (s10 != 0 && s10 != 2 && j10 == jArr[i10]) {
                    l0.this.hf(i10);
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
            return l0.this.f27635s;
        }

        @Override
        public boolean isEmpty() {
            return l0.this.f27452b == 0;
        }

        @Override
        public Zd.b0 iterator() {
            l0 l0Var = l0.this;
            return new e(l0Var);
        }

        @Override
        public boolean j1(he.b0 b0Var) {
            return l0.this.x(b0Var);
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
            return l0.this.f27452b;
        }

        @Override
        public long[] toArray() {
            return l0.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            l0.this.x(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean y2(long[] jArr) {
            throw new UnsupportedOperationException();
        }
    }

    public l0() {
    }

    @Override
    public long C3(short s10, long j10) {
        int pf2 = pf(s10);
        return pf2 < 0 ? this.f89275v[(-pf2) - 1] : zf(s10, j10, pf2);
    }

    @Override
    public boolean Hc(r0 r0Var) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f27633q;
        long[] jArr = this.f89275v;
        kf();
        try {
            int length = sArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !r0Var.a(sArr[i10], jArr[i10])) {
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
        return c8(s10, 1L);
    }

    @Override
    public long N9(short s10, long j10, long j11) {
        int pf2 = pf(s10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            long[] jArr = this.f89275v;
            long j12 = j10 + jArr[pf2];
            jArr[pf2] = j12;
            z10 = false;
            j11 = j12;
        } else {
            this.f89275v[pf2] = j11;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27636t);
        }
        return j11;
    }

    @Override
    public boolean R(long j10) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f89275v;
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
    public short[] Y(short[] sArr) {
        int size = size();
        if (sArr.length < size) {
            sArr = new short[size];
        }
        short[] sArr2 = this.f27633q;
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
    public void Z2(ee.k0 k0Var) {
        cf(k0Var.size());
        Zd.t0 it = k0Var.iterator();
        while (it.hasNext()) {
            it.g();
            xa(it.key(), it.value());
        }
    }

    @Override
    public boolean c8(short s10, long j10) {
        int nf2 = nf(s10);
        if (nf2 < 0) {
            return false;
        }
        long[] jArr = this.f89275v;
        jArr[nf2] = jArr[nf2] + j10;
        return true;
    }

    @Override
    public void clear() {
        super.clear();
        short[] sArr = this.f27633q;
        Arrays.fill(sArr, 0, sArr.length, this.f27634r);
        long[] jArr = this.f89275v;
        Arrays.fill(jArr, 0, jArr.length, this.f27635s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    @Override
    public long d(short s10) {
        long j10 = this.f27635s;
        int nf2 = nf(s10);
        if (nf2 < 0) {
            return j10;
        }
        long j11 = this.f89275v[nf2];
        hf(nf2);
        return j11;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ee.k0)) {
            return false;
        }
        ee.k0 k0Var = (ee.k0) obj;
        if (k0Var.size() != size()) {
            return false;
        }
        long[] jArr = this.f89275v;
        byte[] bArr = this.f27568l;
        long i10 = i();
        long i11 = k0Var.i();
        int length = jArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1) {
                long n02 = k0Var.n0(this.f27633q[i12]);
                long j10 = jArr[i12];
                if (j10 != n02 && j10 != i10 && n02 != i11) {
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
        long[] jArr2 = this.f89275v;
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
        short[] sArr = this.f27633q;
        int length = sArr.length;
        long[] jArr = this.f89275v;
        byte[] bArr = this.f27568l;
        this.f27633q = new short[i10];
        this.f89275v = new long[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f89275v[pf(sArr[i11])] = jArr[i11];
            }
            length = i11;
        }
    }

    @Override
    public void h(Ud.f fVar) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f89275v;
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
        int length = this.f89275v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.d(this.f27633q[i11]) ^ Vd.b.e(this.f89275v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f89275v[i10] = this.f27635s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public Zd.t0 iterator() {
        return new c(this);
    }

    @Override
    public short[] j() {
        short[] sArr = new short[size()];
        short[] sArr2 = this.f27633q;
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
        this.f89275v = new long[jf2];
        return jf2;
    }

    @Override
    public Sd.h k() {
        return new f();
    }

    @Override
    public InterfaceC13973g keySet() {
        return new b();
    }

    @Override
    public long n0(short s10) {
        int nf2 = nf(s10);
        return nf2 < 0 ? this.f27635s : this.f89275v[nf2];
    }

    @Override
    public void putAll(Map<? extends Short, ? extends Long> map) {
        cf(map.size());
        for (Map.Entry<? extends Short, ? extends Long> entry : map.entrySet()) {
            xa(entry.getKey().shortValue(), entry.getValue().longValue());
        }
    }

    @Override
    public boolean ra(r0 r0Var) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f27633q;
        long[] jArr = this.f89275v;
        int length = sArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !r0Var.a(sArr[i10], jArr[i10])) {
                return false;
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
            xa(objectInput.readShort(), objectInput.readLong());
            readInt = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        ra(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public boolean v(t0 t0Var) {
        return h1(t0Var);
    }

    @Override
    public long[] values() {
        long[] jArr = new long[size()];
        long[] jArr2 = this.f89275v;
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
                objectOutput.writeShort(this.f27633q[i10]);
                objectOutput.writeLong(this.f89275v[i10]);
            }
            length = i10;
        }
    }

    @Override
    public boolean x(he.b0 b0Var) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f89275v;
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
    public long xa(short s10, long j10) {
        return zf(s10, j10, pf(s10));
    }

    @Override
    public boolean z(short s10) {
        return W0(s10);
    }

    public final long zf(short s10, long j10, int i10) {
        long j11 = this.f27635s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            j11 = this.f89275v[i10];
            z10 = false;
        }
        this.f89275v[i10] = j10;
        if (z10) {
            ef(this.f27636t);
        }
        return j11;
    }

    public l0(int i10) {
        super(i10);
    }

    public l0(int i10, float f10) {
        super(i10, f10);
    }

    public l0(int i10, float f10, short s10, long j10) {
        super(i10, f10, s10, j10);
    }

    public l0(short[] sArr, long[] jArr) {
        super(Math.max(sArr.length, jArr.length));
        int min = Math.min(sArr.length, jArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            xa(sArr[i10], jArr[i10]);
        }
    }

    public l0(ee.k0 k0Var) {
        super(k0Var.size());
        if (k0Var instanceof l0) {
            l0 l0Var = (l0) k0Var;
            this.f27454d = l0Var.f27454d;
            short s10 = l0Var.f27634r;
            this.f27634r = s10;
            this.f27635s = l0Var.f27635s;
            if (s10 != 0) {
                Arrays.fill(this.f27633q, s10);
            }
            long j10 = this.f27635s;
            if (j10 != 0) {
                Arrays.fill(this.f89275v, j10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        Z2(k0Var);
    }
}
