package ge;

import ae.C3602a;
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
import org.apache.commons.math3.geometry.VectorFormat;
import org.openjdk.tools.doclint.DocLint;

public class e0<K> extends Wd.b0<K> implements ee.d0<K>, Externalizable {

    public static final long f89040t = 1;

    public final he.i0<K> f89041q;

    public transient long[] f89042r;

    public long f89043s;

    public class a implements he.i0<K> {
        public a() {
        }

        @Override
        public boolean a(K k10, long j10) {
            e0.this.ba(k10, j10);
            return true;
        }
    }

    public class b implements he.i0<K> {

        public boolean f89045a = true;

        public final StringBuilder f89046b;

        public b(StringBuilder sb2) {
            this.f89046b = sb2;
        }

        @Override
        public boolean a(K k10, long j10) {
            if (this.f89045a) {
                this.f89045a = false;
            } else {
                this.f89046b.append(DocLint.SEPARATOR);
            }
            StringBuilder sb2 = this.f89046b;
            sb2.append((Object) k10);
            sb2.append("=");
            sb2.append(j10);
            return true;
        }
    }

    public class c extends e0<K>.d<K> {
        public c() {
            super(e0.this, null);
        }

        @Override
        public boolean c(K k10) {
            return e0.this.contains(k10);
        }

        @Override
        public boolean d(K k10) {
            e0 e0Var = e0.this;
            return e0Var.f89043s != e0Var.remove(k10);
        }

