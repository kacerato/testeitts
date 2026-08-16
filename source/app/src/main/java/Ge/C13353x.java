package ge;

import Wd.AbstractC3178v;
import Zd.InterfaceC3466y;
import ee.InterfaceC13081w;
import he.InterfaceC13469y;
import he.InterfaceC13470z;
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
import ke.InterfaceC13969c;
import org.apache.commons.math3.geometry.VectorFormat;
import org.openjdk.tools.doclint.DocLint;

public class C13353x<V> extends AbstractC3178v implements InterfaceC13081w<V>, Externalizable {

    public static final long f89504x = 1;

    public final InterfaceC13469y<V> f89505u;

    public transient V[] f89506v;

    public double f89507w;

    public class a implements InterfaceC13469y<V> {
        public a() {
        }

        @Override
        public boolean a(double d10, V v10) {
            C13353x.this.W2(d10, v10);
            return true;
        }
    }

    public class b implements InterfaceC13469y<V> {

        public boolean f89509a = true;

        public final StringBuilder f89510b;

        public b(StringBuilder sb2) {
            this.f89510b = sb2;
        }

        @Override
        public boolean a(double d10, Object obj) {
            if (this.f89509a) {
                this.f89509a = false;
            } else {
                this.f89510b.append(DocLint.SEPARATOR);
            }
            this.f89510b.append(d10);
            this.f89510b.append("=");
            this.f89510b.append(obj);
            return true;
        }
    }

    public class c implements InterfaceC13969c {

        public class a extends Wd.J implements InterfaceC3466y {

            public final AbstractC3178v f89513e;

            public a(AbstractC3178v abstractC3178v) {
                super(abstractC3178v);
                this.f89513e = abstractC3178v;
            }

            @Override
            public double next() {
                j();
                return this.f89513e.f27694q[this.f27465d];
            }
        }

        public c() {
        }

