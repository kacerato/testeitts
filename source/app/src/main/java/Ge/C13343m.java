package ge;

import Wd.AbstractC3171n;
import Zd.InterfaceC3457o;
import Zd.InterfaceC3458p;
import ee.InterfaceC13072m;
import he.InterfaceC13459n;
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

public class C13343m extends AbstractC3171n implements InterfaceC13072m, Externalizable {

    public static final long f89290w = 1;

    public transient int[] f89291v;

    public class a implements InterfaceC13459n {

        public boolean f89292a = true;

        public final StringBuilder f89293b;

        public a(StringBuilder sb2) {
            this.f89293b = sb2;
        }

        @Override
        public boolean a(char c10, int i10) {
            if (this.f89292a) {
                this.f89292a = false;
            } else {
                this.f89293b.append(", ");
            }
            this.f89293b.append(c10);
            this.f89293b.append("=");
            this.f89293b.append(i10);
            return true;
        }
    }

    public class b extends Wd.J implements InterfaceC3457o {
        public b(C13343m c13343m) {
            super(c13343m);
        }

        @Override
        public int e(int i10) {
            int value = value();
            C13343m.this.f89291v[this.f27465d] = i10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public char key() {
            return C13343m.this.f27657q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13343m.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public int value() {
            return C13343m.this.f89291v[this.f27465d];
        }
    }

    public class c extends Wd.J implements InterfaceC3458p {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public char next() {
            j();
            return C13343m.this.f27657q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13343m.this.hf(this.f27465d);
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
            return C13343m.this.f89291v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13343m.this.hf(this.f27465d);
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

            public boolean f89299a = true;

            public final StringBuilder f89300b;

            public a(StringBuilder sb2) {
                this.f89300b = sb2;
            }

            @Override
            public boolean a(char c10) {
                if (this.f89299a) {
                    this.f89299a = false;
                } else {
                    this.f89300b.append(", ");
                }
                this.f89300b.append(c10);
                return true;
            }
        }

        public e() {
        }

        @Override
        public char[] Q0(char[] cArr) {
            return C13343m.this.V(cArr);
        }

        @Override
        public boolean X1(char[] cArr) {
            Arrays.sort(cArr);
            C13343m c13343m = C13343m.this;
            char[] cArr2 = c13343m.f27657q;
            byte[] bArr = c13343m.f27568l;
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
                    C13343m.this.hf(i10);
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
            return C13343m.this.f27659s != C13343m.this.b(c10);
        }

        @Override
        public boolean b1(char c10) {
            return C13343m.this.b1(c10);
        }

        @Override
        public void clear() {
            C13343m.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Character) {
                    if (!C13343m.this.C(((Character) obj).charValue())) {
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
            int length = C13343m.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                C13343m c13343m = C13343m.this;
                if (c13343m.f27568l[i10] == 1 && !interfaceC13968b.b1(c13343m.f27657q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public boolean g1(InterfaceC13462q interfaceC13462q) {
            return C13343m.this.y(interfaceC13462q);
        }

        @Override
        public int hashCode() {
            int length = C13343m.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                C13343m c13343m = C13343m.this;
                if (c13343m.f27568l[i11] == 1) {
                    i10 += Vd.b.d(c13343m.f27657q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public char i() {
            return C13343m.this.f27658r;
        }

        @Override
        public boolean isEmpty() {
            return C13343m.this.f27452b == 0;
        }

        @Override
        public InterfaceC3458p iterator() {
            C13343m c13343m = C13343m.this;
            return new c(c13343m);
        }

        @Override
        public boolean n2(char[] cArr) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean p2(Sd.b bVar) {
            InterfaceC3458p it = bVar.iterator();
            while (it.hasNext()) {
                if (!C13343m.this.C(it.next())) {
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
            return C13343m.this.f27452b;
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
            return C13343m.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13343m.this.y(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean u1(char[] cArr) {
            for (char c10 : cArr) {
                if (!C13343m.this.b1(c10)) {
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

    public class f implements Sd.g {

        public class a implements he.S {

            public boolean f89303a = true;

            public final StringBuilder f89304b;

            public a(StringBuilder sb2) {
                this.f89304b = sb2;
            }

            @Override
            public boolean a(int i10) {
                if (this.f89303a) {
                    this.f89303a = false;
                } else {
                    this.f89304b.append(", ");
                }
                this.f89304b.append(i10);
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
                if (!C13343m.this.Q(i10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean M1(int[] iArr) {
            Arrays.sort(iArr);
            C13343m c13343m = C13343m.this;
            int[] iArr2 = c13343m.f89291v;
            byte[] bArr = c13343m.f27568l;
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
                    C13343m.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public int[] P0(int[] iArr) {
            return C13343m.this.e0(iArr);
        }

        @Override
        public boolean U0(he.S s10) {
            return C13343m.this.m0(s10);
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
            C13343m.this.clear();
        }

        @Override
        public boolean contains(int i10) {
            return C13343m.this.Q(i10);
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Integer) {
                    if (!C13343m.this.Q(((Integer) obj).intValue())) {
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
                if (!C13343m.this.Q(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int i() {
            return C13343m.this.f27659s;
        }

        @Override
        public boolean isEmpty() {
            return C13343m.this.f27452b == 0;
        }

        @Override
        public Zd.Q iterator() {
            C13343m c13343m = C13343m.this;
            return new d(c13343m);
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
            C13343m c13343m = C13343m.this;
            int[] iArr = c13343m.f89291v;
            char[] cArr = c13343m.f27657q;
            int length = iArr.length;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return false;
                }
                char c10 = cArr[i11];
                if (c10 != 0 && c10 != 2 && i10 == iArr[i11]) {
                    C13343m.this.hf(i11);
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
            return C13343m.this.f27452b;
        }

        @Override
        public int[] toArray() {
            return C13343m.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13343m.this.m0(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean z2(int[] iArr) {
            throw new UnsupportedOperationException();
        }
    }

    public C13343m() {
    }

    @Override
    public boolean C(char c10) {
        return b1(c10);
    }

    @Override
    public boolean D0(char c10) {
        return Od(c10, 1);
    }

    @Override
    public int E4(char c10, int i10) {
        return zf(c10, i10, pf(c10));
    }

    @Override
    public boolean Od(char c10, int i10) {
        int nf2 = nf(c10);
        if (nf2 < 0) {
            return false;
        }
        int[] iArr = this.f89291v;
        iArr[nf2] = iArr[nf2] + i10;
        return true;
    }

    @Override
    public boolean Q(int i10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f89291v;
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
    public char[] V(char[] cArr) {
        int size = size();
        if (cArr.length < size) {
            cArr = new char[size];
        }
        char[] cArr2 = this.f27657q;
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
    public int b(char c10) {
        int i10 = this.f27659s;
        int nf2 = nf(c10);
        if (nf2 < 0) {
            return i10;
        }
        int i11 = this.f89291v[nf2];
        hf(nf2);
        return i11;
    }

    @Override
    public void bb(InterfaceC13072m interfaceC13072m) {
        cf(interfaceC13072m.size());
        InterfaceC3457o it = interfaceC13072m.iterator();
        while (it.hasNext()) {
            it.g();
            E4(it.key(), it.value());
        }
    }

    @Override
    public boolean c4(InterfaceC13459n interfaceC13459n) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f27657q;
        int[] iArr = this.f89291v;
        kf();
        try {
            int length = cArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !interfaceC13459n.a(cArr[i10], iArr[i10])) {
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
    public void clear() {
        super.clear();
        char[] cArr = this.f27657q;
        Arrays.fill(cArr, 0, cArr.length, this.f27658r);
        int[] iArr = this.f89291v;
        Arrays.fill(iArr, 0, iArr.length, this.f27659s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    @Override
    public int[] e0(int[] iArr) {
        int size = size();
        if (iArr.length < size) {
            iArr = new int[size];
        }
        int[] iArr2 = this.f89291v;
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
        int o02;
        int i10;
        if (!(obj instanceof InterfaceC13072m)) {
            return false;
        }
        InterfaceC13072m interfaceC13072m = (InterfaceC13072m) obj;
        if (interfaceC13072m.size() != size()) {
            return false;
        }
        int[] iArr = this.f89291v;
        byte[] bArr = this.f27568l;
        int i11 = i();
        int i12 = interfaceC13072m.i();
        int length = iArr.length;
        while (true) {
            int i13 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i13] == 1 && (i10 = iArr[i13]) != (o02 = interfaceC13072m.o0(this.f27657q[i13])) && i10 != i11 && o02 != i12) {
                return false;
            }
            length = i13;
        }
    }

    @Override
    public void f(Ud.e eVar) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f89291v;
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
    public void gf(int i10) {
        char[] cArr = this.f27657q;
        int length = cArr.length;
        int[] iArr = this.f89291v;
        byte[] bArr = this.f27568l;
        this.f27657q = new char[i10];
        this.f89291v = new int[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f89291v[pf(cArr[i11])] = iArr[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f89291v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.d(this.f27657q[i11]) ^ Vd.b.d(this.f89291v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f89291v[i10] = this.f27659s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public InterfaceC3457o iterator() {
        return new b(this);
    }

    @Override
    public char[] j() {
        char[] cArr = new char[size()];
        char[] cArr2 = this.f27657q;
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
        this.f89291v = new int[jf2];
        return jf2;
    }

    @Override
    public Sd.g k() {
        return new f();
    }

    @Override
    public InterfaceC13968b keySet() {
        return new e();
    }

    @Override
    public boolean m0(he.S s10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f89291v;
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
    public int o0(char c10) {
        int nf2 = nf(c10);
        return nf2 < 0 ? this.f27659s : this.f89291v[nf2];
    }

    @Override
    public int o4(char c10, int i10, int i11) {
        int pf2 = pf(c10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            int[] iArr = this.f89291v;
            int i12 = i10 + iArr[pf2];
            iArr[pf2] = i12;
            z10 = false;
            i11 = i12;
        } else {
            this.f89291v[pf2] = i11;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27660t);
        }
        return i11;
    }

    @Override
    public void putAll(Map<? extends Character, ? extends Integer> map) {
        cf(map.size());
        for (Map.Entry<? extends Character, ? extends Integer> entry : map.entrySet()) {
            E4(entry.getKey().charValue(), entry.getValue().intValue());
        }
    }

    @Override
    public boolean qb(InterfaceC13459n interfaceC13459n) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f27657q;
        int[] iArr = this.f89291v;
        int length = cArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13459n.a(cArr[i10], iArr[i10])) {
                return false;
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
            E4(objectInput.readChar(), objectInput.readInt());
            readInt = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        qb(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public int[] values() {
        int[] iArr = new int[size()];
        int[] iArr2 = this.f89291v;
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
                objectOutput.writeChar(this.f27657q[i10]);
                objectOutput.writeInt(this.f89291v[i10]);
            }
            length = i10;
        }
    }

    @Override
    public int x9(char c10, int i10) {
        int pf2 = pf(c10);
        return pf2 < 0 ? this.f89291v[(-pf2) - 1] : zf(c10, i10, pf2);
    }

    @Override
    public boolean y(InterfaceC13462q interfaceC13462q) {
        return g1(interfaceC13462q);
    }

    public final int zf(char c10, int i10, int i11) {
        int i12 = this.f27659s;
        boolean z10 = true;
        if (i11 < 0) {
            i11 = (-i11) - 1;
            i12 = this.f89291v[i11];
            z10 = false;
        }
        this.f89291v[i11] = i10;
        if (z10) {
            ef(this.f27660t);
        }
        return i12;
    }

    public C13343m(int i10) {
        super(i10);
    }

    public C13343m(int i10, float f10) {
        super(i10, f10);
    }

    public C13343m(int i10, float f10, char c10, int i11) {
        super(i10, f10, c10, i11);
    }

    public C13343m(char[] cArr, int[] iArr) {
        super(Math.max(cArr.length, iArr.length));
        int min = Math.min(cArr.length, iArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            E4(cArr[i10], iArr[i10]);
        }
    }

    public C13343m(InterfaceC13072m interfaceC13072m) {
        super(interfaceC13072m.size());
        if (interfaceC13072m instanceof C13343m) {
            C13343m c13343m = (C13343m) interfaceC13072m;
            this.f27454d = c13343m.f27454d;
            char c10 = c13343m.f27658r;
            this.f27658r = c10;
            this.f27659s = c13343m.f27659s;
            if (c10 != 0) {
                Arrays.fill(this.f27657q, c10);
            }
            int i10 = this.f27659s;
            if (i10 != 0) {
                Arrays.fill(this.f89291v, i10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        bb(interfaceC13072m);
    }
}
