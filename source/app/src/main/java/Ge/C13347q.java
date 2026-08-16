package ge;

import Wd.AbstractC3174q;
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
import oe.InterfaceC14499a;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.core.JavaElement;

public class C13347q<K, V> extends AbstractC3174q<K> implements ee.X<K, V>, Externalizable {

    public static final long f89390t = 1;

    public transient V[] f89391s;

    public class a implements he.j0<K, V> {

        public boolean f89392a = true;

        public final StringBuilder f89393b;

        public a(StringBuilder sb2) {
            this.f89393b = sb2;
        }

        @Override
        public boolean a(K k10, V v10) {
            if (this.f89392a) {
                this.f89392a = false;
            } else {
                this.f89393b.append(", ");
            }
            this.f89393b.append((Object) k10);
            this.f89393b.append("=");
            this.f89393b.append((Object) v10);
            return true;
        }
    }

    public final class b implements Map.Entry<K, V> {

        public K f89395b;

        public V f89396c;

        public final int f89397d;

        public b(K k10, V v10, int i10) {
            this.f89395b = k10;
            this.f89396c = v10;
            this.f89397d = i10;
        }

        @Override
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (getKey() == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!C13347q.this.f27672q.I1(getKey(), entry.getKey())) {
                return false;
            }
            if (getValue() == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!getValue().equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        @Override
        public K getKey() {
            return this.f89395b;
        }

        @Override
        public V getValue() {
            return this.f89396c;
        }

        @Override
        public int hashCode() {
            return (getKey() == null ? 0 : getKey().hashCode()) ^ (getValue() != null ? getValue().hashCode() : 0);
        }

        @Override
        public V setValue(V v10) {
            V[] vArr = C13347q.this.f89391s;
            int i10 = this.f89397d;
            V v11 = vArr[i10];
            V v12 = this.f89396c;
            if (v11 != v12) {
                throw new ConcurrentModificationException();
            }
            vArr[i10] = v10;
            this.f89396c = v10;
            return v12;
        }

        public String toString() {
            return ((Object) this.f89395b) + "=" + ((Object) this.f89396c);
        }
    }

    public class c extends C13347q<K, V>.g<Map.Entry<K, V>> {

        public final class a extends C3602a {
            public a(C13347q<K, V> c13347q) {
                super(c13347q);
            }

            @Override
            public C13347q<K, V>.b k(int i10) {
                C13347q c13347q = C13347q.this;
                return new b(c13347q.f27557l[i10], c13347q.f89391s[i10], i10);
            }
        }

        public c() {
            super(C13347q.this, null);
        }

        @Override
        public boolean c(Map.Entry<K, V> entry) {
            Object obj = C13347q.this.get(f(entry));
            V value = entry.getValue();
            return value == obj || (obj != null && C13347q.this.f27672q.I1(obj, value));
        }

        public K f(Map.Entry<K, V> entry) {
            return entry.getKey();
        }

        @Override
        public boolean d(Map.Entry<K, V> entry) {
            int tf2 = C13347q.this.tf(f(entry));
            if (tf2 < 0) {
                return false;
            }
            Object h10 = h(entry);
            C13347q c13347q = C13347q.this;
            if (h10 != c13347q.f89391s[tf2] && (h10 == null || !c13347q.f27672q.I1(h10, C13347q.this.f89391s[tf2]))) {
                return false;
            }
            C13347q.this.hf(tf2);
            return true;
        }

        public V h(Map.Entry<K, V> entry) {
            return entry.getValue();
        }

        @Override
        public Iterator<Map.Entry<K, V>> iterator() {
            return new a(C13347q.this);
        }
    }

    public static final class d<K, V> implements he.j0<K, V> {

        public final Map<K, V> f89401a;

        public d(Map<K, V> map) {
            this.f89401a = map;
        }

        @Override
        public final boolean a(K k10, V v10) {
            if (v10 == null && !this.f89401a.containsKey(k10)) {
                return false;
            }
            V v11 = this.f89401a.get(k10);
            return v11 == v10 || (v11 != null && v11.equals(v10));
        }
    }

    public class f extends C13347q<K, V>.g<K> {
        public f() {
            super(C13347q.this, null);
        }

        @Override
        public boolean c(K k10) {
            return C13347q.this.contains(k10);
        }

        @Override
        public boolean d(K k10) {
            return C13347q.this.remove(k10) != null;
        }

