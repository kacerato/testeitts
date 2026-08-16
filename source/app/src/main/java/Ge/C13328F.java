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
import ke.InterfaceC13970d;
import org.apache.commons.math3.geometry.VectorFormat;
import org.openjdk.tools.doclint.DocLint;

public class C13328F<V> extends Wd.D implements ee.E<V>, Externalizable {

    public static final long f88547x = 1;

    public final he.H<V> f88548u;

    public transient V[] f88549v;

    public float f88550w;

    public class a implements he.H<V> {
        public a() {
        }

        @Override
        public boolean a(float f10, V v10) {
            C13328F.this.Me(f10, v10);
            return true;
        }
    }

    public class b implements he.H<V> {

        public boolean f88552a = true;

        public final StringBuilder f88553b;

        public b(StringBuilder sb2) {
            this.f88553b = sb2;
        }

        @Override
        public boolean a(float f10, Object obj) {
            if (this.f88552a) {
                this.f88552a = false;
            } else {
                this.f88553b.append(DocLint.SEPARATOR);
            }
            this.f88553b.append(f10);
            this.f88553b.append("=");
            this.f88553b.append(obj);
            return true;
        }
    }

    public class c implements InterfaceC13970d {

        public class a extends Wd.J implements Zd.H {

            public final Wd.D f88556e;

            public a(Wd.D d10) {
                super(d10);
                this.f88556e = d10;
            }

            @Override
            public float next() {
                j();
                return this.f88556e.f27431q[this.f27465d];
            }
        }

        public c() {
        }

