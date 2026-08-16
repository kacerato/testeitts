package Td;

import ee.InterfaceC13058A;
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

public class G extends AbstractMap<Float, Double> implements Map<Float, Double>, Externalizable, Cloneable {

    public static final long f24270c = 1;

    public InterfaceC13058A f24271b;

    public class a extends AbstractSet<Map.Entry<Float, Double>> {

        public class C0589a implements Iterator<Map.Entry<Float, Double>> {

            public final Zd.E f24273b;

            public class C0590a implements Map.Entry<Float, Double> {

                public Double f24275b;

                public final Double f24276c;

                public final Float f24277d;

                public C0590a(Double d10, Float f10) {
                    this.f24276c = d10;
                    this.f24277d = f10;
                    this.f24275b = d10;
                }

                @Override
                public Float getKey() {
                    return this.f24277d;
                }

                @Override
                public Double getValue() {
                    return this.f24275b;
                }

                @Override
                public Double setValue(Double d10) {
                    this.f24275b = d10;
                    return G.this.put(this.f24277d, d10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24277d) && entry.getValue().equals(this.f24275b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24277d.hashCode() + this.f24275b.hashCode();
                }
            }

            public C0589a() {
                this.f24273b = G.this.f24271b.iterator();
            }

            @Override
            public Map.Entry<Float, Double> next() {
                this.f24273b.g();
                float key = this.f24273b.key();
                Float j10 = key == G.this.f24271b.l() ? null : G.this.j(key);
                double value = this.f24273b.value();
                return new C0590a(value != G.this.f24271b.i() ? G.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24273b.hasNext();
            }

            @Override
            public void remove() {
                this.f24273b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Float, Double> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Float, Double>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            G.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return G.this.containsKey(key) && G.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return G.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Float, Double>> iterator() {
            return new C0589a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Float f10 = (Float) ((Map.Entry) obj).getKey();
            G g10 = G.this;
            g10.f24271b.c(g10.h(f10));
            return true;
        }

        @Override
        public int size() {
            return G.this.f24271b.size();
        }
    }

    public G() {
    }

    @Override
    public Double get(Object obj) {
        float l10;
        if (obj == null) {
            l10 = this.f24271b.l();
        } else {
            if (!(obj instanceof Float)) {
                return null;
            }
            l10 = h(obj);
        }
        double q02 = this.f24271b.q0(l10);
        if (q02 == this.f24271b.i()) {
            return null;
        }
        return k(q02);
    }

    @Override
    public void clear() {
        this.f24271b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Float) && this.f24271b.H(h(obj));
        }
        InterfaceC13058A interfaceC13058A = this.f24271b;
        return interfaceC13058A.H(interfaceC13058A.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Double) && this.f24271b.T(i(obj));
    }

    public InterfaceC13058A e() {
        return this.f24271b;
    }

    @Override
    public Set<Map.Entry<Float, Double>> entrySet() {
        return new a();
    }

    @Override
    public Double put(Float f10, Double d10) {
        double H52 = this.f24271b.H5(f10 == null ? this.f24271b.l() : h(f10), d10 == null ? this.f24271b.i() : i(d10));
        if (H52 == this.f24271b.i()) {
            return null;
        }
        return k(H52);
    }

    @Override
    public Double remove(Object obj) {
        float l10;
        if (obj == null) {
            l10 = this.f24271b.l();
        } else {
            if (!(obj instanceof Float)) {
                return null;
            }
            l10 = h(obj);
        }
        double c10 = this.f24271b.c(l10);
        if (c10 == this.f24271b.i()) {
            return null;
        }
        return k(c10);
    }

    public float h(Object obj) {
        return ((Float) obj).floatValue();
    }

    public double i(Object obj) {
        return ((Double) obj).doubleValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Float j(float f10) {
        return Float.valueOf(f10);
    }

    public Double k(double d10) {
        return Double.valueOf(d10);
    }

    @Override
    public void putAll(Map<? extends Float, ? extends Double> map) {
        Iterator<Map.Entry<? extends Float, ? extends Double>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Float, ? extends Double> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24271b = (InterfaceC13058A) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24271b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24271b);
    }

    public G(InterfaceC13058A interfaceC13058A) {
        this.f24271b = interfaceC13058A;
    }
}
