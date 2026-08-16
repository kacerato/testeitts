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
import ke.InterfaceC13972f;
import org.apache.commons.math3.geometry.VectorFormat;
import org.openjdk.tools.doclint.DocLint;

public class X<V> extends Wd.X implements ee.V<V>, Externalizable {

    public static final long f88826x = 1;

    public final he.a0<V> f88827u;

    public transient V[] f88828v;

    public long f88829w;

    public class a implements he.a0<V> {
        public a() {
        }

        @Override
        public boolean a(long j10, V v10) {
            X.this.td(j10, v10);
            return true;
        }
    }

    public class b implements he.a0<V> {

        public boolean f88831a = true;

        public final StringBuilder f88832b;

        public b(StringBuilder sb2) {
            this.f88832b = sb2;
        }

        @Override
        public boolean a(long j10, Object obj) {
            if (this.f88831a) {
                this.f88831a = false;
            } else {
                this.f88832b.append(DocLint.SEPARATOR);
            }
            this.f88832b.append(j10);
            this.f88832b.append("=");
            this.f88832b.append(obj);
            return true;
        }
    }

    public class c implements InterfaceC13972f {

        public class a extends Wd.J implements Zd.b0 {

            public final Wd.X f88835e;

            public a(Wd.X x10) {
                super(x10);
                this.f88835e = x10;
            }

            @Override
            public long next() {
                j();
                return this.f88835e.f27526q[this.f27465d];
            }
        }

        public c() {
        }

        @Override
        public boolean B1(long[] jArr) {
            int length = jArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (e(jArr[i10])) {
                    z10 = true;
                }
                length = i10;
            }
        }

