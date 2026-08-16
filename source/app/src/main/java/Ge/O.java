package ge;

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
import ke.InterfaceC13971e;
import org.apache.commons.math3.geometry.VectorFormat;
import org.openjdk.tools.doclint.DocLint;

public class O<V> extends Wd.O implements ee.M<V>, Externalizable {

    public static final long f88696x = 1;

    public final he.Q<V> f88697u;

    public transient V[] f88698v;

    public int f88699w;

    public class a implements he.Q<V> {
        public a() {
        }

        @Override
        public boolean a(int i10, V v10) {
            O.this.Gd(i10, v10);
            return true;
        }
    }

    public class b implements he.Q<V> {

        public boolean f88701a = true;

        public final StringBuilder f88702b;

        public b(StringBuilder sb2) {
            this.f88702b = sb2;
        }

        @Override
        public boolean a(int i10, Object obj) {
            if (this.f88701a) {
                this.f88701a = false;
            } else {
                this.f88702b.append(DocLint.SEPARATOR);
            }
            this.f88702b.append(i10);
            this.f88702b.append("=");
            this.f88702b.append(obj);
            return true;
        }
    }

    public class c implements InterfaceC13971e {

        public class a extends Wd.J implements Zd.Q {

            public final Wd.O f88705e;

            public a(Wd.O o10) {
                super(o10);
                this.f88705e = o10;
            }

            @Override
            public int next() {
                j();
                return this.f88705e.f27487q[this.f27465d];
            }
        }

