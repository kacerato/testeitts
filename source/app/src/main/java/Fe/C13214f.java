package fe;

import Sd.h;
import Wd.AbstractC3174q;
import Wd.H;
import Zd.k0;
import ae.C3602a;
import ee.d0;
import he.b0;
import he.i0;
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

public class C13214f<K> extends AbstractC3174q<K> implements d0<K>, Externalizable {

    public static final long f86327v = 1;

    public final i0<K> f86328s;

    public transient long[] f86329t;

    public long f86330u;

    public class a implements i0<K> {
        public a() {
        }

        @Override
        public boolean a(K k10, long j10) {
            C13214f.this.ba(k10, j10);
            return true;
        }
    }

    public class b implements i0<K> {

        public boolean f86332a = true;

        public final StringBuilder f86333b;

        public b(StringBuilder sb2) {
            this.f86333b = sb2;
        }

        @Override
        public boolean a(K k10, long j10) {
            if (this.f86332a) {
                this.f86332a = false;
            } else {
                this.f86333b.append(DocLint.SEPARATOR);
            }
            StringBuilder sb2 = this.f86333b;
            sb2.append((Object) k10);
            sb2.append("=");
            sb2.append(j10);
            return true;
        }
    }

    public class c extends C13214f<K>.d<K> {
        public c() {
            super(C13214f.this, null);
        }

        @Override
        public boolean c(K k10) {
            return C13214f.this.contains(k10);
        }

        @Override
        public boolean d(K k10) {
            C13214f c13214f = C13214f.this;
            return c13214f.f86330u != c13214f.remove(k10);
        }

