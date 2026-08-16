package ge;

import Zd.u0;
import he.s0;
import he.t0;
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
import ke.InterfaceC13973g;
import org.apache.commons.math3.geometry.VectorFormat;
import org.openjdk.tools.doclint.DocLint;

public class m0<V> extends Wd.h0 implements ee.l0<V>, Externalizable {

    public static final long f89306x = 1;

    public final s0<V> f89307u;

    public transient V[] f89308v;

    public short f89309w;

    public class a implements s0<V> {
        public a() {
        }

        @Override
        public boolean a(short s10, V v10) {
            m0.this.Aa(s10, v10);
            return true;
        }
    }

    public class b implements s0<V> {

        public boolean f89311a = true;

        public final StringBuilder f89312b;

        public b(StringBuilder sb2) {
            this.f89312b = sb2;
        }

        @Override
        public boolean a(short s10, Object obj) {
            if (this.f89311a) {
                this.f89311a = false;
            } else {
                this.f89312b.append(DocLint.SEPARATOR);
            }
            this.f89312b.append((int) s10);
            this.f89312b.append("=");
            this.f89312b.append(obj);
            return true;
        }
    }

    public class c implements InterfaceC13973g {

        public class a extends Wd.J implements Zd.s0 {

            public final Wd.h0 f89315e;

            public a(Wd.h0 h0Var) {
                super(h0Var);
                this.f89315e = h0Var;
            }

            @Override
            public short next() {
                j();
                return this.f89315e.f27614q[this.f27465d];
            }
        }

        public c() {
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
            return m0.this.Y(sArr);
        }

        @Override
        public boolean W0(short s10) {
            return m0.this.z(s10);
        }

