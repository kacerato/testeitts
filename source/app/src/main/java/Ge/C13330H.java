package ge;

import ae.C3602a;
import com.tonyodev.fetch2.util.FetchDefaults;
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
import java.util.Set;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.core.JavaElement;

public class C13330H<K, V> extends Wd.b0<K> implements ee.X<K, V>, Externalizable {

    public static final long f88581r = 1;

    public transient V[] f88582q;

    public class a implements he.j0<K, V> {

        public boolean f88583a = true;

        public final StringBuilder f88584b;

        public a(StringBuilder sb2) {
            this.f88584b = sb2;
        }

        @Override
        public boolean a(K k10, V v10) {
            if (this.f88583a) {
                this.f88583a = false;
            } else {
                this.f88584b.append(", ");
            }
            this.f88584b.append((Object) k10);
            this.f88584b.append("=");
            this.f88584b.append((Object) v10);
            return true;
        }
    }

    public final class b implements Map.Entry<K, V> {

        public K f88586b;

        public V f88587c;

        public final int f88588d;

        public b(K k10, V v10, int i10) {
            this.f88586b = k10;
            this.f88587c = v10;
            this.f88588d = i10;
        }

        @Override
        public boolean equals(Object obj) {
            return (obj instanceof Map.Entry) && C13330H.this.I1(getKey(), ((Map.Entry) obj).getKey()) && C13330H.this.I1(getValue(), getValue());
        }

        @Override
        public K getKey() {
            return this.f88586b;
        }

        @Override
        public V getValue() {
            return this.f88587c;
        }

        @Override
        public int hashCode() {
            return (getKey() == null ? 0 : getKey().hashCode()) ^ (getValue() != null ? getValue().hashCode() : 0);
        }

        @Override
        public V setValue(V v10) {
            V[] vArr = C13330H.this.f88582q;
            int i10 = this.f88588d;
            V v11 = vArr[i10];
            V v12 = this.f88587c;
            if (v11 != v12) {
                throw new ConcurrentModificationException();
            }
            vArr[i10] = v10;
            this.f88587c = v10;
            return v12;
        }

        public String toString() {
            return ((Object) this.f88586b) + "=" + ((Object) this.f88587c);
        }
    }

    public class c extends C13330H<K, V>.g<Map.Entry<K, V>> {

        public final class a extends C3602a {
            public a(C13330H<K, V> c13330h) {
                super(c13330h);
            }

            @Override
            public C13330H<K, V>.b k(int i10) {
                C13330H c13330h = C13330H.this;
                return new b(c13330h.f27557l[i10], c13330h.f88582q[i10], i10);
            }
        }

        public c() {
            super(C13330H.this, null);
        }

        @Override
        public boolean c(Map.Entry<K, V> entry) {
            Object obj = C13330H.this.get(f(entry));
            V value = entry.getValue();
            return value == obj || (obj != null && C13330H.this.I1(obj, value));
        }

        public K f(Map.Entry<K, V> entry) {
            return entry.getKey();
        }

        @Override
        public boolean d(Map.Entry<K, V> entry) {
            if (entry == null) {
                return false;
            }
            int tf2 = C13330H.this.tf(f(entry));
            if (tf2 >= 0) {
                Object h10 = h(entry);
                C13330H c13330h = C13330H.this;
                V v10 = c13330h.f88582q[tf2];
                if (h10 == v10 || (h10 != null && c13330h.I1(h10, v10))) {
                    C13330H.this.hf(tf2);
                    return true;
                }
            }
            return false;
        }

        public V h(Map.Entry<K, V> entry) {
            return entry.getValue();
        }

        @Override
        public Iterator<Map.Entry<K, V>> iterator() {
            return new a(C13330H.this);
        }
    }

    public final class d<K, V> implements he.j0<K, V> {

        public final Map<K, V> f88592a;

        public d(Map<K, V> map) {
            this.f88592a = map;
        }

        @Override
        public final boolean a(K k10, V v10) {
            if (v10 == null && !this.f88592a.containsKey(k10)) {
                return false;
            }
            V v11 = this.f88592a.get(k10);
            return v11 == v10 || (v11 != null && C13330H.this.I1(v11, v10));
        }
    }

    public class f extends C13330H<K, V>.g<K> {
        public f() {
            super(C13330H.this, null);
        }

        @Override
        public boolean c(K k10) {
            return C13330H.this.contains(k10);
        }

        @Override
        public boolean d(K k10) {
            return C13330H.this.remove(k10) != null;
        }

