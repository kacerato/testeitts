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

public class W extends Wd.Z implements ee.U, Externalizable {

    public static final long f88810w = 1;

    public transient long[] f88811v;

    public class a implements he.Z {

        public boolean f88812a = true;

        public final StringBuilder f88813b;

        public a(StringBuilder sb2) {
            this.f88813b = sb2;
        }

        @Override
        public boolean a(long j10, long j11) {
            if (this.f88812a) {
                this.f88812a = false;
            } else {
                this.f88813b.append(", ");
            }
            this.f88813b.append(j10);
            this.f88813b.append("=");
            this.f88813b.append(j11);
            return true;
        }
    }

    public class b implements InterfaceC13972f {

        public class a implements he.b0 {

            public boolean f88816a = true;

            public final StringBuilder f88817b;

            public a(StringBuilder sb2) {
                this.f88817b = sb2;
            }

            @Override
            public boolean a(long j10) {
                if (this.f88816a) {
                    this.f88816a = false;
                } else {
                    this.f88817b.append(", ");
                }
                this.f88817b.append(j10);
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
                if (!W.this.E(it.next())) {
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
            return W.this.h0(jArr);
        }

        @Override
        public boolean Q1(long[] jArr) {
            Arrays.sort(jArr);
            W w10 = W.this;
            long[] jArr2 = w10.f27535q;
            byte[] bArr = w10.f27568l;
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
                    W.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean U1(long[] jArr) {
            for (long j10 : jArr) {
                if (!W.this.X0(j10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean X0(long j10) {
            return W.this.X0(j10);
        }

        @Override
        public boolean addAll(Collection<? extends Long> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            W.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Long) {
                    if (!W.this.E(((Long) obj).longValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean e(long j10) {
            return W.this.f27537s != W.this.e(j10);
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
            int length = W.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                W w10 = W.this;
                if (w10.f27568l[i10] == 1 && !interfaceC13972f.X0(w10.f27535q[i10])) {
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
            int length = W.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                W w10 = W.this;
                if (w10.f27568l[i11] == 1) {
                    i10 += Vd.b.e(w10.f27535q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public long i() {
            return W.this.f27536r;
        }

        @Override
        public boolean isEmpty() {
            return W.this.f27452b == 0;
        }

        @Override
        public Zd.b0 iterator() {
            W w10 = W.this;
            return new d(w10);
        }

        @Override
        public boolean j1(he.b0 b0Var) {
            return W.this.l0(b0Var);
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
            return W.this.f27452b;
        }

        @Override
        public long[] toArray() {
            return W.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            W.this.l0(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean y2(long[] jArr) {
            throw new UnsupportedOperationException();
        }
    }

    public class c extends Wd.J implements Zd.c0 {
        public c(W w10) {
            super(w10);
        }

        @Override
        public long d(long j10) {
            long value = value();
            W.this.f88811v[this.f27465d] = j10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public long key() {
            return W.this.f27535q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                W.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public long value() {
            return W.this.f88811v[this.f27465d];
        }
    }

    public class d extends Wd.J implements Zd.b0 {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public long next() {
            j();
            return W.this.f27535q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                W.this.hf(this.f27465d);
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
            return W.this.f88811v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                W.this.hf(this.f27465d);
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

            public boolean f88823a = true;

            public final StringBuilder f88824b;

            public a(StringBuilder sb2) {
                this.f88824b = sb2;
            }

            @Override
            public boolean a(long j10) {
                if (this.f88823a) {
                    this.f88823a = false;
                } else {
                    this.f88824b.append(", ");
                }
                this.f88824b.append(j10);
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
                if (!W.this.R(it.next())) {
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
            return W.this.g0(jArr);
        }

        @Override
        public boolean Q1(long[] jArr) {
            Arrays.sort(jArr);
            W w10 = W.this;
            long[] jArr2 = w10.f88811v;
            byte[] bArr = w10.f27568l;
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
                    W.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean U1(long[] jArr) {
            for (long j10 : jArr) {
                if (!W.this.R(j10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean X0(long j10) {
            return W.this.R(j10);
        }

        @Override
        public boolean addAll(Collection<? extends Long> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            W.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Long) {
                    if (!W.this.R(((Long) obj).longValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean e(long j10) {
            W w10 = W.this;
            long[] jArr = w10.f88811v;
            long[] jArr2 = w10.f27535q;
            int length = jArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                long j11 = jArr2[i10];
                if (j11 != 0 && j11 != 2 && j10 == jArr[i10]) {
                    W.this.hf(i10);
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
            return W.this.f27537s;
        }

        @Override
        public boolean isEmpty() {
            return W.this.f27452b == 0;
        }

        @Override
        public Zd.b0 iterator() {
            W w10 = W.this;
            return new e(w10);
        }

        @Override
        public boolean j1(he.b0 b0Var) {
            return W.this.x(b0Var);
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
            return W.this.f27452b;
        }

        @Override
        public long[] toArray() {
            return W.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            W.this.x(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean y2(long[] jArr) {
            throw new UnsupportedOperationException();
        }
    }

    public W() {
    }

    @Override
    public boolean E(long j10) {
        return X0(j10);
    }

    @Override
    public boolean G5(he.Z z10) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f27535q;
        long[] jArr2 = this.f88811v;
        int length = jArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !z10.a(jArr[i10], jArr2[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean H0(long j10) {
        return rb(j10, 1L);
    }

    @Override
    public boolean P5(he.Z z10) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f27535q;
        long[] jArr2 = this.f88811v;
        kf();
        try {
            int length = jArr.length;
            boolean z11 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z11;
                }
                if (bArr[i10] == 1 && !z10.a(jArr[i10], jArr2[i10])) {
                    hf(i10);
                    z11 = true;
                }
                length = i10;
            }
        } finally {
            ff(true);
        }
    }

    @Override
    public long Pc(long j10, long j11) {
        int pf2 = pf(j10);
        return pf2 < 0 ? this.f88811v[(-pf2) - 1] : zf(j10, j11, pf2);
    }

    @Override
    public boolean R(long j10) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f88811v;
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
    public void clear() {
        super.clear();
        long[] jArr = this.f27535q;
        Arrays.fill(jArr, 0, jArr.length, this.f27536r);
        long[] jArr2 = this.f88811v;
        Arrays.fill(jArr2, 0, jArr2.length, this.f27537s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    @Override
    public long e(long j10) {
        long j11 = this.f27537s;
        int nf2 = nf(j10);
        if (nf2 < 0) {
            return j11;
        }
        long j12 = this.f88811v[nf2];
        hf(nf2);
        return j12;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ee.U)) {
            return false;
        }
        ee.U u10 = (ee.U) obj;
        if (u10.size() != size()) {
            return false;
        }
        long[] jArr = this.f88811v;
        byte[] bArr = this.f27568l;
        long i10 = i();
        long i11 = u10.i();
        int length = jArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1) {
                long u11 = u10.u(this.f27535q[i12]);
                long j10 = jArr[i12];
                if (j10 != u11 && j10 != i10 && u11 != i11) {
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
        long[] jArr2 = this.f88811v;
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
        long[] jArr = this.f27535q;
        int length = jArr.length;
        long[] jArr2 = this.f88811v;
        byte[] bArr = this.f27568l;
        this.f27535q = new long[i10];
        this.f88811v = new long[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f88811v[pf(jArr[i11])] = jArr2[i11];
            }
            length = i11;
        }
    }

    @Override
    public void h(Ud.f fVar) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f88811v;
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
    public long[] h0(long[] jArr) {
        int size = size();
        if (jArr.length < size) {
            jArr = new long[size];
        }
        long[] jArr2 = this.f27535q;
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
        int length = this.f88811v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.e(this.f27535q[i11]) ^ Vd.b.e(this.f88811v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f88811v[i10] = this.f27537s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public Zd.c0 iterator() {
        return new c(this);
    }

    @Override
    public long[] j() {
        long[] jArr = new long[size()];
        long[] jArr2 = this.f27535q;
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
    public long jc(long j10, long j11, long j12) {
        int pf2 = pf(j10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            long[] jArr = this.f88811v;
            j12 = jArr[pf2] + j11;
            jArr[pf2] = j12;
            z10 = false;
        } else {
            this.f88811v[pf2] = j12;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27538t);
        }
        return j12;
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f88811v = new long[jf2];
        return jf2;
    }

    @Override
    public Sd.h k() {
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
    public long n7(long j10, long j11) {
        return zf(j10, j11, pf(j10));
    }

    @Override
    public void putAll(Map<? extends Long, ? extends Long> map) {
        cf(map.size());
        for (Map.Entry<? extends Long, ? extends Long> entry : map.entrySet()) {
            n7(entry.getKey().longValue(), entry.getValue().longValue());
        }
    }

    @Override
    public boolean rb(long j10, long j11) {
        int nf2 = nf(j10);
        if (nf2 < 0) {
            return false;
        }
        long[] jArr = this.f88811v;
        jArr[nf2] = jArr[nf2] + j11;
        return true;
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
            n7(objectInput.readLong(), objectInput.readLong());
            readInt = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        G5(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public long u(long j10) {
        int nf2 = nf(j10);
        return nf2 < 0 ? this.f27537s : this.f88811v[nf2];
    }

    @Override
    public long[] values() {
        long[] jArr = new long[size()];
        long[] jArr2 = this.f88811v;
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
                objectOutput.writeLong(this.f27535q[i10]);
                objectOutput.writeLong(this.f88811v[i10]);
            }
            length = i10;
        }
    }

    @Override
    public boolean x(he.b0 b0Var) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f88811v;
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
    public void zd(ee.U u10) {
        cf(u10.size());
        Zd.c0 it = u10.iterator();
        while (it.hasNext()) {
            it.g();
            n7(it.key(), it.value());
        }
    }

    public final long zf(long j10, long j11, int i10) {
        long j12 = this.f27537s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            z10 = false;
            j12 = this.f88811v[i10];
        }
        this.f88811v[i10] = j11;
        if (z10) {
            ef(this.f27538t);
        }
        return j12;
    }

    public W(int i10) {
        super(i10);
    }

    public W(int i10, float f10) {
        super(i10, f10);
    }

    public W(int i10, float f10, long j10, long j11) {
        super(i10, f10, j10, j11);
    }

    public W(long[] jArr, long[] jArr2) {
        super(Math.max(jArr.length, jArr2.length));
        int min = Math.min(jArr.length, jArr2.length);
        for (int i10 = 0; i10 < min; i10++) {
            n7(jArr[i10], jArr2[i10]);
        }
    }

    public W(ee.U u10) {
        super(u10.size());
        if (u10 instanceof W) {
            W w10 = (W) u10;
            this.f27454d = w10.f27454d;
            long j10 = w10.f27536r;
            this.f27536r = j10;
            this.f27537s = w10.f27537s;
            if (j10 != 0) {
                Arrays.fill(this.f27535q, j10);
            }
            long j11 = this.f27537s;
            if (j11 != 0) {
                Arrays.fill(this.f88811v, j11);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        zd(u10);
    }
}
