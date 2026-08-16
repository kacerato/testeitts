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

public class b0 extends AbstractMap<Long, Double> implements Map<Long, Double>, Externalizable, Cloneable {

    public static final long f24444c = 1;

    public ee.Q f24445b;

    public class a extends AbstractSet<Map.Entry<Long, Double>> {

        public class C0626a implements Iterator<Map.Entry<Long, Double>> {

            public final Zd.Y f24447b;

            public class C0627a implements Map.Entry<Long, Double> {

                public Double f24449b;

                public final Double f24450c;

                public final Long f24451d;

                public C0627a(Double d10, Long l10) {
                    this.f24450c = d10;
                    this.f24451d = l10;
                    this.f24449b = d10;
                }

                @Override
                public Long getKey() {
                    return this.f24451d;
                }

                @Override
                public Double getValue() {
                    return this.f24449b;
                }

                @Override
                public Double setValue(Double d10) {
                    this.f24449b = d10;
                    return b0.this.put(this.f24451d, d10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24451d) && entry.getValue().equals(this.f24449b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24451d.hashCode() + this.f24449b.hashCode();
                }
            }

            public C0626a() {
                this.f24447b = b0.this.f24445b.iterator();
            }

            @Override
            public Map.Entry<Long, Double> next() {
                this.f24447b.g();
                long key = this.f24447b.key();
                Long j10 = key == b0.this.f24445b.l() ? null : b0.this.j(key);
                double value = this.f24447b.value();
                return new C0627a(value != b0.this.f24445b.i() ? b0.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24447b.hasNext();
            }

            @Override
            public void remove() {
                this.f24447b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Long, Double> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Long, Double>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            b0.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return b0.this.containsKey(key) && b0.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return b0.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Long, Double>> iterator() {
            return new C0626a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Long l10 = (Long) ((Map.Entry) obj).getKey();
            b0 b0Var = b0.this;
            b0Var.f24445b.e(b0Var.h(l10));
            return true;
        }

        @Override
        public int size() {
            return b0.this.f24445b.size();
        }
    }

    public b0() {
    }

    @Override
    public Double get(Object obj) {
        long l10;
        if (obj == null) {
            l10 = this.f24445b.l();
        } else {
            if (!(obj instanceof Long)) {
                return null;
            }
            l10 = h(obj);
        }
        double u10 = this.f24445b.u(l10);
        if (u10 == this.f24445b.i()) {
            return null;
        }
        return k(u10);
    }

    @Override
    public void clear() {
        this.f24445b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Long) && this.f24445b.E(h(obj));
        }
        ee.Q q10 = this.f24445b;
        return q10.E(q10.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Double) && this.f24445b.T(i(obj));
    }

    public ee.Q e() {
        return this.f24445b;
    }

    @Override
    public Set<Map.Entry<Long, Double>> entrySet() {
        return new a();
    }

    @Override
    public Double put(Long l10, Double d10) {
        double j72 = this.f24445b.j7(l10 == null ? this.f24445b.l() : h(l10), d10 == null ? this.f24445b.i() : i(d10));
        if (j72 == this.f24445b.i()) {
            return null;
        }
        return k(j72);
    }

    @Override
    public Double remove(Object obj) {
        long l10;
        if (obj == null) {
            l10 = this.f24445b.l();
        } else {
            if (!(obj instanceof Long)) {
                return null;
            }
            l10 = h(obj);
        }
        double e10 = this.f24445b.e(l10);
        if (e10 == this.f24445b.i()) {
            return null;
        }
        return k(e10);
    }

    public long h(Object obj) {
        return ((Long) obj).longValue();
    }

    public double i(Object obj) {
        return ((Double) obj).doubleValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Long j(long j10) {
        return Long.valueOf(j10);
    }

    public Double k(double d10) {
        return Double.valueOf(d10);
    }

    @Override
    public void putAll(Map<? extends Long, ? extends Double> map) {
        Iterator<Map.Entry<? extends Long, ? extends Double>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Long, ? extends Double> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24445b = (ee.Q) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24445b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24445b);
    }

    public b0(ee.Q q10) {
        this.f24445b = q10;
    }
}