        @Override
        public Iterator<K> iterator() {
            return new C3602a(C13330H.this);
        }
    }

    public abstract class g<E> extends AbstractSet<E> implements Set<E>, Iterable<E> {
        public g() {
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
            C13330H.this.clear();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean contains(Object obj) {
            return c(obj);
        }

        public abstract boolean d(E e10);

        @Override
        public boolean isEmpty() {
            return C13330H.this.isEmpty();
        }

        @Override
        public abstract Iterator<E> iterator();

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean remove(Object obj) {
            try {
                return d(obj);
            } catch (ClassCastException unused) {
                return false;
            }
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
            return C13330H.this.size();
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

        @Override
        public String toString() {
            Iterator<E> it = iterator();
            if (!it.hasNext()) {
                return FetchDefaults.EMPTY_JSON_OBJECT_STRING;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(JavaElement.JEM_COMPILATIONUNIT);
            while (true) {
                Object next = it.next();
                if (next == this) {
                    next = "(this Collection)";
                }
                sb2.append(next);
                if (!it.hasNext()) {
                    sb2.append(JavaElement.JEM_ANNOTATION);
                    return sb2.toString();
                }
                sb2.append(", ");
            }
        }

        public g(C13330H c13330h, a aVar) {
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

    public class h extends C13330H<K, V>.g<V> {

        public class a extends C3602a {
            public a(Wd.b0 b0Var) {
                super(b0Var);
            }

            @Override
            public V k(int i10) {
                return C13330H.this.f88582q[i10];
            }
        }

        public h() {
            super(C13330H.this, null);
        }

        @Override
        public boolean c(V v10) {
            return C13330H.this.containsValue(v10);
        }

        @Override
        public boolean d(V v10) {
            int i10;
            V v11;
            C13330H c13330h = C13330H.this;
            V[] vArr = c13330h.f88582q;
            Object[] objArr = c13330h.f27557l;
            int length = vArr.length;
            while (true) {
                i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                Object obj = objArr[i10];
                if ((obj == Wd.b0.f27556p || obj == Wd.b0.f27555o || v10 != vArr[i10]) && ((v11 = vArr[i10]) == null || !C13330H.this.I1(v11, v10))) {
                    length = i10;
                }
            }
            C13330H.this.hf(i10);
            return true;
        }

        @Override
        public Iterator<V> iterator() {
            return new a(C13330H.this);
        }
    }

    public C13330H() {
    }

    private V Mf(V v10, int i10) {
        V v11;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            v11 = this.f88582q[i10];
            z10 = false;
        } else {
            v11 = null;
        }
        this.f88582q[i10] = v10;
        if (z10) {
            ef(this.f27558m);
        }
        return v11;
    }

    @Override
    public boolean A7(he.j0<? super K, ? super V> j0Var) {
        Object[] objArr = this.f27557l;
        V[] vArr = this.f88582q;
        int length = objArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            Object obj = objArr[i10];
            if (obj != Wd.b0.f27556p && obj != Wd.b0.f27555o && !j0Var.a(obj, vArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean F4(he.j0<? super K, ? super V> j0Var) {
        Object[] objArr = this.f27557l;
        V[] vArr = this.f88582q;
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
                if (obj != Wd.b0.f27556p && obj != Wd.b0.f27555o && !j0Var.a(obj, vArr[i10])) {
                    hf(i10);
                    z10 = true;
                }
                length = i10;
            }
        } finally {
            ff(true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean G(he.k0<? super K> k0Var) {
        return rf(k0Var);
    }

    @Override
    public boolean S(he.k0<? super V> k0Var) {
        V[] vArr = this.f88582q;
        Object[] objArr = this.f27557l;
        int length = vArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            Object obj = objArr[i10];
            if (obj != Wd.b0.f27556p && obj != Wd.b0.f27555o && !k0Var.a(vArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public void clear() {
        if (size() == 0) {
            return;
        }
        super.clear();
        Object[] objArr = this.f27557l;
        Arrays.fill(objArr, 0, objArr.length, Wd.b0.f27556p);
        V[] vArr = this.f88582q;
        Arrays.fill(vArr, 0, vArr.length, (Object) null);
    }

    @Override
    public boolean containsKey(Object obj) {
        return contains(obj);
    }

    @Override
    public boolean containsValue(Object obj) {
        V v10;
        Object[] objArr = this.f27557l;
        V[] vArr = this.f88582q;
        if (obj != null) {
            int length = vArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                Object obj2 = objArr[i10];
                if (obj2 == Wd.b0.f27556p || obj2 == Wd.b0.f27555o || (obj != (v10 = vArr[i10]) && !I1(obj, v10))) {
                    length = i10;
                }
            }
            return true;
        }
        int length2 = vArr.length;
        while (true) {
            int i11 = length2 - 1;
            if (length2 <= 0) {
                return false;
            }
            Object obj3 = objArr[i11];
            if (obj3 != Wd.b0.f27556p && obj3 != Wd.b0.f27555o && obj == vArr[i11]) {
                return true;
            }
            length2 = i11;
        }
    }

    @Override
    public Set<Map.Entry<K, V>> entrySet() {
        return new c();
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (map.size() != size()) {
            return false;
        }
        return A7(new d(map));
    }

    @Override
    public V get(Object obj) {
        int tf2 = tf(obj);
        if (tf2 < 0) {
            return null;
        }
        return this.f88582q[tf2];
    }

    @Override
    public void gf(int i10) {
        int length = this.f27557l.length;
        int size = size();
        Object[] objArr = this.f27557l;
        V[] vArr = this.f88582q;
        Object[] objArr2 = new Object[i10];
        this.f27557l = objArr2;
        Arrays.fill(objArr2, Wd.b0.f27556p);
        this.f88582q = (V[]) new Object[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                Wd.b0.Cf(size(), size);
                return;
            }
            Object obj = objArr[i11];
            if (obj != Wd.b0.f27556p && obj != Wd.b0.f27555o) {
                int wf2 = wf(obj);
                if (wf2 < 0) {
                    Ef(this.f27557l[(-wf2) - 1], obj, size(), size, objArr);
                }
                this.f88582q[wf2] = vArr[i11];
            }
            length = i11;
        }
    }

    @Override
    public int hashCode() {
        e eVar = new e(this, null);
        A7(eVar);
        return eVar.b();
    }

    @Override
    public void hf(int i10) {
        this.f88582q[i10] = null;
        super.hf(i10);
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f88582q = (V[]) new Object[jf2];
        return jf2;
    }

    @Override
    public Set<K> o() {
        return new f();
    }

    @Override
    public V put(K k10, V v10) {
        return Mf(v10, wf(k10));
    }

    @Override
    public void putAll(Map<? extends K, ? extends V> map) {
        cf(map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override
    public V putIfAbsent(K k10, V v10) {
        int wf2 = wf(k10);
        return wf2 < 0 ? this.f88582q[(-wf2) - 1] : Mf(v10, wf2);
    }

    @Override
    public void r0(Ud.g<V, V> gVar) {
        V[] vArr = this.f88582q;
        Object[] objArr = this.f27557l;
        int length = vArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            Object obj = objArr[i10];
            if (obj != Wd.b0.f27556p && obj != Wd.b0.f27555o) {
                vArr[i10] = gVar.a(vArr[i10]);
            }
            length = i10;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        if (objectInput.readByte() != 0) {
            super.readExternal(objectInput);
        }
        int readInt = objectInput.readInt();
        jf(readInt);
        while (true) {
            int i10 = readInt - 1;
            if (readInt <= 0) {
                return;
            }
            put(objectInput.readObject(), objectInput.readObject());
            readInt = i10;
        }
    }

    @Override
    public V remove(Object obj) {
        int tf2 = tf(obj);
        if (tf2 < 0) {
            return null;
        }
        V v10 = this.f88582q[tf2];
        hf(tf2);
        return v10;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        A7(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public Collection<V> values() {
        return new h();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(1);
        super.writeExternal(objectOutput);
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
                objectOutput.writeObject(this.f88582q[i10]);
            }
            length = i10;
        }
    }

    public final class e implements he.j0<K, V> {

        public int f88594a;

        public e() {
            this.f88594a = 0;
        }

        @Override
        public final boolean a(K k10, V v10) {
            this.f88594a += Vd.b.f(k10) ^ (v10 == null ? 0 : v10.hashCode());
            return true;
        }

        public int b() {
            return this.f88594a;
        }

        public e(C13330H c13330h, a aVar) {
            this();
        }
    }

    public C13330H(int i10) {
        super(i10);
    }

    public C13330H(int i10, float f10) {
        super(i10, f10);
    }

    public C13330H(Map<? extends K, ? extends V> map) {
        this(map.size());
        putAll(map);
    }

    public C13330H(C13330H<? extends K, ? extends V> c13330h) {
        this(c13330h.size());
        putAll(c13330h);
    }
}
