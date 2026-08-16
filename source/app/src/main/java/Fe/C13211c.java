package fe;

import Wd.AbstractC3174q;
import Wd.H;
import Wd.b0;
import Zd.InterfaceC3466y;
import Zd.h0;
import ae.C3602a;
import ee.a0;
import he.InterfaceC13470z;
import he.f0;
import he.k0;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.lang.reflect.Array;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import oe.InterfaceC14499a;
import org.apache.commons.math3.geometry.VectorFormat;
import org.openjdk.tools.doclint.DocLint;

public class C13211c<K> extends AbstractC3174q<K> implements a0<K>, Externalizable {

    public static final long f86267v = 1;

    public final f0<K> f86268s;

    public transient double[] f86269t;

    public double f86270u;

    public class a implements f0<K> {
        public a() {
        }

        @Override
        public boolean a(K k10, double d10) {
            C13211c.this.sa(k10, d10);
            return true;
        }
    }

    public class b implements f0<K> {

        public boolean f86272a = true;

        public final StringBuilder f86273b;

        public b(StringBuilder sb2) {
            this.f86273b = sb2;
        }

        @Override
        public boolean a(K k10, double d10) {
            if (this.f86272a) {
                this.f86272a = false;
            } else {
                this.f86273b.append(DocLint.SEPARATOR);
            }
            StringBuilder sb2 = this.f86273b;
            sb2.append((Object) k10);
            sb2.append("=");
            sb2.append(d10);
            return true;
        }
    }

    public class C1609c extends C13211c<K>.d<K> {
        public C1609c() {
            super(C13211c.this, null);
        }

        @Override
        public boolean c(K k10) {
            return C13211c.this.contains(k10);
        }

        @Override
        public boolean d(K k10) {
            C13211c c13211c = C13211c.this;
            return c13211c.f86270u != c13211c.remove(k10);
        }

