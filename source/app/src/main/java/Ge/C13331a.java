package ge;

import Wd.AbstractC3158a;
import Zd.InterfaceC3444b;
import Zd.InterfaceC3449g;
import ee.InterfaceC13060a;
import he.InterfaceC13446a;
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

public class C13331a extends AbstractC3158a implements InterfaceC13060a, Externalizable {

    public static final long f88880w = 1;

    public transient byte[] f88881v;

    public class C1709a implements InterfaceC13446a {

        public boolean f88882a = true;

        public final StringBuilder f88883b;

        public C1709a(StringBuilder sb2) {
            this.f88883b = sb2;
        }

        @Override
        public boolean a(byte b10, byte b11) {
            if (this.f88882a) {
                this.f88882a = false;
            } else {
                this.f88883b.append(", ");
            }
            this.f88883b.append((int) b10);
            this.f88883b.append("=");
            this.f88883b.append((int) b11);
            return true;
        }
    }

    public class b extends Wd.J implements InterfaceC3444b {
        public b(C13331a c13331a) {
            super(c13331a);
        }

        @Override
        public byte b(byte b10) {
            byte value = value();
            C13331a.this.f88881v[this.f27465d] = b10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public byte key() {
            return C13331a.this.f27540q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13331a.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public byte value() {
            return C13331a.this.f88881v[this.f27465d];
        }
    }

    public class c extends Wd.J implements InterfaceC3449g {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public byte next() {
            j();
            return C13331a.this.f27540q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13331a.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class d extends Wd.J implements InterfaceC3449g {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public byte next() {
            j();
            return C13331a.this.f88881v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13331a.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class e implements InterfaceC13967a {

        public class C1710a implements InterfaceC13453h {

            public boolean f88889a = true;

            public final StringBuilder f88890b;

            public C1710a(StringBuilder sb2) {
                this.f88890b = sb2;
            }

            @Override
            public boolean a(byte b10) {
                if (this.f88889a) {
                    this.f88889a = false;
                } else {
                    this.f88890b.append(", ");
                }
                this.f88890b.append((int) b10);
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
            return C13331a.this.X(bArr);
        }

        @Override
        public boolean V0(InterfaceC13453h interfaceC13453h) {
            return C13331a.this.w(interfaceC13453h);
        }

        @Override
        public boolean W1(byte[] bArr) {
            Arrays.sort(bArr);
            C13331a c13331a = C13331a.this;
            byte[] bArr2 = c13331a.f27540q;
            byte[] bArr3 = c13331a.f27568l;
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
                    C13331a.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean a1(byte b10) {
            return C13331a.this.a1(b10);
        }

        @Override
        public boolean addAll(Collection<? extends Byte> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C13331a.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Byte) {
                    if (!C13331a.this.D(((Byte) obj).byteValue())) {
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
            int length = C13331a.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                C13331a c13331a = C13331a.this;
                if (c13331a.f27568l[i10] == 1 && !interfaceC13967a.a1(c13331a.f27540q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public int hashCode() {
            int length = C13331a.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                C13331a c13331a = C13331a.this;
                if (c13331a.f27568l[i11] == 1) {
                    i10 += Vd.b.d(c13331a.f27540q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public byte i() {
            return C13331a.this.f27541r;
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
            return C13331a.this.f27452b == 0;
        }

        @Override
        public InterfaceC3449g iterator() {
            C13331a c13331a = C13331a.this;
            return new c(c13331a);
        }

        @Override
        public boolean m(byte b10) {
            return C13331a.this.f27542s != C13331a.this.m(b10);
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
            return C13331a.this.f27452b;
        }

        @Override
        public boolean t1(byte[] bArr) {
            for (byte b10 : bArr) {
                if (!C13331a.this.a1(b10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public byte[] toArray() {
            return C13331a.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13331a.this.w(new C1710a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean w2(Sd.a aVar) {
            InterfaceC3449g it = aVar.iterator();
            while (it.hasNext()) {
                if (!C13331a.this.D(it.next())) {
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

    public class f implements Sd.a {

        public class C1711a implements InterfaceC13453h {

            public boolean f88893a = true;

            public final StringBuilder f88894b;

            public C1711a(StringBuilder sb2) {
                this.f88894b = sb2;
            }

            @Override
            public boolean a(byte b10) {
                if (this.f88893a) {
                    this.f88893a = false;
                } else {
                    this.f88894b.append(", ");
                }
                this.f88894b.append((int) b10);
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
            return C13331a.this.a0(bArr);
        }

        @Override
        public boolean V0(InterfaceC13453h interfaceC13453h) {
            return C13331a.this.M(interfaceC13453h);
        }

        @Override
        public boolean W1(byte[] bArr) {
            Arrays.sort(bArr);
            C13331a c13331a = C13331a.this;
            byte[] bArr2 = c13331a.f88881v;
            byte[] bArr3 = c13331a.f27568l;
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
                    C13331a.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean a1(byte b10) {
            return C13331a.this.P(b10);
        }

        @Override
        public boolean addAll(Collection<? extends Byte> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C13331a.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Byte) {
                    if (!C13331a.this.P(((Byte) obj).byteValue())) {
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
            return C13331a.this.f27542s;
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
            return C13331a.this.f27452b == 0;
        }

        @Override
        public InterfaceC3449g iterator() {
            C13331a c13331a = C13331a.this;
            return new d(c13331a);
        }

        @Override
        public boolean m(byte b10) {
            C13331a c13331a = C13331a.this;
            byte[] bArr = c13331a.f88881v;
            byte[] bArr2 = c13331a.f27540q;
            int length = bArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                byte b11 = bArr2[i10];
                if (b11 != 0 && b11 != 2 && b10 == bArr[i10]) {
                    C13331a.this.hf(i10);
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
            return C13331a.this.f27452b;
        }

        @Override
        public boolean t1(byte[] bArr) {
            for (byte b10 : bArr) {
                if (!C13331a.this.P(b10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public byte[] toArray() {
            return C13331a.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13331a.this.M(new C1711a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean w2(Sd.a aVar) {
            InterfaceC3449g it = aVar.iterator();
            while (it.hasNext()) {
                if (!C13331a.this.P(it.next())) {
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

    public C13331a() {
    }

    @Override
    public boolean D(byte b10) {
        return a1(b10);
    }

    @Override
    public boolean E0(byte b10) {
        return me(b10, (byte) 1);
    }

    @Override
    public boolean G2(InterfaceC13446a interfaceC13446a) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f27540q;
        byte[] bArr3 = this.f88881v;
        int length = bArr2.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13446a.a(bArr2[i10], bArr3[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public void L8(InterfaceC13060a interfaceC13060a) {
        cf(interfaceC13060a.size());
        InterfaceC3444b it = interfaceC13060a.iterator();
        while (it.hasNext()) {
            it.g();
            P3(it.key(), it.value());
        }
    }

    @Override
    public boolean M(InterfaceC13453h interfaceC13453h) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f88881v;
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
    public boolean P(byte b10) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f88881v;
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
    public byte P3(byte b10, byte b11) {
        return zf(b10, b11, pf(b10));
    }

    @Override
    public boolean Uc(InterfaceC13446a interfaceC13446a) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f27540q;
        byte[] bArr3 = this.f88881v;
        kf();
        try {
            int length = bArr2.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !interfaceC13446a.a(bArr2[i10], bArr3[i10])) {
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
        byte[] bArr2 = this.f27540q;
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
    public byte X5(byte b10, byte b11, byte b12) {
        int pf2 = pf(b10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            byte[] bArr = this.f88881v;
            byte b13 = (byte) (bArr[pf2] + b11);
            bArr[pf2] = b13;
            z10 = false;
            b12 = b13;
        } else {
            this.f88881v[pf2] = b12;
        }
        byte b14 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27543t);
        }
        return b12;
    }

    @Override
    public byte[] a0(byte[] bArr) {
        int size = size();
        if (bArr.length < size) {
            bArr = new byte[size];
        }
        byte[] bArr2 = this.f88881v;
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
        byte[] bArr = this.f27540q;
        Arrays.fill(bArr, 0, bArr.length, this.f27541r);
        byte[] bArr2 = this.f88881v;
        Arrays.fill(bArr2, 0, bArr2.length, this.f27542s);
        byte[] bArr3 = this.f27568l;
        Arrays.fill(bArr3, 0, bArr3.length, (byte) 0);
    }

    @Override
    public byte da(byte b10, byte b11) {
        int pf2 = pf(b10);
        return pf2 < 0 ? this.f88881v[(-pf2) - 1] : zf(b10, b11, pf2);
    }

    public boolean equals(Object obj) {
        byte s02;
        byte b10;
        if (!(obj instanceof InterfaceC13060a)) {
            return false;
        }
        InterfaceC13060a interfaceC13060a = (InterfaceC13060a) obj;
        if (interfaceC13060a.size() != size()) {
            return false;
        }
        byte[] bArr = this.f88881v;
        byte[] bArr2 = this.f27568l;
        byte i10 = i();
        byte i11 = interfaceC13060a.i();
        int length = bArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr2[i12] == 1 && (b10 = bArr[i12]) != (s02 = interfaceC13060a.s0(this.f27540q[i12])) && b10 != i10 && s02 != i11) {
                return false;
            }
            length = i12;
        }
    }

    @Override
    public void gf(int i10) {
        byte[] bArr = this.f27540q;
        int length = bArr.length;
        byte[] bArr2 = this.f88881v;
        byte[] bArr3 = this.f27568l;
        this.f27540q = new byte[i10];
        this.f88881v = new byte[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr3[i11] == 1) {
                this.f88881v[pf(bArr[i11])] = bArr2[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f88881v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.d(this.f27540q[i11]) ^ Vd.b.d(this.f88881v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f88881v[i10] = this.f27542s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public InterfaceC3444b iterator() {
        return new b(this);
    }

    @Override
    public byte[] j() {
        byte[] bArr = new byte[size()];
        byte[] bArr2 = this.f27540q;
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
        this.f88881v = new byte[jf2];
        return jf2;
    }

    @Override
    public Sd.a k() {
        return new f();
    }

    @Override
    public InterfaceC13967a keySet() {
        return new e();
    }

    @Override
    public byte m(byte b10) {
        byte b11 = this.f27542s;
        int nf2 = nf(b10);
        if (nf2 < 0) {
            return b11;
        }
        byte b12 = this.f88881v[nf2];
        hf(nf2);
        return b12;
    }

    @Override
    public boolean me(byte b10, byte b11) {
        int nf2 = nf(b10);
        if (nf2 < 0) {
            return false;
        }
        byte[] bArr = this.f88881v;
        bArr[nf2] = (byte) (bArr[nf2] + b11);
        return true;
    }

    @Override
    public void putAll(Map<? extends Byte, ? extends Byte> map) {
        cf(map.size());
        for (Map.Entry<? extends Byte, ? extends Byte> entry : map.entrySet()) {
            P3(entry.getKey().byteValue(), entry.getValue().byteValue());
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
            P3(objectInput.readByte(), objectInput.readByte());
            readInt = i10;
        }
    }

    @Override
    public void s(Ud.a aVar) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f88881v;
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

    @Override
    public byte s0(byte b10) {
        int nf2 = nf(b10);
        return nf2 < 0 ? this.f27542s : this.f88881v[nf2];
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        G2(new C1709a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public byte[] values() {
        byte[] bArr = new byte[size()];
        byte[] bArr2 = this.f88881v;
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
                objectOutput.writeByte(this.f27540q[i10]);
                objectOutput.writeByte(this.f88881v[i10]);
            }
            length = i10;
        }
    }

    public final byte zf(byte b10, byte b11, int i10) {
        byte b12 = this.f27542s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            b12 = this.f88881v[i10];
            z10 = false;
        }
        this.f88881v[i10] = b11;
        if (z10) {
            ef(this.f27543t);
        }
        return b12;
    }

    public C13331a(int i10) {
        super(i10);
    }

    public C13331a(int i10, float f10) {
        super(i10, f10);
    }

    public C13331a(int i10, float f10, byte b10, byte b11) {
        super(i10, f10, b10, b11);
    }

    public C13331a(byte[] bArr, byte[] bArr2) {
        super(Math.max(bArr.length, bArr2.length));
        int min = Math.min(bArr.length, bArr2.length);
        for (int i10 = 0; i10 < min; i10++) {
            P3(bArr[i10], bArr2[i10]);
        }
    }

    public C13331a(InterfaceC13060a interfaceC13060a) {
        super(interfaceC13060a.size());
        if (interfaceC13060a instanceof C13331a) {
            C13331a c13331a = (C13331a) interfaceC13060a;
            this.f27454d = c13331a.f27454d;
            byte b10 = c13331a.f27541r;
            this.f27541r = b10;
            this.f27542s = c13331a.f27542s;
            if (b10 != 0) {
                Arrays.fill(this.f27540q, b10);
            }
            byte b11 = this.f27542s;
            if (b11 != 0) {
                Arrays.fill(this.f88881v, b11);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        L8(interfaceC13060a);
    }
}
