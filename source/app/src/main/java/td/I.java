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

public class I extends AbstractMap<Float, Integer> implements Map<Float, Integer>, Externalizable, Cloneable {

    public static final long f24288c = 1;

    public ee.C f24289b;

    public class a extends AbstractSet<Map.Entry<Float, Integer>> {

        public class C0593a implements Iterator<Map.Entry<Float, Integer>> {

            public final Zd.G f24291b;

            public class C0594a implements Map.Entry<Float, Integer> {

                public Integer f24293b;

                public final Integer f24294c;

                public final Float f24295d;

                public C0594a(Integer num, Float f10) {
                    this.f24294c = num;
                    this.f24295d = f10;
                    this.f24293b = num;
                }

                @Override
                public Float getKey() {
                    return this.f24295d;
                }

                @Override
                public Integer getValue() {
                    return this.f24293b;
                }

                @Override
                public Integer setValue(Integer num) {
                    this.f24293b = num;
                    return I.this.put(this.f24295d, num);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24295d) && entry.getValue().equals(this.f24293b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24295d.hashCode() + this.f24293b.hashCode();
                }
            }

            public C0593a() {
                this.f24291b = I.this.f24289b.iterator();
            }

            @Override
            public Map.Entry<Float, Integer> next() {
                this.f24291b.g();
                float key = this.f24291b.key();
                Float j10 = key == I.this.f24289b.l() ? null : I.this.j(key);
                int value = this.f24291b.value();
                return new C0594a(value != I.this.f24289b.i() ? I.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24291b.hasNext();
            }

            @Override
            public void remove() {
                this.f24291b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Float, Integer> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Float, Integer>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            I.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return I.this.containsKey(key) && I.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return I.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Float, Integer>> iterator() {
            return new C0593a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Float f10 = (Float) ((Map.Entry) obj).getKey();
            I i10 = I.this;
            i10.f24289b.c(i10.h(f10));
            return true;
        }

        @Override
        public int size() {
            return I.this.f24289b.size();
        }
    }

    public I() {
    }

    @Override
    public Integer get(Object obj) {
        float l10;
        if (obj == null) {
            l10 = this.f24289b.l();
        } else {
            if (!(obj instanceof Float)) {
                return null;
            }
            l10 = h(obj);
        }
        int q02 = this.f24289b.q0(l10);
        if (q02 == this.f24289b.i()) {
            return null;
        }
        return k(q02);
    }

    @Override
    public void clear() {
        this.f24289b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Float) && this.f24289b.H(h(obj));
        }
        ee.C c10 = this.f24289b;
        return c10.H(c10.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Integer) && this.f24289b.Q(i(obj));
    }

    public ee.C e() {
        return this.f24289b;
    }

    @Override
    public Set<Map.Entry<Float, Integer>> entrySet() {
        return new a();
    }

    @Override
    public Integer put(Float f10, Integer num) {
        int M52 = this.f24289b.M5(f10 == null ? this.f24289b.l() : h(f10), num == null ? this.f24289b.i() : i(num));
        if (M52 == this.f24289b.i()) {
            return null;
        }
        return k(M52);
    }

    @Override
    public Integer remove(Object obj) {
        float l10;
        if (obj == null) {
            l10 = this.f24289b.l();
        } else {
            if (!(obj instanceof Float)) {
                return null;
            }
            l10 = h(obj);
        }
        int c10 = this.f24289b.c(l10);
        if (c10 == this.f24289b.i()) {
            return null;
        }
        return k(c10);
    }

    public float h(Object obj) {
        return ((Float) obj).floatValue();
    }

    public int i(Object obj) {
        return ((Integer) obj).intValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Float j(float f10) {
        return Float.valueOf(f10);
    }

    public Integer k(int i10) {
        return Integer.valueOf(i10);
    }

    @Override
    public void putAll(Map<? extends Float, ? extends Integer> map) {
        Iterator<Map.Entry<? extends Float, ? extends Integer>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Float, ? extends Integer> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24289b = (ee.C) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24289b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24289b);
    }

    public I(ee.C c10) {
        this.f24289b = c10;
    }
}
