package ge;

import Wd.AbstractC3173p;
import Zd.InterfaceC3458p;
import Zd.InterfaceC3460s;
import Zd.s0;
import ee.InterfaceC13075p;
import he.InterfaceC13462q;
import he.t0;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Map;
import ke.InterfaceC13968b;
import org.apache.commons.math3.geometry.VectorFormat;

public class C13346p extends AbstractC3173p implements InterfaceC13075p, Externalizable {

    public static final long f89374w = 1;

    public transient short[] f89375v;

    public class a implements he.r {

        public boolean f89376a = true;

        public final StringBuilder f89377b;

        public a(StringBuilder sb2) {
            this.f89377b = sb2;
        }

        @Override
        public boolean a(char c10, short s10) {
            if (this.f89376a) {
                this.f89376a = false;
            } else {
                this.f89377b.append(", ");
            }
            this.f89377b.append(c10);
            this.f89377b.append("=");
            this.f89377b.append((int) s10);
            return true;
        }
    }

    public class b extends Wd.J implements InterfaceC3460s {
        public b(C13346p c13346p) {
            super(c13346p);
        }

        @Override
        public short c(short s10) {
            short value = value();
            C13346p.this.f89375v[this.f27465d] = s10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public char key() {
            return C13346p.this.f27667q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13346p.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public short value() {
            return C13346p.this.f89375v[this.f27465d];
        }
    }

    public class c extends Wd.J implements InterfaceC3458p {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public char next() {
            j();
            return C13346p.this.f27667q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13346p.this.hf(this.f27465d);
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
            return C13346p.this.f89375v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13346p.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class e implements InterfaceC13968b {

        public class a implements InterfaceC13462q {

            public boolean f89383a = true;

            public final StringBuilder f89384b;

            public a(StringBuilder sb2) {
                this.f89384b = sb2;
            }

            @Override
            public boolean a(char c10) {
                if (this.f89383a) {
                    this.f89383a = false;
                } else {
                    this.f89384b.append(", ");
                }
                this.f89384b.append(c10);
                return true;
            }
        }

        public e() {
        }

        @Override
        public char[] Q0(char[] cArr) {
            return C13346p.this.V(cArr);
        }

        @Override
        public boolean X1(char[] cArr) {
            Arrays.sort(cArr);
            C13346p c13346p = C13346p.this;
            char[] cArr2 = c13346p.f27667q;
            byte[] bArr = c13346p.f27568l;
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
                    C13346p.this.hf(i10);
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
            return C13346p.this.f27669s != C13346p.this.b(c10);
        }

        @Override
        public boolean b1(char c10) {
            return C13346p.this.b1(c10);
        }

        @Override
        public void clear() {
            C13346p.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Character) {
                    if (!C13346p.this.C(((Character) obj).charValue())) {
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
        public boolean equals(Object obj) {
            if (!(obj instanceof InterfaceC13968b)) {
                return false;
            }
            InterfaceC13968b interfaceC13968b = (InterfaceC13968b) obj;
            if (interfaceC13968b.size() != size()) {
                return false;
            }
            int length = C13346p.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                C13346p c13346p = C13346p.this;
                if (c13346p.f27568l[i10] == 1 && !interfaceC13968b.b1(c13346p.f27667q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public boolean g1(InterfaceC13462q interfaceC13462q) {
            return C13346p.this.y(interfaceC13462q);
        }

        @Override
        public int hashCode() {
            int length = C13346p.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                C13346p c13346p = C13346p.this;
                if (c13346p.f27568l[i11] == 1) {
                    i10 += Vd.b.d(c13346p.f27667q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public char i() {
            return C13346p.this.f27668r;
        }

        @Override
        public boolean isEmpty() {
            return C13346p.this.f27452b == 0;
        }

        @Override
        public InterfaceC3458p iterator() {
            C13346p c13346p = C13346p.this;
            return new c(c13346p);
        }

        @Override
        public boolean n2(char[] cArr) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean p2(Sd.b bVar) {
            InterfaceC3458p it = bVar.iterator();
            while (it.hasNext()) {
                if (!C13346p.this.C(it.next())) {
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
            return C13346p.this.f27452b;
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
            return C13346p.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13346p.this.y(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean u1(char[] cArr) {
            for (char c10 : cArr) {
                if (!C13346p.this.b1(c10)) {
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

    public class f implements Sd.i {

        public class a implements t0 {

            public boolean f89387a = true;

            public final StringBuilder f89388b;

            public a(StringBuilder sb2) {
                this.f89388b = sb2;
            }

            @Override
            public boolean a(short s10) {
                if (this.f89387a) {
                    this.f89387a = false;
                } else {
                    this.f89388b.append(", ");
                }
                this.f89388b.append((int) s10);
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
            return C13346p.this.i0(sArr);
        }

        @Override
        public boolean W0(short s10) {
            return C13346p.this.L(s10);
        }

        @Override
        public boolean Z1(short[] sArr) {
            for (short s10 : sArr) {
                if (!C13346p.this.L(s10)) {
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
            C13346p.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Short) {
                    if (!C13346p.this.L(((Short) obj).shortValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean d(short s10) {
            C13346p c13346p = C13346p.this;
            short[] sArr = c13346p.f89375v;
            char[] cArr = c13346p.f27667q;
            int length = sArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                char c10 = cArr[i10];
                if (c10 != 0 && c10 != 2 && s10 == sArr[i10]) {
                    C13346p.this.hf(i10);
                    return true;
                }
                length = i10;
            }
        }

        @Override
        public boolean h1(t0 t0Var) {
            return C13346p.this.N(t0Var);
        }

        @Override
        public short i() {
            return C13346p.this.f27669s;
        }

        @Override
        public boolean isEmpty() {
            return C13346p.this.f27452b == 0;
        }

        @Override
        public s0 iterator() {
            C13346p c13346p = C13346p.this;
            return new d(c13346p);
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
            C13346p c13346p = C13346p.this;
            short[] sArr2 = c13346p.f89375v;
            byte[] bArr = c13346p.f27568l;
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
                    C13346p.this.hf(i10);
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
            return C13346p.this.f27452b;
        }

        @Override
        public short[] toArray() {
            return C13346p.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13346p.this.N(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean v2(Sd.i iVar) {
            s0 it = iVar.iterator();
            while (it.hasNext()) {
                if (!C13346p.this.L(it.next())) {
                    return false;
                }
            }
            return true;
        }
    }

    public C13346p() {
    }

    @Override
    public boolean C(char c10) {
        return b1(c10);
    }

    @Override
    public boolean D0(char c10) {
        return Wd(c10, (short) 1);
    }

    @Override
    public short D6(char c10, short s10, short s11) {
        int pf2 = pf(c10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            short[] sArr = this.f89375v;
            short s12 = (short) (sArr[pf2] + s10);
            sArr[pf2] = s12;
            z10 = false;
            s11 = s12;
        } else {
            this.f89375v[pf2] = s11;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27670t);
        }
        return s11;
    }

    @Override
    public short F2(char c10, short s10) {
        return zf(c10, s10, pf(c10));
    }

    @Override
    public boolean I5(he.r rVar) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f27667q;
        short[] sArr = this.f89375v;
        int length = cArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !rVar.a(cArr[i10], sArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean L(short s10) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f89375v;
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
    public boolean N(t0 t0Var) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f89375v;
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
    public short Q9(char c10, short s10) {
        int pf2 = pf(c10);
        return pf2 < 0 ? this.f89375v[(-pf2) - 1] : zf(c10, s10, pf2);
    }

    @Override
    public void R9(InterfaceC13075p interfaceC13075p) {
        cf(interfaceC13075p.size());
        InterfaceC3460s it = interfaceC13075p.iterator();
        while (it.hasNext()) {
            it.g();
            F2(it.key(), it.value());
        }
    }

    @Override
    public char[] V(char[] cArr) {
        int size = size();
        if (cArr.length < size) {
            cArr = new char[size];
        }
        char[] cArr2 = this.f27667q;
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
    public boolean Wd(char c10, short s10) {
        int nf2 = nf(c10);
        if (nf2 < 0) {
            return false;
        }
        short[] sArr = this.f89375v;
        sArr[nf2] = (short) (sArr[nf2] + s10);
        return true;
    }

    @Override
    public short b(char c10) {
        short s10 = this.f27669s;
        int nf2 = nf(c10);
        if (nf2 < 0) {
            return s10;
        }
        short s11 = this.f89375v[nf2];
        hf(nf2);
        return s11;
    }

    @Override
    public void clear() {
        super.clear();
        char[] cArr = this.f27667q;
        Arrays.fill(cArr, 0, cArr.length, this.f27668r);
        short[] sArr = this.f89375v;
        Arrays.fill(sArr, 0, sArr.length, this.f27669s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    public boolean equals(Object obj) {
        short o02;
        short s10;
        if (!(obj instanceof InterfaceC13075p)) {
            return false;
        }
        InterfaceC13075p interfaceC13075p = (InterfaceC13075p) obj;
        if (interfaceC13075p.size() != size()) {
            return false;
        }
        short[] sArr = this.f89375v;
        byte[] bArr = this.f27568l;
        short i10 = i();
        short i11 = interfaceC13075p.i();
        int length = sArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1 && (s10 = sArr[i12]) != (o02 = interfaceC13075p.o0(this.f27667q[i12])) && s10 != i10 && o02 != i11) {
                return false;
            }
            length = i12;
        }
    }

    @Override
    public void gf(int i10) {
        char[] cArr = this.f27667q;
        int length = cArr.length;
        short[] sArr = this.f89375v;
        byte[] bArr = this.f27568l;
        this.f27667q = new char[i10];
        this.f89375v = new short[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f89375v[pf(cArr[i11])] = sArr[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f89375v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.d(this.f27667q[i11]) ^ Vd.b.d(this.f89375v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f89375v[i10] = this.f27669s;
        super.hf(i10);
    }

    @Override
    public short[] i0(short[] sArr) {
        int size = size();
        if (sArr.length < size) {
            sArr = new short[size];
        }
        short[] sArr2 = this.f89375v;
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
    public InterfaceC3460s iterator() {
        return new b(this);
    }

    @Override
    public char[] j() {
        char[] cArr = new char[size()];
        char[] cArr2 = this.f27667q;
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
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f89375v = new short[jf2];
        return jf2;
    }

    @Override
    public Sd.i k() {
        return new f();
    }

    @Override
    public InterfaceC13968b keySet() {
        return new e();
    }

    @Override
    public short o0(char c10) {
        int nf2 = nf(c10);
        return nf2 < 0 ? this.f27669s : this.f89375v[nf2];
    }

    @Override
    public void putAll(Map<? extends Character, ? extends Short> map) {
        cf(map.size());
        for (Map.Entry<? extends Character, ? extends Short> entry : map.entrySet()) {
            F2(entry.getKey().charValue(), entry.getValue().shortValue());
        }
    }

    @Override
    public void r(Ud.h hVar) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f89375v;
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
            F2(objectInput.readChar(), objectInput.readShort());
            readInt = i10;
        }
    }

    @Override
    public boolean t9(he.r rVar) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f27667q;
        short[] sArr = this.f89375v;
        kf();
        try {
            int length = cArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !rVar.a(cArr[i10], sArr[i10])) {
                    hf(i10);
                    z10 = true;
                }
                length = i10;
            }
        } finally {
            ff(true);
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        I5(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public short[] values() {
        short[] sArr = new short[size()];
        short[] sArr2 = this.f89375v;
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
                objectOutput.writeChar(this.f27667q[i10]);
                objectOutput.writeShort(this.f89375v[i10]);
            }
            length = i10;
        }
    }

    @Override
    public boolean y(InterfaceC13462q interfaceC13462q) {
        return g1(interfaceC13462q);
    }

    public final short zf(char c10, short s10, int i10) {
        short s11 = this.f27669s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            s11 = this.f89375v[i10];
            z10 = false;
        }
        this.f89375v[i10] = s10;
        if (z10) {
            ef(this.f27670t);
        }
        return s11;
    }

    public C13346p(int i10) {
        super(i10);
    }

    public C13346p(int i10, float f10) {
        super(i10, f10);
    }

    public C13346p(int i10, float f10, char c10, short s10) {
        super(i10, f10, c10, s10);
    }

    public C13346p(char[] cArr, short[] sArr) {
        super(Math.max(cArr.length, sArr.length));
        int min = Math.min(cArr.length, sArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            F2(cArr[i10], sArr[i10]);
        }
    }

    public C13346p(InterfaceC13075p interfaceC13075p) {
        super(interfaceC13075p.size());
        if (interfaceC13075p instanceof C13346p) {
            C13346p c13346p = (C13346p) interfaceC13075p;
            this.f27454d = c13346p.f27454d;
            char c10 = c13346p.f27668r;
            this.f27668r = c10;
            this.f27669s = c13346p.f27669s;
            if (c10 != 0) {
                Arrays.fill(this.f27667q, c10);
            }
            short s10 = this.f27669s;
            if (s10 != 0) {
                Arrays.fill(this.f89375v, s10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        R9(interfaceC13075p);
    }
}
