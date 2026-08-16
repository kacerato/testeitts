package ge;

import Wd.AbstractC3162e;
import Zd.InterfaceC3449g;
import Zd.InterfaceC3451i;
import ee.InterfaceC13066g;
import he.InterfaceC13452g;
import he.InterfaceC13453h;
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
import ke.InterfaceC13967a;
import org.apache.commons.math3.geometry.VectorFormat;
import org.openjdk.tools.doclint.DocLint;

public class C13337g<V> extends AbstractC3162e implements InterfaceC13066g<V>, Externalizable {

    public static final long f89096x = 1;

    public final InterfaceC13452g<V> f89097u;

    public transient V[] f89098v;

    public byte f89099w;

    public class a implements InterfaceC13452g<V> {
        public a() {
        }

        @Override
        public boolean a(byte b10, V v10) {
            C13337g.this.k4(b10, v10);
            return true;
        }
    }

    public class b implements InterfaceC13452g<V> {

        public boolean f89101a = true;

        public final StringBuilder f89102b;

        public b(StringBuilder sb2) {
            this.f89102b = sb2;
        }

        @Override
        public boolean a(byte b10, Object obj) {
            if (this.f89101a) {
                this.f89101a = false;
            } else {
                this.f89102b.append(DocLint.SEPARATOR);
            }
            this.f89102b.append((int) b10);
            this.f89102b.append("=");
            this.f89102b.append(obj);
            return true;
        }
    }

    public class c implements InterfaceC13967a {

        public class a extends Wd.J implements InterfaceC3449g {

            public final AbstractC3162e f89105e;

            public a(AbstractC3162e abstractC3162e) {
                super(abstractC3162e);
                this.f89105e = abstractC3162e;
            }

            @Override
            public byte next() {
                j();
                return this.f89105e.f27580q[this.f27465d];
            }
        }

        public c() {
        }

        @Override
        public boolean E1(Sd.a aVar) {
            throw new UnsupportedOperationException();
        }

        @Override
        public byte[] R0(byte[] bArr) {
            return C13337g.this.X(bArr);
        }

        @Override
        public boolean V0(InterfaceC13453h interfaceC13453h) {
            return C13337g.this.w(interfaceC13453h);
        }

