package Td;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class x0<V> extends AbstractMap<Short, V> implements Map<Short, V>, Externalizable, Cloneable {

    public static final long f24797c = 1;

    public ee.l0<V> f24798b;

    public class a extends AbstractSet<Map.Entry<Short, V>> {

        public class C0700a implements Iterator<Map.Entry<Short, V>> {

            public final Zd.u0<V> f24800b;

            public class C0701a implements Map.Entry<Short, V> {

                public V f24802b;

                public final Object f24803c;

                public final Short f24804d;

                /* JADX WARN: Multi-variable type inference failed */
                public C0701a(Object obj, Short sh2) {
                    this.f24803c = obj;
                    this.f24804d = sh2;
                    this.f24802b = obj;
                }

                @Override
                public Short getKey() {
                    return this.f24804d;
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24804d) && entry.getValue().equals(this.f24802b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public V getValue() {
                    return this.f24802b;
                }

                @Override
                public int hashCode() {
                    return this.f24804d.hashCode() + this.f24802b.hashCode();
                }

                @Override
                public V setValue(V v10) {
                    this.f24802b = v10;
                    return (V) x0.this.put(this.f24804d, v10);
                }
            }

            public C0700a() {
                this.f24800b = x0.this.f24798b.iterator();
            }

            @Override
            public Map.Entry<Short, V> next() {
                this.f24800b.g();
                short key = this.f24800b.key();
                return new C0701a(this.f24800b.value(), key == x0.this.f24798b.l() ? null : x0.this.h(key));
            }

            @Override
            public boolean hasNext() {
                return this.f24800b.hasNext();
            }

            @Override
            public void remove() {
                this.f24800b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Short, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Short, V>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            x0.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return x0.this.containsKey(key) && x0.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return x0.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Short, V>> iterator() {
            return new C0700a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Short sh2 = (Short) ((Map.Entry) obj).getKey();
            x0 x0Var = x0.this;
            x0Var.f24798b.d(x0Var.g(sh2));
            return true;
        }

        @Override
        public int size() {
            return x0.this.f24798b.size();
        }
    }

    public x0() {
    }

    @Override
    public void clear() {
        this.f24798b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Short) && this.f24798b.z(((Short) obj).shortValue());
        }
        ee.l0<V> l0Var = this.f24798b;
        return l0Var.z(l0Var.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return this.f24798b.containsValue(obj);
    }

    public ee.l0<V> e() {
        return this.f24798b;
    }

    @Override
    public Set<Map.Entry<Short, V>> entrySet() {
        return new a();
    }

    @Override
    public V put(Short sh2, V v10) {
        return this.f24798b.Aa(sh2 == null ? this.f24798b.l() : g(sh2), v10);
    }

    public short g(Short sh2) {
        return sh2.shortValue();
    }

    @Override
    public V get(Object obj) {
        short l10;
        if (obj == null) {
            l10 = this.f24798b.l();
        } else {
            if (!(obj instanceof Short)) {
                return null;
            }
            l10 = g((Short) obj);
        }
        return this.f24798b.n0(l10);
    }

    public Short h(short s10) {
        return Short.valueOf(s10);
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override
    public void putAll(Map<? extends Short, ? extends V> map) {
        Iterator<Map.Entry<? extends Short, ? extends V>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Short, ? extends V> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24798b = (ee.l0) objectInput.readObject();
    }

    @Override
    public V remove(Object obj) {
        short l10;
        if (obj == null) {
            l10 = this.f24798b.l();
        } else {
            if (!(obj instanceof Short)) {
                return null;
            }
            l10 = g((Short) obj);
        }
        return this.f24798b.d(l10);
    }

    @Override
    public int size() {
        return this.f24798b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24798b);
    }

    public x0(ee.l0<V> l0Var) {
        this.f24798b = l0Var;
    }
}