        @Override
        public boolean C2(Sd.f fVar) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean D1(Sd.f fVar) {
            if (fVar == this) {
                return true;
            }
            Zd.H it = fVar.iterator();
            while (it.hasNext()) {
                if (!C13328F.this.H(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean L1(float[] fArr) {
            for (float f10 : fArr) {
                if (!C13328F.this.H(f10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean V1(float[] fArr) {
            Arrays.sort(fArr);
            C13328F c13328f = C13328F.this;
            float[] fArr2 = c13328f.f27431q;
            byte[] bArr = c13328f.f27568l;
            int length = fArr2.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] != 1 || Arrays.binarySearch(fArr, fArr2[i10]) >= 0) {
                    length = i10;
                } else {
                    C13328F.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean Z0(float f10) {
            return C13328F.this.H(f10);
        }

        @Override
        public boolean addAll(Collection<? extends Float> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean c(float f10) {
            return C13328F.this.c(f10) != null;
        }

        @Override
        public boolean c2(Sd.f fVar) {
            boolean z10 = false;
            if (this == fVar) {
                return false;
            }
            Zd.H it = iterator();
            while (it.hasNext()) {
                if (!fVar.Z0(it.next())) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public void clear() {
            C13328F.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!C13328F.this.H(((Float) it.next()).floatValue())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean equals(Object obj) {
            if (!(obj instanceof InterfaceC13970d)) {
                return false;
            }
            InterfaceC13970d interfaceC13970d = (InterfaceC13970d) obj;
            if (interfaceC13970d.size() != size()) {
                return false;
            }
            int length = C13328F.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                C13328F c13328f = C13328F.this;
                if (c13328f.f27568l[i10] == 1 && !interfaceC13970d.Z0(c13328f.f27431q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public boolean f1(float f10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean g2(Sd.f fVar) {
            if (fVar == this) {
                clear();
                return true;
            }
            Zd.H it = fVar.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (c(it.next())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public int hashCode() {
            int length = C13328F.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                C13328F c13328f = C13328F.this;
                if (c13328f.f27568l[i11] == 1) {
                    i10 += Vd.b.c(c13328f.f27431q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public float i() {
            return C13328F.this.f88550w;
        }

        @Override
        public boolean isEmpty() {
            return C13328F.this.f27452b == 0;
        }

        @Override
        public Zd.H iterator() {
            return new a(C13328F.this);
        }

        @Override
        public boolean k1(he.I i10) {
            return C13328F.this.j0(i10);
        }

        @Override
        public boolean l2(float[] fArr) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            boolean z10 = false;
            for (Object obj : collection) {
                if ((obj instanceof Float) && c(((Float) obj).floatValue())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            Zd.H it = iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (!collection.contains(Float.valueOf(it.next()))) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public int size() {
            return C13328F.this.f27452b;
        }

        @Override
        public float[] toArray() {
            return C13328F.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            int length = C13328F.this.f27568l.length;
            boolean z10 = true;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return sb2.toString();
                }
                if (C13328F.this.f27568l[i10] == 1) {
                    if (z10) {
                        z10 = false;
                    } else {
                        sb2.append(DocLint.SEPARATOR);
                    }
                    sb2.append(C13328F.this.f27431q[i10]);
                }
                length = i10;
            }
        }

        @Override
        public boolean x1(float[] fArr) {
            int length = fArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (c(fArr[i10])) {
                    z10 = true;
                }
                length = i10;
            }
        }

        @Override
        public float[] toArray(float[] fArr) {
            return C13328F.this.d0(fArr);
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
            C13328F.this.clear();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean contains(Object obj) {
            return c(obj);
        }

        public abstract boolean d(E e10);

        @Override
        public boolean isEmpty() {
            return C13328F.this.isEmpty();
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
            return C13328F.this.size();
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

        public d(C13328F c13328f, a aVar) {
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

    public class e<V> extends Wd.J implements Zd.J<V> {

        public final C13328F<V> f88559e;

        public e(C13328F<V> c13328f) {
            super(c13328f);
            this.f88559e = c13328f;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public float key() {
            return this.f88559e.f27431q[this.f27465d];
        }

        @Override
        public V setValue(V v10) {
            V value = value();
            this.f88559e.f88549v[this.f27465d] = v10;
            return value;
        }

        @Override
        public V value() {
            return this.f88559e.f88549v[this.f27465d];
        }
    }

    public class f extends C13328F<V>.d<V> {

        public class a extends b {
            public a(C13328F c13328f) {
                super(c13328f);
            }

            @Override
            public V k(int i10) {
                return C13328F.this.f88549v[i10];
            }
        }

        public class b extends Wd.J implements Iterator<V> {

            public final C13328F f88563e;

            public b(C13328F c13328f) {
                super(c13328f);
                this.f88563e = c13328f;
            }

            public V k(int i10) {
                byte[] bArr = C13328F.this.f27568l;
                V v10 = this.f88563e.f88549v[i10];
                if (bArr[i10] != 1) {
                    return null;
                }
                return v10;
            }

            @Override
            public V next() {
                j();
                return this.f88563e.f88549v[this.f27465d];
            }
        }

        public f() {
            super(C13328F.this, null);
        }

        @Override
        public boolean c(V v10) {
            return C13328F.this.containsValue(v10);
        }

        @Override
        public boolean d(V v10) {
            int i10;
            V v11;
            C13328F c13328f = C13328F.this;
            V[] vArr = c13328f.f88549v;
            byte[] bArr = c13328f.f27568l;
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
            C13328F.this.hf(i10);
            return true;
        }

        @Override
        public Iterator<V> iterator() {
            return new a(C13328F.this);
        }
    }

    public C13328F() {
        this.f88548u = new a();
    }

    private V tf(V v10, int i10) {
        V v11;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            v11 = this.f88549v[i10];
            z10 = false;
        } else {
            v11 = null;
        }
        this.f88549v[i10] = v10;
        if (z10) {
            ef(this.f27433s);
        }
        return v11;
    }

    @Override
    public boolean H(float f10) {
        return Z0(f10);
    }

    @Override
    public boolean He(he.H<? super V> h10) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f27431q;
        V[] vArr = this.f88549v;
        kf();
        try {
            int length = fArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !h10.a(fArr[i10], vArr[i10])) {
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
    public V Me(float f10, V v10) {
        return tf(v10, of(f10));
    }

    @Override
    public boolean S(he.k0<? super V> k0Var) {
        byte[] bArr = this.f27568l;
        V[] vArr = this.f88549v;
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
    public V c(float f10) {
        int mf2 = mf(f10);
        if (mf2 < 0) {
            return null;
        }
        V v10 = this.f88549v[mf2];
        hf(mf2);
        return v10;
    }

    @Override
    public void clear() {
        super.clear();
        float[] fArr = this.f27431q;
        Arrays.fill(fArr, 0, fArr.length, this.f88550w);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
        V[] vArr = this.f88549v;
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
        V[] vArr = this.f88549v;
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
    public float[] d0(float[] fArr) {
        int length = fArr.length;
        int i10 = this.f27452b;
        if (length < i10) {
            fArr = new float[i10];
        }
        float[] fArr2 = this.f27431q;
        byte[] bArr = this.f27568l;
        int length2 = fArr2.length;
        int i11 = 0;
        while (true) {
            int i12 = length2 - 1;
            if (length2 <= 0) {
                return fArr;
            }
            if (bArr[i12] == 1) {
                fArr[i11] = fArr2[i12];
                i11++;
            }
            length2 = i12;
        }
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof ee.E)) {
            return false;
        }
        ee.E e10 = (ee.E) obj;
        if (e10.size() != size()) {
            return false;
        }
        try {
            Zd.J<V> it = iterator();
            while (it.hasNext()) {
                it.g();
                float key = it.key();
                V value = it.value();
                if (value == null) {
                    if (e10.q0(key) != null || !e10.H(key)) {
                        return false;
                    }
                } else if (!value.equals(e10.q0(key))) {
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
        float[] fArr = this.f27431q;
        int length = fArr.length;
        V[] vArr = this.f88549v;
        byte[] bArr = this.f27568l;
        this.f27431q = new float[i10];
        this.f88549v = (V[]) new Object[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f88549v[of(fArr[i11])] = vArr[i11];
            }
            length = i11;
        }
    }

    @Override
    public int hashCode() {
        V[] vArr = this.f88549v;
        byte[] bArr = this.f27568l;
        int length = vArr.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                int c10 = Vd.b.c(this.f27431q[i11]);
                V v10 = vArr[i11];
                i10 += c10 ^ (v10 == null ? 0 : v10.hashCode());
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f88549v[i10] = null;
        super.hf(i10);
    }

    @Override
    public Zd.J<V> iterator() {
        return new e(this);
    }

    @Override
    public float[] j() {
        float[] fArr = new float[size()];
        float[] fArr2 = this.f27431q;
        byte[] bArr = this.f27568l;
        int length = fArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return fArr;
            }
            if (bArr[i11] == 1) {
                fArr[i10] = fArr2[i11];
                i10++;
            }
            length = i11;
        }
    }

    @Override
    public boolean j0(he.I i10) {
        return k1(i10);
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f88549v = (V[]) new Object[jf2];
        return jf2;
    }

    @Override
    public Collection<V> k() {
        return new f();
    }

    @Override
    public InterfaceC13970d keySet() {
        return new c();
    }

    @Override
    public float l() {
        return this.f88550w;
    }

    @Override
    public V l9(float f10, V v10) {
        int of2 = of(f10);
        return of2 < 0 ? this.f88549v[(-of2) - 1] : tf(v10, of2);
    }

    @Override
    public boolean n6(he.H<? super V> h10) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f27431q;
        V[] vArr = this.f88549v;
        int length = fArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !h10.a(fArr[i10], vArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public void p6(ee.E<? extends V> e10) {
        e10.n6(this.f88548u);
    }

    @Override
    public void putAll(Map<? extends Float, ? extends V> map) {
        for (Map.Entry<? extends Float, ? extends V> entry : map.entrySet()) {
            Me(entry.getKey().floatValue(), entry.getValue());
        }
    }

    @Override
    public V q0(float f10) {
        int mf2 = mf(f10);
        if (mf2 < 0) {
            return null;
        }
        return this.f88549v[mf2];
    }

    @Override
    public void r0(Ud.g<V, V> gVar) {
        byte[] bArr = this.f27568l;
        V[] vArr = this.f88549v;
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
        this.f88550w = objectInput.readFloat();
        int readInt = objectInput.readInt();
        jf(readInt);
        while (true) {
            int i10 = readInt - 1;
            if (readInt <= 0) {
                return;
            }
            Me(objectInput.readFloat(), objectInput.readObject());
            readInt = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        n6(new b(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public V[] v0(V[] vArr) {
        if (vArr.length < this.f27452b) {
            vArr = (V[]) ((Object[]) Array.newInstance(vArr.getClass().getComponentType(), this.f27452b));
        }
        V[] vArr2 = this.f88549v;
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
        V[] vArr = this.f88549v;
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
        objectOutput.writeFloat(this.f88550w);
        objectOutput.writeInt(this.f27452b);
        int length = this.f27568l.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (this.f27568l[i10] == 1) {
                objectOutput.writeFloat(this.f27431q[i10]);
                objectOutput.writeObject(this.f88549v[i10]);
            }
            length = i10;
        }
    }

    public C13328F(int i10) {
        super(i10);
        this.f88548u = new a();
        this.f88550w = Vd.a.f26860i;
    }

    public C13328F(int i10, float f10) {
        super(i10, f10);
        this.f88548u = new a();
        this.f88550w = Vd.a.f26860i;
    }

    public C13328F(int i10, float f10, float f11) {
        super(i10, f10);
        this.f88548u = new a();
        this.f88550w = f11;
    }

    public C13328F(ee.E<? extends V> e10) {
        this(e10.size(), 0.5f, e10.l());
        p6(e10);
    }
}
