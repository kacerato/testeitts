package com.google.protobuf;

import com.google.protobuf.C12699o0;
import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

public class R1<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    public final int f68865b;

    public List<R1<K, V>.e> f68866c;

    public Map<K, V> f68867d;

    public boolean f68868e;

    public volatile R1<K, V>.g f68869f;

    public Map<K, V> f68870g;

    public volatile R1<K, V>.c f68871h;

    public class a<FieldDescriptorType> extends R1<FieldDescriptorType, Object> {
        public a(int arraySize) {
            super(arraySize, null);
        }

        @Override
        public void s() {
            if (!r()) {
                for (int i10 = 0; i10 < m(); i10++) {
                    Map.Entry<FieldDescriptorType, Object> l10 = l(i10);
                    if (((C12699o0.c) l10.getKey()).Z1()) {
                        l10.setValue(Collections.unmodifiableList((List) l10.getValue()));
                    }
                }
                for (Map.Entry<FieldDescriptorType, Object> entry : o()) {
                    if (((C12699o0.c) entry.getKey()).Z1()) {
                        entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                    }
                }
            }
            super.s();
        }
    }

    public class c extends R1<K, V>.g {
        public c() {
            super(R1.this, null);
        }

        @Override
        public Iterator<Map.Entry<K, V>> iterator() {
            return new b(R1.this, null);
        }

        public c(R1 r12, a aVar) {
            this();
        }
    }

    public static class d {

        public static final Iterator<Object> f68876a = new a();

        public static final Iterable<Object> f68877b = new b();

        public class a implements Iterator<Object> {
            @Override
            public boolean hasNext() {
                return false;
            }

            @Override
            public Object next() {
                throw new NoSuchElementException();
            }

            @Override
            public void remove() {
                throw new UnsupportedOperationException();
            }
        }

        public class b implements Iterable<Object> {
            @Override
            public Iterator<Object> iterator() {
                return d.f68876a;
            }
        }

        public static <T> Iterable<T> b() {
            return (Iterable<T>) f68877b;
        }
    }

    public class e implements Map.Entry<K, V>, Comparable<R1<K, V>.e> {

        public final K f68878b;

        public V f68879c;

        public e(final R1 this$0, Map.Entry<K, V> copy) {
            this(copy.getKey(), copy.getValue());
        }

        @Override
        public int compareTo(R1<K, V>.e other) {
            return getKey().compareTo(other.getKey());
        }

        public final boolean b(Object o12, Object o22) {
            return o12 == null ? o22 == null : o12.equals(o22);
        }

        @Override
        public K getKey() {
            return this.f68878b;
        }

        @Override
        public boolean equals(Object o10) {
            if (o10 == this) {
                return true;
            }
            if (!(o10 instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) o10;
            return b(this.f68878b, entry.getKey()) && b(this.f68879c, entry.getValue());
        }

        @Override
        public V getValue() {
            return this.f68879c;
        }

        @Override
        public int hashCode() {
            K k10 = this.f68878b;
            int hashCode = k10 == null ? 0 : k10.hashCode();
            V v10 = this.f68879c;
            return hashCode ^ (v10 != null ? v10.hashCode() : 0);
        }

        @Override
        public V setValue(V newValue) {
            R1.this.i();
            V v10 = this.f68879c;
            this.f68879c = newValue;
            return v10;
        }

        public String toString() {
            return ((Object) this.f68878b) + "=" + ((Object) this.f68879c);
        }

        public e(K key, V value) {
            this.f68878b = key;
            this.f68879c = value;
        }
    }

    public class g extends AbstractSet<Map.Entry<K, V>> {
        public g() {
        }

        @Override
        public boolean add(Map.Entry<K, V> entry) {
            if (contains(entry)) {
                return false;
            }
            R1.this.put(entry.getKey(), entry.getValue());
            return true;
        }

        @Override
        public void clear() {
            R1.this.clear();
        }

        @Override
        public boolean contains(Object o10) {
            Map.Entry entry = (Map.Entry) o10;
            Object obj = R1.this.get(entry.getKey());
            Object value = entry.getValue();
            return obj == value || (obj != null && obj.equals(value));
        }

        @Override
        public Iterator<Map.Entry<K, V>> iterator() {
            return new f(R1.this, null);
        }

        @Override
        public boolean remove(Object o10) {
            Map.Entry entry = (Map.Entry) o10;
            if (!contains(entry)) {
                return false;
            }
            R1.this.remove(entry.getKey());
            return true;
        }

        @Override
        public int size() {
            return R1.this.size();
        }

        public g(R1 r12, a aVar) {
            this();
        }
    }

    public R1(int i10, a aVar) {
        this(i10);
    }

    public static <FieldDescriptorType extends C12699o0.c<FieldDescriptorType>> R1<FieldDescriptorType, Object> t(int arraySize) {
        return new a(arraySize);
    }

    public static <K extends Comparable<K>, V> R1<K, V> u(int arraySize) {
        return new R1<>(arraySize);
    }

    @Override
    public void clear() {
        i();
        if (!this.f68866c.isEmpty()) {
            this.f68866c.clear();
        }
        if (this.f68867d.isEmpty()) {
            return;
        }
        this.f68867d.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean containsKey(Object o10) {
        Comparable comparable = (Comparable) o10;
        return f(comparable) >= 0 || this.f68867d.containsKey(comparable);
    }

    @Override
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f68869f == null) {
            this.f68869f = new g(this, null);
        }
        return this.f68869f;
    }

    @Override
    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (!(o10 instanceof R1)) {
            return super.equals(o10);
        }
        R1 r12 = (R1) o10;
        int size = size();
        if (size != r12.size()) {
            return false;
        }
        int m10 = m();
        if (m10 != r12.m()) {
            return entrySet().equals(r12.entrySet());
        }
        for (int i10 = 0; i10 < m10; i10++) {
            if (!l(i10).equals(r12.l(i10))) {
                return false;
            }
        }
        if (m10 != size) {
            return this.f68867d.equals(r12.f68867d);
        }
        return true;
    }

    public final int f(K key) {
        int i10;
        int size = this.f68866c.size();
        int i11 = size - 1;
        if (i11 >= 0) {
            int compareTo = key.compareTo(this.f68866c.get(i11).getKey());
            if (compareTo > 0) {
                i10 = size + 1;
                return -i10;
            }
            if (compareTo == 0) {
                return i11;
            }
        }
        int i12 = 0;
        while (i12 <= i11) {
            int i13 = (i12 + i11) / 2;
            int compareTo2 = key.compareTo(this.f68866c.get(i13).getKey());
            if (compareTo2 < 0) {
                i11 = i13 - 1;
            } else {
                if (compareTo2 <= 0) {
                    return i13;
                }
                i12 = i13 + 1;
            }
        }
        i10 = i12 + 1;
        return -i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public V get(Object o10) {
        Comparable comparable = (Comparable) o10;
        int f10 = f(comparable);
        return f10 >= 0 ? this.f68866c.get(f10).getValue() : this.f68867d.get(comparable);
    }

    @Override
    public int hashCode() {
        int m10 = m();
        int i10 = 0;
        for (int i11 = 0; i11 < m10; i11++) {
            i10 += this.f68866c.get(i11).hashCode();
        }
        return n() > 0 ? i10 + this.f68867d.hashCode() : i10;
    }

    public final void i() {
        if (this.f68868e) {
            throw new UnsupportedOperationException();
        }
    }

    public Set<Map.Entry<K, V>> j() {
        if (this.f68871h == null) {
            this.f68871h = new c(this, null);
        }
        return this.f68871h;
    }

    public final void k() {
        i();
        if (!this.f68866c.isEmpty() || (this.f68866c instanceof ArrayList)) {
            return;
        }
        this.f68866c = new ArrayList(this.f68865b);
    }

    public Map.Entry<K, V> l(int index) {
        return this.f68866c.get(index);
    }

    public int m() {
        return this.f68866c.size();
    }

    public int n() {
        return this.f68867d.size();
    }

    public Iterable<Map.Entry<K, V>> o() {
        return this.f68867d.isEmpty() ? d.b() : this.f68867d.entrySet();
    }

    public Iterable<Map.Entry<K, V>> p() {
        return this.f68870g.isEmpty() ? d.b() : this.f68870g.entrySet();
    }

    public final SortedMap<K, V> q() {
        i();
        if (this.f68867d.isEmpty() && !(this.f68867d instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f68867d = treeMap;
            this.f68870g = treeMap.descendingMap();
        }
        return (SortedMap) this.f68867d;
    }

    public boolean r() {
        return this.f68868e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public V remove(Object obj) {
        i();
        Comparable comparable = (Comparable) obj;
        int f10 = f(comparable);
        if (f10 >= 0) {
            return (V) w(f10);
        }
        if (this.f68867d.isEmpty()) {
            return null;
        }
        return this.f68867d.remove(comparable);
    }

    public void s() {
        if (this.f68868e) {
            return;
        }
        this.f68867d = this.f68867d.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f68867d);
        this.f68870g = this.f68870g.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f68870g);
        this.f68868e = true;
    }

    @Override
    public int size() {
        return this.f68866c.size() + this.f68867d.size();
    }

    @Override
    public V put(K k10, V v10) {
        i();
        int f10 = f(k10);
        if (f10 >= 0) {
            return this.f68866c.get(f10).setValue(v10);
        }
        k();
        int i10 = -(f10 + 1);
        if (i10 >= this.f68865b) {
            return q().put(k10, v10);
        }
        int size = this.f68866c.size();
        int i11 = this.f68865b;
        if (size == i11) {
            R1<K, V>.e remove = this.f68866c.remove(i11 - 1);
            q().put(remove.getKey(), remove.getValue());
        }
        this.f68866c.add(i10, new e(k10, v10));
        return null;
    }

    public final V w(int index) {
        i();
        V value = this.f68866c.remove(index).getValue();
        if (!this.f68867d.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = q().entrySet().iterator();
            this.f68866c.add(new e(this, it.next()));
            it.remove();
        }
        return value;
    }

    public class b implements Iterator<Map.Entry<K, V>> {

        public int f68872b;

        public Iterator<Map.Entry<K, V>> f68873c;

        public b() {
            this.f68872b = R1.this.f68866c.size();
        }

        public final Iterator<Map.Entry<K, V>> a() {
            if (this.f68873c == null) {
                this.f68873c = R1.this.f68870g.entrySet().iterator();
            }
            return this.f68873c;
        }

        @Override
        public Map.Entry<K, V> next() {
            if (a().hasNext()) {
                return a().next();
            }
            List list = R1.this.f68866c;
            int i10 = this.f68872b - 1;
            this.f68872b = i10;
            return (Map.Entry) list.get(i10);
        }

        @Override
        public boolean hasNext() {
            int i10 = this.f68872b;
            return (i10 > 0 && i10 <= R1.this.f68866c.size()) || a().hasNext();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        public b(R1 r12, a aVar) {
            this();
        }
    }

    public class f implements Iterator<Map.Entry<K, V>> {

        public int f68881b;

        public boolean f68882c;

        public Iterator<Map.Entry<K, V>> f68883d;

        public f() {
            this.f68881b = -1;
        }

        public final Iterator<Map.Entry<K, V>> a() {
            if (this.f68883d == null) {
                this.f68883d = R1.this.f68867d.entrySet().iterator();
            }
            return this.f68883d;
        }

        @Override
        public Map.Entry<K, V> next() {
            this.f68882c = true;
            int i10 = this.f68881b + 1;
            this.f68881b = i10;
            return i10 < R1.this.f68866c.size() ? (Map.Entry) R1.this.f68866c.get(this.f68881b) : a().next();
        }

        @Override
        public boolean hasNext() {
            if (this.f68881b + 1 >= R1.this.f68866c.size()) {
                return !R1.this.f68867d.isEmpty() && a().hasNext();
            }
            return true;
        }

        @Override
        public void remove() {
            if (!this.f68882c) {
                throw new IllegalStateException("remove() was called before next()");
            }
            this.f68882c = false;
            R1.this.i();
            if (this.f68881b >= R1.this.f68866c.size()) {
                a().remove();
                return;
            }
            R1 r12 = R1.this;
            int i10 = this.f68881b;
            this.f68881b = i10 - 1;
            r12.w(i10);
        }

        public f(R1 r12, a aVar) {
            this();
        }
    }

    public R1(int arraySize) {
        this.f68865b = arraySize;
        this.f68866c = Collections.emptyList();
        this.f68867d = Collections.emptyMap();
        this.f68870g = Collections.emptyMap();
    }
}
