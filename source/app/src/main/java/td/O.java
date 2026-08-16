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

public class O extends AbstractMap<Integer, Byte> implements Map<Integer, Byte>, Externalizable, Cloneable {

    public static final long f24330c = 1;

    public ee.G f24331b;

    public class a extends AbstractSet<Map.Entry<Integer, Byte>> {

        public class C0601a implements Iterator<Map.Entry<Integer, Byte>> {

            public final Zd.L f24333b;

            public class C0602a implements Map.Entry<Integer, Byte> {

                public Byte f24335b;

                public final Byte f24336c;

                public final Integer f24337d;

                public C0602a(Byte b10, Integer num) {
                    this.f24336c = b10;
                    this.f24337d = num;
                    this.f24335b = b10;
                }

                @Override
                public Integer getKey() {
                    return this.f24337d;
                }

                @Override
                public Byte getValue() {
                    return this.f24335b;
                }

                @Override
                public Byte setValue(Byte b10) {
                    this.f24335b = b10;
                    return O.this.put(this.f24337d, b10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24337d) && entry.getValue().equals(this.f24335b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24337d.hashCode() + this.f24335b.hashCode();
                }
            }

            public C0601a() {
                this.f24333b = O.this.f24331b.iterator();
            }

            @Override
            public Map.Entry<Integer, Byte> next() {
                this.f24333b.g();
                int key = this.f24333b.key();
                Integer j10 = key == O.this.f24331b.l() ? null : O.this.j(key);
                byte value = this.f24333b.value();
                return new C0602a(value != O.this.f24331b.i() ? O.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24333b.hasNext();
            }

            @Override
            public void remove() {
                this.f24333b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Integer, Byte> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Integer, Byte>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            O.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return O.this.containsKey(key) && O.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return O.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Integer, Byte>> iterator() {
            return new C0601a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Integer num = (Integer) ((Map.Entry) obj).getKey();
            O o10 = O.this;
            o10.f24331b.remove(o10.h(num));
            return true;
        }

        @Override
        public int size() {
            return O.this.f24331b.size();
        }
    }

    public O() {
    }

    @Override
    public Byte get(Object obj) {
        int l10;
        if (obj == null) {
            l10 = this.f24331b.l();
        } else {
            if (!(obj instanceof Integer)) {
                return null;
            }
            l10 = h(obj);
        }
        byte b10 = this.f24331b.get(l10);
        if (b10 == this.f24331b.i()) {
            return null;
        }
        return k(b10);
    }

    @Override
    public void clear() {
        this.f24331b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Integer) && this.f24331b.F(h(obj));
        }
        ee.G g10 = this.f24331b;
        return g10.F(g10.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Byte) && this.f24331b.P(i(obj));
    }

    public ee.G e() {
        return this.f24331b;
    }

    @Override
    public Set<Map.Entry<Integer, Byte>> entrySet() {
        return new a();
    }

    @Override
    public Byte put(Integer num, Byte b10) {
        byte V42 = this.f24331b.V4(num == null ? this.f24331b.l() : h(num), b10 == null ? this.f24331b.i() : i(b10));
        if (V42 == this.f24331b.i()) {
            return null;
        }
        return k(V42);
    }

    @Override
    public Byte remove(Object obj) {
        int l10;
        if (obj == null) {
            l10 = this.f24331b.l();
        } else {
            if (!(obj instanceof Integer)) {
                return null;
            }
            l10 = h(obj);
        }
        byte remove = this.f24331b.remove(l10);
        if (remove == this.f24331b.i()) {
            return null;
        }
        return k(remove);
    }

    public int h(Object obj) {
        return ((Integer) obj).intValue();
    }

    public byte i(Object obj) {
        return ((Byte) obj).byteValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Integer j(int i10) {
        return Integer.valueOf(i10);
    }

    public Byte k(byte b10) {
        return Byte.valueOf(b10);
    }

    @Override
    public void putAll(Map<? extends Integer, ? extends Byte> map) {
        Iterator<Map.Entry<? extends Integer, ? extends Byte>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Integer, ? extends Byte> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24331b = (ee.G) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24331b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24331b);
    }

    public O(ee.G g10) {
        this.f24331b = g10;
    }
}
