package ge;

import Wd.AbstractC3164g;
import Zd.InterfaceC3449g;
import Zd.InterfaceC3450h;
import ee.InterfaceC13065f;
import he.InterfaceC13451f;
import he.InterfaceC13453h;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Map;
import ke.InterfaceC13967a;
import org.apache.commons.math3.geometry.VectorFormat;

public class C13336f extends AbstractC3164g implements InterfaceC13065f, Externalizable {

    public static final long f89060w = 1;

    public transient long[] f89061v;

    public class a implements InterfaceC13451f {

        public boolean f89062a = true;

        public final StringBuilder f89063b;

        public a(StringBuilder sb2) {
            this.f89063b = sb2;
        }

        @Override
        public boolean a(byte b10, long j10) {
            if (this.f89062a) {
                this.f89062a = false;
            } else {
                this.f89063b.append(", ");
            }
            this.f89063b.append((int) b10);
            this.f89063b.append("=");
            this.f89063b.append(j10);
            return true;
        }
    }

    public class b extends Wd.J implements InterfaceC3450h {
        public b(C13336f c13336f) {
            super(c13336f);
        }

        @Override
        public long d(long j10) {
            long value = value();
            C13336f.this.f89061v[this.f27465d] = j10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public byte key() {
            return C13336f.this.f27599q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13336f.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public long value() {
            return C13336f.this.f89061v[this.f27465d];
        }
    }

    public class c extends Wd.J implements InterfaceC3449g {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public byte next() {
            j();
            return C13336f.this.f27599q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13336f.this.hf(this.f27465d);
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
            return C13336f.this.f89061v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13336f.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class e implements InterfaceC13967a {

        public class a implements InterfaceC13453h {

            public boolean f89069a = true;

            public final StringBuilder f89070b;

            public a(StringBuilder sb2) {
                this.f89070b = sb2;
            }

            @Override
            public boolean a(byte b10) {
                if (this.f89069a) {
                    this.f89069a = false;
                } else {
                    this.f89070b.append(", ");
                }
                this.f89070b.append((int) b10);
                return true;
            }
        }

        public e() {
        }

        @Override
        public boolean E1(Sd.a aVar) {
            throw new UnsupportedOperationException();
        }

        @Override
        public byte[] R0(byte[] bArr) {
            return C13336f.this.X(bArr);
        }

        @Override
        public boolean V0(InterfaceC13453h interfaceC13453h) {
            return C13336f.this.w(interfaceC13453h);
        }

        @Override
        public boolean W1(byte[] bArr) {
            Arrays.sort(bArr);
            C13336f c13336f = C13336f.this;
            byte[] bArr2 = c13336f.f27599q;
            byte[] bArr3 = c13336f.f27568l;
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
                    C13336f.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean a1(byte b10) {
            return C13336f.this.a1(b10);
        }

        @Override
        public boolean addAll(Collection<? extends Byte> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C13336f.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Byte) {
                    if (!C13336f.this.D(((Byte) obj).byteValue())) {
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
        public boolean equals(Object obj) {
            if (!(obj instanceof InterfaceC13967a)) {
                return false;
            }
            InterfaceC13967a interfaceC13967a = (InterfaceC13967a) obj;
            if (interfaceC13967a.size() != size()) {
                return false;
            }
            int length = C13336f.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                C13336f c13336f = C13336f.this;
                if (c13336f.f27568l[i10] == 1 && !interfaceC13967a.a1(c13336f.f27599q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public int hashCode() {
            int length = C13336f.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                C13336f c13336f = C13336f.this;
                if (c13336f.f27568l[i11] == 1) {
                    i10 += Vd.b.d(c13336f.f27599q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public byte i() {
            return C13336f.this.f27600r;
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
            return C13336f.this.f27452b == 0;
        }

        @Override
        public InterfaceC3449g iterator() {
            C13336f c13336f = C13336f.this;
            return new c(c13336f);
        }

        @Override
        public boolean m(byte b10) {
            return C13336f.this.f27601s != C13336f.this.m(b10);
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
            return C13336f.this.f27452b;
        }

        @Override
        public boolean t1(byte[] bArr) {
            for (byte b10 : bArr) {
                if (!C13336f.this.a1(b10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public byte[] toArray() {
            return C13336f.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13336f.this.w(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean w2(Sd.a aVar) {
            InterfaceC3449g it = aVar.iterator();
            while (it.hasNext()) {
                if (!C13336f.this.D(it.next())) {
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

    public class C1716f implements Sd.h {

        public class a implements he.b0 {

            public boolean f89073a = true;

            public final StringBuilder f89074b;

            public a(StringBuilder sb2) {
                this.f89074b = sb2;
            }

            @Override
            public boolean a(long j10) {
                if (this.f89073a) {
                    this.f89073a = false;
                } else {
                    this.f89074b.append(", ");
                }
                this.f89074b.append(j10);
                return true;
            }
        }

        public C1716f() {
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
                if (!C13336f.this.R(it.next())) {
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
            return C13336f.this.g0(jArr);
        }

        @Override
        public boolean Q1(long[] jArr) {
            Arrays.sort(jArr);
            C13336f c13336f = C13336f.this;
            long[] jArr2 = c13336f.f89061v;
            byte[] bArr = c13336f.f27568l;
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
                    C13336f.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean U1(long[] jArr) {
            for (long j10 : jArr) {
                if (!C13336f.this.R(j10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean X0(long j10) {
            return C13336f.this.R(j10);
        }

        @Override
        public boolean addAll(Collection<? extends Long> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C13336f.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Long) {
                    if (!C13336f.this.R(((Long) obj).longValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean e(long j10) {
            C13336f c13336f = C13336f.this;
            long[] jArr = c13336f.f89061v;
            byte[] bArr = c13336f.f27599q;
            int length = jArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                byte b10 = bArr[i10];
                if (b10 != 0 && b10 != 2 && j10 == jArr[i10]) {
                    C13336f.this.hf(i10);
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
            return C13336f.this.f27601s;
        }

        @Override
        public boolean isEmpty() {
            return C13336f.this.f27452b == 0;
        }

        @Override
        public Zd.b0 iterator() {
            C13336f c13336f = C13336f.this;
            return new d(c13336f);
        }

        @Override
        public boolean j1(he.b0 b0Var) {
            return C13336f.this.x(b0Var);
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
            return C13336f.this.f27452b;
        }

        @Override
        public long[] toArray() {
            return C13336f.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13336f.this.x(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean y2(long[] jArr) {
            throw new UnsupportedOperationException();
        }
    }

    public C13336f() {
    }

    @Override
    public boolean D(byte b10) {
        return a1(b10);
    }

    @Override
    public boolean E0(byte b10) {
        return oe(b10, 1L);
    }

    @Override
    public long N8(byte b10, long j10, long j11) {
        int pf2 = pf(b10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            long[] jArr = this.f89061v;
            long j12 = j10 + jArr[pf2];
            jArr[pf2] = j12;
            z10 = false;
            j11 = j12;
        } else {
            this.f89061v[pf2] = j11;
        }
        byte b11 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27602t);
        }
        return j11;
    }

    @Override
    public boolean R(long j10) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f89061v;
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
    public void R4(InterfaceC13065f interfaceC13065f) {
        cf(interfaceC13065f.size());
        InterfaceC3450h it = interfaceC13065f.iterator();
        while (it.hasNext()) {
            it.g();
            b4(it.key(), it.value());
        }
    }

    @Override
    public boolean V5(InterfaceC13451f interfaceC13451f) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f27599q;
        long[] jArr = this.f89061v;
        kf();
        try {
            int length = bArr2.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !interfaceC13451f.a(bArr2[i10], jArr[i10])) {
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
    public byte[] X(byte[] bArr) {
        int size = size();
        if (bArr.length < size) {
            bArr = new byte[size];
        }
        byte[] bArr2 = this.f27599q;
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
    public boolean a9(InterfaceC13451f interfaceC13451f) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f27599q;
        long[] jArr = this.f89061v;
        int length = bArr2.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13451f.a(bArr2[i10], jArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public long b4(byte b10, long j10) {
        return zf(b10, j10, pf(b10));
    }

    @Override
    public void clear() {
        super.clear();
        byte[] bArr = this.f27599q;
        Arrays.fill(bArr, 0, bArr.length, this.f27600r);
        long[] jArr = this.f89061v;
        Arrays.fill(jArr, 0, jArr.length, this.f27601s);
        byte[] bArr2 = this.f27568l;
        Arrays.fill(bArr2, 0, bArr2.length, (byte) 0);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof InterfaceC13065f)) {
            return false;
        }
        InterfaceC13065f interfaceC13065f = (InterfaceC13065f) obj;
        if (interfaceC13065f.size() != size()) {
            return false;
        }
        long[] jArr = this.f89061v;
        byte[] bArr = this.f27568l;
        long i10 = i();
        long i11 = interfaceC13065f.i();
        int length = jArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1) {
                long s02 = interfaceC13065f.s0(this.f27599q[i12]);
                long j10 = jArr[i12];
                if (j10 != s02 && j10 != i10 && s02 != i11) {
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
        long[] jArr2 = this.f89061v;
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
        byte[] bArr = this.f27599q;
        int length = bArr.length;
        long[] jArr = this.f89061v;
        byte[] bArr2 = this.f27568l;
        this.f27599q = new byte[i10];
        this.f89061v = new long[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr2[i11] == 1) {
                this.f89061v[pf(bArr[i11])] = jArr[i11];
            }
            length = i11;
        }
    }

    @Override
    public void h(Ud.f fVar) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f89061v;
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
        int length = this.f89061v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.d(this.f27599q[i11]) ^ Vd.b.e(this.f89061v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f89061v[i10] = this.f27601s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public InterfaceC3450h iterator() {
        return new b(this);
    }

    @Override
    public byte[] j() {
        byte[] bArr = new byte[size()];
        byte[] bArr2 = this.f27599q;
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
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f89061v = new long[jf2];
        return jf2;
    }

    @Override
    public Sd.h k() {
        return new C1716f();
    }

    @Override
    public InterfaceC13967a keySet() {
        return new e();
    }

    @Override
    public long m(byte b10) {
        long j10 = this.f27601s;
        int nf2 = nf(b10);
        if (nf2 < 0) {
            return j10;
        }
        long j11 = this.f89061v[nf2];
        hf(nf2);
        return j11;
    }

    @Override
    public boolean oe(byte b10, long j10) {
        int nf2 = nf(b10);
        if (nf2 < 0) {
            return false;
        }
        long[] jArr = this.f89061v;
        jArr[nf2] = jArr[nf2] + j10;
        return true;
    }

    @Override
    public void putAll(Map<? extends Byte, ? extends Long> map) {
        cf(map.size());
        for (Map.Entry<? extends Byte, ? extends Long> entry : map.entrySet()) {
            b4(entry.getKey().byteValue(), entry.getValue().longValue());
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
            b4(objectInput.readByte(), objectInput.readLong());
            readInt = i10;
        }
    }

    @Override
    public long s0(byte b10) {
        int nf2 = nf(b10);
        return nf2 < 0 ? this.f27601s : this.f89061v[nf2];
    }

    @Override
    public long ta(byte b10, long j10) {
        int pf2 = pf(b10);
        return pf2 < 0 ? this.f89061v[(-pf2) - 1] : zf(b10, j10, pf2);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        a9(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public long[] values() {
        long[] jArr = new long[size()];
        long[] jArr2 = this.f89061v;
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
    public boolean w(InterfaceC13453h interfaceC13453h) {
        return V0(interfaceC13453h);
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
                objectOutput.writeByte(this.f27599q[i10]);
                objectOutput.writeLong(this.f89061v[i10]);
            }
            length = i10;
        }
    }

    @Override
    public boolean x(he.b0 b0Var) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f89061v;
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

    public final long zf(byte b10, long j10, int i10) {
        long j11 = this.f27601s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            j11 = this.f89061v[i10];
            z10 = false;
        }
        this.f89061v[i10] = j10;
        if (z10) {
            ef(this.f27602t);
        }
        return j11;
    }

    public C13336f(int i10) {
        super(i10);
    }

    public C13336f(int i10, float f10) {
        super(i10, f10);
    }

    public C13336f(int i10, float f10, byte b10, long j10) {
        super(i10, f10, b10, j10);
    }

    public C13336f(byte[] bArr, long[] jArr) {
        super(Math.max(bArr.length, jArr.length));
        int min = Math.min(bArr.length, jArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            b4(bArr[i10], jArr[i10]);
        }
    }

    public C13336f(InterfaceC13065f interfaceC13065f) {
        super(interfaceC13065f.size());
        if (interfaceC13065f instanceof C13336f) {
            C13336f c13336f = (C13336f) interfaceC13065f;
            this.f27454d = c13336f.f27454d;
            byte b10 = c13336f.f27600r;
            this.f27600r = b10;
            this.f27601s = c13336f.f27601s;
            if (b10 != 0) {
                Arrays.fill(this.f27599q, b10);
            }
            long j10 = this.f27601s;
            if (j10 != 0) {
                Arrays.fill(this.f89061v, j10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        R4(interfaceC13065f);
    }
}
