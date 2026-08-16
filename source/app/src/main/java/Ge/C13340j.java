package ge;

import Wd.AbstractC3167j;
import Zd.InterfaceC3454l;
import Zd.InterfaceC3458p;
import ee.InterfaceC13069j;
import he.InterfaceC13456k;
import he.InterfaceC13462q;
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

public class C13340j extends AbstractC3167j implements InterfaceC13069j, Externalizable {

    public static final long f89194w = 1;

    public transient char[] f89195v;

    public class a implements InterfaceC13456k {

        public boolean f89196a = true;

        public final StringBuilder f89197b;

        public a(StringBuilder sb2) {
            this.f89197b = sb2;
        }

        @Override
        public boolean a(char c10, char c11) {
            if (this.f89196a) {
                this.f89196a = false;
            } else {
                this.f89197b.append(", ");
            }
            this.f89197b.append(c10);
            this.f89197b.append("=");
            this.f89197b.append(c11);
            return true;
        }
    }

    public class b extends Wd.J implements InterfaceC3454l {
        public b(C13340j c13340j) {
            super(c13340j);
        }

        @Override
        public char a(char c10) {
            char value = value();
            C13340j.this.f89195v[this.f27465d] = c10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public char key() {
            return C13340j.this.f27628q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13340j.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public char value() {
            return C13340j.this.f89195v[this.f27465d];
        }
    }

    public class c extends Wd.J implements InterfaceC3458p {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public char next() {
            j();
            return C13340j.this.f27628q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13340j.this.hf(this.f27465d);
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
            return C13340j.this.f89195v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13340j.this.hf(this.f27465d);
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

            public boolean f89203a = true;

            public final StringBuilder f89204b;

            public a(StringBuilder sb2) {
                this.f89204b = sb2;
            }

            @Override
            public boolean a(char c10) {
                if (this.f89203a) {
                    this.f89203a = false;
                } else {
                    this.f89204b.append(", ");
                }
                this.f89204b.append(c10);
                return true;
            }
        }

        public e() {
        }

        @Override
        public char[] Q0(char[] cArr) {
            return C13340j.this.V(cArr);
        }

        @Override
        public boolean X1(char[] cArr) {
            Arrays.sort(cArr);
            C13340j c13340j = C13340j.this;
            char[] cArr2 = c13340j.f27628q;
            byte[] bArr = c13340j.f27568l;
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
                    C13340j.this.hf(i10);
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
            return C13340j.this.f27630s != C13340j.this.b(c10);
        }

        @Override
        public boolean b1(char c10) {
            return C13340j.this.b1(c10);
        }

        @Override
        public void clear() {
            C13340j.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Character) {
                    if (!C13340j.this.C(((Character) obj).charValue())) {
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
            int length = C13340j.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                C13340j c13340j = C13340j.this;
                if (c13340j.f27568l[i10] == 1 && !interfaceC13968b.b1(c13340j.f27628q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public boolean g1(InterfaceC13462q interfaceC13462q) {
            return C13340j.this.y(interfaceC13462q);
        }

        @Override
        public int hashCode() {
            int length = C13340j.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                C13340j c13340j = C13340j.this;
                if (c13340j.f27568l[i11] == 1) {
                    i10 += Vd.b.d(c13340j.f27628q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public char i() {
            return C13340j.this.f27629r;
        }

        @Override
        public boolean isEmpty() {
            return C13340j.this.f27452b == 0;
        }

        @Override
        public InterfaceC3458p iterator() {
            C13340j c13340j = C13340j.this;
            return new c(c13340j);
        }

        @Override
        public boolean n2(char[] cArr) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean p2(Sd.b bVar) {
            InterfaceC3458p it = bVar.iterator();
            while (it.hasNext()) {
                if (!C13340j.this.C(it.next())) {
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
            return C13340j.this.f27452b;
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
            return C13340j.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13340j.this.y(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean u1(char[] cArr) {
            for (char c10 : cArr) {
                if (!C13340j.this.b1(c10)) {
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

    public class f implements Sd.b {

        public class a implements InterfaceC13462q {

            public boolean f89207a = true;

            public final StringBuilder f89208b;

            public a(StringBuilder sb2) {
                this.f89208b = sb2;
            }

            @Override
            public boolean a(char c10) {
                if (this.f89207a) {
                    this.f89207a = false;
                } else {
                    this.f89208b.append(", ");
                }
                this.f89208b.append(c10);
                return true;
            }
        }

        public f() {
        }

        @Override
        public char[] Q0(char[] cArr) {
            return C13340j.this.Z(cArr);
        }

        @Override
        public boolean X1(char[] cArr) {
            Arrays.sort(cArr);
            C13340j c13340j = C13340j.this;
            char[] cArr2 = c13340j.f89195v;
            byte[] bArr = c13340j.f27568l;
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
                    C13340j.this.hf(i10);
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
            C13340j c13340j = C13340j.this;
            char[] cArr = c13340j.f89195v;
            char[] cArr2 = c13340j.f27628q;
            int length = cArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                char c11 = cArr2[i10];
                if (c11 != 0 && c11 != 2 && c10 == cArr[i10]) {
                    C13340j.this.hf(i10);
                    return true;
                }
                length = i10;
            }
        }

        @Override
        public boolean b1(char c10) {
            return C13340j.this.O(c10);
        }

        @Override
        public void clear() {
            C13340j.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Character) {
                    if (!C13340j.this.O(((Character) obj).charValue())) {
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
            return C13340j.this.K(interfaceC13462q);
        }

        @Override
        public char i() {
            return C13340j.this.f27630s;
        }

        @Override
        public boolean isEmpty() {
            return C13340j.this.f27452b == 0;
        }

        @Override
        public InterfaceC3458p iterator() {
            C13340j c13340j = C13340j.this;
            return new d(c13340j);
        }

        @Override
        public boolean n2(char[] cArr) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean p2(Sd.b bVar) {
            InterfaceC3458p it = bVar.iterator();
            while (it.hasNext()) {
                if (!C13340j.this.O(it.next())) {
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
            return C13340j.this.f27452b;
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
            return C13340j.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13340j.this.K(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean u1(char[] cArr) {
            for (char c10 : cArr) {
                if (!C13340j.this.O(c10)) {
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

    public C13340j() {
    }

    @Override
    public char A4(char c10, char c11) {
        return zf(c10, c11, pf(c10));
    }

    @Override
    public boolean Bb(InterfaceC13456k interfaceC13456k) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f27628q;
        char[] cArr2 = this.f89195v;
        kf();
        try {
            int length = cArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !interfaceC13456k.a(cArr[i10], cArr2[i10])) {
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
    public boolean C(char c10) {
        return b1(c10);
    }

    @Override
    public boolean D0(char c10) {
        return Ed(c10, (char) 1);
    }

    @Override
    public char Ec(char c10, char c11, char c12) {
        int pf2 = pf(c10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            char[] cArr = this.f89195v;
            char c13 = (char) (cArr[pf2] + c11);
            cArr[pf2] = c13;
            z10 = false;
            c12 = c13;
        } else {
            this.f89195v[pf2] = c12;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27631t);
        }
        return c12;
    }

    @Override
    public boolean Ed(char c10, char c11) {
        int nf2 = nf(c10);
        if (nf2 < 0) {
            return false;
        }
        char[] cArr = this.f89195v;
        cArr[nf2] = (char) (cArr[nf2] + c11);
        return true;
    }

    @Override
    public char H9(char c10, char c11) {
        int pf2 = pf(c10);
        return pf2 < 0 ? this.f89195v[(-pf2) - 1] : zf(c10, c11, pf2);
    }

    @Override
    public boolean K(InterfaceC13462q interfaceC13462q) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f89195v;
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
    public boolean O(char c10) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f89195v;
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
    public char[] V(char[] cArr) {
        int size = size();
        if (cArr.length < size) {
            cArr = new char[size];
        }
        char[] cArr2 = this.f27628q;
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
    public char[] Z(char[] cArr) {
        int size = size();
        if (cArr.length < size) {
            cArr = new char[size];
        }
        char[] cArr2 = this.f89195v;
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
    public char b(char c10) {
        char c11 = this.f27630s;
        int nf2 = nf(c10);
        if (nf2 < 0) {
            return c11;
        }
        char c12 = this.f89195v[nf2];
        hf(nf2);
        return c12;
    }

    @Override
    public void clear() {
        super.clear();
        char[] cArr = this.f27628q;
        Arrays.fill(cArr, 0, cArr.length, this.f27629r);
        char[] cArr2 = this.f89195v;
        Arrays.fill(cArr2, 0, cArr2.length, this.f27630s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    public boolean equals(Object obj) {
        char o02;
        char c10;
        if (!(obj instanceof InterfaceC13069j)) {
            return false;
        }
        InterfaceC13069j interfaceC13069j = (InterfaceC13069j) obj;
        if (interfaceC13069j.size() != size()) {
            return false;
        }
        char[] cArr = this.f89195v;
        byte[] bArr = this.f27568l;
        char i10 = i();
        char i11 = interfaceC13069j.i();
        int length = cArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1 && (c10 = cArr[i12]) != (o02 = interfaceC13069j.o0(this.f27628q[i12])) && c10 != i10 && o02 != i11) {
                return false;
            }
            length = i12;
        }
    }

    @Override
    public void g(Ud.b bVar) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f89195v;
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
        char[] cArr = this.f27628q;
        int length = cArr.length;
        char[] cArr2 = this.f89195v;
        byte[] bArr = this.f27568l;
        this.f27628q = new char[i10];
        this.f89195v = new char[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f89195v[pf(cArr[i11])] = cArr2[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f89195v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.d(this.f27628q[i11]) ^ Vd.b.d(this.f89195v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f89195v[i10] = this.f27630s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public InterfaceC3454l iterator() {
        return new b(this);
    }

    @Override
    public char[] j() {
        char[] cArr = new char[size()];
        char[] cArr2 = this.f27628q;
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
        this.f89195v = new char[jf2];
        return jf2;
    }

    @Override
    public Sd.b k() {
        return new f();
    }

    @Override
    public InterfaceC13968b keySet() {
        return new e();
    }

    @Override
    public boolean nb(InterfaceC13456k interfaceC13456k) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f27628q;
        char[] cArr2 = this.f89195v;
        int length = cArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13456k.a(cArr[i10], cArr2[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public char o0(char c10) {
        int nf2 = nf(c10);
        return nf2 < 0 ? this.f27630s : this.f89195v[nf2];
    }

    @Override
    public void pd(InterfaceC13069j interfaceC13069j) {
        cf(interfaceC13069j.size());
        InterfaceC3454l it = interfaceC13069j.iterator();
        while (it.hasNext()) {
            it.g();
            A4(it.key(), it.value());
        }
    }

    @Override
    public void putAll(Map<? extends Character, ? extends Character> map) {
        cf(map.size());
        for (Map.Entry<? extends Character, ? extends Character> entry : map.entrySet()) {
            A4(entry.getKey().charValue(), entry.getValue().charValue());
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
            A4(objectInput.readChar(), objectInput.readChar());
            readInt = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        nb(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public char[] values() {
        char[] cArr = new char[size()];
        char[] cArr2 = this.f89195v;
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
                objectOutput.writeChar(this.f27628q[i10]);
                objectOutput.writeChar(this.f89195v[i10]);
            }
            length = i10;
        }
    }

    @Override
    public boolean y(InterfaceC13462q interfaceC13462q) {
        return g1(interfaceC13462q);
    }

    public final char zf(char c10, char c11, int i10) {
        char c12 = this.f27630s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            c12 = this.f89195v[i10];
            z10 = false;
        }
        this.f89195v[i10] = c11;
        if (z10) {
            ef(this.f27631t);
        }
        return c12;
    }

    public C13340j(int i10) {
        super(i10);
    }

    public C13340j(int i10, float f10) {
        super(i10, f10);
    }

    public C13340j(int i10, float f10, char c10, char c11) {
        super(i10, f10, c10, c11);
    }

    public C13340j(char[] cArr, char[] cArr2) {
        super(Math.max(cArr.length, cArr2.length));
        int min = Math.min(cArr.length, cArr2.length);
        for (int i10 = 0; i10 < min; i10++) {
            A4(cArr[i10], cArr2[i10]);
        }
    }

    public C13340j(InterfaceC13069j interfaceC13069j) {
        super(interfaceC13069j.size());
        if (interfaceC13069j instanceof C13340j) {
            C13340j c13340j = (C13340j) interfaceC13069j;
            this.f27454d = c13340j.f27454d;
            char c10 = c13340j.f27629r;
            this.f27629r = c10;
            this.f27630s = c13340j.f27630s;
            if (c10 != 0) {
                Arrays.fill(this.f27628q, c10);
            }
            char c11 = this.f27630s;
            if (c11 != 0) {
                Arrays.fill(this.f89195v, c11);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        pd(interfaceC13069j);
    }
}