        @Override
        public boolean Z1(short[] sArr) {
            for (short s10 : sArr) {
                if (!m0.this.z(s10)) {
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
            m0.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!m0.this.z(((Short) it.next()).shortValue())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean d(short s10) {
            return m0.this.d(s10) != null;
        }

        @Override
        public boolean equals(Object obj) {
            if (!(obj instanceof InterfaceC13973g)) {
                return false;
            }
            InterfaceC13973g interfaceC13973g = (InterfaceC13973g) obj;
            if (interfaceC13973g.size() != size()) {
                return false;
            }
            int length = m0.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                m0 m0Var = m0.this;
                if (m0Var.f27568l[i10] == 1 && !interfaceC13973g.W0(m0Var.f27614q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public boolean h1(t0 t0Var) {
            return m0.this.v(t0Var);
        }

        @Override
        public int hashCode() {
            int length = m0.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                m0 m0Var = m0.this;
                if (m0Var.f27568l[i11] == 1) {
                    i10 += Vd.b.d(m0Var.f27614q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public short i() {
            return m0.this.f89309w;
        }

        @Override
        public boolean isEmpty() {
            return m0.this.f27452b == 0;
        }

        @Override
        public Zd.s0 iterator() {
            return new a(m0.this);
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
            if (iVar == this) {
                clear();
                return true;
            }
            Zd.s0 it = iVar.iterator();
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
            Zd.s0 it = iterator();
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
            m0 m0Var = m0.this;
            short[] sArr2 = m0Var.f27614q;
            byte[] bArr = m0Var.f27568l;
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
                    m0.this.hf(i10);
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
            Zd.s0 it = iterator();
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
            return m0.this.f27452b;
        }

        @Override
        public short[] toArray() {
            return m0.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            int length = m0.this.f27568l.length;
            boolean z10 = true;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return sb2.toString();
                }
                if (m0.this.f27568l[i10] == 1) {
                    if (z10) {
                        z10 = false;
                    } else {
                        sb2.append(DocLint.SEPARATOR);
                    }
                    sb2.append((int) m0.this.f27614q[i10]);
                }
                length = i10;
            }
        }

        @Override
        public boolean v2(Sd.i iVar) {
            if (iVar == this) {
                return true;
            }
            Zd.s0 it = iVar.iterator();
            while (it.hasNext()) {
                if (!m0.this.z(it.next())) {
                    return false;
                }
            }
            return true;
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
            m0.this.clear();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean contains(Object obj) {
            return c(obj);
        }

        public abstract boolean d(E e10);

        @Override
        public boolean isEmpty() {
            return m0.this.isEmpty();
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
            return m0.this.size();
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

        public d(m0 m0Var, a aVar) {
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

    public class e<V> extends Wd.J implements u0<V> {

        public final m0<V> f89318e;

        public e(m0<V> m0Var) {
            super(m0Var);
            this.f89318e = m0Var;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public short key() {
            return this.f89318e.f27614q[this.f27465d];
        }

        @Override
        public V setValue(V v10) {
            V value = value();
            this.f89318e.f89308v[this.f27465d] = v10;
            return value;
        }

        @Override
        public V value() {
            return this.f89318e.f89308v[this.f27465d];
        }
    }

    public class f extends m0<V>.d<V> {

        public class a extends b {
            public a(m0 m0Var) {
                super(m0Var);
            }

            @Override
            public V k(int i10) {
                return m0.this.f89308v[i10];
            }
        }

        public class b extends Wd.J implements Iterator<V> {

            public final m0 f89322e;

            public b(m0 m0Var) {
                super(m0Var);
                this.f89322e = m0Var;
            }

            public V k(int i10) {
                byte[] bArr = m0.this.f27568l;
                V v10 = this.f89322e.f89308v[i10];
                if (bArr[i10] != 1) {
                    return null;
                }
                return v10;
            }

            @Override
            public V next() {
                j();
                return this.f89322e.f89308v[this.f27465d];
            }
        }

        public f() {
            super(m0.this, null);
        }

        @Override
        public boolean c(V v10) {
            return m0.this.containsValue(v10);
        }

        @Override
        public boolean d(V v10) {
            int i10;
            V v11;
            m0 m0Var = m0.this;
            V[] vArr = m0Var.f89308v;
            byte[] bArr = m0Var.f27568l;
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
            m0.this.hf(i10);
            return true;
        }

        @Override
        public Iterator<V> iterator() {
            return new a(m0.this);
        }
    }

    public m0() {
        this.f89307u = new a();
    }

    private V tf(V v10, int i10) {
        V v11;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            v11 = this.f89308v[i10];
            z10 = false;
        } else {
            v11 = null;
        }
        this.f89308v[i10] = v10;
        if (z10) {
            ef(this.f27616s);
        }
        return v11;
    }

    @Override
    public V Aa(short s10, V v10) {
        return tf(v10, of(s10));
    }

    @Override
    public V O4(short s10, V v10) {
        int of2 = of(s10);
        return of2 < 0 ? this.f89308v[(-of2) - 1] : tf(v10, of2);
    }

    @Override
    public boolean S(he.k0<? super V> k0Var) {
        byte[] bArr = this.f27568l;
        V[] vArr = this.f89308v;
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
    public short[] Y(short[] sArr) {
        int length = sArr.length;
        int i10 = this.f27452b;
        if (length < i10) {
            sArr = new short[i10];
        }
        short[] sArr2 = this.f27614q;
        byte[] bArr = this.f27568l;
        int length2 = sArr2.length;
        int i11 = 0;
        while (true) {
            int i12 = length2 - 1;
            if (length2 <= 0) {
                return sArr;
            }
            if (bArr[i12] == 1) {
                sArr[i11] = sArr2[i12];
                i11++;
            }
            length2 = i12;
        }
    }

    @Override
    public boolean Zc(s0<? super V> s0Var) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f27614q;
        V[] vArr = this.f89308v;
        kf();
        try {
            int length = sArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !s0Var.a(sArr[i10], vArr[i10])) {
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
        short[] sArr = this.f27614q;
        Arrays.fill(sArr, 0, sArr.length, this.f89309w);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
        V[] vArr = this.f89308v;
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
        V[] vArr = this.f89308v;
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
    public V d(short s10) {
        int mf2 = mf(s10);
        if (mf2 < 0) {
            return null;
        }
        V v10 = this.f89308v[mf2];
        hf(mf2);
        return v10;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof ee.l0)) {
            return false;
        }
        ee.l0 l0Var = (ee.l0) obj;
        if (l0Var.size() != size()) {
            return false;
        }
        try {
            u0<V> it = iterator();
            while (it.hasNext()) {
                it.g();
                short key = it.key();
                V value = it.value();
                if (value == null) {
                    if (l0Var.n0(key) != null || !l0Var.z(key)) {
                        return false;
                    }
                } else if (!value.equals(l0Var.n0(key))) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException unused) {
            return true;
        }
    }

    @Override
    public boolean f4(s0<? super V> s0Var) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f27614q;
        V[] vArr = this.f89308v;
        int length = sArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !s0Var.a(sArr[i10], vArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public void gf(int i10) {
        short[] sArr = this.f27614q;
        int length = sArr.length;
        V[] vArr = this.f89308v;
        byte[] bArr = this.f27568l;
        this.f27614q = new short[i10];
        this.f89308v = (V[]) new Object[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f89308v[of(sArr[i11])] = vArr[i11];
            }
            length = i11;
        }
    }

    @Override
    public int hashCode() {
        V[] vArr = this.f89308v;
        byte[] bArr = this.f27568l;
        int length = vArr.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                int d10 = Vd.b.d(this.f27614q[i11]);
                V v10 = vArr[i11];
                i10 += d10 ^ (v10 == null ? 0 : v10.hashCode());
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f89308v[i10] = null;
        super.hf(i10);
    }

    @Override
    public u0<V> iterator() {
        return new e(this);
    }

    @Override
    public short[] j() {
        short[] sArr = new short[size()];
        short[] sArr2 = this.f27614q;
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
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f89308v = (V[]) new Object[jf2];
        return jf2;
    }

    @Override
    public Collection<V> k() {
        return new f();
    }

    @Override
    public InterfaceC13973g keySet() {
        return new c();
    }

    @Override
    public short l() {
        return this.f89309w;
    }

    @Override
    public V n0(short s10) {
        int mf2 = mf(s10);
        if (mf2 < 0) {
            return null;
        }
        return this.f89308v[mf2];
    }

    @Override
    public void putAll(Map<? extends Short, ? extends V> map) {
        for (Map.Entry<? extends Short, ? extends V> entry : map.entrySet()) {
            Aa(entry.getKey().shortValue(), entry.getValue());
        }
    }

    @Override
    public void r0(Ud.g<V, V> gVar) {
        byte[] bArr = this.f27568l;
        V[] vArr = this.f89308v;
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
        this.f89309w = objectInput.readShort();
        int readInt = objectInput.readInt();
        jf(readInt);
        while (true) {
            int i10 = readInt - 1;
            if (readInt <= 0) {
                return;
            }
            Aa(objectInput.readShort(), objectInput.readObject());
            readInt = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        f4(new b(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public void ua(ee.l0<? extends V> l0Var) {
        l0Var.f4(this.f89307u);
    }

    @Override
    public boolean v(t0 t0Var) {
        return h1(t0Var);
    }

    @Override
    public V[] v0(V[] vArr) {
        if (vArr.length < this.f27452b) {
            vArr = (V[]) ((Object[]) Array.newInstance(vArr.getClass().getComponentType(), this.f27452b));
        }
        V[] vArr2 = this.f89308v;
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
        V[] vArr = this.f89308v;
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
        objectOutput.writeShort(this.f89309w);
        objectOutput.writeInt(this.f27452b);
        int length = this.f27568l.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (this.f27568l[i10] == 1) {
                objectOutput.writeShort(this.f27614q[i10]);
                objectOutput.writeObject(this.f89308v[i10]);
            }
            length = i10;
        }
    }

    @Override
    public boolean z(short s10) {
        return W0(s10);
    }

    public m0(int i10) {
        super(i10);
        this.f89307u = new a();
        this.f89309w = Vd.a.f26856e;
    }

    public m0(int i10, float f10) {
        super(i10, f10);
        this.f89307u = new a();
        this.f89309w = Vd.a.f26856e;
    }

    public m0(int i10, float f10, short s10) {
        super(i10, f10);
        this.f89307u = new a();
        this.f89309w = s10;
    }

    public m0(ee.l0<? extends V> l0Var) {
        this(l0Var.size(), 0.5f, l0Var.l());
        ua(l0Var);
    }
}
