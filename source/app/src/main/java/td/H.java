package Td;

import ee.InterfaceC13059B;
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

public class H extends AbstractMap<Float, Float> implements Map<Float, Float>, Externalizable, Cloneable {

    public static final long f24279c = 1;

    public InterfaceC13059B f24280b;

    public class a extends AbstractSet<Map.Entry<Float, Float>> {

        public class C0591a implements Iterator<Map.Entry<Float, Float>> {

            public final Zd.F f24282b;

            public class C0592a implements Map.Entry<Float, Float> {

                public Float f24284b;

                public final Float f24285c;

                public final Float f24286d;

                public C0592a(Float f10, Float f11) {
                    this.f24285c = f10;
                    this.f24286d = f11;
                    this.f24284b = f10;
                }

                @Override
                public Float getKey() {
                    return this.f24286d;
                }

                @Override
                public Float getValue() {
                    return this.f24284b;
                }

                @Override
                public Float setValue(Float f10) {
                    this.f24284b = f10;
                    return H.this.put(this.f24286d, f10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24286d) && entry.getValue().equals(this.f24284b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24286d.hashCode() + this.f24284b.hashCode();
                }
            }

            public C0591a() {
                this.f24282b = H.this.f24280b.iterator();
            }

            @Override
            public Map.Entry<Float, Float> next() {
                this.f24282b.g();
                float key = this.f24282b.key();
                Float j10 = key == H.this.f24280b.l() ? null : H.this.j(key);
                float value = this.f24282b.value();
                return new C0592a(value != H.this.f24280b.i() ? H.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24282b.hasNext();
            }

            @Override
            public void remove() {
                this.f24282b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Float, Float> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Float, Float>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            H.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return H.this.containsKey(key) && H.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return H.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Float, Float>> iterator() {
            return new C0591a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Float f10 = (Float) ((Map.Entry) obj).getKey();
            H h10 = H.this;
            h10.f24280b.c(h10.h(f10));
            return true;
        }

        @Override
        public int size() {
            return H.this.f24280b.size();
        }
    }

    public H() {
    }

    @Override
    public Float get(Object obj) {
        float l10;
        if (obj == null) {
            l10 = this.f24280b.l();
        } else {
            if (!(obj instanceof Float)) {
                return null;
            }
            l10 = h(obj);
        }
        float q02 = this.f24280b.q0(l10);
        if (q02 == this.f24280b.i()) {
            return null;
        }
        return k(q02);
    }

    @Override
    public void clear() {
        this.f24280b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Float) && this.f24280b.H(h(obj));
        }
        InterfaceC13059B interfaceC13059B = this.f24280b;
        return interfaceC13059B.H(interfaceC13059B.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Float) && this.f24280b.U(i(obj));
    }

    public InterfaceC13059B e() {
        return this.f24280b;
    }

    @Override
    public Set<Map.Entry<Float, Float>> entrySet() {
        return new a();
    }

    @Override
    public Float put(Float f10, Float f11) {
        float J52 = this.f24280b.J5(f10 == null ? this.f24280b.l() : h(f10), f11 == null ? this.f24280b.i() : i(f11));
        if (J52 == this.f24280b.i()) {
            return null;
        }
        return k(J52);
    }

    @Override
    public Float remove(Object obj) {
        float l10;
        if (obj == null) {
            l10 = this.f24280b.l();
        } else {
            if (!(obj instanceof Float)) {
                return null;
            }
            l10 = h(obj);
        }
        float c10 = this.f24280b.c(l10);
        if (c10 == this.f24280b.i()) {
            return null;
        }
        return k(c10);
    }

    public float h(Object obj) {
        return ((Float) obj).floatValue();
    }

    public float i(Object obj) {
        return ((Float) obj).floatValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Float j(float f10) {
        return Float.valueOf(f10);
    }

    public Float k(float f10) {
        return Float.valueOf(f10);
    }

    @Override
    public void putAll(Map<? extends Float, ? extends Float> map) {
        Iterator<Map.Entry<? extends Float, ? extends Float>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Float, ? extends Float> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24280b = (InterfaceC13059B) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24280b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24280b);
    }

    public H(InterfaceC13059B interfaceC13059B) {
        this.f24280b = interfaceC13059B;
    }
}
