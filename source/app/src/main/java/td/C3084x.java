package Td;

import Zd.InterfaceC3464w;
import ee.InterfaceC13078t;
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

public class C3084x extends AbstractMap<Double, Float> implements Map<Double, Float>, Externalizable, Cloneable {

    public static final long f24788c = 1;

    public InterfaceC13078t f24789b;

    public class a extends AbstractSet<Map.Entry<Double, Float>> {

        public class C0698a implements Iterator<Map.Entry<Double, Float>> {

            public final InterfaceC3464w f24791b;

            public class C0699a implements Map.Entry<Double, Float> {

                public Float f24793b;

                public final Float f24794c;

                public final Double f24795d;

                public C0699a(Float f10, Double d10) {
                    this.f24794c = f10;
                    this.f24795d = d10;
                    this.f24793b = f10;
                }

                @Override
                public Double getKey() {
                    return this.f24795d;
                }

                @Override
                public Float getValue() {
                    return this.f24793b;
                }

                @Override
                public Float setValue(Float f10) {
                    this.f24793b = f10;
                    return C3084x.this.put(this.f24795d, f10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24795d) && entry.getValue().equals(this.f24793b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24795d.hashCode() + this.f24793b.hashCode();
                }
            }

            public C0698a() {
                this.f24791b = C3084x.this.f24789b.iterator();
            }

            @Override
            public Map.Entry<Double, Float> next() {
                this.f24791b.g();
                double key = this.f24791b.key();
                Double j10 = key == C3084x.this.f24789b.l() ? null : C3084x.this.j(key);
                float value = this.f24791b.value();
                return new C0699a(value != C3084x.this.f24789b.i() ? C3084x.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24791b.hasNext();
            }

            @Override
            public void remove() {
                this.f24791b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Double, Float> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Double, Float>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C3084x.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return C3084x.this.containsKey(key) && C3084x.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return C3084x.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Double, Float>> iterator() {
            return new C0698a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Double d10 = (Double) ((Map.Entry) obj).getKey();
            C3084x c3084x = C3084x.this;
            c3084x.f24789b.a(c3084x.h(d10));
            return true;
        }

        @Override
        public int size() {
            return C3084x.this.f24789b.size();
        }
    }

    public C3084x() {
    }

    @Override
    public Float get(Object obj) {
        double l10;
        if (obj == null) {
            l10 = this.f24789b.l();
        } else {
            if (!(obj instanceof Double)) {
                return null;
            }
            l10 = h(obj);
        }
        float p02 = this.f24789b.p0(l10);
        if (p02 == this.f24789b.i()) {
            return null;
        }
        return k(p02);
    }

    @Override
    public void clear() {
        this.f24789b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Double) && this.f24789b.A(h(obj));
        }
        InterfaceC13078t interfaceC13078t = this.f24789b;
        return interfaceC13078t.A(interfaceC13078t.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Float) && this.f24789b.U(i(obj));
    }

    public InterfaceC13078t e() {
        return this.f24789b;
    }

    @Override
    public Set<Map.Entry<Double, Float>> entrySet() {
        return new a();
    }

    @Override
    public Float put(Double d10, Float f10) {
        float K22 = this.f24789b.K2(d10 == null ? this.f24789b.l() : h(d10), f10 == null ? this.f24789b.i() : i(f10));
        if (K22 == this.f24789b.i()) {
            return null;
        }
        return k(K22);
    }

    @Override
    public Float remove(Object obj) {
        double l10;
        if (obj == null) {
            l10 = this.f24789b.l();
        } else {
            if (!(obj instanceof Double)) {
                return null;
            }
            l10 = h(obj);
        }
        float a10 = this.f24789b.a(l10);
        if (a10 == this.f24789b.i()) {
            return null;
        }
        return k(a10);
    }

    public double h(Object obj) {
        return ((Double) obj).doubleValue();
    }

    public float i(Object obj) {
        return ((Float) obj).floatValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Double j(double d10) {
        return Double.valueOf(d10);
    }

    public Float k(float f10) {
        return Float.valueOf(f10);
    }

    @Override
    public void putAll(Map<? extends Double, ? extends Float> map) {
        Iterator<Map.Entry<? extends Double, ? extends Float>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Double, ? extends Float> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24789b = (InterfaceC13078t) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24789b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24789b);
    }

    public C3084x(InterfaceC13078t interfaceC13078t) {
        this.f24789b = interfaceC13078t;
    }
}