        @Override
        public Iterator<K> iterator() {
            return new C3602a(e0.this);
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
            e0.this.clear();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean contains(Object obj) {
            return c(obj);
        }

        public abstract boolean d(E e10);

        @Override
        public boolean isEmpty() {
            return e0.this.isEmpty();
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
            return e0.this.size();
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

        public d(e0 e0Var, a aVar) {
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

    public class e implements Sd.h {

        public class a implements he.b0 {

            public boolean f89051a = true;

            public final StringBuilder f89052b;

            public a(StringBuilder sb2) {
                this.f89052b = sb2;
            }

            @Override
            public boolean a(long j10) {
                if (this.f89051a) {
                    this.f89051a = false;
                } else {
                    this.f89052b.append(", ");
                }
                this.f89052b.append(j10);
                return true;
            }
        }

        public class b implements Zd.b0 {

            public Wd.H f89054b;

            public int f89055c;

            public int f89056d;

            public b() {
                e0 e0Var = e0.this;
                this.f89054b = e0Var;
                this.f89055c = e0Var.size();
                this.f89056d = this.f89054b.Ye();
            }

            public final void h() {
                int i10 = i();
                this.f89056d = i10;
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
                if (this.f89055c != this.f89054b.size()) {
                    throw new ConcurrentModificationException();
                }
                Object[] objArr = e0.this.f27557l;
                int i11 = this.f89056d;
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
                return e0.this.f89042r[this.f89056d];
            }

            @Override
            public void remove() {
                if (this.f89055c != this.f89054b.size()) {
                    throw new ConcurrentModificationException();
                }
                try {
                    this.f89054b.kf();
                    e0.this.hf(this.f89056d);
                    this.f89054b.ff(false);
                    this.f89055c--;
                } catch (Throwable th2) {
                    this.f89054b.ff(false);
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
        public boolean B2(Sd.h hVar) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean H1(Sd.h hVar) {
            Zd.b0 it = hVar.iterator();
            while (it.hasNext()) {
                if (!e0.this.R(it.next())) {
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
            return e0.this.g0(jArr);
        }

        @Override
        public boolean Q1(long[] jArr) {
            Arrays.sort(jArr);
            e0 e0Var = e0.this;
            long[] jArr2 = e0Var.f89042r;
            Object[] objArr = e0Var.f27557l;
            int length = objArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                Object obj = objArr[i10];
                if (obj != Wd.b0.f27556p && obj != Wd.b0.f27555o && Arrays.binarySearch(jArr, jArr2[i10]) < 0) {
                    e0.this.hf(i10);
                    z10 = true;
                }
                length = i10;
            }
        }

        @Override
        public boolean U1(long[] jArr) {
            for (long j10 : jArr) {
                if (!e0.this.R(j10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean X0(long j10) {
            return e0.this.R(j10);
        }

        @Override
        public boolean addAll(Collection<? extends Long> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            e0.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Long) {
                    if (!e0.this.R(((Long) obj).longValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean e(long j10) {
            e0 e0Var = e0.this;
            long[] jArr = e0Var.f89042r;
            Object[] objArr = e0Var.f27557l;
            int length = jArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                Object obj = objArr[i10];
                if (obj != Wd.b0.f27556p && obj != Wd.b0.f27555o && j10 == jArr[i10]) {
                    e0.this.hf(i10);
                    return true;
                }
                length = i10;
            }
        }

        @Override
        public boolean f2(Sd.h hVar) {
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
            return e0.this.f89043s;
        }

        @Override
        public boolean isEmpty() {
            return e0.this.f27452b == 0;
        }

        @Override
        public Zd.b0 iterator() {
            return new b();
        }

        @Override
        public boolean j1(he.b0 b0Var) {
            return e0.this.x(b0Var);
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
            return e0.this.f27452b;
        }

        @Override
        public long[] toArray() {
            return e0.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            e0.this.x(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean y2(long[] jArr) {
            throw new UnsupportedOperationException();
        }
    }

    public class f<K> extends C3602a<K> implements Zd.k0<K> {

        public final e0<K> f89058g;

        public f(e0<K> e0Var) {
            super(e0Var);
            this.f89058g = e0Var;
        }

        @Override
        public long d(long j10) {
            long value = value();
            this.f89058g.f89042r[this.f27462e] = j10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public K key() {
            return (K) this.f89058g.f27557l[this.f27462e];
        }

        @Override
        public long value() {
            return this.f89058g.f89042r[this.f27462e];
        }
    }

    public e0() {
        this.f89041q = new a();
        this.f89043s = Vd.a.f26859h;
    }

    private long Hf(long j10, int i10) {
        long j11 = this.f89043s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            z10 = false;
            j11 = this.f89042r[i10];
        }
        this.f89042r[i10] = j10;
        if (z10) {
            ef(this.f27558m);
        }
        return j11;
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

    @Override
    public long J6(K k10, long j10, long j11) {
        int wf2 = wf(k10);
        boolean z10 = true;
        if (wf2 < 0) {
            int i10 = (-wf2) - 1;
            long[] jArr = this.f89042r;
            long j12 = j10 + jArr[i10];
            jArr[i10] = j12;
            z10 = false;
            j11 = j12;
        } else {
            this.f89042r[wf2] = j11;
        }
        if (z10) {
            ef(this.f27558m);
        }
        return j11;
    }

    @Override
    public boolean R(long j10) {
        Object[] objArr = this.f27557l;
        long[] jArr = this.f89042r;
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
    public void R2(ee.d0<? extends K> d0Var) {
        d0Var.U7(this.f89041q);
    }

    @Override
    public boolean U7(he.i0<? super K> i0Var) {
        Object[] objArr = this.f27557l;
        long[] jArr = this.f89042r;
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
        long[] jArr = this.f89042r;
        Arrays.fill(jArr, 0, jArr.length, this.f89043s);
    }

    @Override
    public boolean containsKey(Object obj) {
        return contains(obj);
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof ee.d0)) {
            return false;
        }
        ee.d0 d0Var = (ee.d0) obj;
        if (d0Var.size() != size()) {
            return false;
        }
        try {
            Zd.k0<K> it = iterator();
            while (it.hasNext()) {
                it.g();
                K key = it.key();
                long value = it.value();
                if (value == this.f89043s) {
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
        long[] jArr2 = this.f89042r;
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
            jArr[size] = this.f89043s;
        }
        return jArr;
    }

    @Override
    public long g4(K k10, long j10) {
        int wf2 = wf(k10);
        return wf2 < 0 ? this.f89042r[(-wf2) - 1] : Hf(j10, wf2);
    }

    @Override
    public long get(Object obj) {
        int tf2 = tf(obj);
        return tf2 < 0 ? this.f89043s : this.f89042r[tf2];
    }

    @Override
    public void gf(int i10) {
        Object[] objArr = this.f27557l;
        int length = objArr.length;
        long[] jArr = this.f89042r;
        Object[] objArr2 = new Object[i10];
        this.f27557l = objArr2;
        Arrays.fill(objArr2, Wd.b0.f27556p);
        long[] jArr2 = new long[i10];
        this.f89042r = jArr2;
        Arrays.fill(jArr2, this.f89043s);
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
                this.f27557l[wf2] = obj;
                this.f89042r[wf2] = jArr[i11];
            }
            length = i11;
        }
    }

    @Override
    public void h(Ud.f fVar) {
        Object[] objArr = this.f27557l;
        long[] jArr = this.f89042r;
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
        long[] jArr = this.f89042r;
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
        this.f89042r[i10] = this.f89043s;
        super.hf(i10);
    }

    @Override
    public long i() {
        return this.f89043s;
    }

    @Override
    public Zd.k0<K> iterator() {
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
        this.f89042r = new long[jf2];
        return jf2;
    }

    @Override
    public Sd.h k() {
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
        long[] jArr = this.f89042r;
        jArr[tf2] = jArr[tf2] + j10;
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        super.readExternal(objectInput);
        this.f89043s = objectInput.readLong();
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
        long j10 = this.f89043s;
        int tf2 = tf(obj);
        if (tf2 < 0) {
            return j10;
        }
        long j11 = this.f89042r[tf2];
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
    public boolean u4(he.i0<? super K> i0Var) {
        Object[] objArr = this.f27557l;
        long[] jArr = this.f89042r;
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
        long[] jArr2 = this.f89042r;
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
        objectOutput.writeLong(this.f89043s);
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
                objectOutput.writeLong(this.f89042r[i10]);
            }
            length = i10;
        }
    }

    @Override
    public boolean x(he.b0 b0Var) {
        Object[] objArr = this.f27557l;
        long[] jArr = this.f89042r;
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

    public e0(int i10) {
        super(i10);
        this.f89041q = new a();
        this.f89043s = Vd.a.f26859h;
    }

    public e0(int i10, float f10) {
        super(i10, f10);
        this.f89041q = new a();
        this.f89043s = Vd.a.f26859h;
    }

    public e0(int i10, float f10, long j10) {
        super(i10, f10);
        this.f89041q = new a();
        this.f89043s = j10;
        if (j10 != 0) {
            Arrays.fill(this.f89042r, j10);
        }
    }

    public e0(ee.d0<? extends K> d0Var) {
        this(d0Var.size(), 0.5f, d0Var.i());
        if (d0Var instanceof e0) {
            e0 e0Var = (e0) d0Var;
            this.f27454d = e0Var.f27454d;
            long j10 = e0Var.f89043s;
            this.f89043s = j10;
            if (j10 != 0) {
                Arrays.fill(this.f89042r, j10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        R2(d0Var);
    }
}
