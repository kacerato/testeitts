package Td;

import ee.InterfaceC13083y;
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

public class E extends AbstractMap<Float, Byte> implements Map<Float, Byte>, Externalizable, Cloneable {

    public static final long f24252c = 1;

    public InterfaceC13083y f24253b;

    public class a extends AbstractSet<Map.Entry<Float, Byte>> {

        public class C0585a implements Iterator<Map.Entry<Float, Byte>> {

            public final Zd.C f24255b;

            public class C0586a implements Map.Entry<Float, Byte> {

                public Byte f24257b;

                public final Byte f24258c;

                public final Float f24259d;

                public C0586a(Byte b10, Float f10) {
                    this.f24258c = b10;
                    this.f24259d = f10;
                    this.f24257b = b10;
                }

                @Override
                public Float getKey() {
                    return this.f24259d;
                }

                @Override
                public Byte getValue() {
                    return this.f24257b;
                }

                @Override
                public Byte setValue(Byte b10) {
                    this.f24257b = b10;
                    return E.this.put(this.f24259d, b10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24259d) && entry.getValue().equals(this.f24257b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24259d.hashCode() + this.f24257b.hashCode();
                }
            }

            public C0585a() {
                this.f24255b = E.this.f24253b.iterator();
            }

            @Override
            public Map.Entry<Float, Byte> next() {
                this.f24255b.g();
                float key = this.f24255b.key();
                Float j10 = key == E.this.f24253b.l() ? null : E.this.j(key);
                byte value = this.f24255b.value();
                return new C0586a(value != E.this.f24253b.i() ? E.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24255b.hasNext();
            }

            @Override
            public void remove() {
                this.f24255b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Float, Byte> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Float, Byte>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            E.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return E.this.containsKey(key) && E.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return E.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Float, Byte>> iterator() {
            return new C0585a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Float f10 = (Float) ((Map.Entry) obj).getKey();
            E e10 = E.this;
            e10.f24253b.c(e10.h(f10));
            return true;
        }

        @Override
        public int size() {
            return E.this.f24253b.size();
        }
    }

    public E() {
    }

    @Override
    public Byte get(Object obj) {
        float l10;
        if (obj == null) {
            l10 = this.f24253b.l();
        } else {
            if (!(obj instanceof Float)) {
                return null;
            }
            l10 = h(obj);
        }
        byte q02 = this.f24253b.q0(l10);
        if (q02 == this.f24253b.i()) {
            return null;
        }
        return k(q02);
    }

    @Override
    public void clear() {
        this.f24253b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Float) && this.f24253b.H(h(obj));
        }
        InterfaceC13083y interfaceC13083y = this.f24253b;
        return interfaceC13083y.H(interfaceC13083y.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Byte) && this.f24253b.P(i(obj));
    }

    public InterfaceC13083y e() {
        return this.f24253b;
    }

    @Override
    public Set<Map.Entry<Float, Byte>> entrySet() {
        return new a();
    }

    @Override
    public Byte put(Float f10, Byte b10) {
        byte D52 = this.f24253b.D5(f10 == null ? this.f24253b.l() : h(f10), b10 == null ? this.f24253b.i() : i(b10));
        if (D52 == this.f24253b.i()) {
            return null;
        }
        return k(D52);
    }

    @Override
    public Byte remove(Object obj) {
        float l10;
        if (obj == null) {
            l10 = this.f24253b.l();
        } else {
            if (!(obj instanceof Float)) {
                return null;
            }
            l10 = h(obj);
        }
        byte c10 = this.f24253b.c(l10);
        if (c10 == this.f24253b.i()) {
            return null;
        }
        return k(c10);
    }

    public float h(Object obj) {
        return ((Float) obj).floatValue();
    }

    public byte i(Object obj) {
        return ((Byte) obj).byteValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Float j(float f10) {
        return Float.valueOf(f10);
    }

    public Byte k(byte b10) {
        return Byte.valueOf(b10);
    }

    @Override
    public void putAll(Map<? extends Float, ? extends Byte> map) {
        Iterator<Map.Entry<? extends Float, ? extends Byte>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Float, ? extends Byte> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24253b = (InterfaceC13083y) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24253b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24253b);
    }

    public E(InterfaceC13083y interfaceC13083y) {
        this.f24253b = interfaceC13083y;
    }
}
