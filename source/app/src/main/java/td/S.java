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

public class S extends AbstractMap<Integer, Float> implements Map<Integer, Float>, Externalizable, Cloneable {

    public static final long f24357c = 1;

    public ee.J f24358b;

    public class a extends AbstractSet<Map.Entry<Integer, Float>> {

        public class C0607a implements Iterator<Map.Entry<Integer, Float>> {

            public final Zd.O f24360b;

            public class C0608a implements Map.Entry<Integer, Float> {

                public Float f24362b;

                public final Float f24363c;

                public final Integer f24364d;

                public C0608a(Float f10, Integer num) {
                    this.f24363c = f10;
                    this.f24364d = num;
                    this.f24362b = f10;
                }

                @Override
                public Integer getKey() {
                    return this.f24364d;
                }

                @Override
                public Float getValue() {
                    return this.f24362b;
                }

                @Override
                public Float setValue(Float f10) {
                    this.f24362b = f10;
                    return S.this.put(this.f24364d, f10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24364d) && entry.getValue().equals(this.f24362b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24364d.hashCode() + this.f24362b.hashCode();
                }
            }

            public C0607a() {
                this.f24360b = S.this.f24358b.iterator();
            }

            @Override
            public Map.Entry<Integer, Float> next() {
                this.f24360b.g();
                int key = this.f24360b.key();
                Integer j10 = key == S.this.f24358b.l() ? null : S.this.j(key);
                float value = this.f24360b.value();
                return new C0608a(value != S.this.f24358b.i() ? S.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24360b.hasNext();
            }

            @Override
            public void remove() {
                this.f24360b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Integer, Float> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Integer, Float>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            S.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return S.this.containsKey(key) && S.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return S.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Integer, Float>> iterator() {
            return new C0607a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Integer num = (Integer) ((Map.Entry) obj).getKey();
            S s10 = S.this;
            s10.f24358b.remove(s10.h(num));
            return true;
        }

        @Override
        public int size() {
            return S.this.f24358b.size();
        }
    }

    public S() {
    }

    @Override
    public Float get(Object obj) {
        int l10;
        if (obj == null) {
            l10 = this.f24358b.l();
        } else {
            if (!(obj instanceof Integer)) {
                return null;
            }
            l10 = h(obj);
        }
        float f10 = this.f24358b.get(l10);
        if (f10 == this.f24358b.i()) {
            return null;
        }
        return k(f10);
    }

    @Override
    public void clear() {
        this.f24358b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Integer) && this.f24358b.F(h(obj));
        }
        ee.J j10 = this.f24358b;
        return j10.F(j10.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Float) && this.f24358b.U(i(obj));
    }

    public ee.J e() {
        return this.f24358b;
    }

    @Override
    public Set<Map.Entry<Integer, Float>> entrySet() {
        return new a();
    }

    @Override
    public Float put(Integer num, Float f10) {
        float Z42 = this.f24358b.Z4(num == null ? this.f24358b.l() : h(num), f10 == null ? this.f24358b.i() : i(f10));
        if (Z42 == this.f24358b.i()) {
            return null;
        }
        return k(Z42);
    }

    @Override
    public Float remove(Object obj) {
        int l10;
        if (obj == null) {
            l10 = this.f24358b.l();
        } else {
            if (!(obj instanceof Integer)) {
                return null;
            }
            l10 = h(obj);
        }
        float remove = this.f24358b.remove(l10);
        if (remove == this.f24358b.i()) {
            return null;
        }
        return k(remove);
    }

    public int h(Object obj) {
        return ((Integer) obj).intValue();
    }

    public float i(Object obj) {
        return ((Float) obj).floatValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Integer j(int i10) {
        return Integer.valueOf(i10);
    }

    public Float k(float f10) {
        return Float.valueOf(f10);
    }

    @Override
    public void putAll(Map<? extends Integer, ? extends Float> map) {
        Iterator<Map.Entry<? extends Integer, ? extends Float>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Integer, ? extends Float> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24358b = (ee.J) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24358b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24358b);
    }

    public S(ee.J j10) {
        this.f24358b = j10;
    }
}
