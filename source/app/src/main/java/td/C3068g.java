package Td;

import Zd.InterfaceC3450h;
import ee.InterfaceC13065f;
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

public class C3068g extends AbstractMap<Byte, Long> implements Map<Byte, Long>, Externalizable, Cloneable {

    public static final long f24511c = 1;

    public InterfaceC13065f f24512b;

    public class a extends AbstractSet<Map.Entry<Byte, Long>> {

        public class C0640a implements Iterator<Map.Entry<Byte, Long>> {

            public final InterfaceC3450h f24514b;

            public class C0641a implements Map.Entry<Byte, Long> {

                public Long f24516b;

                public final Long f24517c;

                public final Byte f24518d;

                public C0641a(Long l10, Byte b10) {
                    this.f24517c = l10;
                    this.f24518d = b10;
                    this.f24516b = l10;
                }

                @Override
                public Byte getKey() {
                    return this.f24518d;
                }

                @Override
                public Long getValue() {
                    return this.f24516b;
                }

                @Override
                public Long setValue(Long l10) {
                    this.f24516b = l10;
                    return C3068g.this.put(this.f24518d, l10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24518d) && entry.getValue().equals(this.f24516b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24518d.hashCode() + this.f24516b.hashCode();
                }
            }

            public C0640a() {
                this.f24514b = C3068g.this.f24512b.iterator();
            }

            @Override
            public Map.Entry<Byte, Long> next() {
                this.f24514b.g();
                byte key = this.f24514b.key();
                Byte j10 = key == C3068g.this.f24512b.l() ? null : C3068g.this.j(key);
                long value = this.f24514b.value();
                return new C0641a(value != C3068g.this.f24512b.i() ? C3068g.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24514b.hasNext();
            }

            @Override
            public void remove() {
                this.f24514b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Byte, Long> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Byte, Long>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C3068g.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return C3068g.this.containsKey(key) && C3068g.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return C3068g.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Byte, Long>> iterator() {
            return new C0640a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Byte b10 = (Byte) ((Map.Entry) obj).getKey();
            C3068g c3068g = C3068g.this;
            c3068g.f24512b.m(c3068g.h(b10));
            return true;
        }

        @Override
        public int size() {
            return C3068g.this.f24512b.size();
        }
    }

    public C3068g() {
    }

    @Override
    public Long get(Object obj) {
        byte l10;
        if (obj == null) {
            l10 = this.f24512b.l();
        } else {
            if (!(obj instanceof Byte)) {
                return null;
            }
            l10 = h(obj);
        }
        long s02 = this.f24512b.s0(l10);
        if (s02 == this.f24512b.i()) {
            return null;
        }
        return k(s02);
    }

    @Override
    public void clear() {
        this.f24512b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Byte) && this.f24512b.D(h(obj));
        }
        InterfaceC13065f interfaceC13065f = this.f24512b;
        return interfaceC13065f.D(interfaceC13065f.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Long) && this.f24512b.R(i(obj));
    }

    public InterfaceC13065f e() {
        return this.f24512b;
    }

    @Override
    public Set<Map.Entry<Byte, Long>> entrySet() {
        return new a();
    }

    @Override
    public Long put(Byte b10, Long l10) {
        long b42 = this.f24512b.b4(b10 == null ? this.f24512b.l() : h(b10), l10 == null ? this.f24512b.i() : i(l10));
        if (b42 == this.f24512b.i()) {
            return null;
        }
        return k(b42);
    }

    @Override
    public Long remove(Object obj) {
        byte l10;
        if (obj == null) {
            l10 = this.f24512b.l();
        } else {
            if (!(obj instanceof Byte)) {
                return null;
            }
            l10 = h(obj);
        }
        long m10 = this.f24512b.m(l10);
        if (m10 == this.f24512b.i()) {
            return null;
        }
        return k(m10);
    }

    public byte h(Object obj) {
        return ((Byte) obj).byteValue();
    }

    public long i(Object obj) {
        return ((Long) obj).longValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Byte j(byte b10) {
        return Byte.valueOf(b10);
    }

    public Long k(long j10) {
        return Long.valueOf(j10);
    }

    @Override
    public void putAll(Map<? extends Byte, ? extends Long> map) {
        Iterator<Map.Entry<? extends Byte, ? extends Long>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Byte, ? extends Long> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24512b = (InterfaceC13065f) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24512b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24512b);
    }

    public C3068g(InterfaceC13065f interfaceC13065f) {
        this.f24512b = interfaceC13065f;
    }
}
