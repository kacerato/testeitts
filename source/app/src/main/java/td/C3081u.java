package Td;

import Zd.InterfaceC3461t;
import ee.InterfaceC13076q;
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

public class C3081u extends AbstractMap<Double, Byte> implements Map<Double, Byte>, Externalizable, Cloneable {

    public static final long f24741c = 1;

    public InterfaceC13076q f24742b;

    public class a extends AbstractSet<Map.Entry<Double, Byte>> {

        public class C0688a implements Iterator<Map.Entry<Double, Byte>> {

            public final InterfaceC3461t f24744b;

            public class C0689a implements Map.Entry<Double, Byte> {

                public Byte f24746b;

                public final Byte f24747c;

                public final Double f24748d;

                public C0689a(Byte b10, Double d10) {
                    this.f24747c = b10;
                    this.f24748d = d10;
                    this.f24746b = b10;
                }

                @Override
                public Double getKey() {
                    return this.f24748d;
                }

                @Override
                public Byte getValue() {
                    return this.f24746b;
                }

                @Override
                public Byte setValue(Byte b10) {
                    this.f24746b = b10;
                    return C3081u.this.put(this.f24748d, b10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24748d) && entry.getValue().equals(this.f24746b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24748d.hashCode() + this.f24746b.hashCode();
                }
            }

            public C0688a() {
                this.f24744b = C3081u.this.f24742b.iterator();
            }

            @Override
            public Map.Entry<Double, Byte> next() {
                this.f24744b.g();
                double key = this.f24744b.key();
                Double j10 = key == C3081u.this.f24742b.l() ? null : C3081u.this.j(key);
                byte value = this.f24744b.value();
                return new C0689a(value != C3081u.this.f24742b.i() ? C3081u.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24744b.hasNext();
            }

            @Override
            public void remove() {
                this.f24744b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Double, Byte> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Double, Byte>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C3081u.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return C3081u.this.containsKey(key) && C3081u.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return C3081u.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Double, Byte>> iterator() {
            return new C0688a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Double d10 = (Double) ((Map.Entry) obj).getKey();
            C3081u c3081u = C3081u.this;
            c3081u.f24742b.a(c3081u.h(d10));
            return true;
        }

        @Override
        public int size() {
            return C3081u.this.f24742b.size();
        }
    }

    public C3081u() {
    }

    @Override
    public Byte get(Object obj) {
        double l10;
        if (obj == null) {
            l10 = this.f24742b.l();
        } else {
            if (!(obj instanceof Double)) {
                return null;
            }
            l10 = h(obj);
        }
        byte p02 = this.f24742b.p0(l10);
        if (p02 == this.f24742b.i()) {
            return null;
        }
        return k(p02);
    }

    @Override
    public void clear() {
        this.f24742b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Double) && this.f24742b.A(h(obj));
        }
        InterfaceC13076q interfaceC13076q = this.f24742b;
        return interfaceC13076q.A(interfaceC13076q.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Byte) && this.f24742b.P(i(obj));
    }

    public InterfaceC13076q e() {
        return this.f24742b;
    }

    @Override
    public Set<Map.Entry<Double, Byte>> entrySet() {
        return new a();
    }

    @Override
    public Byte put(Double d10, Byte b10) {
        byte H22 = this.f24742b.H2(d10 == null ? this.f24742b.l() : h(d10), b10 == null ? this.f24742b.i() : i(b10));
        if (H22 == this.f24742b.i()) {
            return null;
        }
        return k(H22);
    }

    @Override
    public Byte remove(Object obj) {
        double l10;
        if (obj == null) {
            l10 = this.f24742b.l();
        } else {
            if (!(obj instanceof Double)) {
                return null;
            }
            l10 = h(obj);
        }
        byte a10 = this.f24742b.a(l10);
        if (a10 == this.f24742b.i()) {
            return null;
        }
        return k(a10);
    }

    public double h(Object obj) {
        return ((Double) obj).doubleValue();
    }

    public byte i(Object obj) {
        return ((Byte) obj).byteValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Double j(double d10) {
        return Double.valueOf(d10);
    }

    public Byte k(byte b10) {
        return Byte.valueOf(b10);
    }

    @Override
    public void putAll(Map<? extends Double, ? extends Byte> map) {
        Iterator<Map.Entry<? extends Double, ? extends Byte>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Double, ? extends Byte> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24742b = (InterfaceC13076q) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24742b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24742b);
    }

    public C3081u(InterfaceC13076q interfaceC13076q) {
        this.f24742b = interfaceC13076q;
    }
}
