package ge;

import Wd.AbstractC3170m;
import Zd.InterfaceC3458p;
import ee.InterfaceC13074o;
import he.InterfaceC13461p;
import he.InterfaceC13462q;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.lang.reflect.Array;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import ke.InterfaceC13968b;
import org.apache.commons.math3.geometry.VectorFormat;
import org.openjdk.tools.doclint.DocLint;

public class C13345o<V> extends AbstractC3170m implements InterfaceC13074o<V>, Externalizable {

    public static final long f89356x = 1;

    public final InterfaceC13461p<V> f89357u;

    public transient V[] f89358v;

    public char f89359w;

    public class a implements InterfaceC13461p<V> {
        public a() {
        }

        @Override
        public boolean a(char c10, V v10) {
            C13345o.this.I3(c10, v10);
            return true;
        }
    }

    public class b implements InterfaceC13461p<V> {

        public boolean f89361a = true;

        public final StringBuilder f89362b;

        public b(StringBuilder sb2) {
            this.f89362b = sb2;
        }

        @Override
        public boolean a(char c10, Object obj) {
            if (this.f89361a) {
                this.f89361a = false;
            } else {
                this.f89362b.append(DocLint.SEPARATOR);
            }
            this.f89362b.append(c10);
            this.f89362b.append("=");
            this.f89362b.append(obj);
            return true;
        }
    }

    public class c implements InterfaceC13968b {

        public class a extends Wd.J implements InterfaceC3458p {

            public final AbstractC3170m f89365e;

            public a(AbstractC3170m abstractC3170m) {
                super(abstractC3170m);
                this.f89365e = abstractC3170m;
            }

            @Override
            public char next() {
                j();
                return this.f89365e.f27653q[this.f27465d];
            }
        }

        public c() {
        }

        @Override
        public char[] Q0(char[] cArr) {
            return C13345o.this.V(cArr);
        }

        @Override
        public boolean X1(char[] cArr) {
            Arrays.sort(cArr);
            C13345o c13345o = C13345o.this;
            char[] cArr2 = c13345o.f27653q;
            byte[] bArr = c13345o.f27568l;
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
                    C13345o.this.hf(i10);
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
            return C13345o.this.b(c10) != null;
        }

        @Override
        public boolean b1(char c10) {
            return C13345o.this.C(c10);
        }

