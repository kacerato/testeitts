package cb;

import Li.Z;
import com.itsmagic.engine.Engines.Engine.NubsPathBezier.FromGDX.GdxRuntimeException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.eclipse.jdt.internal.core.JavaElement;

public class m<T> implements Iterable<T> {

    public int f34651b;

    public T[] f34652c;

    public float f34653d;

    public int f34654e;

    public int f34655f;

    public int f34656g;

    public transient a f34657h;

    public transient a f34658i;

    public static class a<K> implements Iterable<K>, Iterator<K> {

        public boolean f34659b;

        public final m<K> f34660c;

        public int f34661d;

        public int f34662e;

        public boolean f34663f = true;

        public a(m<K> set) {
            this.f34660c = set;
            d();
        }

        public final void a() {
            int i10;
            K[] kArr = this.f34660c.f34652c;
            int length = kArr.length;
            do {
                i10 = this.f34661d + 1;
                this.f34661d = i10;
                if (i10 >= length) {
                    this.f34659b = false;
                    return;
                }
            } while (kArr[i10] == null);
            this.f34659b = true;
        }

        @Override
        public a<K> iterator() {
            return this;
        }

        public void d() {
            this.f34662e = -1;
            this.f34661d = -1;
            a();
        }

        public b<K> g() {
            return h(new b<>(true, this.f34660c.f34651b));
        }

        public b<K> h(b<K> array) {
            while (this.f34659b) {
                array.c(next());
            }
            return array;
        }

