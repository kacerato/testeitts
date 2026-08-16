package Td;

import Zd.InterfaceC3451i;
import ee.InterfaceC13066g;
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

public class C3069h<V> extends AbstractMap<Byte, V> implements Map<Byte, V>, Externalizable, Cloneable {

    public static final long f24529c = 1;

    public InterfaceC13066g<V> f24530b;

    public class a extends AbstractSet<Map.Entry<Byte, V>> {

        public class C0644a implements Iterator<Map.Entry<Byte, V>> {

            public final InterfaceC3451i<V> f24532b;

            public class C0645a implements Map.Entry<Byte, V> {

                public V f24534b;

                public final Object f24535c;

                public final Byte f24536d;

                /* JADX WARN: Multi-variable type inference failed */
                public C0645a(Object obj, Byte b10) {
                    this.f24535c = obj;
                    this.f24536d = b10;
                    this.f24534b = obj;
                }

                @Override
                public Byte getKey() {
                    return this.f24536d;
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24536d) && entry.getValue().equals(this.f24534b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public V getValue() {
                    return this.f24534b;
                }

                @Override
                public int hashCode() {
                    return this.f24536d.hashCode() + this.f24534b.hashCode();
                }

                @Override
                public V setValue(V v10) {
                    this.f24534b = v10;
                    return (V) C3069h.this.put(this.f24536d, v10);
                }
            }

            public C0644a() {
                this.f24532b = C3069h.this.f24530b.iterator();
            }

            @Override
            public Map.Entry<Byte, V> next() {
                this.f24532b.g();
                byte key = this.f24532b.key();
                return new C0645a(this.f24532b.value(), key == C3069h.this.f24530b.l() ? null : C3069h.this.h(key));
            }

            @Override
            public boolean hasNext() {
                return this.f24532b.hasNext();
            }

            @Override
            public void remove() {
                this.f24532b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Byte, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Byte, V>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C3069h.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return C3069h.this.containsKey(key) && C3069h.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return C3069h.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Byte, V>> iterator() {
            return new C0644a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Byte b10 = (Byte) ((Map.Entry) obj).getKey();
            C3069h c3069h = C3069h.this;
            c3069h.f24530b.m(c3069h.g(b10));
            return true;
        }

        @Override
        public int size() {
            return C3069h.this.f24530b.size();
        }
    }

    public C3069h() {
    }

    @Override
    public void clear() {
        this.f24530b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Byte) && this.f24530b.D(((Byte) obj).byteValue());
        }
        InterfaceC13066g<V> interfaceC13066g = this.f24530b;
        return interfaceC13066g.D(interfaceC13066g.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return this.f24530b.containsValue(obj);
    }

    public InterfaceC13066g<V> e() {
        return this.f24530b;
    }

    @Override
    public Set<Map.Entry<Byte, V>> entrySet() {
        return new a();
    }

    @Override
    public V put(Byte b10, V v10) {
        return this.f24530b.k4(b10 == null ? this.f24530b.l() : g(b10), v10);
    }

    public byte g(Byte b10) {
        return b10.byteValue();
    }

    @Override
    public V get(Object obj) {
        byte l10;
        if (obj == null) {
            l10 = this.f24530b.l();
        } else {
            if (!(obj instanceof Byte)) {
                return null;
            }
            l10 = g((Byte) obj);
        }
        return this.f24530b.s0(l10);
    }

    public Byte h(byte b10) {
        return Byte.valueOf(b10);
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override
    public void putAll(Map<? extends Byte, ? extends V> map) {
        Iterator<Map.Entry<? extends Byte, ? extends V>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Byte, ? extends V> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24530b = (InterfaceC13066g) objectInput.readObject();
    }

    @Override
    public V remove(Object obj) {
        byte l10;
        if (obj == null) {
            l10 = this.f24530b.l();
        } else {
            if (!(obj instanceof Byte)) {
                return null;
            }
            l10 = g((Byte) obj);
        }
        return this.f24530b.m(l10);
    }

    @Override
    public int size() {
        return this.f24530b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24530b);
    }

    public C3069h(InterfaceC13066g<V> interfaceC13066g) {
        this.f24530b = interfaceC13066g;
    }
}
