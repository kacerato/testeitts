package ge;

import Wd.AbstractC3159b;
import Zd.InterfaceC3445c;
import Zd.InterfaceC3449g;
import Zd.InterfaceC3458p;
import ee.InterfaceC13061b;
import he.InterfaceC13447b;
import he.InterfaceC13453h;
import he.InterfaceC13462q;
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

public class C13332b extends AbstractC3159b implements InterfaceC13061b, Externalizable {

    public static final long f88916w = 1;

    public transient char[] f88917v;

    public class a implements InterfaceC13447b {

        public boolean f88918a = true;

        public final StringBuilder f88919b;

        public a(StringBuilder sb2) {
            this.f88919b = sb2;
        }

        @Override
        public boolean a(byte b10, char c10) {
            if (this.f88918a) {
                this.f88918a = false;
            } else {
                this.f88919b.append(", ");
            }
            this.f88919b.append((int) b10);
            this.f88919b.append("=");
            this.f88919b.append(c10);
            return true;
        }
    }

    public class C1712b extends Wd.J implements InterfaceC3445c {
        public C1712b(C13332b c13332b) {
            super(c13332b);
        }

        @Override
        public char a(char c10) {
            char value = value();
            C13332b.this.f88917v[this.f27465d] = c10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public byte key() {
            return C13332b.this.f27550q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13332b.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public char value() {
            return C13332b.this.f88917v[this.f27465d];
        }
    }

    public class c extends Wd.J implements InterfaceC3449g {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public byte next() {
            j();
            return C13332b.this.f27550q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13332b.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class d extends Wd.J implements InterfaceC3458p {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public char next() {
            j();
            return C13332b.this.f88917v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13332b.this.hf(this.f27465d);
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

            public boolean f88925a = true;

            public final StringBuilder f88926b;

            public a(StringBuilder sb2) {
                this.f88926b = sb2;
            }

            @Override
            public boolean a(byte b10) {
                if (this.f88925a) {
                    this.f88925a = false;
                } else {
                    this.f88926b.append(", ");
                }
                this.f88926b.append((int) b10);
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
            return C13332b.this.X(bArr);
        }

        @Override
        public boolean V0(InterfaceC13453h interfaceC13453h) {
            return C13332b.this.w(interfaceC13453h);
        }

        @Override
        public boolean W1(byte[] bArr) {
            Arrays.sort(bArr);
            C13332b c13332b = C13332b.this;
            byte[] bArr2 = c13332b.f27550q;
            byte[] bArr3 = c13332b.f27568l;
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
                    C13332b.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean a1(byte b10) {
            return C13332b.this.a1(b10);
        }

        @Override
        public boolean addAll(Collection<? extends Byte> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C13332b.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Byte) {
                    if (!C13332b.this.D(((Byte) obj).byteValue())) {
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
            int length = C13332b.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                C13332b c13332b = C13332b.this;
                if (c13332b.f27568l[i10] == 1 && !interfaceC13967a.a1(c13332b.f27550q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public int hashCode() {
            int length = C13332b.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                C13332b c13332b = C13332b.this;
                if (c13332b.f27568l[i11] == 1) {
                    i10 += Vd.b.d(c13332b.f27550q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public byte i() {
            return C13332b.this.f27551r;
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
            return C13332b.this.f27452b == 0;
        }

        @Override
        public InterfaceC3449g iterator() {
            C13332b c13332b = C13332b.this;
            return new c(c13332b);
        }

        @Override
        public boolean m(byte b10) {
            return C13332b.this.f27552s != C13332b.this.m(b10);
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
            return C13332b.this.f27452b;
        }

        @Override
        public boolean t1(byte[] bArr) {
            for (byte b10 : bArr) {
                if (!C13332b.this.a1(b10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public byte[] toArray() {
            return C13332b.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13332b.this.w(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean w2(Sd.a aVar) {
            InterfaceC3449g it = aVar.iterator();
            while (it.hasNext()) {
                if (!C13332b.this.D(it.next())) {
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

    public class f implements Sd.b {

        public class a implements InterfaceC13462q {

            public boolean f88929a = true;

            public final StringBuilder f88930b;

            public a(StringBuilder sb2) {
                this.f88930b = sb2;
            }

            @Override
            public boolean a(char c10) {
                if (this.f88929a) {
                    this.f88929a = false;
                } else {
                    this.f88930b.append(", ");
                }
                this.f88930b.append(c10);
                return true;
            }
        }

        public f() {
        }

        @Override
        public char[] Q0(char[] cArr) {
            return C13332b.this.Z(cArr);
        }

        @Override
        public boolean X1(char[] cArr) {
            Arrays.sort(cArr);
            C13332b c13332b = C13332b.this;
            char[] cArr2 = c13332b.f88917v;
            byte[] bArr = c13332b.f27568l;
            int length = cArr2.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] != 1 || Arrays.binarySearch(cArr, cArr2[i10]) >= 0) {
                    length = i10;
                } else {
                    C13332b.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean addAll(Collection<? extends Character> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean b(char c10) {
            C13332b c13332b = C13332b.this;
            char[] cArr = c13332b.f88917v;
            byte[] bArr = c13332b.f27550q;
            int length = cArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                byte b10 = bArr[i10];
                if (b10 != 0 && b10 != 2 && c10 == cArr[i10]) {
                    C13332b.this.hf(i10);
                    return true;
                }
                length = i10;
            }
        }

        @Override
        public boolean b1(char c10) {
            return C13332b.this.O(c10);
        }

        @Override
        public void clear() {
            C13332b.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Character) {
                    if (!C13332b.this.O(((Character) obj).charValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean e1(char c10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean g1(InterfaceC13462q interfaceC13462q) {
            return C13332b.this.K(interfaceC13462q);
        }

        @Override
        public char i() {
            return C13332b.this.f27552s;
        }

        @Override
        public boolean isEmpty() {
            return C13332b.this.f27452b == 0;
        }

        @Override
        public InterfaceC3458p iterator() {
            C13332b c13332b = C13332b.this;
            return new d(c13332b);
        }

        @Override
        public boolean n2(char[] cArr) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean p2(Sd.b bVar) {
            InterfaceC3458p it = bVar.iterator();
            while (it.hasNext()) {
                if (!C13332b.this.O(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            boolean z10 = false;
            for (Object obj : collection) {
                if ((obj instanceof Character) && b(((Character) obj).charValue())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            InterfaceC3458p it = iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (!collection.contains(Character.valueOf(it.next()))) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public int size() {
            return C13332b.this.f27452b;
        }

        @Override
        public boolean t2(Sd.b bVar) {
            if (this == bVar) {
                clear();
                return true;
            }
            InterfaceC3458p it = bVar.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (b(it.next())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public char[] toArray() {
            return C13332b.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13332b.this.K(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean u1(char[] cArr) {
            for (char c10 : cArr) {
                if (!C13332b.this.O(c10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean u2(Sd.b bVar) {
            boolean z10 = false;
            if (this == bVar) {
                return false;
            }
            InterfaceC3458p it = iterator();
            while (it.hasNext()) {
                if (!bVar.b1(it.next())) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean v1(char[] cArr) {
            int length = cArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (b(cArr[i10])) {
                    z10 = true;
                }
                length = i10;
            }
        }

        @Override
        public boolean z1(Sd.b bVar) {
            throw new UnsupportedOperationException();
        }
    }

    public C13332b() {
    }

    @Override
    public boolean D(byte b10) {
        return a1(b10);
    }

    @Override
    public boolean E0(byte b10) {
        return le(b10, (char) 1);
    }

    @Override
    public boolean K(InterfaceC13462q interfaceC13462q) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f88917v;
        int length = cArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13462q.a(cArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public char L4(byte b10, char c10, char c11) {
        int pf2 = pf(b10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            char[] cArr = this.f88917v;
            char c12 = (char) (cArr[pf2] + c10);
            cArr[pf2] = c12;
            z10 = false;
            c11 = c12;
        } else {
            this.f88917v[pf2] = c11;
        }
        byte b11 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27553t);
        }
        return c11;
    }

    @Override
    public boolean O(char c10) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f88917v;
        int length = cArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return false;
            }
            if (bArr[i10] == 1 && c10 == cArr[i10]) {
                return true;
            }
            length = i10;
        }
    }

    @Override
    public void O6(InterfaceC13061b interfaceC13061b) {
        cf(interfaceC13061b.size());
        InterfaceC3445c it = interfaceC13061b.iterator();
        while (it.hasNext()) {
            it.g();
            R3(it.key(), it.value());
        }
    }

    @Override
    public char R3(byte b10, char c10) {
        return zf(b10, c10, pf(b10));
    }

    @Override
    public boolean R6(InterfaceC13447b interfaceC13447b) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f27550q;
        char[] cArr = this.f88917v;
        int length = bArr2.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13447b.a(bArr2[i10], cArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean U9(InterfaceC13447b interfaceC13447b) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f27550q;
        char[] cArr = this.f88917v;
        kf();
        try {
            int length = bArr2.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !interfaceC13447b.a(bArr2[i10], cArr[i10])) {
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
        byte[] bArr2 = this.f27550q;
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
    public char[] Z(char[] cArr) {
        int size = size();
        if (cArr.length < size) {
            cArr = new char[size];
        }
        char[] cArr2 = this.f88917v;
        byte[] bArr = this.f27568l;
        int length = cArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return cArr;
            }
            if (bArr[i11] == 1) {
                cArr[i10] = cArr2[i11];
                i10++;
            }
            length = i11;
        }
    }

    @Override
    public void clear() {
        super.clear();
        byte[] bArr = this.f27550q;
        Arrays.fill(bArr, 0, bArr.length, this.f27551r);
        char[] cArr = this.f88917v;
        Arrays.fill(cArr, 0, cArr.length, this.f27552s);
        byte[] bArr2 = this.f27568l;
        Arrays.fill(bArr2, 0, bArr2.length, (byte) 0);
    }

    @Override
    public char ea(byte b10, char c10) {
        int pf2 = pf(b10);
        return pf2 < 0 ? this.f88917v[(-pf2) - 1] : zf(b10, c10, pf2);
    }

    public boolean equals(Object obj) {
        char s02;
        char c10;
        if (!(obj instanceof InterfaceC13061b)) {
            return false;
        }
        InterfaceC13061b interfaceC13061b = (InterfaceC13061b) obj;
        if (interfaceC13061b.size() != size()) {
            return false;
        }
        char[] cArr = this.f88917v;
        byte[] bArr = this.f27568l;
        char i10 = i();
        char i11 = interfaceC13061b.i();
        int length = cArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1 && (c10 = cArr[i12]) != (s02 = interfaceC13061b.s0(this.f27550q[i12])) && c10 != i10 && s02 != i11) {
                return false;
            }
            length = i12;
        }
    }

    @Override
    public void g(Ud.b bVar) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f88917v;
        int length = cArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i10] == 1) {
                cArr[i10] = bVar.a(cArr[i10]);
            }
            length = i10;
        }
    }

    @Override
    public void gf(int i10) {
        byte[] bArr = this.f27550q;
        int length = bArr.length;
        char[] cArr = this.f88917v;
        byte[] bArr2 = this.f27568l;
        this.f27550q = new byte[i10];
        this.f88917v = new char[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr2[i11] == 1) {
                this.f88917v[pf(bArr[i11])] = cArr[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f88917v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.d(this.f27550q[i11]) ^ Vd.b.d(this.f88917v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f88917v[i10] = this.f27552s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public InterfaceC3445c iterator() {
        return new C1712b(this);
    }

    @Override
    public byte[] j() {
        byte[] bArr = new byte[size()];
        byte[] bArr2 = this.f27550q;
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
        this.f88917v = new char[jf2];
        return jf2;
    }

    @Override
    public Sd.b k() {
        return new f();
    }

    @Override
    public InterfaceC13967a keySet() {
        return new e();
    }

    @Override
    public boolean le(byte b10, char c10) {
        int nf2 = nf(b10);
        if (nf2 < 0) {
            return false;
        }
        char[] cArr = this.f88917v;
        cArr[nf2] = (char) (cArr[nf2] + c10);
        return true;
    }

    @Override
    public char m(byte b10) {
        char c10 = this.f27552s;
        int nf2 = nf(b10);
        if (nf2 < 0) {
            return c10;
        }
        char c11 = this.f88917v[nf2];
        hf(nf2);
        return c11;
    }

    @Override
    public void putAll(Map<? extends Byte, ? extends Character> map) {
        cf(map.size());
        for (Map.Entry<? extends Byte, ? extends Character> entry : map.entrySet()) {
            R3(entry.getKey().byteValue(), entry.getValue().charValue());
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
            R3(objectInput.readByte(), objectInput.readChar());
            readInt = i10;
        }
    }

    @Override
    public char s0(byte b10) {
        int nf2 = nf(b10);
        return nf2 < 0 ? this.f27552s : this.f88917v[nf2];
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        R6(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public char[] values() {
        char[] cArr = new char[size()];
        char[] cArr2 = this.f88917v;
        byte[] bArr = this.f27568l;
        int length = cArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return cArr;
            }
            if (bArr[i11] == 1) {
                cArr[i10] = cArr2[i11];
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
                objectOutput.writeByte(this.f27550q[i10]);
                objectOutput.writeChar(this.f88917v[i10]);
            }
            length = i10;
        }
    }

    public final char zf(byte b10, char c10, int i10) {
        char c11 = this.f27552s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            c11 = this.f88917v[i10];
            z10 = false;
        }
        this.f88917v[i10] = c10;
        if (z10) {
            ef(this.f27553t);
        }
        return c11;
    }

    public C13332b(int i10) {
        super(i10);
    }

    public C13332b(int i10, float f10) {
        super(i10, f10);
    }

    public C13332b(int i10, float f10, byte b10, char c10) {
        super(i10, f10, b10, c10);
    }

    public C13332b(byte[] bArr, char[] cArr) {
        super(Math.max(bArr.length, cArr.length));
        int min = Math.min(bArr.length, cArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            R3(bArr[i10], cArr[i10]);
        }
    }

    public C13332b(InterfaceC13061b interfaceC13061b) {
        super(interfaceC13061b.size());
        if (interfaceC13061b instanceof C13332b) {
            C13332b c13332b = (C13332b) interfaceC13061b;
            this.f27454d = c13332b.f27454d;
            byte b10 = c13332b.f27551r;
            this.f27551r = b10;
            this.f27552s = c13332b.f27552s;
            if (b10 != 0) {
                Arrays.fill(this.f27550q, b10);
            }
            char c10 = this.f27552s;
            if (c10 != 0) {
                Arrays.fill(this.f88917v, c10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        O6(interfaceC13061b);
    }
}