        @Override
        public boolean hasNext() {
            if (this.f34663f) {
                return this.f34659b;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        @Override
        public K next() {
            if (!this.f34659b) {
                throw new NoSuchElementException();
            }
            if (!this.f34663f) {
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            K[] kArr = this.f34660c.f34652c;
            int i10 = this.f34661d;
            K k10 = kArr[i10];
            this.f34662e = i10;
            a();
            return k10;
        }

        @Override
        public void remove() {
            int i10 = this.f34662e;
            if (i10 < 0) {
                throw new IllegalStateException("next must be called before remove.");
            }
            m<K> mVar = this.f34660c;
            K[] kArr = mVar.f34652c;
            int i11 = mVar.f34656g;
            int i12 = i10 + 1;
            while (true) {
                int i13 = i12 & i11;
                K k10 = kArr[i13];
                if (k10 == null) {
                    break;
                }
                int p10 = this.f34660c.p(k10);
                if (((i13 - p10) & i11) > ((i10 - p10) & i11)) {
                    kArr[i10] = k10;
                    i10 = i13;
                }
                i12 = i13 + 1;
            }
            kArr[i10] = null;
            m<K> mVar2 = this.f34660c;
            mVar2.f34651b--;
            if (i10 != this.f34662e) {
                this.f34661d--;
            }
            this.f34662e = -1;
        }
    }

    public m() {
        this(51, 0.8f);
    }

    public static int t(int capacity, float loadFactor) {
        if (capacity < 0) {
            throw new IllegalArgumentException("capacity must be >= 0: " + capacity);
        }
        int B10 = h.B(Math.max(2, (int) Math.ceil(capacity / loadFactor)));
        if (B10 <= 1073741824) {
            return B10;
        }
        throw new IllegalArgumentException("The required capacity is too large: " + capacity);
    }

    public static <T> m<T> v(T... array) {
        m<T> mVar = new m<>();
        mVar.d(array);
        return mVar;
    }

    public void a(b<? extends T> array) {
        e(array.f34501b, 0, array.f34502c);
    }

    public boolean add(T key) {
        int n10 = n(key);
        if (n10 >= 0) {
            return false;
        }
        T[] tArr = this.f34652c;
        tArr[-(n10 + 1)] = key;
        int i10 = this.f34651b + 1;
        this.f34651b = i10;
        if (i10 >= this.f34654e) {
            r(tArr.length << 1);
        }
        return true;
    }

    public void b(b<? extends T> array, int offset, int length) {
        if (offset + length <= array.f34502c) {
            e(array.f34501b, offset, length);
            return;
        }
        throw new IllegalArgumentException("offset + length must be <= size: " + offset + " + " + length + " <= " + array.f34502c);
    }

    public void c(m<T> set) {
        k(set.f34651b);
        for (T t10 : set.f34652c) {
            if (t10 != null) {
                add(t10);
            }
        }
    }

    public void clear() {
        if (this.f34651b == 0) {
            return;
        }
        this.f34651b = 0;
        Arrays.fill(this.f34652c, (Object) null);
    }

    public boolean contains(T key) {
        return n(key) >= 0;
    }

    public boolean d(T... array) {
        return e(array, 0, array.length);
    }

    public boolean e(T[] array, int offset, int length) {
        k(length);
        int i10 = this.f34651b;
        int i11 = length + offset;
        while (offset < i11) {
            add(array[offset]);
            offset++;
        }
        return i10 != this.f34651b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        if (mVar.f34651b != this.f34651b) {
            return false;
        }
        for (T t10 : this.f34652c) {
            if (t10 != null && !mVar.contains(t10)) {
                return false;
            }
        }
        return true;
    }

    public final void f(T key) {
        T[] tArr = this.f34652c;
        int p10 = p(key);
        while (tArr[p10] != null) {
            p10 = (p10 + 1) & this.f34656g;
        }
        tArr[p10] = key;
    }

    public T first() {
        for (T t10 : this.f34652c) {
            if (t10 != null) {
                return t10;
            }
        }
        throw new IllegalStateException("ObjectSet is empty.");
    }

    public int hashCode() {
        int i10 = this.f34651b;
        for (T t10 : this.f34652c) {
            if (t10 != null) {
                i10 += t10.hashCode();
            }
        }
        return i10;
    }

    public boolean isEmpty() {
        return this.f34651b == 0;
    }

    public void j(int maximumCapacity) {
        int t10 = t(maximumCapacity, this.f34653d);
        if (this.f34652c.length <= t10) {
            clear();
        } else {
            this.f34651b = 0;
            r(t10);
        }
    }

    public void k(int additionalCapacity) {
        int t10 = t(this.f34651b + additionalCapacity, this.f34653d);
        if (this.f34652c.length < t10) {
            r(t10);
        }
    }

    @j
    public T l(T key) {
        int n10 = n(key);
        if (n10 < 0) {
            return null;
        }
        return this.f34652c[n10];
    }

    @Override
    public a<T> iterator() {
        if (e.f34523a) {
            return new a<>(this);
        }
        if (this.f34657h == null) {
            this.f34657h = new a(this);
            this.f34658i = new a(this);
        }
        a aVar = this.f34657h;
        if (aVar.f34663f) {
            this.f34658i.d();
            a<T> aVar2 = this.f34658i;
            aVar2.f34663f = true;
            this.f34657h.f34663f = false;
            return aVar2;
        }
        aVar.d();
        a<T> aVar3 = this.f34657h;
        aVar3.f34663f = true;
        this.f34658i.f34663f = false;
        return aVar3;
    }

    public int n(T key) {
        if (key == null) {
            throw new IllegalArgumentException("key cannot be null.");
        }
        T[] tArr = this.f34652c;
        int p10 = p(key);
        while (true) {
            T t10 = tArr[p10];
            if (t10 == null) {
                return -(p10 + 1);
            }
            if (t10.equals(key)) {
                return p10;
            }
            p10 = (p10 + 1) & this.f34656g;
        }
    }

    public boolean o() {
        return this.f34651b > 0;
    }

    public int p(T item) {
        return (int) ((item.hashCode() * Z.f13808g) >>> this.f34655f);
    }

    public final void r(int i10) {
        int length = this.f34652c.length;
        this.f34654e = (int) (i10 * this.f34653d);
        int i11 = i10 - 1;
        this.f34656g = i11;
        this.f34655f = Long.numberOfLeadingZeros(i11);
        T[] tArr = this.f34652c;
        this.f34652c = (T[]) new Object[i10];
        if (this.f34651b > 0) {
            for (int i12 = 0; i12 < length; i12++) {
                T t10 = tArr[i12];
                if (t10 != null) {
                    f(t10);
                }
            }
        }
    }

    public boolean remove(T key) {
        int n10 = n(key);
        if (n10 < 0) {
            return false;
        }
        T[] tArr = this.f34652c;
        int i10 = this.f34656g;
        int i11 = n10 + 1;
        while (true) {
            int i12 = i11 & i10;
            T t10 = tArr[i12];
            if (t10 == null) {
                tArr[n10] = null;
                this.f34651b--;
                return true;
            }
            int p10 = p(t10);
            if (((i12 - p10) & i10) > ((n10 - p10) & i10)) {
                tArr[n10] = t10;
                n10 = i12;
            }
            i11 = i12 + 1;
        }
    }

    public void s(int maximumCapacity) {
        if (maximumCapacity < 0) {
            throw new IllegalArgumentException("maximumCapacity must be >= 0: " + maximumCapacity);
        }
        int t10 = t(maximumCapacity, this.f34653d);
        if (this.f34652c.length > t10) {
            r(t10);
        }
    }

    public String toString() {
        return JavaElement.JEM_COMPILATIONUNIT + u(", ") + JavaElement.JEM_ANNOTATION;
    }

    public String u(String separator) {
        int i10;
        if (this.f34651b == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder(32);
        Object[] objArr = this.f34652c;
        int length = objArr.length;
        while (true) {
            i10 = length - 1;
            if (length <= 0) {
                break;
            }
            Object obj = objArr[i10];
            if (obj == null) {
                length = i10;
            } else {
                if (obj == this) {
                    obj = "(this)";
                }
                sb2.append(obj);
            }
        }
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return sb2.toString();
            }
            Object obj2 = objArr[i11];
            if (obj2 != null) {
                sb2.append(separator);
                if (obj2 == this) {
                    obj2 = "(this)";
                }
                sb2.append(obj2);
            }
            i10 = i11;
        }
    }

    public m(int initialCapacity) {
        this(initialCapacity, 0.8f);
    }

    public m(int i10, float f10) {
        if (f10 > 0.0f && f10 < 1.0f) {
            this.f34653d = f10;
            int t10 = t(i10, f10);
            this.f34654e = (int) (t10 * f10);
            int i11 = t10 - 1;
            this.f34656g = i11;
            this.f34655f = Long.numberOfLeadingZeros(i11);
            this.f34652c = (T[]) new Object[t10];
            return;
        }
        throw new IllegalArgumentException("loadFactor must be > 0 and < 1: " + f10);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public m(m<? extends T> set) {
        this((int) (r0 * r1), r1);
        float length = set.f34652c.length;
        float f10 = set.f34653d;
        Object[] objArr = set.f34652c;
        System.arraycopy(objArr, 0, this.f34652c, 0, objArr.length);
        this.f34651b = set.f34651b;
    }
}
