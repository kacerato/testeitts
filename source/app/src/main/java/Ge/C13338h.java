package ge;

import Wd.AbstractC3165h;
import Zd.InterfaceC3449g;
import Zd.InterfaceC3452j;
import Zd.s0;
import ee.InterfaceC13067h;
import he.InterfaceC13453h;
import he.InterfaceC13454i;
import he.t0;
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

public class C13338h extends AbstractC3165h implements InterfaceC13067h, Externalizable {

    public static final long f89130w = 1;

    public transient short[] f89131v;

    public class a implements InterfaceC13454i {

        public boolean f89132a = true;

        public final StringBuilder f89133b;

        public a(StringBuilder sb2) {
            this.f89133b = sb2;
        }

        @Override
        public boolean a(byte b10, short s10) {
            if (this.f89132a) {
                this.f89132a = false;
            } else {
                this.f89133b.append(", ");
            }
            this.f89133b.append((int) b10);
            this.f89133b.append("=");
            this.f89133b.append((int) s10);
            return true;
        }
    }

    public class b extends Wd.J implements InterfaceC3452j {
        public b(C13338h c13338h) {
            super(c13338h);
        }

        @Override
        public short c(short s10) {
            short value = value();
            C13338h.this.f89131v[this.f27465d] = s10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public byte key() {
            return C13338h.this.f27609q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13338h.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public short value() {
            return C13338h.this.f89131v[this.f27465d];
        }
    }

    public class c extends Wd.J implements InterfaceC3449g {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public byte next() {
            j();
            return C13338h.this.f27609q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13338h.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class d extends Wd.J implements s0 {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public short next() {
            j();
            return C13338h.this.f89131v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13338h.this.hf(this.f27465d);
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

            public boolean f89139a = true;

            public final StringBuilder f89140b;

            public a(StringBuilder sb2) {
                this.f89140b = sb2;
            }

            @Override
            public boolean a(byte b10) {
                if (this.f89139a) {
                    this.f89139a = false;
                } else {
                    this.f89140b.append(", ");
                }
                this.f89140b.append((int) b10);
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
            return C13338h.this.X(bArr);
        }

        @Override
        public boolean V0(InterfaceC13453h interfaceC13453h) {
            return C13338h.this.w(interfaceC13453h);
        }

        @Override
        public boolean W1(byte[] bArr) {
            Arrays.sort(bArr);
            C13338h c13338h = C13338h.this;
            byte[] bArr2 = c13338h.f27609q;
            byte[] bArr3 = c13338h.f27568l;
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
                    C13338h.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean a1(byte b10) {
            return C13338h.this.a1(b10);
        }

        @Override
        public boolean addAll(Collection<? extends Byte> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C13338h.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Byte) {
                    if (!C13338h.this.D(((Byte) obj).byteValue())) {
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
            int length = C13338h.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                C13338h c13338h = C13338h.this;
                if (c13338h.f27568l[i10] == 1 && !interfaceC13967a.a1(c13338h.f27609q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public int hashCode() {
            int length = C13338h.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                C13338h c13338h = C13338h.this;
                if (c13338h.f27568l[i11] == 1) {
                    i10 += Vd.b.d(c13338h.f27609q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public byte i() {
            return C13338h.this.f27610r;
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
            return C13338h.this.f27452b == 0;
        }

        @Override
        public InterfaceC3449g iterator() {
            C13338h c13338h = C13338h.this;
            return new c(c13338h);
        }

        @Override
        public boolean m(byte b10) {
            return C13338h.this.f27611s != C13338h.this.m(b10);
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
            return C13338h.this.f27452b;
        }

        @Override
        public boolean t1(byte[] bArr) {
            for (byte b10 : bArr) {
                if (!C13338h.this.a1(b10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public byte[] toArray() {
            return C13338h.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13338h.this.w(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean w2(Sd.a aVar) {
            InterfaceC3449g it = aVar.iterator();
            while (it.hasNext()) {
                if (!C13338h.this.D(it.next())) {
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

    public class f implements Sd.i {

        public class a implements t0 {

            public boolean f89143a = true;

            public final StringBuilder f89144b;

            public a(StringBuilder sb2) {
                this.f89144b = sb2;
            }

            @Override
            public boolean a(short s10) {
                if (this.f89143a) {
                    this.f89143a = false;
                } else {
                    this.f89144b.append(", ");
                }
                this.f89144b.append((int) s10);
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
            return C13338h.this.i0(sArr);
        }

        @Override
        public boolean W0(short s10) {
            return C13338h.this.L(s10);
        }

        @Override
        public boolean Z1(short[] sArr) {
            for (short s10 : sArr) {
                if (!C13338h.this.L(s10)) {
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
            C13338h.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Short) {
                    if (!C13338h.this.L(((Short) obj).shortValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean d(short s10) {
            C13338h c13338h = C13338h.this;
            short[] sArr = c13338h.f89131v;
            byte[] bArr = c13338h.f27609q;
            int length = sArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                byte b10 = bArr[i10];
                if (b10 != 0 && b10 != 2 && s10 == sArr[i10]) {
                    C13338h.this.hf(i10);
                    return true;
                }
                length = i10;
            }
        }

        @Override
        public boolean h1(t0 t0Var) {
            return C13338h.this.N(t0Var);
        }

        @Override
        public short i() {
            return C13338h.this.f27611s;
        }

        @Override
        public boolean isEmpty() {
            return C13338h.this.f27452b == 0;
        }

        @Override
        public s0 iterator() {
            C13338h c13338h = C13338h.this;
            return new d(c13338h);
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
            C13338h c13338h = C13338h.this;
            short[] sArr2 = c13338h.f89131v;
            byte[] bArr = c13338h.f27568l;
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
                    C13338h.this.hf(i10);
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
            return C13338h.this.f27452b;
        }

        @Override
        public short[] toArray() {
            return C13338h.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13338h.this.N(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean v2(Sd.i iVar) {
            s0 it = iVar.iterator();
            while (it.hasNext()) {
                if (!C13338h.this.L(it.next())) {
                    return false;
                }
            }
            return true;
        }
    }

    public C13338h() {
    }

    @Override
    public boolean Cd(byte b10, short s10) {
        int nf2 = nf(b10);
        if (nf2 < 0) {
            return false;
        }
        short[] sArr = this.f89131v;
        sArr[nf2] = (short) (sArr[nf2] + s10);
        return true;
    }

    @Override
    public boolean D(byte b10) {
        return a1(b10);
    }

    @Override
    public boolean Dd(InterfaceC13454i interfaceC13454i) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f27609q;
        short[] sArr = this.f89131v;
        int length = bArr2.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13454i.a(bArr2[i10], sArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean E0(byte b10) {
        return Cd(b10, (short) 1);
    }

    @Override
    public boolean L(short s10) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f89131v;
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
    public void Lc(InterfaceC13067h interfaceC13067h) {
        cf(interfaceC13067h.size());
        InterfaceC3452j it = interfaceC13067h.iterator();
        while (it.hasNext()) {
            it.g();
            s4(it.key(), it.value());
        }
    }

    @Override
    public boolean N(t0 t0Var) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f89131v;
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
    public boolean P7(InterfaceC13454i interfaceC13454i) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f27609q;
        short[] sArr = this.f89131v;
        kf();
        try {
            int length = bArr2.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !interfaceC13454i.a(bArr2[i10], sArr[i10])) {
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
        byte[] bArr2 = this.f27609q;
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
    public void clear() {
        super.clear();
        byte[] bArr = this.f27609q;
        Arrays.fill(bArr, 0, bArr.length, this.f27610r);
        short[] sArr = this.f89131v;
        Arrays.fill(sArr, 0, sArr.length, this.f27611s);
        byte[] bArr2 = this.f27568l;
        Arrays.fill(bArr2, 0, bArr2.length, (byte) 0);
    }

    public boolean equals(Object obj) {
        short s02;
        short s10;
        if (!(obj instanceof InterfaceC13067h)) {
            return false;
        }
        InterfaceC13067h interfaceC13067h = (InterfaceC13067h) obj;
        if (interfaceC13067h.size() != size()) {
            return false;
        }
        short[] sArr = this.f89131v;
        byte[] bArr = this.f27568l;
        short i10 = i();
        short i11 = interfaceC13067h.i();
        int length = sArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1 && (s10 = sArr[i12]) != (s02 = interfaceC13067h.s0(this.f27609q[i12])) && s10 != i10 && s02 != i11) {
                return false;
            }
            length = i12;
        }
    }

    @Override
    public void gf(int i10) {
        byte[] bArr = this.f27609q;
        int length = bArr.length;
        short[] sArr = this.f89131v;
        byte[] bArr2 = this.f27568l;
        this.f27609q = new byte[i10];
        this.f89131v = new short[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr2[i11] == 1) {
                this.f89131v[pf(bArr[i11])] = sArr[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f89131v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.d(this.f27609q[i11]) ^ Vd.b.d(this.f89131v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f89131v[i10] = this.f27611s;
        super.hf(i10);
    }

    @Override
    public short[] i0(short[] sArr) {
        int size = size();
        if (sArr.length < size) {
            sArr = new short[size];
        }
        short[] sArr2 = this.f89131v;
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
    public short ia(byte b10, short s10) {
        int pf2 = pf(b10);
        return pf2 < 0 ? this.f89131v[(-pf2) - 1] : zf(b10, s10, pf2);
    }

    @Override
    public short ic(byte b10, short s10, short s11) {
        int pf2 = pf(b10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            short[] sArr = this.f89131v;
            short s12 = (short) (sArr[pf2] + s10);
            sArr[pf2] = s12;
            z10 = false;
            s11 = s12;
        } else {
            this.f89131v[pf2] = s11;
        }
        byte b11 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27612t);
        }
        return s11;
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public InterfaceC3452j iterator() {
        return new b(this);
    }

    @Override
    public byte[] j() {
        byte[] bArr = new byte[size()];
        byte[] bArr2 = this.f27609q;
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
        this.f89131v = new short[jf2];
        return jf2;
    }

    @Override
    public Sd.i k() {
        return new f();
    }

    @Override
    public InterfaceC13967a keySet() {
        return new e();
    }

    @Override
    public short m(byte b10) {
        short s10 = this.f27611s;
        int nf2 = nf(b10);
        if (nf2 < 0) {
            return s10;
        }
        short s11 = this.f89131v[nf2];
        hf(nf2);
        return s11;
    }

    @Override
    public void putAll(Map<? extends Byte, ? extends Short> map) {
        cf(map.size());
        for (Map.Entry<? extends Byte, ? extends Short> entry : map.entrySet()) {
            s4(entry.getKey().byteValue(), entry.getValue().shortValue());
        }
    }

    @Override
    public void r(Ud.h hVar) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f89131v;
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
            s4(objectInput.readByte(), objectInput.readShort());
            readInt = i10;
        }
    }

    @Override
    public short s0(byte b10) {
        int nf2 = nf(b10);
        return nf2 < 0 ? this.f27611s : this.f89131v[nf2];
    }

    @Override
    public short s4(byte b10, short s10) {
        return zf(b10, s10, pf(b10));
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        Dd(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public short[] values() {
        short[] sArr = new short[size()];
        short[] sArr2 = this.f89131v;
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
                objectOutput.writeByte(this.f27609q[i10]);
                objectOutput.writeShort(this.f89131v[i10]);
            }
            length = i10;
        }
    }

    public final short zf(byte b10, short s10, int i10) {
        short s11 = this.f27611s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            s11 = this.f89131v[i10];
            z10 = false;
        }
        this.f89131v[i10] = s10;
        if (z10) {
            ef(this.f27612t);
        }
        return s11;
    }

    public C13338h(int i10) {
        super(i10);
    }

    public C13338h(int i10, float f10) {
        super(i10, f10);
    }

    public C13338h(int i10, float f10, byte b10, short s10) {
        super(i10, f10, b10, s10);
    }

    public C13338h(byte[] bArr, short[] sArr) {
        super(Math.max(bArr.length, sArr.length));
        int min = Math.min(bArr.length, sArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            s4(bArr[i10], sArr[i10]);
        }
    }

    public C13338h(InterfaceC13067h interfaceC13067h) {
        super(interfaceC13067h.size());
        if (interfaceC13067h instanceof C13338h) {
            C13338h c13338h = (C13338h) interfaceC13067h;
            this.f27454d = c13338h.f27454d;
            byte b10 = c13338h.f27610r;
            this.f27610r = b10;
            this.f27611s = c13338h.f27611s;
            if (b10 != 0) {
                Arrays.fill(this.f27609q, b10);
            }
            short s10 = this.f27611s;
            if (s10 != 0) {
                Arrays.fill(this.f89131v, s10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        Lc(interfaceC13067h);
    }
}
