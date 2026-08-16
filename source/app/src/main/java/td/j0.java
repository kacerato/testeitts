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

public class j0<K> extends AbstractMap<K, Byte> implements Map<K, Byte>, Externalizable, Cloneable {

    public static final long f24564c = 1;

    public ee.Y<K> f24565b;

    public class a extends AbstractSet<Map.Entry<K, Byte>> {

        public class C0650a implements Iterator<Map.Entry<K, Byte>> {

            public final Zd.f0<K> f24567b;

            public class C0651a implements Map.Entry<K, Byte> {

                public Byte f24569b;

                public final Byte f24570c;

                public final Object f24571d;

                public C0651a(Byte b10, Object obj) {
                    this.f24570c = b10;
                    this.f24571d = obj;
                    this.f24569b = b10;
                }

                @Override
                public Byte getValue() {
                    return this.f24569b;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public Byte setValue(Byte b10) {
                    this.f24569b = b10;
                    return j0.this.put(this.f24571d, b10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24571d) && entry.getValue().equals(this.f24569b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public K getKey() {
                    return (K) this.f24571d;
                }

                @Override
                public int hashCode() {
                    return this.f24571d.hashCode() + this.f24569b.hashCode();
                }
            }

            public C0650a() {
                this.f24567b = j0.this.f24565b.iterator();
            }

            @Override
            public Map.Entry<K, Byte> next() {
                this.f24567b.g();
                return new C0651a(j0.this.i(this.f24567b.value()), this.f24567b.key());
            }

            @Override
            public boolean hasNext() {
                return this.f24567b.hasNext();
            }

            @Override
            public void remove() {
                this.f24567b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<K, Byte> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<K, Byte>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            j0.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return j0.this.containsKey(key) && j0.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return j0.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<K, Byte>> iterator() {
            return new C0650a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            j0.this.f24565b.remove(((Map.Entry) obj).getKey());
            return true;
        }

        @Override
        public int size() {
            return j0.this.f24565b.size();
        }
    }

    public j0() {
    }

    @Override
    public Byte get(Object obj) {
        byte b10 = this.f24565b.get(obj);
        if (b10 == this.f24565b.i()) {
            return null;
        }
        return i(b10);
    }

    @Override
    public void clear() {
        this.f24565b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        return this.f24565b.containsKey(obj);
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Byte) && this.f24565b.P(h(obj));
    }

    public ee.Y<K> e() {
        return this.f24565b;
    }

    @Override
    public Set<Map.Entry<K, Byte>> entrySet() {
        return new a();
    }

    @Override
    public Byte put(K k10, Byte b10) {
        if (b10 != null) {
            return i(this.f24565b.oa(k10, h(b10)));
        }
        ee.Y<K> y10 = this.f24565b;
        return i(y10.oa(k10, y10.i()));
    }

    @Override
    public Byte remove(Object obj) {
        byte remove = this.f24565b.remove(obj);
        if (remove == this.f24565b.i()) {
            return null;
        }
        return i(remove);
    }

    public byte h(Object obj) {
        return ((Byte) obj).byteValue();
    }

    public Byte i(byte b10) {
        return Byte.valueOf(b10);
    }

    @Override
    public boolean isEmpty() {
        return this.f24565b.size() == 0;
    }

    @Override
    public void putAll(Map<? extends K, ? extends Byte> map) {
        Iterator<Map.Entry<? extends K, ? extends Byte>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends K, ? extends Byte> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24565b = (ee.Y) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24565b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24565b);
    }

    public j0(ee.Y<K> y10) {
        this.f24565b = y10;
    }
}
