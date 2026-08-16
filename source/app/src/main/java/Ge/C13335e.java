package ge;

import Wd.AbstractC3163f;
import Zd.InterfaceC3448f;
import Zd.InterfaceC3449g;
import ee.InterfaceC13064e;
import he.InterfaceC13450e;
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

public class C13335e extends AbstractC3163f implements InterfaceC13064e, Externalizable {

    public static final long f89024w = 1;

    public transient int[] f89025v;

    public class a implements InterfaceC13450e {

        public boolean f89026a = true;

        public final StringBuilder f89027b;

        public a(StringBuilder sb2) {
            this.f89027b = sb2;
        }

        @Override
        public boolean a(byte b10, int i10) {
            if (this.f89026a) {
                this.f89026a = false;
            } else {
                this.f89027b.append(", ");
            }
            this.f89027b.append((int) b10);
            this.f89027b.append("=");
            this.f89027b.append(i10);
            return true;
        }
    }

    public class b extends Wd.J implements InterfaceC3448f {
        public b(C13335e c13335e) {
            super(c13335e);
        }

        @Override
        public int e(int i10) {
            int value = value();
            C13335e.this.f89025v[this.f27465d] = i10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public byte key() {
            return C13335e.this.f27589q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13335e.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public int value() {
            return C13335e.this.f89025v[this.f27465d];
        }
    }

    public class c extends Wd.J implements InterfaceC3449g {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public byte next() {
            j();
            return C13335e.this.f27589q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13335e.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class d extends Wd.J implements Zd.Q {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public int next() {
            j();
            return C13335e.this.f89025v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13335e.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class C1715e implements InterfaceC13967a {

        public class a implements InterfaceC13453h {

            public boolean f89033a = true;

            public final StringBuilder f89034b;

            public a(StringBuilder sb2) {
                this.f89034b = sb2;
            }

            @Override
            public boolean a(byte b10) {
                if (this.f89033a) {
                    this.f89033a = false;
                } else {
                    this.f89034b.append(", ");
                }
                this.f89034b.append((int) b10);
                return true;
            }
        }

        public C1715e() {
        }

        @Override
        public boolean E1(Sd.a aVar) {
            throw new UnsupportedOperationException();
        }

        @Override
        public byte[] R0(byte[] bArr) {
            return C13335e.this.X(bArr);
        }

        @Override
        public boolean V0(InterfaceC13453h interfaceC13453h) {
            return C13335e.this.w(interfaceC13453h);
        }

        @Override
        public boolean W1(byte[] bArr) {
            Arrays.sort(bArr);
            C13335e c13335e = C13335e.this;
            byte[] bArr2 = c13335e.f27589q;
            byte[] bArr3 = c13335e.f27568l;
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
                    C13335e.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean a1(byte b10) {
            return C13335e.this.a1(b10);
        }

        @Override
        public boolean addAll(Collection<? extends Byte> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C13335e.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Byte) {
                    if (!C13335e.this.D(((Byte) obj).byteValue())) {
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
            int length = C13335e.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                C13335e c13335e = C13335e.this;
                if (c13335e.f27568l[i10] == 1 && !interfaceC13967a.a1(c13335e.f27589q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public int hashCode() {
            int length = C13335e.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                C13335e c13335e = C13335e.this;
                if (c13335e.f27568l[i11] == 1) {
                    i10 += Vd.b.d(c13335e.f27589q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public byte i() {
            return C13335e.this.f27590r;
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
            return C13335e.this.f27452b == 0;
        }

        @Override
        public InterfaceC3449g iterator() {
            C13335e c13335e = C13335e.this;
            return new c(c13335e);
        }

        @Override
        public boolean m(byte b10) {
            return C13335e.this.f27591s != C13335e.this.m(b10);
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
            return C13335e.this.f27452b;
        }

        @Override
        public boolean t1(byte[] bArr) {
            for (byte b10 : bArr) {
                if (!C13335e.this.a1(b10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public byte[] toArray() {
            return C13335e.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13335e.this.w(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean w2(Sd.a aVar) {
            InterfaceC3449g it = aVar.iterator();
            while (it.hasNext()) {
                if (!C13335e.this.D(it.next())) {
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

    public class f implements Sd.g {

        public class a implements he.S {

            public boolean f89037a = true;

            public final StringBuilder f89038b;

            public a(StringBuilder sb2) {
                this.f89038b = sb2;
            }

            @Override
            public boolean a(int i10) {
                if (this.f89037a) {
                    this.f89037a = false;
                } else {
                    this.f89038b.append(", ");
                }
                this.f89038b.append(i10);
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
                if (!C13335e.this.Q(i10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean M1(int[] iArr) {
            Arrays.sort(iArr);
            C13335e c13335e = C13335e.this;
            int[] iArr2 = c13335e.f89025v;
            byte[] bArr = c13335e.f27568l;
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
                    C13335e.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public int[] P0(int[] iArr) {
            return C13335e.this.e0(iArr);
        }

        @Override
        public boolean U0(he.S s10) {
            return C13335e.this.m0(s10);
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
            C13335e.this.clear();
        }

        @Override
        public boolean contains(int i10) {
            return C13335e.this.Q(i10);
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Integer) {
                    if (!C13335e.this.Q(((Integer) obj).intValue())) {
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
                if (!C13335e.this.Q(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int i() {
            return C13335e.this.f27591s;
        }

        @Override
        public boolean isEmpty() {
            return C13335e.this.f27452b == 0;
        }

        @Override
        public Zd.Q iterator() {
            C13335e c13335e = C13335e.this;
            return new d(c13335e);
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
            C13335e c13335e = C13335e.this;
            int[] iArr = c13335e.f89025v;
            byte[] bArr = c13335e.f27589q;
            int length = iArr.length;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return false;
                }
                byte b10 = bArr[i11];
                if (b10 != 0 && b10 != 2 && i10 == iArr[i11]) {
                    C13335e.this.hf(i11);
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
            return C13335e.this.f27452b;
        }

        @Override
        public int[] toArray() {
            return C13335e.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13335e.this.m0(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean z2(int[] iArr) {
            throw new UnsupportedOperationException();
        }
    }

    public C13335e() {
    }

    @Override
    public boolean D(byte b10) {
        return a1(b10);
    }

    @Override
    public boolean E0(byte b10) {
        return ge(b10, 1);
    }

    @Override
    public boolean Q(int i10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f89025v;
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
    public boolean Vb(InterfaceC13450e interfaceC13450e) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f27589q;
        int[] iArr = this.f89025v;
        int length = bArr2.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13450e.a(bArr2[i10], iArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public byte[] X(byte[] bArr) {
        int size = size();
        if (bArr.length < size) {
            bArr = new byte[size];
        }
        byte[] bArr2 = this.f27589q;
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
    public int Y3(byte b10, int i10) {
        return zf(b10, i10, pf(b10));
    }

    @Override
    public void ac(InterfaceC13064e interfaceC13064e) {
        cf(interfaceC13064e.size());
        InterfaceC3448f it = interfaceC13064e.iterator();
        while (it.hasNext()) {
            it.g();
            Y3(it.key(), it.value());
        }
    }

    @Override
    public boolean bc(InterfaceC13450e interfaceC13450e) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f27589q;
        int[] iArr = this.f89025v;
        kf();
        try {
            int length = bArr2.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !interfaceC13450e.a(bArr2[i10], iArr[i10])) {
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
    public int ca(byte b10, int i10) {
        int pf2 = pf(b10);
        return pf2 < 0 ? this.f89025v[(-pf2) - 1] : zf(b10, i10, pf2);
    }

    @Override
    public void clear() {
        super.clear();
        byte[] bArr = this.f27589q;
        Arrays.fill(bArr, 0, bArr.length, this.f27590r);
        int[] iArr = this.f89025v;
        Arrays.fill(iArr, 0, iArr.length, this.f27591s);
        byte[] bArr2 = this.f27568l;
        Arrays.fill(bArr2, 0, bArr2.length, (byte) 0);
    }

    @Override
    public int[] e0(int[] iArr) {
        int size = size();
        if (iArr.length < size) {
            iArr = new int[size];
        }
        int[] iArr2 = this.f89025v;
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
        int s02;
        int i10;
        if (!(obj instanceof InterfaceC13064e)) {
            return false;
        }
        InterfaceC13064e interfaceC13064e = (InterfaceC13064e) obj;
        if (interfaceC13064e.size() != size()) {
            return false;
        }
        int[] iArr = this.f89025v;
        byte[] bArr = this.f27568l;
        int i11 = i();
        int i12 = interfaceC13064e.i();
        int length = iArr.length;
        while (true) {
            int i13 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i13] == 1 && (i10 = iArr[i13]) != (s02 = interfaceC13064e.s0(this.f27589q[i13])) && i10 != i11 && s02 != i12) {
                return false;
            }
            length = i13;
        }
    }

    @Override
    public void f(Ud.e eVar) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f89025v;
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
    public boolean ge(byte b10, int i10) {
        int nf2 = nf(b10);
        if (nf2 < 0) {
            return false;
        }
        int[] iArr = this.f89025v;
        iArr[nf2] = iArr[nf2] + i10;
        return true;
    }

    @Override
    public void gf(int i10) {
        byte[] bArr = this.f27589q;
        int length = bArr.length;
        int[] iArr = this.f89025v;
        byte[] bArr2 = this.f27568l;
        this.f27589q = new byte[i10];
        this.f89025v = new int[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr2[i11] == 1) {
                this.f89025v[pf(bArr[i11])] = iArr[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f89025v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.d(this.f27589q[i11]) ^ Vd.b.d(this.f89025v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f89025v[i10] = this.f27591s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public InterfaceC3448f iterator() {
        return new b(this);
    }

    @Override
    public byte[] j() {
        byte[] bArr = new byte[size()];
        byte[] bArr2 = this.f27589q;
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
        this.f89025v = new int[jf2];
        return jf2;
    }

    @Override
    public Sd.g k() {
        return new f();
    }

    @Override
    public InterfaceC13967a keySet() {
        return new C1715e();
    }

    @Override
    public int m(byte b10) {
        int i10 = this.f27591s;
        int nf2 = nf(b10);
        if (nf2 < 0) {
            return i10;
        }
        int i11 = this.f89025v[nf2];
        hf(nf2);
        return i11;
    }

    @Override
    public boolean m0(he.S s10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f89025v;
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
    public void putAll(Map<? extends Byte, ? extends Integer> map) {
        cf(map.size());
        for (Map.Entry<? extends Byte, ? extends Integer> entry : map.entrySet()) {
            Y3(entry.getKey().byteValue(), entry.getValue().intValue());
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
            Y3(objectInput.readByte(), objectInput.readInt());
            readInt = i10;
        }
    }

    @Override
    public int s0(byte b10) {
        int nf2 = nf(b10);
        return nf2 < 0 ? this.f27591s : this.f89025v[nf2];
    }

    @Override
    public int s8(byte b10, int i10, int i11) {
        int pf2 = pf(b10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            int[] iArr = this.f89025v;
            int i12 = i10 + iArr[pf2];
            iArr[pf2] = i12;
            z10 = false;
            i11 = i12;
        } else {
            this.f89025v[pf2] = i11;
        }
        byte b11 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27592t);
        }
        return i11;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        Vb(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public int[] values() {
        int[] iArr = new int[size()];
        int[] iArr2 = this.f89025v;
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
                objectOutput.writeByte(this.f27589q[i10]);
                objectOutput.writeInt(this.f89025v[i10]);
            }
            length = i10;
        }
    }

    public final int zf(byte b10, int i10, int i11) {
        int i12 = this.f27591s;
        boolean z10 = true;
        if (i11 < 0) {
            i11 = (-i11) - 1;
            i12 = this.f89025v[i11];
            z10 = false;
        }
        this.f89025v[i11] = i10;
        if (z10) {
            ef(this.f27592t);
        }
        return i12;
    }

    public C13335e(int i10) {
        super(i10);
    }

    public C13335e(int i10, float f10) {
        super(i10, f10);
    }

    public C13335e(int i10, float f10, byte b10, int i11) {
        super(i10, f10, b10, i11);
    }

    public C13335e(byte[] bArr, int[] iArr) {
        super(Math.max(bArr.length, iArr.length));
        int min = Math.min(bArr.length, iArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            Y3(bArr[i10], iArr[i10]);
        }
    }

    public C13335e(InterfaceC13064e interfaceC13064e) {
        super(interfaceC13064e.size());
        if (interfaceC13064e instanceof C13335e) {
            C13335e c13335e = (C13335e) interfaceC13064e;
            this.f27454d = c13335e.f27454d;
            byte b10 = c13335e.f27590r;
            this.f27590r = b10;
            this.f27591s = c13335e.f27591s;
            if (b10 != 0) {
                Arrays.fill(this.f27589q, b10);
            }
            int i10 = this.f27591s;
            if (i10 != 0) {
                Arrays.fill(this.f89025v, i10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        ac(interfaceC13064e);
    }
}
