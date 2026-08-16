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

public class Z extends AbstractMap<Long, Byte> implements Map<Long, Byte>, Externalizable, Cloneable {

    public static final long f24408c = 1;

    public ee.O f24409b;

    public class a extends AbstractSet<Map.Entry<Long, Byte>> {

        public class C0617a implements Iterator<Map.Entry<Long, Byte>> {

            public final Zd.W f24411b;

            public class C0618a implements Map.Entry<Long, Byte> {

                public Byte f24413b;

                public final Byte f24414c;

                public final Long f24415d;

                public C0618a(Byte b10, Long l10) {
                    this.f24414c = b10;
                    this.f24415d = l10;
                    this.f24413b = b10;
                }

                @Override
                public Long getKey() {
                    return this.f24415d;
                }

                @Override
                public Byte getValue() {
                    return this.f24413b;
                }

                @Override
                public Byte setValue(Byte b10) {
                    this.f24413b = b10;
                    return Z.this.put(this.f24415d, b10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24415d) && entry.getValue().equals(this.f24413b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24415d.hashCode() + this.f24413b.hashCode();
                }
            }

            public C0617a() {
                this.f24411b = Z.this.f24409b.iterator();
            }

            @Override
            public Map.Entry<Long, Byte> next() {
                this.f24411b.g();
                long key = this.f24411b.key();
                Long j10 = key == Z.this.f24409b.l() ? null : Z.this.j(key);
                byte value = this.f24411b.value();
                return new C0618a(value != Z.this.f24409b.i() ? Z.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24411b.hasNext();
            }

            @Override
            public void remove() {
                this.f24411b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Long, Byte> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Long, Byte>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            Z.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return Z.this.containsKey(key) && Z.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return Z.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Long, Byte>> iterator() {
            return new C0617a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Long l10 = (Long) ((Map.Entry) obj).getKey();
            Z z10 = Z.this;
            z10.f24409b.e(z10.h(l10));
            return true;
        }

        @Override
        public int size() {
            return Z.this.f24409b.size();
        }
    }

    public Z() {
    }

    @Override
    public Byte get(Object obj) {
        long l10;
        if (obj == null) {
            l10 = this.f24409b.l();
        } else {
            if (!(obj instanceof Long)) {
                return null;
            }
            l10 = h(obj);
        }
        byte u10 = this.f24409b.u(l10);
        if (u10 == this.f24409b.i()) {
            return null;
        }
        return k(u10);
    }

    @Override
    public void clear() {
        this.f24409b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Long) && this.f24409b.E(h(obj));
        }
        ee.O o10 = this.f24409b;
        return o10.E(o10.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Byte) && this.f24409b.P(i(obj));
    }

    public ee.O e() {
        return this.f24409b;
    }

    @Override
    public Set<Map.Entry<Long, Byte>> entrySet() {
        return new a();
    }

    @Override
    public Byte put(Long l10, Byte b10) {
        byte f72 = this.f24409b.f7(l10 == null ? this.f24409b.l() : h(l10), b10 == null ? this.f24409b.i() : i(b10));
        if (f72 == this.f24409b.i()) {
            return null;
        }
        return k(f72);
    }

    @Override
    public Byte remove(Object obj) {
        long l10;
        if (obj == null) {
            l10 = this.f24409b.l();
        } else {
            if (!(obj instanceof Long)) {
                return null;
            }
            l10 = h(obj);
        }
        byte e10 = this.f24409b.e(l10);
        if (e10 == this.f24409b.i()) {
            return null;
        }
        return k(e10);
    }

    public long h(Object obj) {
        return ((Long) obj).longValue();
    }

    public byte i(Object obj) {
        return ((Byte) obj).byteValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Long j(long j10) {
        return Long.valueOf(j10);
    }

    public Byte k(byte b10) {
        return Byte.valueOf(b10);
    }

    @Override
    public void putAll(Map<? extends Long, ? extends Byte> map) {
        Iterator<Map.Entry<? extends Long, ? extends Byte>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Long, ? extends Byte> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24409b = (ee.O) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24409b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24409b);
    }

    public Z(ee.O o10) {
        this.f24409b = o10;
    }
}