        @Override
        public Iterator<K> iterator() {
            return new C3602a(C13347q.this);
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
            C13347q.this.clear();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean contains(Object obj) {
            return c(obj);
        }

        public abstract boolean d(E e10);

        @Override
        public boolean isEmpty() {
            return C13347q.this.isEmpty();
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
            return C13347q.this.size();
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

        public g(C13347q c13347q, a aVar) {
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

    public class h extends C13347q<K, V>.g<V> {

        public class a extends C3602a {
            public a(Wd.b0 b0Var) {
                super(b0Var);
            }

            @Override
            public V k(int i10) {
                return C13347q.this.f89391s[i10];
            }
        }

        public h() {
            super(C13347q.this, null);
        }

        @Override
        public boolean c(V v10) {
            return C13347q.this.containsValue(v10);
        }

        @Override
        public boolean d(V v10) {
            int i10;
            C13347q c13347q = C13347q.this;
            V[] vArr = c13347q.f89391s;
            Object[] objArr = c13347q.f27557l;
            int length = vArr.length;
            while (true) {
                i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                Object obj = objArr[i10];
                if ((obj == Wd.b0.f27556p || obj == Wd.b0.f27555o || v10 != vArr[i10]) && (vArr[i10] == null || !C13347q.this.f27672q.I1(vArr[i10], v10))) {
                    length = i10;
                }
            }
            C13347q.this.hf(i10);
            return true;
        }

        @Override
        public Iterator<V> iterator() {
            return new a(C13347q.this);
        }
    }

    public C13347q() {
    }

    @Override
    public boolean A7(he.j0<? super K, ? super V> j0Var) {
        Object[] objArr = this.f27557l;
        V[] vArr = this.f89391s;
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
        V[] vArr = this.f89391s;
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

    public final V Kf(V v10, int i10) {
        V v11;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            v11 = this.f89391s[i10];
            z10 = false;
        } else {
            v11 = null;
        }
        this.f89391s[i10] = v10;
        if (z10) {
            ef(this.f27558m);
        }
        return v11;
    }

    @Override
    public boolean S(he.k0<? super V> k0Var) {
        V[] vArr = this.f89391s;
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
        V[] vArr = this.f89391s;
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
        V[] vArr = this.f89391s;
        if (obj != null) {
            int length = vArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                Object obj2 = objArr[i10];
                if (obj2 == Wd.b0.f27556p || obj2 == Wd.b0.f27555o || (obj != (v10 = vArr[i10]) && !this.f27672q.I1(obj, v10))) {
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
        if (tf2 < 0 || !this.f27672q.I1(this.f27557l[tf2], obj)) {
            return null;
        }
        return this.f89391s[tf2];
    }

    @Override
    public void gf(int i10) {
        int length = this.f27557l.length;
        int size = size();
        Object[] objArr = this.f27557l;
        V[] vArr = this.f89391s;
        Object[] objArr2 = new Object[i10];
        this.f27557l = objArr2;
        Arrays.fill(objArr2, Wd.b0.f27556p);
        this.f89391s = (V[]) new Object[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            Object obj = objArr[i11];
            if (obj != Wd.b0.f27556p && obj != Wd.b0.f27555o) {
                int wf2 = wf(obj);
                if (wf2 < 0) {
                    Ef(this.f27557l[(-wf2) - 1], obj, size(), size, objArr);
                }
                this.f89391s[wf2] = vArr[i11];
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
        this.f89391s[i10] = null;
        super.hf(i10);
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f89391s = (V[]) new Object[jf2];
        return jf2;
    }

    @Override
    public Set<K> o() {
        return new f();
    }

    @Override
    public V put(K k10, V v10) {
        return Kf(v10, wf(k10));
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
        return wf2 < 0 ? this.f89391s[(-wf2) - 1] : Kf(v10, wf2);
    }

    @Override
    public void r0(Ud.g<V, V> gVar) {
        V[] vArr = this.f89391s;
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
        V v10 = this.f89391s[tf2];
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
                objectOutput.writeObject(this.f89391s[i10]);
            }
            length = i10;
        }
    }

    public final class e implements he.j0<K, V> {

        public int f89402a;

        public e() {
            this.f89402a = 0;
        }

        @Override
        public final boolean a(K k10, V v10) {
            this.f89402a += Vd.b.f(k10) ^ (v10 == null ? 0 : v10.hashCode());
            return true;
        }

        public int b() {
            return this.f89402a;
        }

        public e(C13347q c13347q, a aVar) {
            this();
        }
    }

    public C13347q(InterfaceC14499a<? super K> interfaceC14499a) {
        super(interfaceC14499a);
    }

    public C13347q(InterfaceC14499a<? super K> interfaceC14499a, int i10) {
        super(interfaceC14499a, i10);
    }

    public C13347q(InterfaceC14499a<? super K> interfaceC14499a, int i10, float f10) {
        super(interfaceC14499a, i10, f10);
    }

    public C13347q(InterfaceC14499a<? super K> interfaceC14499a, Map<? extends K, ? extends V> map) {
        this(interfaceC14499a, map.size());
        putAll(map);
    }

    public C13347q(InterfaceC14499a<? super K> interfaceC14499a, C13347q<? extends K, ? extends V> c13347q) {
        this(interfaceC14499a, c13347q.size());
        putAll(c13347q);
    }
}