        public c() {
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
                if (!O.this.F(i10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean M1(int[] iArr) {
            Arrays.sort(iArr);
            O o10 = O.this;
            int[] iArr2 = o10.f27487q;
            byte[] bArr = o10.f27568l;
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
                    O.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public int[] P0(int[] iArr) {
            return O.this.f0(iArr);
        }

        @Override
        public boolean U0(he.S s10) {
            return O.this.J(s10);
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
            O.this.clear();
        }

        @Override
        public boolean contains(int i10) {
            return O.this.F(i10);
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!O.this.F(((Integer) it.next()).intValue())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean d2(Sd.g gVar) {
            if (gVar == this) {
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
            int length = O.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                O o10 = O.this;
                if (o10.f27568l[i10] == 1 && !interfaceC13971e.contains(o10.f27487q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public boolean h2(Sd.g gVar) {
            if (gVar == this) {
                return true;
            }
            Zd.Q it = gVar.iterator();
            while (it.hasNext()) {
                if (!O.this.F(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int hashCode() {
            int length = O.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                O o10 = O.this;
                if (o10.f27568l[i11] == 1) {
                    i10 += Vd.b.d(o10.f27487q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public int i() {
            return O.this.f88699w;
        }

        @Override
        public boolean isEmpty() {
            return O.this.f27452b == 0;
        }

        @Override
        public Zd.Q iterator() {
            return new a(O.this);
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
            return O.this.remove(i10) != null;
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
            return O.this.f27452b;
        }

        @Override
        public int[] toArray() {
            return O.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            int length = O.this.f27568l.length;
            boolean z10 = true;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return sb2.toString();
                }
                if (O.this.f27568l[i10] == 1) {
                    if (z10) {
                        z10 = false;
                    } else {
                        sb2.append(DocLint.SEPARATOR);
                    }
                    sb2.append(O.this.f27487q[i10]);
                }
                length = i10;
            }
        }

        @Override
        public boolean z2(int[] iArr) {
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
            O.this.clear();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean contains(Object obj) {
            return c(obj);
        }

        public abstract boolean d(E e10);

        @Override
        public boolean isEmpty() {
            return O.this.isEmpty();
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
            return O.this.size();
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

        public d(O o10, a aVar) {
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

    public class e<V> extends Wd.J implements Zd.T<V> {

        public final O<V> f88708e;

        public e(O<V> o10) {
            super(o10);
            this.f88708e = o10;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public int key() {
            return this.f88708e.f27487q[this.f27465d];
        }

        @Override
        public V setValue(V v10) {
            V value = value();
            this.f88708e.f88698v[this.f27465d] = v10;
            return value;
        }

        @Override
        public V value() {
            return this.f88708e.f88698v[this.f27465d];
        }
    }

    public class f extends O<V>.d<V> {

        public class a extends b {
            public a(O o10) {
                super(o10);
            }

            @Override
            public V k(int i10) {
                return O.this.f88698v[i10];
            }
        }

        public class b extends Wd.J implements Iterator<V> {

            public final O f88712e;

            public b(O o10) {
                super(o10);
                this.f88712e = o10;
            }

            public V k(int i10) {
                byte[] bArr = O.this.f27568l;
                V v10 = this.f88712e.f88698v[i10];
                if (bArr[i10] != 1) {
                    return null;
                }
                return v10;
            }

            @Override
            public V next() {
                j();
                return this.f88712e.f88698v[this.f27465d];
            }
        }

        public f() {
            super(O.this, null);
        }

        @Override
        public boolean c(V v10) {
            return O.this.containsValue(v10);
        }

        @Override
        public boolean d(V v10) {
            int i10;
            V v11;
            O o10 = O.this;
            V[] vArr = o10.f88698v;
            byte[] bArr = o10.f27568l;
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
            O.this.hf(i10);
            return true;
        }

        @Override
        public Iterator<V> iterator() {
            return new a(O.this);
        }
    }

    public O() {
        this.f88697u = new a();
    }

    private V tf(V v10, int i10) {
        V v11;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            v11 = this.f88698v[i10];
            z10 = false;
        } else {
            v11 = null;
        }
        this.f88698v[i10] = v10;
        if (z10) {
            ef(this.f27489s);
        }
        return v11;
    }

    @Override
    public boolean F(int i10) {
        return contains(i10);
    }

    @Override
    public V Gd(int i10, V v10) {
        return tf(v10, of(i10));
    }

    @Override
    public boolean J(he.S s10) {
        return U0(s10);
    }

    @Override
    public void Ja(ee.M<? extends V> m10) {
        m10.Mb(this.f88697u);
    }

    @Override
    public boolean Mb(he.Q<? super V> q10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f27487q;
        V[] vArr = this.f88698v;
        int length = iArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !q10.a(iArr[i10], vArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean Pb(he.Q<? super V> q10) {
        byte[] bArr = this.f27568l;
        int[] iArr = this.f27487q;
        V[] vArr = this.f88698v;
        kf();
        try {
            int length = iArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !q10.a(iArr[i10], vArr[i10])) {
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
        V[] vArr = this.f88698v;
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
    public V ae(int i10, V v10) {
        int of2 = of(i10);
        return of2 < 0 ? this.f88698v[(-of2) - 1] : tf(v10, of2);
    }

    @Override
    public void clear() {
        super.clear();
        int[] iArr = this.f27487q;
        Arrays.fill(iArr, 0, iArr.length, this.f88699w);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
        V[] vArr = this.f88698v;
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
        V[] vArr = this.f88698v;
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
        if (!(obj instanceof ee.M)) {
            return false;
        }
        ee.M m10 = (ee.M) obj;
        if (m10.size() != size()) {
            return false;
        }
        try {
            Zd.T<V> it = iterator();
            while (it.hasNext()) {
                it.g();
                int key = it.key();
                V value = it.value();
                if (value == null) {
                    if (m10.get(key) != null || !m10.F(key)) {
                        return false;
                    }
                } else if (!value.equals(m10.get(key))) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException unused) {
            return true;
        }
    }

    @Override
    public int[] f0(int[] iArr) {
        int length = iArr.length;
        int i10 = this.f27452b;
        if (length < i10) {
            iArr = new int[i10];
        }
        int[] iArr2 = this.f27487q;
        byte[] bArr = this.f27568l;
        int length2 = iArr2.length;
        int i11 = 0;
        while (true) {
            int i12 = length2 - 1;
            if (length2 <= 0) {
                return iArr;
            }
            if (bArr[i12] == 1) {
                iArr[i11] = iArr2[i12];
                i11++;
            }
            length2 = i12;
        }
    }

    @Override
    public V get(int i10) {
        int mf2 = mf(i10);
        if (mf2 < 0) {
            return null;
        }
        return this.f88698v[mf2];
    }

    @Override
    public void gf(int i10) {
        int[] iArr = this.f27487q;
        int length = iArr.length;
        V[] vArr = this.f88698v;
        byte[] bArr = this.f27568l;
        this.f27487q = new int[i10];
        this.f88698v = (V[]) new Object[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f88698v[of(iArr[i11])] = vArr[i11];
            }
            length = i11;
        }
    }

    @Override
    public int hashCode() {
        V[] vArr = this.f88698v;
        byte[] bArr = this.f27568l;
        int length = vArr.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                int d10 = Vd.b.d(this.f27487q[i11]);
                V v10 = vArr[i11];
                i10 += d10 ^ (v10 == null ? 0 : v10.hashCode());
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f88698v[i10] = null;
        super.hf(i10);
    }

    @Override
    public Zd.T<V> iterator() {
        return new e(this);
    }

    @Override
    public int[] j() {
        int[] iArr = new int[size()];
        int[] iArr2 = this.f27487q;
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
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f88698v = (V[]) new Object[jf2];
        return jf2;
    }

    @Override
    public Collection<V> k() {
        return new f();
    }

    @Override
    public InterfaceC13971e keySet() {
        return new c();
    }

    @Override
    public int l() {
        return this.f88699w;
    }

    @Override
    public void putAll(Map<? extends Integer, ? extends V> map) {
        for (Map.Entry<? extends Integer, ? extends V> entry : map.entrySet()) {
            Gd(entry.getKey().intValue(), entry.getValue());
        }
    }

    @Override
    public void r0(Ud.g<V, V> gVar) {
        byte[] bArr = this.f27568l;
        V[] vArr = this.f88698v;
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        super.readExternal(objectInput);
        this.f88699w = objectInput.readInt();
        int readInt = objectInput.readInt();
        jf(readInt);
        while (true) {
            int i10 = readInt - 1;
            if (readInt <= 0) {
                return;
            }
            Gd(objectInput.readInt(), objectInput.readObject());
            readInt = i10;
        }
    }

    @Override
    public V remove(int i10) {
        int mf2 = mf(i10);
        if (mf2 < 0) {
            return null;
        }
        V v10 = this.f88698v[mf2];
        hf(mf2);
        return v10;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        Mb(new b(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public V[] v0(V[] vArr) {
        if (vArr.length < this.f27452b) {
            vArr = (V[]) ((Object[]) Array.newInstance(vArr.getClass().getComponentType(), this.f27452b));
        }
        V[] vArr2 = this.f88698v;
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
        V[] vArr = this.f88698v;
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
        objectOutput.writeInt(this.f88699w);
        objectOutput.writeInt(this.f27452b);
        int length = this.f27568l.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (this.f27568l[i10] == 1) {
                objectOutput.writeInt(this.f27487q[i10]);
                objectOutput.writeObject(this.f88698v[i10]);
            }
            length = i10;
        }
    }

    public O(int i10) {
        super(i10);
        this.f88697u = new a();
        this.f88699w = Vd.a.f26858g;
    }

    public O(int i10, float f10) {
        super(i10, f10);
        this.f88697u = new a();
        this.f88699w = Vd.a.f26858g;
    }

    public O(int i10, float f10, int i11) {
        super(i10, f10);
        this.f88697u = new a();
        this.f88699w = i11;
    }

    public O(ee.M<? extends V> m10) {
        this(m10.size(), 0.5f, m10.l());
        Ja(m10);
    }
}