        @Override
        public void clear() {
            C13345o.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!C13345o.this.C(((Character) it.next()).charValue())) {
                    return false;
                }
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
            int length = C13345o.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                C13345o c13345o = C13345o.this;
                if (c13345o.f27568l[i10] == 1 && !interfaceC13968b.b1(c13345o.f27653q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public boolean g1(InterfaceC13462q interfaceC13462q) {
            return C13345o.this.y(interfaceC13462q);
        }

        @Override
        public int hashCode() {
            int length = C13345o.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                C13345o c13345o = C13345o.this;
                if (c13345o.f27568l[i11] == 1) {
                    i10 += Vd.b.d(c13345o.f27653q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public char i() {
            return C13345o.this.f89359w;
        }

        @Override
        public boolean isEmpty() {
            return C13345o.this.f27452b == 0;
        }

        @Override
        public InterfaceC3458p iterator() {
            return new a(C13345o.this);
        }

        @Override
        public boolean n2(char[] cArr) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean p2(Sd.b bVar) {
            if (bVar == this) {
                return true;
            }
            InterfaceC3458p it = bVar.iterator();
            while (it.hasNext()) {
                if (!C13345o.this.C(it.next())) {
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
            return C13345o.this.f27452b;
        }

        @Override
        public boolean t2(Sd.b bVar) {
            if (bVar == this) {
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
            return C13345o.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            int length = C13345o.this.f27568l.length;
            boolean z10 = true;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return sb2.toString();
                }
                if (C13345o.this.f27568l[i10] == 1) {
                    if (z10) {
                        z10 = false;
                    } else {
                        sb2.append(DocLint.SEPARATOR);
                    }
                    sb2.append(C13345o.this.f27653q[i10]);
                }
                length = i10;
            }
        }

        @Override
        public boolean u1(char[] cArr) {
            for (char c10 : cArr) {
                if (!C13345o.this.C(c10)) {
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

    public abstract class d<E> extends AbstractSet<E> implements Set<E>, Iterable<E> {
        public d() {
        }

        @Override
        public boolean add(E e10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        public abstract boolean c(E e10);

        @Override
        public void clear() {
            C13345o.this.clear();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean contains(Object obj) {
            return c(obj);
        }

        public abstract boolean d(E e10);

        @Override
        public boolean isEmpty() {
            return C13345o.this.isEmpty();
        }

        @Override
        public abstract Iterator<E> iterator();

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean remove(Object obj) {
            return d(obj);
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            Iterator<E> it = iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (!collection.contains(it.next())) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public int size() {
            return C13345o.this.size();
        }

        @Override
        public Object[] toArray() {
            Object[] objArr = new Object[size()];
            Iterator<E> it = iterator();
            int i10 = 0;
            while (it.hasNext()) {
                objArr[i10] = it.next();
                i10++;
            }
            return objArr;
        }

        public d(C13345o c13345o, a aVar) {
            this();
        }

        @Override
        public <T> T[] toArray(T[] tArr) {
            int size = size();
            if (tArr.length < size) {
                tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
            }
            Iterator<E> it = iterator();
            for (int i10 = 0; i10 < size; i10++) {
                tArr[i10] = it.next();
            }
            if (tArr.length > size) {
                tArr[size] = null;
            }
            return tArr;
        }
    }

    public class e<V> extends Wd.J implements Zd.r<V> {

        public final C13345o<V> f89368e;

        public e(C13345o<V> c13345o) {
            super(c13345o);
            this.f89368e = c13345o;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public char key() {
            return this.f89368e.f27653q[this.f27465d];
        }

        @Override
        public V setValue(V v10) {
            V value = value();
            this.f89368e.f89358v[this.f27465d] = v10;
            return value;
        }

        @Override
        public V value() {
            return this.f89368e.f89358v[this.f27465d];
        }
    }

    public class f extends C13345o<V>.d<V> {

        public class a extends b {
            public a(C13345o c13345o) {
                super(c13345o);
            }

            @Override
            public V k(int i10) {
                return C13345o.this.f89358v[i10];
            }
        }

        public class b extends Wd.J implements Iterator<V> {

            public final C13345o f89372e;

            public b(C13345o c13345o) {
                super(c13345o);
                this.f89372e = c13345o;
            }

            public V k(int i10) {
                byte[] bArr = C13345o.this.f27568l;
                V v10 = this.f89372e.f89358v[i10];
                if (bArr[i10] != 1) {
                    return null;
                }
                return v10;
            }

            @Override
            public V next() {
                j();
                return this.f89372e.f89358v[this.f27465d];
            }
        }

        public f() {
            super(C13345o.this, null);
        }

        @Override
        public boolean c(V v10) {
            return C13345o.this.containsValue(v10);
        }

        @Override
        public boolean d(V v10) {
            int i10;
            V v11;
            C13345o c13345o = C13345o.this;
            V[] vArr = c13345o.f89358v;
            byte[] bArr = c13345o.f27568l;
            int length = vArr.length;
            while (true) {
                i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                if (bArr[i10] != 1 || (v10 != (v11 = vArr[i10]) && (v11 == null || !v11.equals(v10)))) {
                    length = i10;
                }
            }
            C13345o.this.hf(i10);
            return true;
        }

        @Override
        public Iterator<V> iterator() {
            return new a(C13345o.this);
        }
    }

    public C13345o() {
        this.f89357u = new a();
    }

    private V tf(V v10, int i10) {
        V v11;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            v11 = this.f89358v[i10];
            z10 = false;
        } else {
            v11 = null;
        }
        this.f89358v[i10] = v10;
        if (z10) {
            ef(this.f27655s);
        }
        return v11;
    }

    @Override
    public boolean C(char c10) {
        return b1(c10);
    }

    @Override
    public V I3(char c10, V v10) {
        return tf(v10, of(c10));
    }

    @Override
    public boolean N5(InterfaceC13461p<? super V> interfaceC13461p) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f27653q;
        V[] vArr = this.f89358v;
        kf();
        try {
            int length = cArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !interfaceC13461p.a(cArr[i10], vArr[i10])) {
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
    public boolean S(he.k0<? super V> k0Var) {
        byte[] bArr = this.f27568l;
        V[] vArr = this.f89358v;
        int length = vArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !k0Var.a(vArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean Tb(InterfaceC13461p<? super V> interfaceC13461p) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f27653q;
        V[] vArr = this.f89358v;
        int length = cArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13461p.a(cArr[i10], vArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public char[] V(char[] cArr) {
        int length = cArr.length;
        int i10 = this.f27452b;
        if (length < i10) {
            cArr = new char[i10];
        }
        char[] cArr2 = this.f27653q;
        byte[] bArr = this.f27568l;
        int length2 = cArr2.length;
        int i11 = 0;
        while (true) {
            int i12 = length2 - 1;
            if (length2 <= 0) {
                return cArr;
            }
            if (bArr[i12] == 1) {
                cArr[i11] = cArr2[i12];
                i11++;
            }
            length2 = i12;
        }
    }

    @Override
    public V b(char c10) {
        int mf2 = mf(c10);
        if (mf2 < 0) {
            return null;
        }
        V v10 = this.f89358v[mf2];
        hf(mf2);
        return v10;
    }

    @Override
    public V cc(char c10, V v10) {
        int of2 = of(c10);
        return of2 < 0 ? this.f89358v[(-of2) - 1] : tf(v10, of2);
    }

    @Override
    public void clear() {
        super.clear();
        char[] cArr = this.f27653q;
        Arrays.fill(cArr, 0, cArr.length, this.f89359w);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
        V[] vArr = this.f89358v;
        Arrays.fill(vArr, 0, vArr.length, (Object) null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x002a, code lost:
    
        return true;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean containsValue(Object obj) {
        V v10;
        byte[] bArr = this.f27568l;
        V[] vArr = this.f89358v;
        if (obj == null) {
            int length = vArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                if (bArr[i10] == 1 && vArr[i10] == null) {
                    return true;
                }
                length = i10;
            }
        } else {
            int length2 = vArr.length;
            while (true) {
                int i11 = length2 - 1;
                if (length2 <= 0) {
                    return false;
                }
                if (bArr[i11] != 1 || (obj != (v10 = vArr[i11]) && !obj.equals(v10))) {
                    length2 = i11;
                }
            }
        }
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof InterfaceC13074o)) {
            return false;
        }
        InterfaceC13074o interfaceC13074o = (InterfaceC13074o) obj;
        if (interfaceC13074o.size() != size()) {
            return false;
        }
        try {
            Zd.r<V> it = iterator();
            while (it.hasNext()) {
                it.g();
                char key = it.key();
                V value = it.value();
                if (value == null) {
                    if (interfaceC13074o.o0(key) != null || !interfaceC13074o.C(key)) {
                        return false;
                    }
                } else if (!value.equals(interfaceC13074o.o0(key))) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException unused) {
            return true;
        }
    }

    @Override
    public void gf(int i10) {
        char[] cArr = this.f27653q;
        int length = cArr.length;
        V[] vArr = this.f89358v;
        byte[] bArr = this.f27568l;
        this.f27653q = new char[i10];
        this.f89358v = (V[]) new Object[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f89358v[of(cArr[i11])] = vArr[i11];
            }
            length = i11;
        }
    }

    @Override
    public int hashCode() {
        V[] vArr = this.f89358v;
        byte[] bArr = this.f27568l;
        int length = vArr.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                int d10 = Vd.b.d(this.f27653q[i11]);
                V v10 = vArr[i11];
                i10 += d10 ^ (v10 == null ? 0 : v10.hashCode());
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f89358v[i10] = null;
        super.hf(i10);
    }

    @Override
    public Zd.r<V> iterator() {
        return new e(this);
    }

    @Override
    public char[] j() {
        char[] cArr = new char[size()];
        char[] cArr2 = this.f27653q;
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
        this.f89358v = (V[]) new Object[jf2];
        return jf2;
    }

    @Override
    public Collection<V> k() {
        return new f();
    }

    @Override
    public InterfaceC13968b keySet() {
        return new c();
    }

    @Override
    public char l() {
        return this.f89359w;
    }

    @Override
    public V o0(char c10) {
        int mf2 = mf(c10);
        if (mf2 < 0) {
            return null;
        }
        return this.f89358v[mf2];
    }

    @Override
    public void putAll(Map<? extends Character, ? extends V> map) {
        for (Map.Entry<? extends Character, ? extends V> entry : map.entrySet()) {
            I3(entry.getKey().charValue(), entry.getValue());
        }
    }

    @Override
    public void r0(Ud.g<V, V> gVar) {
        byte[] bArr = this.f27568l;
        V[] vArr = this.f89358v;
        int length = vArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i10] == 1) {
                vArr[i10] = gVar.a(vArr[i10]);
            }
            length = i10;
        }
    }

    @Override
    public void r8(InterfaceC13074o<? extends V> interfaceC13074o) {
        interfaceC13074o.Tb(this.f89357u);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        super.readExternal(objectInput);
        this.f89359w = objectInput.readChar();
        int readInt = objectInput.readInt();
        jf(readInt);
        while (true) {
            int i10 = readInt - 1;
            if (readInt <= 0) {
                return;
            }
            I3(objectInput.readChar(), objectInput.readObject());
            readInt = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        Tb(new b(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public V[] v0(V[] vArr) {
        if (vArr.length < this.f27452b) {
            vArr = (V[]) ((Object[]) Array.newInstance(vArr.getClass().getComponentType(), this.f27452b));
        }
        V[] vArr2 = this.f89358v;
        byte[] bArr = this.f27568l;
        int length = vArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return vArr;
            }
            if (bArr[i11] == 1) {
                vArr[i10] = vArr2[i11];
                i10++;
            }
            length = i11;
        }
    }

    @Override
    public Object[] values() {
        Object[] objArr = new Object[size()];
        V[] vArr = this.f89358v;
        byte[] bArr = this.f27568l;
        int length = vArr.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return objArr;
            }
            if (bArr[i11] == 1) {
                objArr[i10] = vArr[i11];
                i10++;
            }
            length = i11;
        }
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        super.writeExternal(objectOutput);
        objectOutput.writeChar(this.f89359w);
        objectOutput.writeInt(this.f27452b);
        int length = this.f27568l.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (this.f27568l[i10] == 1) {
                objectOutput.writeChar(this.f27653q[i10]);
                objectOutput.writeObject(this.f89358v[i10]);
            }
            length = i10;
        }
    }

    @Override
    public boolean y(InterfaceC13462q interfaceC13462q) {
        return g1(interfaceC13462q);
    }

    public C13345o(int i10) {
        super(i10);
        this.f89357u = new a();
        this.f89359w = Vd.a.f26857f;
    }

    public C13345o(int i10, float f10) {
        super(i10, f10);
        this.f89357u = new a();
        this.f89359w = Vd.a.f26857f;
    }

    public C13345o(int i10, float f10, char c10) {
        super(i10, f10);
        this.f89357u = new a();
        this.f89359w = c10;
    }

    public C13345o(InterfaceC13074o<? extends V> interfaceC13074o) {
        this(interfaceC13074o.size(), 0.5f, interfaceC13074o.l());
        r8(interfaceC13074o);
    }
}
