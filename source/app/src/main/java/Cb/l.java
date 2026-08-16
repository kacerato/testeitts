package cb;

import Li.Z;
import com.itsmagic.engine.Engines.Engine.NubsPathBezier.FromGDX.GdxRuntimeException;
import com.tonyodev.fetch2.util.FetchDefaults;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.eclipse.jdt.internal.core.JavaElement;

public class l<K, V> implements Iterable<b<K, V>> {

    public static final Object f34629o = new Object();

    public int f34630b;

    public K[] f34631c;

    public V[] f34632d;

    public float f34633e;

    public int f34634f;

    public int f34635g;

    public int f34636h;

    public transient a f34637i;

    public transient a f34638j;

    public transient e f34639k;

    public transient e f34640l;

    public transient c f34641m;

    public transient c f34642n;

    public static class a<K, V> extends d<K, V, b<K, V>> {

        public b<K, V> f34643g;

        public a(l<K, V> map) {
            super(map);
            this.f34643g = new b<>();
        }

        @Override
        public void b() {
            super.b();
        }

        @Override
        public a<K, V> iterator() {
            return this;
        }

        @Override
        public b<K, V> next() {
            if (!this.f34646b) {
                throw new NoSuchElementException();
            }
            if (!this.f34650f) {
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            l<K, V> lVar = this.f34647c;
            K[] kArr = lVar.f34631c;
            b<K, V> bVar = this.f34643g;
            int i10 = this.f34648d;
            bVar.f34644a = kArr[i10];
            bVar.f34645b = lVar.f34632d[i10];
            this.f34649e = i10;
            a();
            return this.f34643g;
        }

        @Override
        public boolean hasNext() {
            if (this.f34650f) {
                return this.f34646b;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        @Override
        public void remove() {
            super.remove();
        }
    }

    public static class b<K, V> {

        public K f34644a;

        @j
        public V f34645b;

        public String toString() {
            return ((Object) this.f34644a) + "=" + ((Object) this.f34645b);
        }
    }

    public static class c<K> extends d<K, Object, K> {
        public c(l<K, ?> map) {
            super(map);
        }

        @Override
        public void b() {
            super.b();
        }

        @Override
        public c<K> iterator() {
            return this;
        }

        public cb.b<K> g() {
            return h(new cb.b<>(true, this.f34647c.f34630b));
        }

        public cb.b<K> h(cb.b<K> array) {
            while (this.f34646b) {
                array.c(next());
            }
            return array;
        }

        @Override
        public boolean hasNext() {
            if (this.f34650f) {
                return this.f34646b;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        @Override
        public K next() {
            if (!this.f34646b) {
                throw new NoSuchElementException();
            }
            if (!this.f34650f) {
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            K[] kArr = this.f34647c.f34631c;
            int i10 = this.f34648d;
            K k10 = kArr[i10];
            this.f34649e = i10;
            a();
            return k10;
        }

        @Override
        public void remove() {
            super.remove();
        }
    }

    public static abstract class d<K, V, I> implements Iterable<I>, Iterator<I> {

        public boolean f34646b;

        public final l<K, V> f34647c;

        public int f34648d;

        public int f34649e;

        public boolean f34650f = true;

        public d(l<K, V> map) {
            this.f34647c = map;
            b();
        }

        public void a() {
            int i10;
            K[] kArr = this.f34647c.f34631c;
            int length = kArr.length;
            do {
                i10 = this.f34648d + 1;
                this.f34648d = i10;
                if (i10 >= length) {
                    this.f34646b = false;
                    return;
                }
            } while (kArr[i10] == null);
            this.f34646b = true;
        }

        public void b() {
            this.f34649e = -1;
            this.f34648d = -1;
            a();
        }

        public void remove() {
            int i10 = this.f34649e;
            if (i10 < 0) {
                throw new IllegalStateException("next must be called before remove.");
            }
            l<K, V> lVar = this.f34647c;
            K[] kArr = lVar.f34631c;
            V[] vArr = lVar.f34632d;
            int i11 = lVar.f34636h;
            int i12 = i10 + 1;
            while (true) {
                int i13 = i12 & i11;
                K k10 = kArr[i13];
                if (k10 == null) {
                    break;
                }
                int y10 = this.f34647c.y(k10);
                if (((i13 - y10) & i11) > ((i10 - y10) & i11)) {
                    kArr[i10] = k10;
                    vArr[i10] = vArr[i13];
                    i10 = i13;
                }
                i12 = i13 + 1;
            }
            kArr[i10] = null;
            vArr[i10] = null;
            l<K, V> lVar2 = this.f34647c;
            lVar2.f34630b--;
            if (i10 != this.f34649e) {
                this.f34648d--;
            }
            this.f34649e = -1;
        }
    }

    public static class e<V> extends d<Object, V, V> {
        public e(l<?, V> map) {
            super(map);
        }

        @Override
        public void b() {
            super.b();
        }

        @Override
        public e<V> iterator() {
            return this;
        }

        public cb.b<V> g() {
            return h(new cb.b<>(true, this.f34647c.f34630b));
        }

        public cb.b<V> h(cb.b<V> array) {
            while (this.f34646b) {
                array.c(next());
            }
            return array;
        }

        @Override
        public boolean hasNext() {
            if (this.f34650f) {
                return this.f34646b;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        @Override
        @j
        public V next() {
            if (!this.f34646b) {
                throw new NoSuchElementException();
            }
            if (!this.f34650f) {
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            V[] vArr = this.f34647c.f34632d;
            int i10 = this.f34648d;
            V v10 = vArr[i10];
            this.f34649e = i10;
            a();
            return v10;
        }

        @Override
        public void remove() {
            super.remove();
        }
    }

    public l() {
        this(51, 0.8f);
    }

    public void A(l<? extends K, ? extends V> map) {
        m(map.f34630b);
        K[] kArr = map.f34631c;
        V[] vArr = map.f34632d;
        int length = kArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            K k10 = kArr[i10];
            if (k10 != null) {
                z(k10, vArr[i10]);
            }
        }
    }

    public final void B(K key, @j V value) {
        K[] kArr = this.f34631c;
        int y10 = y(key);
        while (kArr[y10] != null) {
            y10 = (y10 + 1) & this.f34636h;
        }
        kArr[y10] = key;
        this.f34632d[y10] = value;
    }

    @j
    public V C(K key) {
        int v10 = v(key);
        if (v10 < 0) {
            return null;
        }
        K[] kArr = this.f34631c;
        V[] vArr = this.f34632d;
        V v11 = vArr[v10];
        int i10 = this.f34636h;
        int i11 = v10 + 1;
        while (true) {
            int i12 = i11 & i10;
            K k10 = kArr[i12];
            if (k10 == null) {
                kArr[v10] = null;
                vArr[v10] = null;
                this.f34630b--;
                return v11;
            }
            int y10 = y(k10);
            if (((i12 - y10) & i10) > ((v10 - y10) & i10)) {
                kArr[v10] = k10;
                vArr[v10] = vArr[i12];
                v10 = i12;
            }
            i11 = i12 + 1;
        }
    }

    public final void D(int i10) {
        int length = this.f34631c.length;
        this.f34634f = (int) (i10 * this.f34633e);
        int i11 = i10 - 1;
        this.f34636h = i11;
        this.f34635g = Long.numberOfLeadingZeros(i11);
        K[] kArr = this.f34631c;
        V[] vArr = this.f34632d;
        this.f34631c = (K[]) new Object[i10];
        this.f34632d = (V[]) new Object[i10];
        if (this.f34630b > 0) {
            for (int i12 = 0; i12 < length; i12++) {
                K k10 = kArr[i12];
                if (k10 != null) {
                    B(k10, vArr[i12]);
                }
            }
        }
    }

    public void E(int maximumCapacity) {
        if (maximumCapacity < 0) {
            throw new IllegalArgumentException("maximumCapacity must be >= 0: " + maximumCapacity);
        }
        int t10 = m.t(maximumCapacity, this.f34633e);
        if (this.f34631c.length > t10) {
            D(t10);
        }
    }

    public String F(String separator) {
        return G(separator, false);
    }

    public String G(String separator, boolean braces) {
        int i10;
        if (this.f34630b == 0) {
            return braces ? FetchDefaults.EMPTY_JSON_OBJECT_STRING : "";
        }
        StringBuilder sb2 = new StringBuilder(32);
        if (braces) {
            sb2.append(JavaElement.JEM_COMPILATIONUNIT);
        }
        Object[] objArr = this.f34631c;
        Object[] objArr2 = this.f34632d;
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
                sb2.append('=');
                Object obj2 = objArr2[i10];
                if (obj2 == this) {
                    obj2 = "(this)";
                }
                sb2.append(obj2);
            }
        }
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                break;
            }
            Object obj3 = objArr[i11];
            if (obj3 != null) {
                sb2.append(separator);
                if (obj3 == this) {
                    obj3 = "(this)";
                }
                sb2.append(obj3);
                sb2.append('=');
                Object obj4 = objArr2[i11];
                if (obj4 == this) {
                    obj4 = "(this)";
                }
                sb2.append(obj4);
            }
            i10 = i11;
        }
        if (braces) {
            sb2.append(JavaElement.JEM_ANNOTATION);
        }
        return sb2.toString();
    }

    public e<V> H() {
        if (cb.e.f34523a) {
            return new e<>(this);
        }
        if (this.f34639k == null) {
            this.f34639k = new e(this);
            this.f34640l = new e(this);
        }
        e eVar = this.f34639k;
        if (eVar.f34650f) {
            this.f34640l.b();
            e<V> eVar2 = this.f34640l;
            eVar2.f34650f = true;
            this.f34639k.f34650f = false;
            return eVar2;
        }
        eVar.b();
        e<V> eVar3 = this.f34639k;
        eVar3.f34650f = true;
        this.f34640l.f34650f = false;
        return eVar3;
    }

    public void clear() {
        if (this.f34630b == 0) {
            return;
        }
        this.f34630b = 0;
        Arrays.fill(this.f34631c, (Object) null);
        Arrays.fill(this.f34632d, (Object) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        if (lVar.f34630b != this.f34630b) {
            return false;
        }
        K[] kArr = this.f34631c;
        V[] vArr = this.f34632d;
        int length = kArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            K k10 = kArr[i10];
            if (k10 != null) {
                V v10 = vArr[i10];
                if (v10 == null) {
                    if (lVar.s(k10, f34629o) != null) {
                        return false;
                    }
                } else if (!v10.equals(lVar.r(k10))) {
                    return false;
                }
            }
        }
        return true;
    }

    public int hashCode() {
        int i10 = this.f34630b;
        K[] kArr = this.f34631c;
        V[] vArr = this.f34632d;
        int length = kArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            K k10 = kArr[i11];
            if (k10 != null) {
                i10 += k10.hashCode();
                V v10 = vArr[i11];
                if (v10 != null) {
                    i10 += v10.hashCode();
                }
            }
        }
        return i10;
    }

    public boolean isEmpty() {
        return this.f34630b == 0;
    }

    public void j(int maximumCapacity) {
        int t10 = m.t(maximumCapacity, this.f34633e);
        if (this.f34631c.length <= t10) {
            clear();
        } else {
            this.f34630b = 0;
            D(t10);
        }
    }

    public boolean k(K key) {
        return v(key) >= 0;
    }

    public boolean l(@j Object value, boolean identity) {
        V[] vArr = this.f34632d;
        if (value == null) {
            K[] kArr = this.f34631c;
            for (int length = vArr.length - 1; length >= 0; length--) {
                if (kArr[length] != null && vArr[length] == null) {
                    return true;
                }
            }
            return false;
        }
        if (identity) {
            for (int length2 = vArr.length - 1; length2 >= 0; length2--) {
                if (vArr[length2] == value) {
                    return true;
                }
            }
            return false;
        }
        for (int length3 = vArr.length - 1; length3 >= 0; length3--) {
            if (value.equals(vArr[length3])) {
                return true;
            }
        }
        return false;
    }

    public void m(int additionalCapacity) {
        int t10 = m.t(this.f34630b + additionalCapacity, this.f34633e);
        if (this.f34631c.length < t10) {
            D(t10);
        }
    }

    public a<K, V> n() {
        if (cb.e.f34523a) {
            return new a<>(this);
        }
        if (this.f34637i == null) {
            this.f34637i = new a(this);
            this.f34638j = new a(this);
        }
        a aVar = this.f34637i;
        if (aVar.f34650f) {
            this.f34638j.b();
            a<K, V> aVar2 = this.f34638j;
            aVar2.f34650f = true;
            this.f34637i.f34650f = false;
            return aVar2;
        }
        aVar.b();
        a<K, V> aVar3 = this.f34637i;
        aVar3.f34650f = true;
        this.f34638j.f34650f = false;
        return aVar3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean o(@j Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        if (lVar.f34630b != this.f34630b) {
            return false;
        }
        K[] kArr = this.f34631c;
        V[] vArr = this.f34632d;
        int length = kArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            K k10 = kArr[i10];
            if (k10 != null && vArr[i10] != lVar.s(k10, f34629o)) {
                return false;
            }
        }
        return true;
    }

    @j
    public K p(@j Object value, boolean identity) {
        V[] vArr = this.f34632d;
        if (value == null) {
            K[] kArr = this.f34631c;
            for (int length = vArr.length - 1; length >= 0; length--) {
                K k10 = kArr[length];
                if (k10 != null && vArr[length] == null) {
                    return k10;
                }
            }
            return null;
        }
        if (identity) {
            for (int length2 = vArr.length - 1; length2 >= 0; length2--) {
                if (vArr[length2] == value) {
                    return this.f34631c[length2];
                }
            }
            return null;
        }
        for (int length3 = vArr.length - 1; length3 >= 0; length3--) {
            if (value.equals(vArr[length3])) {
                return this.f34631c[length3];
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @j
    public <T extends K> V r(T key) {
        int v10 = v(key);
        if (v10 < 0) {
            return null;
        }
        return this.f34632d[v10];
    }

    public V s(K key, @j V defaultValue) {
        int v10 = v(key);
        return v10 < 0 ? defaultValue : this.f34632d[v10];
    }

    @Override
    public a<K, V> iterator() {
        return n();
    }

    public String toString() {
        return G(", ", true);
    }

    public c<K> u() {
        if (cb.e.f34523a) {
            return new c<>(this);
        }
        if (this.f34641m == null) {
            this.f34641m = new c(this);
            this.f34642n = new c(this);
        }
        c cVar = this.f34641m;
        if (cVar.f34650f) {
            this.f34642n.b();
            c<K> cVar2 = this.f34642n;
            cVar2.f34650f = true;
            this.f34641m.f34650f = false;
            return cVar2;
        }
        cVar.b();
        c<K> cVar3 = this.f34641m;
        cVar3.f34650f = true;
        this.f34642n.f34650f = false;
        return cVar3;
    }

    public int v(K key) {
        if (key == null) {
            throw new IllegalArgumentException("key cannot be null.");
        }
        K[] kArr = this.f34631c;
        int y10 = y(key);
        while (true) {
            K k10 = kArr[y10];
            if (k10 == null) {
                return -(y10 + 1);
            }
            if (k10.equals(key)) {
                return y10;
            }
            y10 = (y10 + 1) & this.f34636h;
        }
    }

    public boolean x() {
        return this.f34630b > 0;
    }

    public int y(K item) {
        return (int) ((item.hashCode() * Z.f13808g) >>> this.f34635g);
    }

    @j
    public V z(K key, @j V value) {
        int v10 = v(key);
        if (v10 >= 0) {
            V[] vArr = this.f34632d;
            V v11 = vArr[v10];
            vArr[v10] = value;
            return v11;
        }
        int i10 = -(v10 + 1);
        K[] kArr = this.f34631c;
        kArr[i10] = key;
        this.f34632d[i10] = value;
        int i11 = this.f34630b + 1;
        this.f34630b = i11;
        if (i11 < this.f34634f) {
            return null;
        }
        D(kArr.length << 1);
        return null;
    }

    public l(int initialCapacity) {
        this(initialCapacity, 0.8f);
    }

    public l(int i10, float f10) {
        if (f10 > 0.0f && f10 < 1.0f) {
            this.f34633e = f10;
            int t10 = m.t(i10, f10);
            this.f34634f = (int) (t10 * f10);
            int i11 = t10 - 1;
            this.f34636h = i11;
            this.f34635g = Long.numberOfLeadingZeros(i11);
            this.f34631c = (K[]) new Object[t10];
            this.f34632d = (V[]) new Object[t10];
            return;
        }
        throw new IllegalArgumentException("loadFactor must be > 0 and < 1: " + f10);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public l(l<? extends K, ? extends V> map) {
        this((int) (r0 * r1), r1);
        float length = map.f34631c.length;
        float f10 = map.f34633e;
        Object[] objArr = map.f34631c;
        System.arraycopy(objArr, 0, this.f34631c, 0, objArr.length);
        Object[] objArr2 = map.f34632d;
        System.arraycopy(objArr2, 0, this.f34632d, 0, objArr2.length);
        this.f34630b = map.f34630b;
    }
}