        @Override
        public boolean B2(Sd.h hVar) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean H1(Sd.h hVar) {
            if (hVar == this) {
                return true;
            }
            Zd.b0 it = hVar.iterator();
            while (it.hasNext()) {
                if (!X.this.E(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean M0(long j10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public long[] O0(long[] jArr) {
            return X.this.h0(jArr);
        }

        @Override
        public boolean Q1(long[] jArr) {
            Arrays.sort(jArr);
            X x10 = X.this;
            long[] jArr2 = x10.f27526q;
            byte[] bArr = x10.f27568l;
            int length = jArr2.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] != 1 || Arrays.binarySearch(jArr, jArr2[i10]) >= 0) {
                    length = i10;
                } else {
                    X.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean U1(long[] jArr) {
            for (long j10 : jArr) {
                if (!X.this.E(j10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean X0(long j10) {
            return X.this.E(j10);
        }

        @Override
        public boolean addAll(Collection<? extends Long> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            X.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!X.this.E(((Long) it.next()).longValue())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean e(long j10) {
            return X.this.e(j10) != null;
        }

        @Override
        public boolean equals(Object obj) {
            if (!(obj instanceof InterfaceC13972f)) {
                return false;
            }
            InterfaceC13972f interfaceC13972f = (InterfaceC13972f) obj;
            if (interfaceC13972f.size() != size()) {
                return false;
            }
            int length = X.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                X x10 = X.this;
                if (x10.f27568l[i10] == 1 && !interfaceC13972f.X0(x10.f27526q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public boolean f2(Sd.h hVar) {
            if (hVar == this) {
                clear();
                return true;
            }
            Zd.b0 it = hVar.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (e(it.next())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public int hashCode() {
            int length = X.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                X x10 = X.this;
                if (x10.f27568l[i11] == 1) {
                    i10 += Vd.b.e(x10.f27526q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public long i() {
            return X.this.f88829w;
        }

        @Override
        public boolean isEmpty() {
            return X.this.f27452b == 0;
        }

        @Override
        public Zd.b0 iterator() {
            return new a(X.this);
        }

        @Override
        public boolean j1(he.b0 b0Var) {
            return X.this.l0(b0Var);
        }

        @Override
        public boolean q1(Sd.h hVar) {
            boolean z10 = false;
            if (this == hVar) {
                return false;
            }
            Zd.b0 it = iterator();
            while (it.hasNext()) {
                if (!hVar.X0(it.next())) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            boolean z10 = false;
            for (Object obj : collection) {
                if ((obj instanceof Long) && e(((Long) obj).longValue())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            Zd.b0 it = iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (!collection.contains(Long.valueOf(it.next()))) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public int size() {
            return X.this.f27452b;
        }

        @Override
        public long[] toArray() {
            return X.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            int length = X.this.f27568l.length;
            boolean z10 = true;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return sb2.toString();
                }
                if (X.this.f27568l[i10] == 1) {
                    if (z10) {
                        z10 = false;
                    } else {
                        sb2.append(DocLint.SEPARATOR);
                    }
                    sb2.append(X.this.f27526q[i10]);
                }
                length = i10;
            }
        }

        @Override
        public boolean y2(long[] jArr) {
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
            X.this.clear();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean contains(Object obj) {
            return c(obj);
        }

        public abstract boolean d(E e10);

        @Override
        public boolean isEmpty() {
            return X.this.isEmpty();
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
            return X.this.size();
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

        public d(X x10, a aVar) {
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

    public class e<V> extends Wd.J implements Zd.d0<V> {

        public final X<V> f88838e;

        public e(X<V> x10) {
            super(x10);
            this.f88838e = x10;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public long key() {
            return this.f88838e.f27526q[this.f27465d];
        }

        @Override
        public V setValue(V v10) {
            V value = value();
            this.f88838e.f88828v[this.f27465d] = v10;
            return value;
        }

        @Override
        public V value() {
            return this.f88838e.f88828v[this.f27465d];
        }
    }

    public class f extends X<V>.d<V> {

        public class a extends b {
            public a(X x10) {
                super(x10);
            }

            @Override
            public V k(int i10) {
                return X.this.f88828v[i10];
            }
        }

        public class b extends Wd.J implements Iterator<V> {

            public final X f88842e;

            public b(X x10) {
                super(x10);
                this.f88842e = x10;
            }

            public V k(int i10) {
                byte[] bArr = X.this.f27568l;
                V v10 = this.f88842e.f88828v[i10];
                if (bArr[i10] != 1) {
                    return null;
                }
                return v10;
            }

            @Override
            public V next() {
                j();
                return this.f88842e.f88828v[this.f27465d];
            }
        }

        public f() {
            super(X.this, null);
        }

        @Override
        public boolean c(V v10) {
            return X.this.containsValue(v10);
        }

        @Override
        public boolean d(V v10) {
            int i10;
            V v11;
            X x10 = X.this;
            V[] vArr = x10.f88828v;
            byte[] bArr = x10.f27568l;
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
            X.this.hf(i10);
            return true;
        }

        @Override
        public Iterator<V> iterator() {
            return new a(X.this);
        }
    }

    public X() {
        this.f88827u = new a();
    }

    private V tf(V v10, int i10) {
        V v11;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            v11 = this.f88828v[i10];
            z10 = false;
        } else {
            v11 = null;
        }
        this.f88828v[i10] = v10;
        if (z10) {
            ef(this.f27528s);
        }
        return v11;
    }

    @Override
    public V Bd(long j10, V v10) {
        int of2 = of(j10);
        return of2 < 0 ? this.f88828v[(-of2) - 1] : tf(v10, of2);
    }

    @Override
    public boolean E(long j10) {
        return X0(j10);
    }

    @Override
    public void L6(ee.V<? extends V> v10) {
        v10.tb(this.f88827u);
    }

    @Override
    public boolean S(he.k0<? super V> k0Var) {
        byte[] bArr = this.f27568l;
        V[] vArr = this.f88828v;
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
    public void clear() {
        super.clear();
        long[] jArr = this.f27526q;
        Arrays.fill(jArr, 0, jArr.length, this.f88829w);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
        V[] vArr = this.f88828v;
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
        V[] vArr = this.f88828v;
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
    public V e(long j10) {
        int mf2 = mf(j10);
        if (mf2 < 0) {
            return null;
        }
        V v10 = this.f88828v[mf2];
        hf(mf2);
        return v10;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof ee.V)) {
            return false;
        }
        ee.V v10 = (ee.V) obj;
        if (v10.size() != size()) {
            return false;
        }
        try {
            Zd.d0<V> it = iterator();
            while (it.hasNext()) {
                it.g();
                long key = it.key();
                V value = it.value();
                if (value == null) {
                    if (v10.u(key) != null || !v10.E(key)) {
                        return false;
                    }
                } else if (!value.equals(v10.u(key))) {
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
        long[] jArr = this.f27526q;
        int length = jArr.length;
        V[] vArr = this.f88828v;
        byte[] bArr = this.f27568l;
        this.f27526q = new long[i10];
        this.f88828v = (V[]) new Object[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f88828v[of(jArr[i11])] = vArr[i11];
            }
            length = i11;
        }
    }

    @Override
    public long[] h0(long[] jArr) {
        int length = jArr.length;
        int i10 = this.f27452b;
        if (length < i10) {
            jArr = new long[i10];
        }
        long[] jArr2 = this.f27526q;
        byte[] bArr = this.f27568l;
        int length2 = jArr2.length;
        int i11 = 0;
        while (true) {
            int i12 = length2 - 1;
            if (length2 <= 0) {
                return jArr;
            }
            if (bArr[i12] == 1) {
                jArr[i11] = jArr2[i12];
                i11++;
            }
            length2 = i12;
        }
    }

    @Override
    public int hashCode() {
        V[] vArr = this.f88828v;
        byte[] bArr = this.f27568l;
        int length = vArr.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                int e10 = Vd.b.e(this.f27526q[i11]);
                V v10 = vArr[i11];
                i10 += e10 ^ (v10 == null ? 0 : v10.hashCode());
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f88828v[i10] = null;
        super.hf(i10);
    }

    @Override
    public Zd.d0<V> iterator() {
        return new e(this);
    }

    @Override
    public long[] j() {
        long[] jArr = new long[size()];
        long[] jArr2 = this.f27526q;
        byte[] bArr = this.f27568l;
        int length = jArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return jArr;
            }
            if (bArr[i11] == 1) {
                jArr[i10] = jArr2[i11];
                i10++;
            }
            length = i11;
        }
    }

    @Override
    public boolean j5(he.a0<? super V> a0Var) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f27526q;
        V[] vArr = this.f88828v;
        kf();
        try {
            int length = jArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !a0Var.a(jArr[i10], vArr[i10])) {
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
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f88828v = (V[]) new Object[jf2];
        return jf2;
    }

    @Override
    public Collection<V> k() {
        return new f();
    }

    @Override
    public InterfaceC13972f keySet() {
        return new c();
    }

    @Override
    public long l() {
        return this.f88829w;
    }

    @Override
    public boolean l0(he.b0 b0Var) {
        return j1(b0Var);
    }

    @Override
    public void putAll(Map<? extends Long, ? extends V> map) {
        for (Map.Entry<? extends Long, ? extends V> entry : map.entrySet()) {
            td(entry.getKey().longValue(), entry.getValue());
        }
    }

    @Override
    public void r0(Ud.g<V, V> gVar) {
        byte[] bArr = this.f27568l;
        V[] vArr = this.f88828v;
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
        this.f88829w = objectInput.readLong();
        int readInt = objectInput.readInt();
        jf(readInt);
        while (true) {
            int i10 = readInt - 1;
            if (readInt <= 0) {
                return;
            }
            td(objectInput.readLong(), objectInput.readObject());
            readInt = i10;
        }
    }

    @Override
    public boolean tb(he.a0<? super V> a0Var) {
        byte[] bArr = this.f27568l;
        long[] jArr = this.f27526q;
        V[] vArr = this.f88828v;
        int length = jArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !a0Var.a(jArr[i10], vArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public V td(long j10, V v10) {
        return tf(v10, of(j10));
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        tb(new b(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public V u(long j10) {
        int mf2 = mf(j10);
        if (mf2 < 0) {
            return null;
        }
        return this.f88828v[mf2];
    }

    @Override
    public V[] v0(V[] vArr) {
        if (vArr.length < this.f27452b) {
            vArr = (V[]) ((Object[]) Array.newInstance(vArr.getClass().getComponentType(), this.f27452b));
        }
        V[] vArr2 = this.f88828v;
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
        V[] vArr = this.f88828v;
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
        objectOutput.writeLong(this.f88829w);
        objectOutput.writeInt(this.f27452b);
        int length = this.f27568l.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (this.f27568l[i10] == 1) {
                objectOutput.writeLong(this.f27526q[i10]);
                objectOutput.writeObject(this.f88828v[i10]);
            }
            length = i10;
        }
    }

    public X(int i10) {
        super(i10);
        this.f88827u = new a();
        this.f88829w = Vd.a.f26859h;
    }

    public X(int i10, float f10) {
        super(i10, f10);
        this.f88827u = new a();
        this.f88829w = Vd.a.f26859h;
    }

    public X(int i10, float f10, long j10) {
        super(i10, f10);
        this.f88827u = new a();
        this.f88829w = j10;
    }

    public X(ee.V<? extends V> v10) {
        this(v10.size(), 0.5f, v10.l());
        L6(v10);
    }
}
