package ge;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Map;
import ke.InterfaceC13971e;
import org.apache.commons.math3.geometry.VectorFormat;

public class M extends Wd.P implements ee.K, Externalizable {

    public static final long f88664w = 1;

    public transient int[] f88665v;

    public class a implements he.O {

        public boolean f88666a = true;

        public final StringBuilder f88667b;

        public a(StringBuilder sb2) {
            this.f88667b = sb2;
        }

        @Override
        public boolean a(int i10, int i11) {
            if (this.f88666a) {
                this.f88666a = false;
            } else {
                this.f88667b.append(", ");
            }
            this.f88667b.append(i10);
            this.f88667b.append("=");
            this.f88667b.append(i11);
            return true;
        }
    }

    public class b extends Wd.J implements Zd.P {
        public b(M m10) {
            super(m10);
        }

        @Override
        public int e(int i10) {
            int value = value();
            M.this.f88665v[this.f27465d] = i10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public int key() {
            return M.this.f27491q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                M.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public int value() {
            return M.this.f88665v[this.f27465d];
        }
    }

    public class c extends Wd.J implements Zd.Q {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public int next() {
            j();
            return M.this.f27491q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                M.this.hf(this.f27465d);
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
            return M.this.f88665v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                M.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class e implements InterfaceC13971e {

        public class a implements he.S {

            public boolean f88673a = true;

            public final StringBuilder f88674b;

            public a(StringBuilder sb2) {
                this.f88674b = sb2;
            }

            @Override
            public boolean a(int i10) {
                if (this.f88673a) {
                    this.f88673a = false;
                } else {
                    this.f88674b.append(", ");
                }
                this.f88674b.append(i10);
                return true;
            }
        }

        public e() {
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
                if (!M.this.contains(i10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean M1(int[] iArr) {
            Arrays.sort(iArr);
            M m10 = M.this;
            int[] iArr2 = m10.f27491q;
            byte[] bArr = m10.f27568l;
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
                    M.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public int[] P0(int[] iArr) {
            return M.this.f0(iArr);
        }

        @Override
        public boolean U0(he.S s10) {
            return M.this.J(s10);
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
            M.this.clear();
        }

        @Override
        public boolean contains(int i10) {
            return M.this.contains(i10);
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Integer) {
                    if (!M.this.F(((Integer) obj).intValue())) {
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
        public boolean equals(Object obj) {
            if (!(obj instanceof InterfaceC13971e)) {
                return false;
            }
            InterfaceC13971e interfaceC13971e = (InterfaceC13971e) obj;
            if (interfaceC13971e.size() != size()) {
                return false;
            }
            int length = M.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                M m10 = M.this;
                if (m10.f27568l[i10] == 1 && !interfaceC13971e.contains(m10.f27491q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public boolean h2(Sd.g gVar) {
            Zd.Q it = gVar.iterator();
            while (it.hasNext()) {
                if (!M.this.F(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int hashCode() {
            int length = M.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                M m10 = M.this;
                if (m10.f27568l[i11] == 1) {
                    i10 += Vd.b.d(m10.f27491q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public int i() {
            return M.this.f27492r;
        }

        @Override
        public boolean isEmpty() {
            return M.this.f27452b == 0;
        }

        @Override
        public Zd.Q iterator() {
            M m10 = M.this;
            return new c(m10);
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
            return M.this.f27493s != M.this.remove(i10);
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
            return M.this.f27452b;
        }

        @Override
        public int[] toArray() {
            return M.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            M.this.J(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean z2(int[] iArr) {
            throw new UnsupportedOperationException();
        }
    }

    public class f implements Sd.g {

        public class a implements he.S {

            public boolean f88677a = true;

            public final StringBuilder f88678b;

            public a(StringBuilder sb2) {
                this.f88678b = sb2;
            }

            @Override
            public boolean a(int i10) {
                if (this.f88677a) {
                    this.f88677a = false;
                } else {
                    this.f88678b.append(", ");
                }
                this.f88678b.append(i10);
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
                if (!M.this.Q(i10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean M1(int[] iArr) {
            Arrays.sort(iArr);
            M m10 = M.this;
            int[] iArr2 = m10.f88665v;
            byte[] bArr = m10.f27568l;
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
                    M.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public int[] P0(int[] iArr) {
            return M.this.e0(iArr);
        }

        @Override
        public boolean U0(he.S s10) {
            return M.this.m0(s10);
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
            M.this.clear();
        }

        @Override
        public boolean contains(int i10) {
            return M.this.Q(i10);
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Integer) {
                    if (!M.this.Q(((Integer) obj).intValue())) {
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
                if (!M.this.Q(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int i() {
            return M.this.f27493s;
        }

        @Override
        public boolean isEmpty() {
            return M.this.f27452b == 0;
        }

        @Override
        public Zd.Q iterator() {
            M m10 = M.this;
            return new d(m10);
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
            M m10 = M.this;
            int[] iArr = m10.f88665v;
            int[] iArr2 = m10.f27491q;
            int length = iArr.length;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return false;
                }
                int i12 = iArr2[i11];
                if (i12 != 0 && i12 != 2 && i10 == iArr[i11]) {
                    M.this.hf(i11);
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
            return M.this.f27452b;
        }

        @Override
        public int[] toArray() {
            return M.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            M.this.m0(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean z2(int[] iArr) {
            throw new UnsupportedOperationException();
        }
    }

    public M() {
    }

    @Override
    public boolean F(int i10) {
        return contains(i10);
    }

    @Override
    public boolean F0(int i10) {
        return Ob(i10, 1);
    }

    @Override
    public boolean J(he.S s10) {
        return U0(s10);
    }

    @Override
    public boolean Ob(int i10, int i11) {
        int nf2 = nf(i10);
        if (nf2 < 0) {
            return false;
        }
        int[] iArr = this.f88665v;
        iArr[nf2] = iArr[nf2] + i11;
        return true;
    }

    @Override
    public boolean Q(int i10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f88665v;
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
    public void V6(ee.K k10) {
        cf(k10.size());
        Zd.P it = k10.iterator();
        while (it.hasNext()) {
            it.g();
            f5(it.key(), it.value());
        }
    }

    @Override
    public boolean be(he.O o10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f27491q;
        int[] iArr2 = this.f88665v;
        kf();
        try {
            int length = iArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !o10.a(iArr[i10], iArr2[i10])) {
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
        int[] iArr = this.f27491q;
        Arrays.fill(iArr, 0, iArr.length, this.f27492r);
        int[] iArr2 = this.f88665v;
        Arrays.fill(iArr2, 0, iArr2.length, this.f27493s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    @Override
    public int[] e0(int[] iArr) {
        int size = size();
        if (iArr.length < size) {
            iArr = new int[size];
        }
        int[] iArr2 = this.f88665v;
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
        int i10;
        int i11;
        if (!(obj instanceof ee.K)) {
            return false;
        }
        ee.K k10 = (ee.K) obj;
        if (k10.size() != size()) {
            return false;
        }
        int[] iArr = this.f88665v;
        byte[] bArr = this.f27568l;
        int i12 = i();
        int i13 = k10.i();
        int length = iArr.length;
        while (true) {
            int i14 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i14] == 1 && (i11 = iArr[i14]) != (i10 = k10.get(this.f27491q[i14])) && i11 != i12 && i10 != i13) {
                return false;
            }
            length = i14;
        }
    }

    @Override
    public void f(Ud.e eVar) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f88665v;
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
    public int[] f0(int[] iArr) {
        int size = size();
        if (iArr.length < size) {
            iArr = new int[size];
        }
        int[] iArr2 = this.f27491q;
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
    public int f5(int i10, int i11) {
        return zf(i10, i11, pf(i10));
    }

    @Override
    public int get(int i10) {
        int nf2 = nf(i10);
        return nf2 < 0 ? this.f27493s : this.f88665v[nf2];
    }

    @Override
    public void gf(int i10) {
        int[] iArr = this.f27491q;
        int length = iArr.length;
        int[] iArr2 = this.f88665v;
        byte[] bArr = this.f27568l;
        this.f27491q = new int[i10];
        this.f88665v = new int[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f88665v[pf(iArr[i11])] = iArr2[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f88665v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.d(this.f27491q[i11]) ^ Vd.b.d(this.f88665v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f88665v[i10] = this.f27493s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public Zd.P iterator() {
        return new b(this);
    }

    @Override
    public int[] j() {
        int[] iArr = new int[size()];
        int[] iArr2 = this.f27491q;
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
    public int jd(int i10, int i11) {
        int pf2 = pf(i10);
        return pf2 < 0 ? this.f88665v[(-pf2) - 1] : zf(i10, i11, pf2);
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f88665v = new int[jf2];
        return jf2;
    }

    @Override
    public Sd.g k() {
        return new f();
    }

    @Override
    public boolean k8(he.O o10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f27491q;
        int[] iArr2 = this.f88665v;
        int length = iArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !o10.a(iArr[i10], iArr2[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public InterfaceC13971e keySet() {
        return new e();
    }

    @Override
    public boolean m0(he.S s10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f88665v;
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
    public void putAll(Map<? extends Integer, ? extends Integer> map) {
        cf(map.size());
        for (Map.Entry<? extends Integer, ? extends Integer> entry : map.entrySet()) {
            f5(entry.getKey().intValue(), entry.getValue().intValue());
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
            f5(objectInput.readInt(), objectInput.readInt());
            readInt = i10;
        }
    }

    @Override
    public int remove(int i10) {
        int i11 = this.f27493s;
        int nf2 = nf(i10);
        if (nf2 < 0) {
            return i11;
        }
        int i12 = this.f88665v[nf2];
        hf(nf2);
        return i12;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        k8(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public int[] values() {
        int[] iArr = new int[size()];
        int[] iArr2 = this.f88665v;
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
                objectOutput.writeInt(this.f27491q[i10]);
                objectOutput.writeInt(this.f88665v[i10]);
            }
            length = i10;
        }
    }

    @Override
    public int xb(int i10, int i11, int i12) {
        int pf2 = pf(i10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            int[] iArr = this.f88665v;
            int i13 = i11 + iArr[pf2];
            iArr[pf2] = i13;
            z10 = false;
            i12 = i13;
        } else {
            this.f88665v[pf2] = i12;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27494t);
        }
        return i12;
    }

    public final int zf(int i10, int i11, int i12) {
        int i13 = this.f27493s;
        boolean z10 = true;
        if (i12 < 0) {
            i12 = (-i12) - 1;
            i13 = this.f88665v[i12];
            z10 = false;
        }
        this.f88665v[i12] = i11;
        if (z10) {
            ef(this.f27494t);
        }
        return i13;
    }

    public M(int i10) {
        super(i10);
    }

    public M(int i10, float f10) {
        super(i10, f10);
    }

    public M(int i10, float f10, int i11, int i12) {
        super(i10, f10, i11, i12);
    }

    public M(int[] iArr, int[] iArr2) {
        super(Math.max(iArr.length, iArr2.length));
        int min = Math.min(iArr.length, iArr2.length);
        for (int i10 = 0; i10 < min; i10++) {
            f5(iArr[i10], iArr2[i10]);
        }
    }

    public M(ee.K k10) {
        super(k10.size());
        if (k10 instanceof M) {
            M m10 = (M) k10;
            this.f27454d = m10.f27454d;
            int i10 = m10.f27492r;
            this.f27492r = i10;
            this.f27493s = m10.f27493s;
            if (i10 != 0) {
                Arrays.fill(this.f27491q, i10);
            }
            int i11 = this.f27493s;
            if (i11 != 0) {
                Arrays.fill(this.f88665v, i11);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        V6(k10);
    }
}