        @Override
        public Iterator<K> iterator() {
            return new C3602a(C13214f.this);
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
            C13214f.this.clear();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean contains(Object obj) {
            return c(obj);
        }

        public abstract boolean d(E e10);

        @Override
        public boolean isEmpty() {
            return C13214f.this.isEmpty();
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
            return C13214f.this.size();
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

        public d(C13214f c13214f, a aVar) {
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

    public class e implements h {

        public class a implements b0 {

            public boolean f86338a = true;

            public final StringBuilder f86339b;

            public a(StringBuilder sb2) {
                this.f86339b = sb2;
            }

            @Override
            public boolean a(long j10) {
                if (this.f86338a) {
                    this.f86338a = false;
                } else {
                    this.f86339b.append(", ");
                }
                this.f86339b.append(j10);
                return true;
            }
        }

        public class b implements Zd.b0 {

            public H f86341b;

            public int f86342c;

            public int f86343d;

            public b() {
                C13214f c13214f = C13214f.this;
                this.f86341b = c13214f;
                this.f86342c = c13214f.size();
                this.f86343d = this.f86341b.Ye();
            }

            public final void h() {
                int i10 = i();
                this.f86343d = i10;
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
                if (this.f86342c != this.f86341b.size()) {
                    throw new ConcurrentModificationException();
                }
                Object[] objArr = C13214f.this.f27557l;
                int i11 = this.f86343d;
                while (true) {
                    i10 = i11 - 1;
                    if (i11 <= 0 || !((obj = objArr[i10]) == Wd.b0.f27556p || obj == Wd.b0.f27555o)) {
                        break;
                    }
                    i11 = i10;
                }
                return i10;
            }

            @Override
            public long next() {
                h();
                return C13214f.this.f86329t[this.f86343d];
            }

            @Override
            public void remove() {
                if (this.f86342c != this.f86341b.size()) {
                    throw new ConcurrentModificationException();
                }
                try {
                    this.f86341b.kf();
                    C13214f.this.hf(this.f86343d);
                    this.f86341b.ff(false);
                    this.f86342c--;
                } catch (Throwable th2) {
                    this.f86341b.ff(false);
                    throw th2;
                }
            }
        }

        public e() {
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
        public boolean B2(h hVar) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean H1(h hVar) {
            Zd.b0 it = hVar.iterator();
            while (it.hasNext()) {
                if (!C13214f.this.R(it.next())) {
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
            return C13214f.this.g0(jArr);
        }

        @Override
        public boolean Q1(long[] jArr) {
            Arrays.sort(jArr);
            C13214f c13214f = C13214f.this;
            long[] jArr2 = c13214f.f86329t;
            Object[] objArr = c13214f.f27557l;
            int length = objArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                Object obj = objArr[i10];
                if (obj != Wd.b0.f27556p && obj != Wd.b0.f27555o && Arrays.binarySearch(jArr, jArr2[i10]) < 0) {
                    C13214f.this.hf(i10);
                    z10 = true;
                }
                length = i10;
            }
        }

        @Override
        public boolean U1(long[] jArr) {
            for (long j10 : jArr) {
                if (!C13214f.this.R(j10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean X0(long j10) {
            return C13214f.this.R(j10);
        }

        @Override
        public boolean addAll(Collection<? extends Long> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C13214f.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Long) {
                    if (!C13214f.this.R(((Long) obj).longValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean e(long j10) {
            C13214f c13214f = C13214f.this;
            long[] jArr = c13214f.f86329t;
            Object[] objArr = c13214f.f27557l;
            int length = jArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                Object obj = objArr[i10];
                if (obj != Wd.b0.f27556p && obj != Wd.b0.f27555o && j10 == jArr[i10]) {
                    C13214f.this.hf(i10);
                    return true;
                }
                length = i10;
            }
        }

        @Override
        public boolean f2(h hVar) {
            if (this == hVar) {
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
        public long i() {
            return C13214f.this.f86330u;
        }

        @Override
        public boolean isEmpty() {
            return C13214f.this.f27452b == 0;
        }

        @Override
        public Zd.b0 iterator() {
            return new b();
        }

        @Override
        public boolean j1(b0 b0Var) {
            return C13214f.this.x(b0Var);
        }

        @Override
        public boolean q1(h hVar) {
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
            return C13214f.this.f27452b;
        }

        @Override
        public long[] toArray() {
            return C13214f.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13214f.this.x(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean y2(long[] jArr) {
            throw new UnsupportedOperationException();
        }
    }

    public class C1612f<K> extends C3602a<K> implements k0<K> {

        public final C13214f<K> f86345g;

        public C1612f(C13214f<K> c13214f) {
            super(c13214f);
            this.f86345g = c13214f;
        }

        @Override
        public long d(long j10) {
            long value = value();
            this.f86345g.f86329t[this.f27462e] = j10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public K key() {
            return (K) this.f86345g.f27557l[this.f27462e];
        }

        @Override
        public long value() {
            return this.f86345g.f86329t[this.f27462e];
        }
    }

    public C13214f() {
        this.f86328s = new a();
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
            if (obj == Wd.b0.f27556p || obj == Wd.b0.f27555o) {
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
    public boolean G(he.k0<? super K> k0Var) {
        return rf(k0Var);
    }

    public final long Hf(long j10, int i10) {
        long j11 = this.f86330u;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            z10 = false;
            j11 = this.f86329t[i10];
        }
        this.f86329t[i10] = j10;
        if (z10) {
            ef(this.f27558m);
        }
        return j11;
    }

    @Override
    public long J6(K k10, long j10, long j11) {
        int wf2 = wf(k10);
        boolean z10 = true;
        if (wf2 < 0) {
            int i10 = (-wf2) - 1;
            long[] jArr = this.f86329t;
            long j12 = j10 + jArr[i10];
            jArr[i10] = j12;
            z10 = false;
            j11 = j12;
        } else {
            this.f86329t[wf2] = j11;
        }
        if (z10) {
            ef(this.f27558m);
        }
        return j11;
    }

    @Override
    public boolean R(long j10) {
        Object[] objArr = this.f27557l;
        long[] jArr = this.f86329t;
        int length = jArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return false;
            }
            Object obj = objArr[i10];
            if (obj != Wd.b0.f27556p && obj != Wd.b0.f27555o && j10 == jArr[i10]) {
                return true;
            }
            length = i10;
        }
    }

    @Override
    public void R2(d0<? extends K> d0Var) {
        d0Var.U7(this.f86328s);
    }

    @Override
    public boolean U7(i0<? super K> i0Var) {
        Object[] objArr = this.f27557l;
        long[] jArr = this.f86329t;
        int length = objArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            Object obj = objArr[i10];
            if (obj != Wd.b0.f27556p && obj != Wd.b0.f27555o && !i0Var.a(obj, jArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public long ba(K k10, long j10) {
        return Hf(j10, wf(k10));
    }

    @Override
    public void clear() {
        super.clear();
        Object[] objArr = this.f27557l;
        Arrays.fill(objArr, 0, objArr.length, Wd.b0.f27556p);
        long[] jArr = this.f86329t;
        Arrays.fill(jArr, 0, jArr.length, this.f86330u);
    }

    @Override
    public boolean containsKey(Object obj) {
        return contains(obj);
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof d0)) {
            return false;
        }
        d0 d0Var = (d0) obj;
        if (d0Var.size() != size()) {
            return false;
        }
        try {
            k0<K> it = iterator();
            while (it.hasNext()) {
                it.g();
                K key = it.key();
                long value = it.value();
                if (value == this.f86330u) {
                    if (d0Var.get(key) != d0Var.i() || !d0Var.containsKey(key)) {
                        return false;
                    }
                } else if (value != d0Var.get(key)) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException unused) {
            return true;
        }
    }

    @Override
    public long[] g0(long[] jArr) {
        int size = size();
        if (jArr.length < size) {
            jArr = new long[size];
        }
        long[] jArr2 = this.f86329t;
        Object[] objArr = this.f27557l;
        int length = jArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                break;
            }
            Object obj = objArr[i11];
            if (obj != Wd.b0.f27556p && obj != Wd.b0.f27555o) {
                jArr[i10] = jArr2[i11];
                i10++;
            }
            length = i11;
        }
        if (jArr.length > size) {
            jArr[size] = this.f86330u;
        }
        return jArr;
    }

    @Override
    public long g4(K k10, long j10) {
        int wf2 = wf(k10);
        return wf2 < 0 ? this.f86329t[(-wf2) - 1] : Hf(j10, wf2);
    }

    @Override
    public long get(Object obj) {
        int tf2 = tf(obj);
        return tf2 < 0 ? this.f86330u : this.f86329t[tf2];
    }

    @Override
    public void gf(int i10) {
        Object[] objArr = this.f27557l;
        int length = objArr.length;
        long[] jArr = this.f86329t;
        Object[] objArr2 = new Object[i10];
        this.f27557l = objArr2;
        Arrays.fill(objArr2, Wd.b0.f27556p);
        long[] jArr2 = new long[i10];
        this.f86329t = jArr2;
        Arrays.fill(jArr2, this.f86330u);
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            Object obj = objArr[i11];
            if (obj != Wd.b0.f27556p && obj != Wd.b0.f27555o) {
                int wf2 = wf(obj);
                if (wf2 < 0) {
                    Df(this.f27557l[(-wf2) - 1], obj);
                }
                this.f86329t[wf2] = jArr[i11];
            }
            length = i11;
        }
    }

    @Override
    public void h(Ud.f fVar) {
        Object[] objArr = this.f27557l;
        long[] jArr = this.f86329t;
        int length = jArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            Object obj = objArr[i10];
            if (obj != null && obj != Wd.b0.f27555o) {
                jArr[i10] = fVar.a(jArr[i10]);
            }
            length = i10;
        }
    }

    @Override
    public int hashCode() {
        Object[] objArr = this.f27557l;
        long[] jArr = this.f86329t;
        int length = jArr.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            Object obj = objArr[i11];
            if (obj != Wd.b0.f27556p && obj != Wd.b0.f27555o) {
                int e10 = Vd.b.e(jArr[i11]);
                Object obj2 = objArr[i11];
                i10 += e10 ^ (obj2 == null ? 0 : obj2.hashCode());
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f86329t[i10] = this.f86330u;
        super.hf(i10);
    }

    @Override
    public long i() {
        return this.f86330u;
    }

    @Override
    public k0<K> iterator() {
        return new C1612f(this);
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
            if (obj == Wd.b0.f27556p || obj == Wd.b0.f27555o) {
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
        this.f86329t = new long[jf2];
        return jf2;
    }

    @Override
    public h k() {
        return new e();
    }

    @Override
    public Set<K> keySet() {
        return new c();
    }

    @Override
    public void putAll(Map<? extends K, ? extends Long> map) {
        for (Map.Entry<? extends K, ? extends Long> entry : map.entrySet()) {
            ba(entry.getKey(), entry.getValue().longValue());
        }
    }

    @Override
    public boolean q5(K k10, long j10) {
        int tf2 = tf(k10);
        if (tf2 < 0) {
            return false;
        }
        long[] jArr = this.f86329t;
        jArr[tf2] = jArr[tf2] + j10;
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        super.readExternal(objectInput);
        this.f27672q = (InterfaceC14499a) objectInput.readObject();
        this.f86330u = objectInput.readLong();
        int readInt = objectInput.readInt();
        jf(readInt);
        while (true) {
            int i10 = readInt - 1;
            if (readInt <= 0) {
                return;
            }
            ba(objectInput.readObject(), objectInput.readLong());
            readInt = i10;
        }
    }

    @Override
    public long remove(Object obj) {
        long j10 = this.f86330u;
        int tf2 = tf(obj);
        if (tf2 < 0) {
            return j10;
        }
        long j11 = this.f86329t[tf2];
        hf(tf2);
        return j11;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        U7(new b(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public boolean u4(i0<? super K> i0Var) {
        Object[] objArr = this.f27557l;
        long[] jArr = this.f86329t;
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
                if (obj != Wd.b0.f27556p && obj != Wd.b0.f27555o && !i0Var.a(obj, jArr[i10])) {
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
    public long[] values() {
        long[] jArr = new long[size()];
        long[] jArr2 = this.f86329t;
        Object[] objArr = this.f27557l;
        int length = jArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return jArr;
            }
            Object obj = objArr[i11];
            if (obj != Wd.b0.f27556p && obj != Wd.b0.f27555o) {
                jArr[i10] = jArr2[i11];
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
        objectOutput.writeLong(this.f86330u);
        objectOutput.writeInt(this.f27452b);
        int length = this.f27557l.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            Object obj = this.f27557l[i10];
            if (obj != Wd.b0.f27555o && obj != Wd.b0.f27556p) {
                objectOutput.writeObject(obj);
                objectOutput.writeLong(this.f86329t[i10]);
            }
            length = i10;
        }
    }

    @Override
    public boolean x(b0 b0Var) {
        Object[] objArr = this.f27557l;
        long[] jArr = this.f86329t;
        int length = jArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            Object obj = objArr[i10];
            if (obj != Wd.b0.f27556p && obj != Wd.b0.f27555o && !b0Var.a(jArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean x0(K k10) {
        return q5(k10, 1L);
    }

    public C13214f(InterfaceC14499a<? super K> interfaceC14499a) {
        super(interfaceC14499a);
        this.f86328s = new a();
        this.f86330u = Vd.a.f26859h;
    }

    public C13214f(InterfaceC14499a<? super K> interfaceC14499a, int i10) {
        super(interfaceC14499a, i10);
        this.f86328s = new a();
        this.f86330u = Vd.a.f26859h;
    }

    public C13214f(InterfaceC14499a<? super K> interfaceC14499a, int i10, float f10) {
        super(interfaceC14499a, i10, f10);
        this.f86328s = new a();
        this.f86330u = Vd.a.f26859h;
    }

    public C13214f(InterfaceC14499a<? super K> interfaceC14499a, int i10, float f10, long j10) {
        super(interfaceC14499a, i10, f10);
        this.f86328s = new a();
        this.f86330u = j10;
        if (j10 != 0) {
            Arrays.fill(this.f86329t, j10);
        }
    }

    public C13214f(InterfaceC14499a<? super K> interfaceC14499a, d0<? extends K> d0Var) {
        this(interfaceC14499a, d0Var.size(), 0.5f, d0Var.i());
        if (d0Var instanceof C13214f) {
            C13214f c13214f = (C13214f) d0Var;
            this.f27454d = c13214f.f27454d;
            long j10 = c13214f.f86330u;
            this.f86330u = j10;
            this.f27672q = c13214f.f27672q;
            if (j10 != 0) {
                Arrays.fill(this.f86329t, j10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        R2(d0Var);
    }
}