        @Override
        public Iterator<K> iterator() {
            return new C3602a(C13211c.this);
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
            C13211c.this.clear();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean contains(Object obj) {
            return c(obj);
        }

        public abstract boolean d(E e10);

        @Override
        public boolean isEmpty() {
            return C13211c.this.isEmpty();
        }

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
            return C13211c.this.size();
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

        public d(C13211c c13211c, a aVar) {
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

    public class e implements Sd.e {

        public class a implements InterfaceC13470z {

            public boolean f86278a = true;

            public final StringBuilder f86279b;

            public a(StringBuilder sb2) {
                this.f86279b = sb2;
            }

            @Override
            public boolean a(double d10) {
                if (this.f86278a) {
                    this.f86278a = false;
                } else {
                    this.f86279b.append(", ");
                }
                this.f86279b.append(d10);
                return true;
            }
        }

        public class b implements InterfaceC3466y {

            public H f86281b;

            public int f86282c;

            public int f86283d;

            public b() {
                C13211c c13211c = C13211c.this;
                this.f86281b = c13211c;
                this.f86282c = c13211c.size();
                this.f86283d = this.f86281b.Ye();
            }

            public final void h() {
                int i10 = i();
                this.f86283d = i10;
                if (i10 < 0) {
                    throw new NoSuchElementException();
                }
            }

            @Override
            public boolean hasNext() {
                return i() >= 0;
            }

            public final int i() {
                int i10;
                Object obj;
                if (this.f86282c != this.f86281b.size()) {
                    throw new ConcurrentModificationException();
                }
                Object[] objArr = C13211c.this.f27557l;
                int i11 = this.f86283d;
                while (true) {
                    i10 = i11 - 1;
                    if (i11 <= 0 || !((obj = objArr[i10]) == b0.f27556p || obj == b0.f27555o)) {
                        break;
                    }
                    i11 = i10;
                }
                return i10;
            }

            @Override
            public double next() {
                h();
                return C13211c.this.f86269t[this.f86283d];
            }

            @Override
            public void remove() {
                if (this.f86282c != this.f86281b.size()) {
                    throw new ConcurrentModificationException();
                }
                try {
                    this.f86281b.kf();
                    C13211c.this.hf(this.f86283d);
                    this.f86281b.ff(false);
                    this.f86282c--;
                } catch (Throwable th2) {
                    this.f86281b.ff(false);
                    throw th2;
                }
            }
        }

        public e() {
        }

        @Override
        public boolean C1(Sd.e eVar) {
            if (this == eVar) {
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
            InterfaceC3466y it = eVar.iterator();
            while (it.hasNext()) {
                if (!C13211c.this.T(it.next())) {
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
            return C13211c.this.T(d10);
        }

        @Override
        public boolean Y1(double[] dArr) {
            Arrays.sort(dArr);
            C13211c c13211c = C13211c.this;
            double[] dArr2 = c13211c.f86269t;
            Object[] objArr = c13211c.f27557l;
            int length = objArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                Object obj = objArr[i10];
                if (obj != b0.f27556p && obj != b0.f27555o && Arrays.binarySearch(dArr, dArr2[i10]) < 0) {
                    C13211c.this.hf(i10);
                    z10 = true;
                }
                length = i10;
            }
        }

        @Override
        public boolean a(double d10) {
            C13211c c13211c = C13211c.this;
            double[] dArr = c13211c.f86269t;
            Object[] objArr = c13211c.f27557l;
            int length = dArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                Object obj = objArr[i10];
                if (obj != b0.f27556p && obj != b0.f27555o && d10 == dArr[i10]) {
                    C13211c.this.hf(i10);
                    return true;
                }
                length = i10;
            }
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
            C13211c.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Double) {
                    if (!C13211c.this.T(((Double) obj).doubleValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public double i() {
            return C13211c.this.f86270u;
        }

        @Override
        public boolean i1(InterfaceC13470z interfaceC13470z) {
            return C13211c.this.I(interfaceC13470z);
        }

        @Override
        public boolean isEmpty() {
            return C13211c.this.f27452b == 0;
        }

        @Override
        public InterfaceC3466y iterator() {
            return new b();
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
                if (!C13211c.this.T(d10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int size() {
            return C13211c.this.f27452b;
        }

        @Override
        public double[] toArray() {
            return C13211c.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13211c.this.I(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
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
            return C13211c.this.b0(dArr);
        }
    }

    public class f<K> extends C3602a<K> implements h0<K> {

        public final C13211c<K> f86285g;

        public f(C13211c<K> c13211c) {
            super(c13211c);
            this.f86285g = c13211c;
        }

        @Override
        public double f(double d10) {
            double value = value();
            this.f86285g.f86269t[this.f27462e] = d10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public K key() {
            return (K) this.f86285g.f27557l[this.f27462e];
        }

        @Override
        public double value() {
            return this.f86285g.f86269t[this.f27462e];
        }
    }

    public C13211c() {
        this.f86268s = new a();
    }

    @Override
    public K[] C0(K[] kArr) {
        int size = size();
        if (kArr.length < size) {
            kArr = (K[]) ((Object[]) Array.newInstance(kArr.getClass().getComponentType(), size));
        }
        Object[] objArr = this.f27557l;
        int length = objArr.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return kArr;
            }
            Object obj = objArr[i11];
            if (obj == b0.f27556p || obj == b0.f27555o) {
                length = i11;
            } else {
                kArr[i10] = obj;
                length = i11;
                i10++;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean G(k0<? super K> k0Var) {
        return rf(k0Var);
    }

    public final double Hf(double d10, int i10) {
        double d11 = this.f86270u;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            z10 = false;
            d11 = this.f86269t[i10];
        }
        this.f86269t[i10] = d10;
        if (z10) {
            ef(this.f27558m);
        }
        return d11;
    }

    @Override
    public boolean I(InterfaceC13470z interfaceC13470z) {
        Object[] objArr = this.f27557l;
        double[] dArr = this.f86269t;
        int length = dArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            Object obj = objArr[i10];
            if (obj != b0.f27556p && obj != b0.f27555o && !interfaceC13470z.a(dArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public double La(K k10, double d10, double d11) {
        int wf2 = wf(k10);
        boolean z10 = true;
        if (wf2 < 0) {
            int i10 = (-wf2) - 1;
            double[] dArr = this.f86269t;
            double d12 = d10 + dArr[i10];
            dArr[i10] = d12;
            z10 = false;
            d11 = d12;
        } else {
            this.f86269t[wf2] = d11;
        }
        if (z10) {
            ef(this.f27558m);
        }
        return d11;
    }

    @Override
    public boolean Pd(f0<? super K> f0Var) {
        Object[] objArr = this.f27557l;
        double[] dArr = this.f86269t;
        kf();
        try {
            int length = objArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                Object obj = objArr[i10];
                if (obj != b0.f27556p && obj != b0.f27555o && !f0Var.a(obj, dArr[i10])) {
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
    public boolean T(double d10) {
        Object[] objArr = this.f27557l;
        double[] dArr = this.f86269t;
        int length = dArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return false;
            }
            Object obj = objArr[i10];
            if (obj != b0.f27556p && obj != b0.f27555o && d10 == dArr[i10]) {
                return true;
            }
            length = i10;
        }
    }

    @Override
    public void Z6(a0<? extends K> a0Var) {
        a0Var.f8(this.f86268s);
    }

    @Override
    public double[] b0(double[] dArr) {
        int size = size();
        if (dArr.length < size) {
            dArr = new double[size];
        }
        double[] dArr2 = this.f86269t;
        Object[] objArr = this.f27557l;
        int length = dArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                break;
            }
            Object obj = objArr[i11];
            if (obj != b0.f27556p && obj != b0.f27555o) {
                dArr[i10] = dArr2[i11];
                i10++;
            }
            length = i11;
        }
        if (dArr.length > size) {
            dArr[size] = this.f86270u;
        }
        return dArr;
    }

    @Override
    public void clear() {
        super.clear();
        Object[] objArr = this.f27557l;
        Arrays.fill(objArr, 0, objArr.length, b0.f27556p);
        double[] dArr = this.f86269t;
        Arrays.fill(dArr, 0, dArr.length, this.f86270u);
    }

    @Override
    public boolean containsKey(Object obj) {
        return contains(obj);
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof a0)) {
            return false;
        }
        a0 a0Var = (a0) obj;
        if (a0Var.size() != size()) {
            return false;
        }
        try {
            h0<K> it = iterator();
            while (it.hasNext()) {
                it.g();
                K key = it.key();
                double value = it.value();
                if (value == this.f86270u) {
                    if (a0Var.get(key) != a0Var.i() || !a0Var.containsKey(key)) {
                        return false;
                    }
                } else if (value != a0Var.get(key)) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException unused) {
            return true;
        }
    }

    @Override
    public boolean f8(f0<? super K> f0Var) {
        Object[] objArr = this.f27557l;
        double[] dArr = this.f86269t;
        int length = objArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            Object obj = objArr[i10];
            if (obj != b0.f27556p && obj != b0.f27555o && !f0Var.a(obj, dArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public double get(Object obj) {
        int tf2 = tf(obj);
        return tf2 < 0 ? this.f86270u : this.f86269t[tf2];
    }

    @Override
    public void gf(int i10) {
        Object[] objArr = this.f27557l;
        int length = objArr.length;
        double[] dArr = this.f86269t;
        Object[] objArr2 = new Object[i10];
        this.f27557l = objArr2;
        Arrays.fill(objArr2, b0.f27556p);
        double[] dArr2 = new double[i10];
        this.f86269t = dArr2;
        Arrays.fill(dArr2, this.f86270u);
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            Object obj = objArr[i11];
            if (obj != b0.f27556p && obj != b0.f27555o) {
                int wf2 = wf(obj);
                if (wf2 < 0) {
                    Df(this.f27557l[(-wf2) - 1], obj);
                }
                this.f86269t[wf2] = dArr[i11];
            }
            length = i11;
        }
    }

    @Override
    public int hashCode() {
        Object[] objArr = this.f27557l;
        double[] dArr = this.f86269t;
        int length = dArr.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            Object obj = objArr[i11];
            if (obj != b0.f27556p && obj != b0.f27555o) {
                int b10 = Vd.b.b(dArr[i11]);
                Object obj2 = objArr[i11];
                i10 += b10 ^ (obj2 == null ? 0 : obj2.hashCode());
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f86269t[i10] = this.f86270u;
        super.hf(i10);
    }

    @Override
    public double i() {
        return this.f86270u;
    }

    @Override
    public double i4(K k10, double d10) {
        int wf2 = wf(k10);
        return wf2 < 0 ? this.f86269t[(-wf2) - 1] : Hf(d10, wf2);
    }

    @Override
    public boolean i5(K k10, double d10) {
        int tf2 = tf(k10);
        if (tf2 < 0) {
            return false;
        }
        double[] dArr = this.f86269t;
        dArr[tf2] = dArr[tf2] + d10;
        return true;
    }

    @Override
    public h0<K> iterator() {
        return new f(this);
    }

    @Override
    public Object[] j() {
        Object[] objArr = new Object[size()];
        Object[] objArr2 = this.f27557l;
        int length = objArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return objArr;
            }
            Object obj = objArr2[i11];
            if (obj == b0.f27556p || obj == b0.f27555o) {
                length = i11;
            } else {
                objArr[i10] = obj;
                length = i11;
                i10++;
            }
        }
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f86269t = new double[jf2];
        return jf2;
    }

    @Override
    public Sd.e k() {
        return new e();
    }

    @Override
    public Set<K> keySet() {
        return new C1609c();
    }

    @Override
    public void p(Ud.c cVar) {
        Object[] objArr = this.f27557l;
        double[] dArr = this.f86269t;
        int length = dArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            Object obj = objArr[i10];
            if (obj != null && obj != b0.f27555o) {
                dArr[i10] = cVar.a(dArr[i10]);
            }
            length = i10;
        }
    }

    @Override
    public void putAll(Map<? extends K, ? extends Double> map) {
        for (Map.Entry<? extends K, ? extends Double> entry : map.entrySet()) {
            sa(entry.getKey(), entry.getValue().doubleValue());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        super.readExternal(objectInput);
        this.f27672q = (InterfaceC14499a) objectInput.readObject();
        this.f86270u = objectInput.readDouble();
        int readInt = objectInput.readInt();
        jf(readInt);
        while (true) {
            int i10 = readInt - 1;
            if (readInt <= 0) {
                return;
            }
            sa(objectInput.readObject(), objectInput.readDouble());
            readInt = i10;
        }
    }

    @Override
    public double remove(Object obj) {
        double d10 = this.f86270u;
        int tf2 = tf(obj);
        if (tf2 < 0) {
            return d10;
        }
        double d11 = this.f86269t[tf2];
        hf(tf2);
        return d11;
    }

    @Override
    public double sa(K k10, double d10) {
        return Hf(d10, wf(k10));
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        f8(new b(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public double[] values() {
        double[] dArr = new double[size()];
        double[] dArr2 = this.f86269t;
        Object[] objArr = this.f27557l;
        int length = dArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return dArr;
            }
            Object obj = objArr[i11];
            if (obj != b0.f27556p && obj != b0.f27555o) {
                dArr[i10] = dArr2[i11];
                i10++;
            }
            length = i11;
        }
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        super.writeExternal(objectOutput);
        objectOutput.writeObject(this.f27672q);
        objectOutput.writeDouble(this.f86270u);
        objectOutput.writeInt(this.f27452b);
        int length = this.f27557l.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            Object obj = this.f27557l[i10];
            if (obj != b0.f27555o && obj != b0.f27556p) {
                objectOutput.writeObject(obj);
                objectOutput.writeDouble(this.f86269t[i10]);
            }
            length = i10;
        }
    }

    @Override
    public boolean x0(K k10) {
        return i5(k10, 1.0d);
    }

    public C13211c(InterfaceC14499a<? super K> interfaceC14499a) {
        super(interfaceC14499a);
        this.f86268s = new a();
        this.f86270u = Vd.a.f26861j;
    }

    public C13211c(InterfaceC14499a<? super K> interfaceC14499a, int i10) {
        super(interfaceC14499a, i10);
        this.f86268s = new a();
        this.f86270u = Vd.a.f26861j;
    }

    public C13211c(InterfaceC14499a<? super K> interfaceC14499a, int i10, float f10) {
        super(interfaceC14499a, i10, f10);
        this.f86268s = new a();
        this.f86270u = Vd.a.f26861j;
    }

    public C13211c(InterfaceC14499a<? super K> interfaceC14499a, int i10, float f10, double d10) {
        super(interfaceC14499a, i10, f10);
        this.f86268s = new a();
        this.f86270u = d10;
        if (d10 != 0.0d) {
            Arrays.fill(this.f86269t, d10);
        }
    }

    public C13211c(InterfaceC14499a<? super K> interfaceC14499a, a0<? extends K> a0Var) {
        this(interfaceC14499a, a0Var.size(), 0.5f, a0Var.i());
        if (a0Var instanceof C13211c) {
            C13211c c13211c = (C13211c) a0Var;
            this.f27454d = c13211c.f27454d;
            double d10 = c13211c.f86270u;
            this.f86270u = d10;
            this.f27672q = c13211c.f27672q;
            if (d10 != 0.0d) {
                Arrays.fill(this.f86269t, d10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        Z6(a0Var);
    }
}