        @Override
        public boolean C1(Sd.e eVar) {
            if (eVar == this) {
                clear();
                return true;
            }
            InterfaceC3466y it = eVar.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (a(it.next())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean G1(Sd.e eVar) {
            if (eVar == this) {
                return true;
            }
            InterfaceC3466y it = eVar.iterator();
            while (it.hasNext()) {
                if (!C13353x.this.A(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean J1(Sd.e eVar) {
            boolean z10 = false;
            if (this == eVar) {
                return false;
            }
            InterfaceC3466y it = iterator();
            while (it.hasNext()) {
                if (!eVar.Y0(it.next())) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean Y0(double d10) {
            return C13353x.this.A(d10);
        }

        @Override
        public boolean Y1(double[] dArr) {
            Arrays.sort(dArr);
            C13353x c13353x = C13353x.this;
            double[] dArr2 = c13353x.f27694q;
            byte[] bArr = c13353x.f27568l;
            int length = dArr2.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] != 1 || Arrays.binarySearch(dArr, dArr2[i10]) >= 0) {
                    length = i10;
                } else {
                    C13353x.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean a(double d10) {
            return C13353x.this.a(d10) != null;
        }

        @Override
        public boolean add(double d10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Double> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C13353x.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!C13353x.this.A(((Double) it.next()).doubleValue())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean equals(Object obj) {
            if (!(obj instanceof InterfaceC13969c)) {
                return false;
            }
            InterfaceC13969c interfaceC13969c = (InterfaceC13969c) obj;
            if (interfaceC13969c.size() != size()) {
                return false;
            }
            int length = C13353x.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                C13353x c13353x = C13353x.this;
                if (c13353x.f27568l[i10] == 1 && !interfaceC13969c.Y0(c13353x.f27694q[i10])) {
                    return false;
                }
                length = i10;
            }
        }

        @Override
        public int hashCode() {
            int length = C13353x.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                C13353x c13353x = C13353x.this;
                if (c13353x.f27568l[i11] == 1) {
                    i10 += Vd.b.b(c13353x.f27694q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public double i() {
            return C13353x.this.f89507w;
        }

        @Override
        public boolean i1(InterfaceC13470z interfaceC13470z) {
            return C13353x.this.k0(interfaceC13470z);
        }

        @Override
        public boolean isEmpty() {
            return C13353x.this.f27452b == 0;
        }

        @Override
        public InterfaceC3466y iterator() {
            return new a(C13353x.this);
        }

        @Override
        public boolean m2(double[] dArr) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            boolean z10 = false;
            for (Object obj : collection) {
                if ((obj instanceof Double) && a(((Double) obj).doubleValue())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            InterfaceC3466y it = iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (!collection.contains(Double.valueOf(it.next()))) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean s1(double[] dArr) {
            for (double d10 : dArr) {
                if (!C13353x.this.A(d10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int size() {
            return C13353x.this.f27452b;
        }

        @Override
        public double[] toArray() {
            return C13353x.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            int length = C13353x.this.f27568l.length;
            boolean z10 = true;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return sb2.toString();
                }
                if (C13353x.this.f27568l[i10] == 1) {
                    if (z10) {
                        z10 = false;
                    } else {
                        sb2.append(DocLint.SEPARATOR);
                    }
                    sb2.append(C13353x.this.f27694q[i10]);
                }
                length = i10;
            }
        }

        @Override
        public boolean w1(double[] dArr) {
            int length = dArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (a(dArr[i10])) {
                    z10 = true;
                }
                length = i10;
            }
        }

        @Override
        public boolean x2(Sd.e eVar) {
            throw new UnsupportedOperationException();
        }

        @Override
        public double[] toArray(double[] dArr) {
            return C13353x.this.W(dArr);
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
            C13353x.this.clear();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean contains(Object obj) {
            return c(obj);
        }

        public abstract boolean d(E e10);

        @Override
        public boolean isEmpty() {
            return C13353x.this.isEmpty();
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
            return C13353x.this.size();
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

        public d(C13353x c13353x, a aVar) {
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

    public class e<V> extends Wd.J implements Zd.A<V> {

        public final C13353x<V> f89516e;

        public e(C13353x<V> c13353x) {
            super(c13353x);
            this.f89516e = c13353x;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public double key() {
            return this.f89516e.f27694q[this.f27465d];
        }

        @Override
        public V setValue(V v10) {
            V value = value();
            this.f89516e.f89506v[this.f27465d] = v10;
            return value;
        }

        @Override
        public V value() {
            return this.f89516e.f89506v[this.f27465d];
        }
    }

    public class f extends C13353x<V>.d<V> {

        public class a extends b {
            public a(C13353x c13353x) {
                super(c13353x);
            }

            @Override
            public V k(int i10) {
                return C13353x.this.f89506v[i10];
            }
        }

        public class b extends Wd.J implements Iterator<V> {

            public final C13353x f89520e;

            public b(C13353x c13353x) {
                super(c13353x);
                this.f89520e = c13353x;
            }

            public V k(int i10) {
                byte[] bArr = C13353x.this.f27568l;
                V v10 = this.f89520e.f89506v[i10];
                if (bArr[i10] != 1) {
                    return null;
                }
                return v10;
            }

            @Override
            public V next() {
                j();
                return this.f89520e.f89506v[this.f27465d];
            }
        }

        public f() {
            super(C13353x.this, null);
        }

        @Override
        public boolean c(V v10) {
            return C13353x.this.containsValue(v10);
        }

        @Override
        public boolean d(V v10) {
            int i10;
            V v11;
            C13353x c13353x = C13353x.this;
            V[] vArr = c13353x.f89506v;
            byte[] bArr = c13353x.f27568l;
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
            C13353x.this.hf(i10);
            return true;
        }

        @Override
        public Iterator<V> iterator() {
            return new a(C13353x.this);
        }
    }

    public C13353x() {
        this.f89505u = new a();
    }

    private V tf(V v10, int i10) {
        V v11;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            v11 = this.f89506v[i10];
            z10 = false;
        } else {
            v11 = null;
        }
        this.f89506v[i10] = v10;
        if (z10) {
            ef(this.f27696s);
        }
        return v11;
    }

    @Override
    public boolean A(double d10) {
        return Y0(d10);
    }

    @Override
    public V Lb(double d10, V v10) {
        int of2 = of(d10);
        return of2 < 0 ? this.f89506v[(-of2) - 1] : tf(v10, of2);
    }

    @Override
    public boolean S(he.k0<? super V> k0Var) {
        byte[] bArr = this.f27568l;
        V[] vArr = this.f89506v;
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
    public double[] W(double[] dArr) {
        int length = dArr.length;
        int i10 = this.f27452b;
        if (length < i10) {
            dArr = new double[i10];
        }
        double[] dArr2 = this.f27694q;
        byte[] bArr = this.f27568l;
        int length2 = dArr2.length;
        int i11 = 0;
        while (true) {
            int i12 = length2 - 1;
            if (length2 <= 0) {
                return dArr;
            }
            if (bArr[i12] == 1) {
                dArr[i11] = dArr2[i12];
                i11++;
            }
            length2 = i12;
        }
    }

    @Override
    public V W2(double d10, V v10) {
        return tf(v10, of(d10));
    }

    @Override
    public V a(double d10) {
        int mf2 = mf(d10);
        if (mf2 < 0) {
            return null;
        }
        V v10 = this.f89506v[mf2];
        hf(mf2);
        return v10;
    }

    @Override
    public void clear() {
        super.clear();
        double[] dArr = this.f27694q;
        Arrays.fill(dArr, 0, dArr.length, this.f89507w);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
        V[] vArr = this.f89506v;
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
        V[] vArr = this.f89506v;
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
    public boolean de(InterfaceC13469y<? super V> interfaceC13469y) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f27694q;
        V[] vArr = this.f89506v;
        int length = dArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13469y.a(dArr[i10], vArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof InterfaceC13081w)) {
            return false;
        }
        InterfaceC13081w interfaceC13081w = (InterfaceC13081w) obj;
        if (interfaceC13081w.size() != size()) {
            return false;
        }
        try {
            Zd.A<V> it = iterator();
            while (it.hasNext()) {
                it.g();
                double key = it.key();
                V value = it.value();
                if (value == null) {
                    if (interfaceC13081w.p0(key) != null || !interfaceC13081w.A(key)) {
                        return false;
                    }
                } else if (!value.equals(interfaceC13081w.p0(key))) {
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
        double[] dArr = this.f27694q;
        int length = dArr.length;
        V[] vArr = this.f89506v;
        byte[] bArr = this.f27568l;
        this.f27694q = new double[i10];
        this.f89506v = (V[]) new Object[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f89506v[of(dArr[i11])] = vArr[i11];
            }
            length = i11;
        }
    }

    @Override
    public int hashCode() {
        V[] vArr = this.f89506v;
        byte[] bArr = this.f27568l;
        int length = vArr.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                int b10 = Vd.b.b(this.f27694q[i11]);
                V v10 = vArr[i11];
                i10 += b10 ^ (v10 == null ? 0 : v10.hashCode());
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f89506v[i10] = null;
        super.hf(i10);
    }

    @Override
    public Zd.A<V> iterator() {
        return new e(this);
    }

    @Override
    public double[] j() {
        double[] dArr = new double[size()];
        double[] dArr2 = this.f27694q;
        byte[] bArr = this.f27568l;
        int length = dArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return dArr;
            }
            if (bArr[i11] == 1) {
                dArr[i10] = dArr2[i11];
                i10++;
            }
            length = i11;
        }
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f89506v = (V[]) new Object[jf2];
        return jf2;
    }

    @Override
    public Collection<V> k() {
        return new f();
    }

    @Override
    public boolean k0(InterfaceC13470z interfaceC13470z) {
        return i1(interfaceC13470z);
    }

    @Override
    public InterfaceC13969c keySet() {
        return new c();
    }

    @Override
    public double l() {
        return this.f89507w;
    }

    @Override
    public V p0(double d10) {
        int mf2 = mf(d10);
        if (mf2 < 0) {
            return null;
        }
        return this.f89506v[mf2];
    }

    @Override
    public void putAll(Map<? extends Double, ? extends V> map) {
        for (Map.Entry<? extends Double, ? extends V> entry : map.entrySet()) {
            W2(entry.getKey().doubleValue(), entry.getValue());
        }
    }

    @Override
    public void r0(Ud.g<V, V> gVar) {
        byte[] bArr = this.f27568l;
        V[] vArr = this.f89506v;
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
    public void r7(InterfaceC13081w<? extends V> interfaceC13081w) {
        interfaceC13081w.de(this.f89505u);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        super.readExternal(objectInput);
        this.f89507w = objectInput.readDouble();
        int readInt = objectInput.readInt();
        jf(readInt);
        while (true) {
            int i10 = readInt - 1;
            if (readInt <= 0) {
                return;
            }
            W2(objectInput.readDouble(), objectInput.readObject());
            readInt = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        de(new b(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public boolean u8(InterfaceC13469y<? super V> interfaceC13469y) {
        byte[] bArr = this.f27568l;
        double[] dArr = this.f27694q;
        V[] vArr = this.f89506v;
        kf();
        try {
            int length = dArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !interfaceC13469y.a(dArr[i10], vArr[i10])) {
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
    public V[] v0(V[] vArr) {
        if (vArr.length < this.f27452b) {
            vArr = (V[]) ((Object[]) Array.newInstance(vArr.getClass().getComponentType(), this.f27452b));
        }
        V[] vArr2 = this.f89506v;
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
        V[] vArr = this.f89506v;
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
        objectOutput.writeDouble(this.f89507w);
        objectOutput.writeInt(this.f27452b);
        int length = this.f27568l.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (this.f27568l[i10] == 1) {
                objectOutput.writeDouble(this.f27694q[i10]);
                objectOutput.writeObject(this.f89506v[i10]);
            }
            length = i10;
        }
    }

    public C13353x(int i10) {
        super(i10);
        this.f89505u = new a();
        this.f89507w = Vd.a.f26861j;
    }

    public C13353x(int i10, float f10) {
        super(i10, f10);
        this.f89505u = new a();
        this.f89507w = Vd.a.f26861j;
    }

    public C13353x(int i10, float f10, double d10) {
        super(i10, f10);
        this.f89505u = new a();
        this.f89507w = d10;
    }

    public C13353x(InterfaceC13081w<? extends V> interfaceC13081w) {
        this(interfaceC13081w.size(), 0.5f, interfaceC13081w.l());
        r7(interfaceC13081w);
    }
}
