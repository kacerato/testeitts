package ge;

import Zd.InterfaceC3449g;
import he.InterfaceC13453h;
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

public class Q extends Wd.T implements ee.O, Externalizable {

    public static final long f88730w = 1;

    public transient byte[] f88731v;

    public class a implements he.U {

        public boolean f88732a = true;

        public final StringBuilder f88733b;

        public a(StringBuilder sb2) {
            this.f88733b = sb2;
        }

        @Override
        public boolean a(long j10, byte b10) {
            if (this.f88732a) {
                this.f88732a = false;
            } else {
                this.f88733b.append(", ");
            }
            this.f88733b.append(j10);
            this.f88733b.append("=");
            this.f88733b.append((int) b10);
            return true;
        }
    }

    public class b implements InterfaceC13972f {

        public class a implements he.b0 {

            public boolean f88736a = true;

            public final StringBuilder f88737b;

            public a(StringBuilder sb2) {
                this.f88737b = sb2;
            }

            @Override
            public boolean a(long j10) {
                if (this.f88736a) {
                    this.f88736a = false;
                } else {
                    this.f88737b.append(", ");
                }
                this.f88737b.append(j10);
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
                if (!Q.this.E(it.next())) {
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
            return Q.this.h0(jArr);
        }

        @Override
        public boolean Q1(long[] jArr) {
            Arrays.sort(jArr);
            Q q10 = Q.this;
            long[] jArr2 = q10.f27506q;
            byte[] bArr = q10.f27568l;
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
                    Q.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean U1(long[] jArr) {
            for (long j10 : jArr) {
                if (!Q.this.X0(j10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean X0(long j10) {
            return Q.this.X0(j10);
        }

        @Override
        public boolean addAll(Collection<? extends Long> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            Q.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Long) {
                    if (!Q.this.E(((Long) obj).longValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean e(long j10) {
            return Q.this.f27508s != Q.this.e(j10);
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
            int length = Q.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                Q q10 = Q.this;
                if (q10.f27568l[i10] == 1 && !interfaceC13972f.X0(q10.f27506q[i10])) {
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
            int length = Q.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                Q q10 = Q.this;
                if (q10.f27568l[i11] == 1) {
                    i10 += Vd.b.e(q10.f27506q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public long i() {
            return Q.this.f27507r;
        }

        @Override
        public boolean isEmpty() {
            return Q.this.f27452b == 0;
        }

        @Override
        public Zd.b0 iterator() {
            Q q10 = Q.this;
            return new d(q10);
        }

        @Override
        public boolean j1(he.b0 b0Var) {
            return Q.this.l0(b0Var);
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
            return Q.this.f27452b;
        }

        @Override
        public long[] toArray() {
            return Q.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            Q.this.l0(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean y2(long[] jArr) {
            throw new UnsupportedOperationException();
        }
    }

    public class c extends Wd.J implements Zd.W {
        public c(Q q10) {
            super(q10);
        }

        @Override
        public byte b(byte b10) {
            byte value = value();
            Q.this.f88731v[this.f27465d] = b10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public long key() {
            return Q.this.f27506q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                Q.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public byte value() {
            return Q.this.f88731v[this.f27465d];
        }
    }

    public class d extends Wd.J implements Zd.b0 {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public long next() {
            j();
            return Q.this.f27506q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                Q.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class e extends Wd.J implements InterfaceC3449g {
        public e(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public byte next() {
            j();
            return Q.this.f88731v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                Q.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class f implements Sd.a {

        public class a implements InterfaceC13453h {

            public boolean f88743a = true;

            public final StringBuilder f88744b;

            public a(StringBuilder sb2) {
                this.f88744b = sb2;
            }

            @Override
            public boolean a(byte b10) {
                if (this.f88743a) {
                    this.f88743a = false;
                } else {
                    this.f88744b.append(", ");
                }
                this.f88744b.append((int) b10);
                return true;
            }
        }

        public f() {
        }

        @Override
        public boolean E1(Sd.a aVar) {
            throw new UnsupportedOperationException();
        }

        @Override
        public byte[] R0(byte[] bArr) {
            return Q.this.a0(bArr);
        }

        @Override
        public boolean V0(InterfaceC13453h interfaceC13453h) {
            return Q.this.M(interfaceC13453h);
        }

        @Override
        public boolean W1(byte[] bArr) {
            Arrays.sort(bArr);
            Q q10 = Q.this;
            byte[] bArr2 = q10.f88731v;
            byte[] bArr3 = q10.f27568l;
            int length = bArr2.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr3[i10] != 1 || Arrays.binarySearch(bArr, bArr2[i10]) >= 0) {
                    length = i10;
                } else {
                    Q.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean a1(byte b10) {
            return Q.this.P(b10);
        }

        @Override
        public boolean addAll(Collection<? extends Byte> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            Q.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Byte) {
                    if (!Q.this.P(((Byte) obj).byteValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean d1(byte b10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public byte i() {
            return Q.this.f27508s;
        }

        @Override
        public boolean i2(Sd.a aVar) {
            if (this == aVar) {
                clear();
                return true;
            }
            InterfaceC3449g it = aVar.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (m(it.next())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean isEmpty() {
            return Q.this.f27452b == 0;
        }

        @Override
        public InterfaceC3449g iterator() {
            Q q10 = Q.this;
            return new e(q10);
        }

        @Override
        public boolean m(byte b10) {
            Q q10 = Q.this;
            byte[] bArr = q10.f88731v;
            long[] jArr = q10.f27506q;
            int length = bArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                long j10 = jArr[i10];
                if (j10 != 0 && j10 != 2 && b10 == bArr[i10]) {
                    Q.this.hf(i10);
                    return true;
                }
                length = i10;
            }
        }

        @Override
        public boolean o2(byte[] bArr) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            boolean z10 = false;
            for (Object obj : collection) {
                if ((obj instanceof Byte) && m(((Byte) obj).byteValue())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            InterfaceC3449g it = iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (!collection.contains(Byte.valueOf(it.next()))) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean s2(Sd.a aVar) {
            boolean z10 = false;
            if (this == aVar) {
                return false;
            }
            InterfaceC3449g it = iterator();
            while (it.hasNext()) {
                if (!aVar.a1(it.next())) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public int size() {
            return Q.this.f27452b;
        }

        @Override
        public boolean t1(byte[] bArr) {
            for (byte b10 : bArr) {
                if (!Q.this.P(b10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public byte[] toArray() {
            return Q.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            Q.this.M(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean w2(Sd.a aVar) {
            InterfaceC3449g it = aVar.iterator();
            while (it.hasNext()) {
                if (!Q.this.P(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean y1(byte[] bArr) {
            int length = bArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (m(bArr[i10])) {
                    z10 = true;
                }
                length = i10;
            }
        }
    }

    public Q() {
    }

    @Override
    public boolean E(long j10) {
        return X0(j10);
    }

    @Override
    public boolean H0(long j10) {
        return mb(j10, (byte) 1);
    }

    @Override
    public byte K7(long j10, byte b10, byte b11) {
        int pf2 = pf(j10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            byte[] bArr = this.f88731v;
            b11 = (byte) (bArr[pf2] + b10);
            bArr[pf2] = b11;
            z10 = false;
        } else {
            this.f88731v[pf2] = b11;
        }
        byte b12 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27509t);
        }
        return b11;
    }

    @Override
    public boolean M(InterfaceC13453h interfaceC13453h) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f88731v;
        int length = bArr2.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13453h.a(bArr2[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean M6(he.U u10) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f27506q;
        byte[] bArr2 = this.f88731v;
        kf();
        try {
            int length = jArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !u10.a(jArr[i10], bArr2[i10])) {
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
    public boolean P(byte b10) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f88731v;
        int length = bArr2.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return false;
            }
            if (bArr[i10] == 1 && b10 == bArr2[i10]) {
                return true;
            }
            length = i10;
        }
    }

    @Override
    public byte[] a0(byte[] bArr) {
        int size = size();
        if (bArr.length < size) {
            bArr = new byte[size];
        }
        byte[] bArr2 = this.f88731v;
        byte[] bArr3 = this.f27568l;
        int length = bArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return bArr;
            }
            if (bArr3[i11] == 1) {
                bArr[i10] = bArr2[i11];
                i10++;
            }
            length = i11;
        }
    }

    @Override
    public boolean aa(he.U u10) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f27506q;
        byte[] bArr2 = this.f88731v;
        int length = jArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !u10.a(jArr[i10], bArr2[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public void clear() {
        super.clear();
        long[] jArr = this.f27506q;
        Arrays.fill(jArr, 0, jArr.length, this.f27507r);
        byte[] bArr = this.f88731v;
        Arrays.fill(bArr, 0, bArr.length, this.f27508s);
        byte[] bArr2 = this.f27568l;
        Arrays.fill(bArr2, 0, bArr2.length, (byte) 0);
    }

    @Override
    public byte e(long j10) {
        byte b10 = this.f27508s;
        int nf2 = nf(j10);
        if (nf2 < 0) {
            return b10;
        }
        byte b11 = this.f88731v[nf2];
        hf(nf2);
        return b11;
    }

    public boolean equals(Object obj) {
        byte u10;
        byte b10;
        if (!(obj instanceof ee.O)) {
            return false;
        }
        ee.O o10 = (ee.O) obj;
        if (o10.size() != size()) {
            return false;
        }
        byte[] bArr = this.f88731v;
        byte[] bArr2 = this.f27568l;
        byte i10 = i();
        byte i11 = o10.i();
        int length = bArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr2[i12] == 1 && (b10 = bArr[i12]) != (u10 = o10.u(this.f27506q[i12])) && b10 != i10 && u10 != i11) {
                return false;
            }
            length = i12;
        }
    }

    @Override
    public byte f7(long j10, byte b10) {
        return zf(j10, b10, pf(j10));
    }

    @Override
    public void gf(int i10) {
        long[] jArr = this.f27506q;
        int length = jArr.length;
        byte[] bArr = this.f88731v;
        byte[] bArr2 = this.f27568l;
        this.f27506q = new long[i10];
        this.f88731v = new byte[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr2[i11] == 1) {
                this.f88731v[pf(jArr[i11])] = bArr[i11];
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
        long[] jArr2 = this.f27506q;
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
        int length = this.f88731v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.e(this.f27506q[i11]) ^ Vd.b.d(this.f88731v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f88731v[i10] = this.f27508s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public Zd.W iterator() {
        return new c(this);
    }

    @Override
    public long[] j() {
        long[] jArr = new long[size()];
        long[] jArr2 = this.f27506q;
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
        this.f88731v = new byte[jf2];
        return jf2;
    }

    @Override
    public Sd.a k() {
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
    public boolean mb(long j10, byte b10) {
        int nf2 = nf(j10);
        if (nf2 < 0) {
            return false;
        }
        byte[] bArr = this.f88731v;
        bArr[nf2] = (byte) (bArr[nf2] + b10);
        return true;
    }

    @Override
    public void putAll(Map<? extends Long, ? extends Byte> map) {
        cf(map.size());
        for (Map.Entry<? extends Long, ? extends Byte> entry : map.entrySet()) {
            f7(entry.getKey().longValue(), entry.getValue().byteValue());
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
            f7(objectInput.readLong(), objectInput.readByte());
            readInt = i10;
        }
    }

    @Override
    public void s(Ud.a aVar) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f88731v;
        int length = bArr2.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i10] == 1) {
                bArr2[i10] = aVar.a(bArr2[i10]);
            }
            length = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        aa(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public byte u(long j10) {
        int nf2 = nf(j10);
        return nf2 < 0 ? this.f27508s : this.f88731v[nf2];
    }

    @Override
    public byte ud(long j10, byte b10) {
        int pf2 = pf(j10);
        return pf2 < 0 ? this.f88731v[(-pf2) - 1] : zf(j10, b10, pf2);
    }

    @Override
    public byte[] values() {
        byte[] bArr = new byte[size()];
        byte[] bArr2 = this.f88731v;
        byte[] bArr3 = this.f27568l;
        int length = bArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return bArr;
            }
            if (bArr3[i11] == 1) {
                bArr[i10] = bArr2[i11];
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
                objectOutput.writeLong(this.f27506q[i10]);
                objectOutput.writeByte(this.f88731v[i10]);
            }
            length = i10;
        }
    }

    @Override
    public void ya(ee.O o10) {
        cf(o10.size());
        Zd.W it = o10.iterator();
        while (it.hasNext()) {
            it.g();
            f7(it.key(), it.value());
        }
    }

    public final byte zf(long j10, byte b10, int i10) {
        byte b11 = this.f27508s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            b11 = this.f88731v[i10];
            z10 = false;
        }
        this.f88731v[i10] = b10;
        if (z10) {
            ef(this.f27509t);
        }
        return b11;
    }

    public Q(int i10) {
        super(i10);
    }

    public Q(int i10, float f10) {
        super(i10, f10);
    }

    public Q(int i10, float f10, long j10, byte b10) {
        super(i10, f10, j10, b10);
    }

    public Q(long[] jArr, byte[] bArr) {
        super(Math.max(jArr.length, bArr.length));
        int min = Math.min(jArr.length, bArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            f7(jArr[i10], bArr[i10]);
        }
    }

    public Q(ee.O o10) {
        super(o10.size());
        if (o10 instanceof Q) {
            Q q10 = (Q) o10;
            this.f27454d = q10.f27454d;
            long j10 = q10.f27507r;
            this.f27507r = j10;
            this.f27508s = q10.f27508s;
            if (j10 != 0) {
                Arrays.fill(this.f27506q, j10);
            }
            byte b10 = this.f27508s;
            if (b10 != 0) {
                Arrays.fill(this.f88731v, b10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        ya(o10);
    }
}
