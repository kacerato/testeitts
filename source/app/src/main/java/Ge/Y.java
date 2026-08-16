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
import ke.InterfaceC13972f;
import org.apache.commons.math3.geometry.VectorFormat;

public class Y extends Wd.a0 implements ee.W, Externalizable {

    public static final long f88844w = 1;

    public transient short[] f88845v;

    public class a implements he.c0 {

        public boolean f88846a = true;

        public final StringBuilder f88847b;

        public a(StringBuilder sb2) {
            this.f88847b = sb2;
        }

        @Override
        public boolean a(long j10, short s10) {
            if (this.f88846a) {
                this.f88846a = false;
            } else {
                this.f88847b.append(", ");
            }
            this.f88847b.append(j10);
            this.f88847b.append("=");
            this.f88847b.append((int) s10);
            return true;
        }
    }

    public class b implements InterfaceC13972f {

        public class a implements he.b0 {

            public boolean f88850a = true;

            public final StringBuilder f88851b;

            public a(StringBuilder sb2) {
                this.f88851b = sb2;
            }

            @Override
            public boolean a(long j10) {
                if (this.f88850a) {
                    this.f88850a = false;
                } else {
                    this.f88851b.append(", ");
                }
                this.f88851b.append(j10);
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
                if (!Y.this.E(it.next())) {
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
            return Y.this.h0(jArr);
        }

        @Override
        public boolean Q1(long[] jArr) {
            Arrays.sort(jArr);
            Y y10 = Y.this;
            long[] jArr2 = y10.f27545q;
            byte[] bArr = y10.f27568l;
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
                    Y.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean U1(long[] jArr) {
            for (long j10 : jArr) {
                if (!Y.this.X0(j10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean X0(long j10) {
            return Y.this.X0(j10);
        }

        @Override
        public boolean addAll(Collection<? extends Long> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            Y.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Long) {
                    if (!Y.this.E(((Long) obj).longValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean e(long j10) {
            return Y.this.f27547s != Y.this.e(j10);
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
            int length = Y.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                Y y10 = Y.this;
                if (y10.f27568l[i10] == 1 && !interfaceC13972f.X0(y10.f27545q[i10])) {
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
            int length = Y.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                Y y10 = Y.this;
                if (y10.f27568l[i11] == 1) {
                    i10 += Vd.b.e(y10.f27545q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public long i() {
            return Y.this.f27546r;
        }

        @Override
        public boolean isEmpty() {
            return Y.this.f27452b == 0;
        }

        @Override
        public Zd.b0 iterator() {
            Y y10 = Y.this;
            return new d(y10);
        }

        @Override
        public boolean j1(he.b0 b0Var) {
            return Y.this.l0(b0Var);
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
            return Y.this.f27452b;
        }

        @Override
        public long[] toArray() {
            return Y.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            Y.this.l0(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean y2(long[] jArr) {
            throw new UnsupportedOperationException();
        }
    }

    public class c extends Wd.J implements Zd.e0 {
        public c(Y y10) {
            super(y10);
        }

        @Override
        public short c(short s10) {
            short value = value();
            Y.this.f88845v[this.f27465d] = s10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public long key() {
            return Y.this.f27545q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                Y.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public short value() {
            return Y.this.f88845v[this.f27465d];
        }
    }

    public class d extends Wd.J implements Zd.b0 {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public long next() {
            j();
            return Y.this.f27545q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                Y.this.hf(this.f27465d);
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
            return Y.this.f88845v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                Y.this.hf(this.f27465d);
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

            public boolean f88857a = true;

            public final StringBuilder f88858b;

            public a(StringBuilder sb2) {
                this.f88858b = sb2;
            }

            @Override
            public boolean a(short s10) {
                if (this.f88857a) {
                    this.f88857a = false;
                } else {
                    this.f88858b.append(", ");
                }
                this.f88858b.append((int) s10);
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
            return Y.this.i0(sArr);
        }

        @Override
        public boolean W0(short s10) {
            return Y.this.L(s10);
        }

        @Override
        public boolean Z1(short[] sArr) {
            for (short s10 : sArr) {
                if (!Y.this.L(s10)) {
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
            Y.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Short) {
                    if (!Y.this.L(((Short) obj).shortValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean d(short s10) {
            Y y10 = Y.this;
            short[] sArr = y10.f88845v;
            long[] jArr = y10.f27545q;
            int length = sArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                long j10 = jArr[i10];
                if (j10 != 0 && j10 != 2 && s10 == sArr[i10]) {
                    Y.this.hf(i10);
                    return true;
                }
                length = i10;
            }
        }

        @Override
        public boolean h1(t0 t0Var) {
            return Y.this.N(t0Var);
        }

        @Override
        public short i() {
            return Y.this.f27547s;
        }

        @Override
        public boolean isEmpty() {
            return Y.this.f27452b == 0;
        }

        @Override
        public s0 iterator() {
            Y y10 = Y.this;
            return new e(y10);
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
            Y y10 = Y.this;
            short[] sArr2 = y10.f88845v;
            byte[] bArr = y10.f27568l;
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
                    Y.this.hf(i10);
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
            return Y.this.f27452b;
        }

        @Override
        public short[] toArray() {
            return Y.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            Y.this.N(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean v2(Sd.i iVar) {
            s0 it = iVar.iterator();
            while (it.hasNext()) {
                if (!Y.this.L(it.next())) {
                    return false;
                }
            }
            return true;
        }
    }

    public Y() {
    }

    @Override
    public boolean E(long j10) {
        return X0(j10);
    }

    @Override
    public boolean E9(he.c0 c0Var) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f27545q;
        short[] sArr = this.f88845v;
        int length = jArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !c0Var.a(jArr[i10], sArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean H0(long j10) {
        return vb(j10, (short) 1);
    }

    @Override
    public boolean I6(he.c0 c0Var) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f27545q;
        short[] sArr = this.f88845v;
        kf();
        try {
            int length = jArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !c0Var.a(jArr[i10], sArr[i10])) {
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
    public short Kc(long j10, short s10) {
        int pf2 = pf(j10);
        return pf2 < 0 ? this.f88845v[(-pf2) - 1] : zf(j10, s10, pf2);
    }

    @Override
    public boolean L(short s10) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f88845v;
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
    public short Md(long j10, short s10, short s11) {
        int pf2 = pf(j10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            short[] sArr = this.f88845v;
            s11 = (short) (sArr[pf2] + s10);
            sArr[pf2] = s11;
            z10 = false;
        } else {
            this.f88845v[pf2] = s11;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27548t);
        }
        return s11;
    }

    @Override
    public boolean N(t0 t0Var) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f88845v;
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
    public void S9(ee.W w10) {
        cf(w10.size());
        Zd.e0 it = w10.iterator();
        while (it.hasNext()) {
            it.g();
            u7(it.key(), it.value());
        }
    }

    @Override
    public void clear() {
        super.clear();
        long[] jArr = this.f27545q;
        Arrays.fill(jArr, 0, jArr.length, this.f27546r);
        short[] sArr = this.f88845v;
        Arrays.fill(sArr, 0, sArr.length, this.f27547s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    @Override
    public short e(long j10) {
        short s10 = this.f27547s;
        int nf2 = nf(j10);
        if (nf2 < 0) {
            return s10;
        }
        short s11 = this.f88845v[nf2];
        hf(nf2);
        return s11;
    }

    public boolean equals(Object obj) {
        short u10;
        short s10;
        if (!(obj instanceof ee.W)) {
            return false;
        }
        ee.W w10 = (ee.W) obj;
        if (w10.size() != size()) {
            return false;
        }
        short[] sArr = this.f88845v;
        byte[] bArr = this.f27568l;
        short i10 = i();
        short i11 = w10.i();
        int length = sArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1 && (s10 = sArr[i12]) != (u10 = w10.u(this.f27545q[i12])) && s10 != i10 && u10 != i11) {
                return false;
            }
            length = i12;
        }
    }

    @Override
    public void gf(int i10) {
        long[] jArr = this.f27545q;
        int length = jArr.length;
        short[] sArr = this.f88845v;
        byte[] bArr = this.f27568l;
        this.f27545q = new long[i10];
        this.f88845v = new short[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f88845v[pf(jArr[i11])] = sArr[i11];
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
        long[] jArr2 = this.f27545q;
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
        int length = this.f88845v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.e(this.f27545q[i11]) ^ Vd.b.d(this.f88845v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f88845v[i10] = this.f27547s;
        super.hf(i10);
    }

    @Override
    public short[] i0(short[] sArr) {
        int size = size();
        if (sArr.length < size) {
            sArr = new short[size];
        }
        short[] sArr2 = this.f88845v;
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
    public Zd.e0 iterator() {
        return new c(this);
    }

    @Override
    public long[] j() {
        long[] jArr = new long[size()];
        long[] jArr2 = this.f27545q;
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
        this.f88845v = new short[jf2];
        return jf2;
    }

    @Override
    public Sd.i k() {
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
    public void putAll(Map<? extends Long, ? extends Short> map) {
        cf(map.size());
        for (Map.Entry<? extends Long, ? extends Short> entry : map.entrySet()) {
            u7(entry.getKey().longValue(), entry.getValue().shortValue());
        }
    }

    @Override
    public void r(Ud.h hVar) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f88845v;
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
            u7(objectInput.readLong(), objectInput.readShort());
            readInt = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        E9(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public short u(long j10) {
        int nf2 = nf(j10);
        return nf2 < 0 ? this.f27547s : this.f88845v[nf2];
    }

    @Override
    public short u7(long j10, short s10) {
        return zf(j10, s10, pf(j10));
    }

    @Override
    public short[] values() {
        short[] sArr = new short[size()];
        short[] sArr2 = this.f88845v;
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
    public boolean vb(long j10, short s10) {
        int nf2 = nf(j10);
        if (nf2 < 0) {
            return false;
        }
        short[] sArr = this.f88845v;
        sArr[nf2] = (short) (sArr[nf2] + s10);
        return true;
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
                objectOutput.writeLong(this.f27545q[i10]);
                objectOutput.writeShort(this.f88845v[i10]);
            }
            length = i10;
        }
    }

    public final short zf(long j10, short s10, int i10) {
        short s11 = this.f27547s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            s11 = this.f88845v[i10];
            z10 = false;
        }
        this.f88845v[i10] = s10;
        if (z10) {
            ef(this.f27548t);
        }
        return s11;
    }

    public Y(int i10) {
        super(i10);
    }

    public Y(int i10, float f10) {
        super(i10, f10);
    }

    public Y(int i10, float f10, long j10, short s10) {
        super(i10, f10, j10, s10);
    }

    public Y(long[] jArr, short[] sArr) {
        super(Math.max(jArr.length, sArr.length));
        int min = Math.min(jArr.length, sArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            u7(jArr[i10], sArr[i10]);
        }
    }

    public Y(ee.W w10) {
        super(w10.size());
        if (w10 instanceof Y) {
            Y y10 = (Y) w10;
            this.f27454d = y10.f27454d;
            long j10 = y10.f27546r;
            this.f27546r = j10;
            this.f27547s = y10.f27547s;
            if (j10 != 0) {
                Arrays.fill(this.f27545q, j10);
            }
            short s10 = this.f27547s;
            if (s10 != 0) {
                Arrays.fill(this.f88845v, s10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        S9(w10);
    }
}