        @Override
        public boolean W1(byte[] bArr) {
            Arrays.sort(bArr);
            C13337g c13337g = C13337g.this;
            byte[] bArr2 = c13337g.f27580q;
            byte[] bArr3 = c13337g.f27568l;
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
                    C13337g.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean a1(byte b10) {
            return C13337g.this.D(b10);
        }

        @Override
        public boolean addAll(Collection<? extends Byte> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C13337g.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!C13337g.this.D(((Byte) it.next()).byteValue())) {
                    return false;
                }
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
            int length = C13337g.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                C13337g c13337g = C13337g.this;
                if (c13337g.f27568l[i10] == 1 && !interfaceC13967a.a1(c13337g.f27580q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public int hashCode() {
            int length = C13337g.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                C13337g c13337g = C13337g.this;
                if (c13337g.f27568l[i11] == 1) {
                    i10 += Vd.b.d(c13337g.f27580q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public byte i() {
            return C13337g.this.f89099w;
        }

        @Override
        public boolean i2(Sd.a aVar) {
            if (aVar == this) {
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
            return C13337g.this.f27452b == 0;
        }

        @Override
        public InterfaceC3449g iterator() {
            return new a(C13337g.this);
        }

        @Override
        public boolean m(byte b10) {
            return C13337g.this.m(b10) != null;
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
            return C13337g.this.f27452b;
        }

        @Override
        public boolean t1(byte[] bArr) {
            for (byte b10 : bArr) {
                if (!C13337g.this.D(b10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public byte[] toArray() {
            return C13337g.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            int length = C13337g.this.f27568l.length;
            boolean z10 = true;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return sb2.toString();
                }
                if (C13337g.this.f27568l[i10] == 1) {
                    if (z10) {
                        z10 = false;
                    } else {
                        sb2.append(DocLint.SEPARATOR);
                    }
                    sb2.append((int) C13337g.this.f27580q[i10]);
                }
                length = i10;
            }
        }

        @Override
        public boolean w2(Sd.a aVar) {
            if (aVar == this) {
                return true;
            }
            InterfaceC3449g it = aVar.iterator();
            while (it.hasNext()) {
                if (!C13337g.this.D(it.next())) {
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
            C13337g.this.clear();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean contains(Object obj) {
            return c(obj);
        }

        public abstract boolean d(E e10);

        @Override
        public boolean isEmpty() {
            return C13337g.this.isEmpty();
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
            return C13337g.this.size();
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

        public d(C13337g c13337g, a aVar) {
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

    public class e<V> extends Wd.J implements InterfaceC3451i<V> {

        public final C13337g<V> f89108e;

        public e(C13337g<V> c13337g) {
            super(c13337g);
            this.f89108e = c13337g;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public byte key() {
            return this.f89108e.f27580q[this.f27465d];
        }

        @Override
        public V setValue(V v10) {
            V value = value();
            this.f89108e.f89098v[this.f27465d] = v10;
            return value;
        }

        @Override
        public V value() {
            return this.f89108e.f89098v[this.f27465d];
        }
    }

    public class f extends C13337g<V>.d<V> {

        public class a extends b {
            public a(C13337g c13337g) {
                super(c13337g);
            }

            @Override
            public V k(int i10) {
                return C13337g.this.f89098v[i10];
            }
        }

        public class b extends Wd.J implements Iterator<V> {

            public final C13337g f89112e;

            public b(C13337g c13337g) {
                super(c13337g);
                this.f89112e = c13337g;
            }

            public V k(int i10) {
                byte[] bArr = C13337g.this.f27568l;
                V v10 = this.f89112e.f89098v[i10];
                if (bArr[i10] != 1) {
                    return null;
                }
                return v10;
            }

            @Override
            public V next() {
                j();
                return this.f89112e.f89098v[this.f27465d];
            }
        }

        public f() {
            super(C13337g.this, null);
        }

        @Override
        public boolean c(V v10) {
            return C13337g.this.containsValue(v10);
        }

        @Override
        public boolean d(V v10) {
            int i10;
            V v11;
            C13337g c13337g = C13337g.this;
            V[] vArr = c13337g.f89098v;
            byte[] bArr = c13337g.f27568l;
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
            C13337g.this.hf(i10);
            return true;
        }

        @Override
        public Iterator<V> iterator() {
            return new a(C13337g.this);
        }
    }

    public C13337g() {
        this.f89097u = new a();
    }

    private V tf(V v10, int i10) {
        V v11;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            v11 = this.f89098v[i10];
            z10 = false;
        } else {
            v11 = null;
        }
        this.f89098v[i10] = v10;
        if (z10) {
            ef(this.f27582s);
        }
        return v11;
    }

    @Override
    public boolean D(byte b10) {
        return a1(b10);
    }

    @Override
    public boolean S(he.k0<? super V> k0Var) {
        byte[] bArr = this.f27568l;
        V[] vArr = this.f89098v;
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
    public boolean Tc(InterfaceC13452g<? super V> interfaceC13452g) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f27580q;
        V[] vArr = this.f89098v;
        int length = bArr2.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13452g.a(bArr2[i10], vArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public byte[] X(byte[] bArr) {
        int length = bArr.length;
        int i10 = this.f27452b;
        if (length < i10) {
            bArr = new byte[i10];
        }
        byte[] bArr2 = this.f27580q;
        byte[] bArr3 = this.f27568l;
        int length2 = bArr2.length;
        int i11 = 0;
        while (true) {
            int i12 = length2 - 1;
            if (length2 <= 0) {
                return bArr;
            }
            if (bArr3[i12] == 1) {
                bArr[i11] = bArr2[i12];
                i11++;
            }
            length2 = i12;
        }
    }

    @Override
    public V ab(byte b10, V v10) {
        int of2 = of(b10);
        return of2 < 0 ? this.f89098v[(-of2) - 1] : tf(v10, of2);
    }

    @Override
    public void clear() {
        super.clear();
        byte[] bArr = this.f27580q;
        Arrays.fill(bArr, 0, bArr.length, this.f89099w);
        byte[] bArr2 = this.f27568l;
        Arrays.fill(bArr2, 0, bArr2.length, (byte) 0);
        V[] vArr = this.f89098v;
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
        V[] vArr = this.f89098v;
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
        if (!(obj instanceof InterfaceC13066g)) {
            return false;
        }
        InterfaceC13066g interfaceC13066g = (InterfaceC13066g) obj;
        if (interfaceC13066g.size() != size()) {
            return false;
        }
        try {
            InterfaceC3451i<V> it = iterator();
            while (it.hasNext()) {
                it.g();
                byte key = it.key();
                V value = it.value();
                if (value == null) {
                    if (interfaceC13066g.s0(key) != null || !interfaceC13066g.D(key)) {
                        return false;
                    }
                } else if (!value.equals(interfaceC13066g.s0(key))) {
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
        byte[] bArr = this.f27580q;
        int length = bArr.length;
        V[] vArr = this.f89098v;
        byte[] bArr2 = this.f27568l;
        this.f27580q = new byte[i10];
        this.f89098v = (V[]) new Object[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr2[i11] == 1) {
                this.f89098v[of(bArr[i11])] = vArr[i11];
            }
            length = i11;
        }
    }

    @Override
    public int hashCode() {
        V[] vArr = this.f89098v;
        byte[] bArr = this.f27568l;
        int length = vArr.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                int d10 = Vd.b.d(this.f27580q[i11]);
                V v10 = vArr[i11];
                i10 += d10 ^ (v10 == null ? 0 : v10.hashCode());
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f89098v[i10] = null;
        super.hf(i10);
    }

    @Override
    public InterfaceC3451i<V> iterator() {
        return new e(this);
    }

    @Override
    public byte[] j() {
        byte[] bArr = new byte[size()];
        byte[] bArr2 = this.f27580q;
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
        this.f89098v = (V[]) new Object[jf2];
        return jf2;
    }

    @Override
    public Collection<V> k() {
        return new f();
    }

    @Override
    public V k4(byte b10, V v10) {
        return tf(v10, of(b10));
    }

    @Override
    public InterfaceC13967a keySet() {
        return new c();
    }

    @Override
    public byte l() {
        return this.f89099w;
    }

    @Override
    public V m(byte b10) {
        int mf2 = mf(b10);
        if (mf2 < 0) {
            return null;
        }
        V v10 = this.f89098v[mf2];
        hf(mf2);
        return v10;
    }

    @Override
    public void putAll(Map<? extends Byte, ? extends V> map) {
        for (Map.Entry<? extends Byte, ? extends V> entry : map.entrySet()) {
            k4(entry.getKey().byteValue(), entry.getValue());
        }
    }

    @Override
    public void r0(Ud.g<V, V> gVar) {
        byte[] bArr = this.f27568l;
        V[] vArr = this.f89098v;
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
        this.f89099w = objectInput.readByte();
        int readInt = objectInput.readInt();
        jf(readInt);
        while (true) {
            int i10 = readInt - 1;
            if (readInt <= 0) {
                return;
            }
            k4(objectInput.readByte(), objectInput.readObject());
            readInt = i10;
        }
    }

    @Override
    public V s0(byte b10) {
        int mf2 = mf(b10);
        if (mf2 < 0) {
            return null;
        }
        return this.f89098v[mf2];
    }

    @Override
    public void t6(InterfaceC13066g<? extends V> interfaceC13066g) {
        interfaceC13066g.Tc(this.f89097u);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        Tc(new b(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public V[] v0(V[] vArr) {
        if (vArr.length < this.f27452b) {
            vArr = (V[]) ((Object[]) Array.newInstance(vArr.getClass().getComponentType(), this.f27452b));
        }
        V[] vArr2 = this.f89098v;
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
    public boolean v4(InterfaceC13452g<? super V> interfaceC13452g) {
        byte[] bArr = this.f27568l;
        byte[] bArr2 = this.f27580q;
        V[] vArr = this.f89098v;
        kf();
        try {
            int length = bArr2.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !interfaceC13452g.a(bArr2[i10], vArr[i10])) {
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
    public Object[] values() {
        Object[] objArr = new Object[size()];
        V[] vArr = this.f89098v;
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
    public boolean w(InterfaceC13453h interfaceC13453h) {
        return V0(interfaceC13453h);
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        super.writeExternal(objectOutput);
        objectOutput.writeByte(this.f89099w);
        objectOutput.writeInt(this.f27452b);
        int length = this.f27568l.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (this.f27568l[i10] == 1) {
                objectOutput.writeByte(this.f27580q[i10]);
                objectOutput.writeObject(this.f89098v[i10]);
            }
            length = i10;
        }
    }

    public C13337g(int i10) {
        super(i10);
        this.f89097u = new a();
        this.f89099w = Vd.a.f26855d;
    }

    public C13337g(int i10, float f10) {
        super(i10, f10);
        this.f89097u = new a();
        this.f89099w = Vd.a.f26855d;
    }

    public C13337g(int i10, float f10, byte b10) {
        super(i10, f10);
        this.f89097u = new a();
        this.f89099w = b10;
    }

    public C13337g(InterfaceC13066g<? extends V> interfaceC13066g) {
        this(interfaceC13066g.size(), 0.5f, interfaceC13066g.l());
        t6(interfaceC13066g);
    }
}
