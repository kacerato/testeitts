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

public class t0 extends AbstractMap<Short, Float> implements Map<Short, Float>, Externalizable, Cloneable {

    public static final long f24732c = 1;

    public ee.i0 f24733b;

    public class a extends AbstractSet<Map.Entry<Short, Float>> {

        public class C0686a implements Iterator<Map.Entry<Short, Float>> {

            public final Zd.q0 f24735b;

            public class C0687a implements Map.Entry<Short, Float> {

                public Float f24737b;

                public final Float f24738c;

                public final Short f24739d;

                public C0687a(Float f10, Short sh2) {
                    this.f24738c = f10;
                    this.f24739d = sh2;
                    this.f24737b = f10;
                }

                @Override
                public Short getKey() {
                    return this.f24739d;
                }

                @Override
                public Float getValue() {
                    return this.f24737b;
                }

                @Override
                public Float setValue(Float f10) {
                    this.f24737b = f10;
                    return t0.this.put(this.f24739d, f10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24739d) && entry.getValue().equals(this.f24737b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24739d.hashCode() + this.f24737b.hashCode();
                }
            }

            public C0686a() {
                this.f24735b = t0.this.f24733b.iterator();
            }

            @Override
            public Map.Entry<Short, Float> next() {
                this.f24735b.g();
                short key = this.f24735b.key();
                Short j10 = key == t0.this.f24733b.l() ? null : t0.this.j(key);
                float value = this.f24735b.value();
                return new C0687a(value != t0.this.f24733b.i() ? t0.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24735b.hasNext();
            }

            @Override
            public void remove() {
                this.f24735b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Short, Float> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Short, Float>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            t0.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return t0.this.containsKey(key) && t0.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return t0.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Short, Float>> iterator() {
            return new C0686a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Short sh2 = (Short) ((Map.Entry) obj).getKey();
            t0 t0Var = t0.this;
            t0Var.f24733b.d(t0Var.h(sh2));
            return true;
        }

        @Override
        public int size() {
            return t0.this.f24733b.size();
        }
    }

    public t0() {
    }

    @Override
    public Float get(Object obj) {
        short l10;
        if (obj == null) {
            l10 = this.f24733b.l();
        } else {
            if (!(obj instanceof Short)) {
                return null;
            }
            l10 = h(obj);
        }
        float n02 = this.f24733b.n0(l10);
        if (n02 == this.f24733b.i()) {
            return null;
        }
        return k(n02);
    }

    @Override
    public void clear() {
        this.f24733b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Short) && this.f24733b.z(h(obj));
        }
        ee.i0 i0Var = this.f24733b;
        return i0Var.z(i0Var.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Float) && this.f24733b.U(i(obj));
    }

    public ee.i0 e() {
        return this.f24733b;
    }

    @Override
    public Set<Map.Entry<Short, Float>> entrySet() {
        return new a();
    }

    @Override
    public Float put(Short sh2, Float f10) {
        float pa2 = this.f24733b.pa(sh2 == null ? this.f24733b.l() : h(sh2), f10 == null ? this.f24733b.i() : i(f10));
        if (pa2 == this.f24733b.i()) {
            return null;
        }
        return k(pa2);
    }

    @Override
    public Float remove(Object obj) {
        short l10;
        if (obj == null) {
            l10 = this.f24733b.l();
        } else {
            if (!(obj instanceof Short)) {
                return null;
            }
            l10 = h(obj);
        }
        float d10 = this.f24733b.d(l10);
        if (d10 == this.f24733b.i()) {
            return null;
        }
        return k(d10);
    }

    public short h(Object obj) {
        return ((Short) obj).shortValue();
    }

    public float i(Object obj) {
        return ((Float) obj).floatValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Short j(short s10) {
        return Short.valueOf(s10);
    }

    public Float k(float f10) {
        return Float.valueOf(f10);
    }

    @Override
    public void putAll(Map<? extends Short, ? extends Float> map) {
        Iterator<Map.Entry<? extends Short, ? extends Float>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Short, ? extends Float> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24733b = (ee.i0) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24733b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24733b);
    }

    public t0(ee.i0 i0Var) {
        this.f24733b = i0Var;
    }
}
