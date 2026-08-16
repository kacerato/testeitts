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

public class k0<K> extends AbstractMap<K, Character> implements Map<K, Character>, Externalizable, Cloneable {

    public static final long f24582c = 1;

    public ee.Z<K> f24583b;

    public class a extends AbstractSet<Map.Entry<K, Character>> {

        public class C0654a implements Iterator<Map.Entry<K, Character>> {

            public final Zd.g0<K> f24585b;

            public class C0655a implements Map.Entry<K, Character> {

                public Character f24587b;

                public final Character f24588c;

                public final Object f24589d;

                public C0655a(Character ch2, Object obj) {
                    this.f24588c = ch2;
                    this.f24589d = obj;
                    this.f24587b = ch2;
                }

                @Override
                public Character getValue() {
                    return this.f24587b;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public Character setValue(Character ch2) {
                    this.f24587b = ch2;
                    return k0.this.put(this.f24589d, ch2);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24589d) && entry.getValue().equals(this.f24587b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public K getKey() {
                    return (K) this.f24589d;
                }

                @Override
                public int hashCode() {
                    return this.f24589d.hashCode() + this.f24587b.hashCode();
                }
            }

            public C0654a() {
                this.f24585b = k0.this.f24583b.iterator();
            }

            @Override
            public Map.Entry<K, Character> next() {
                this.f24585b.g();
                return new C0655a(k0.this.i(this.f24585b.value()), this.f24585b.key());
            }

            @Override
            public boolean hasNext() {
                return this.f24585b.hasNext();
            }

            @Override
            public void remove() {
                this.f24585b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<K, Character> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<K, Character>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            k0.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return k0.this.containsKey(key) && k0.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return k0.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<K, Character>> iterator() {
            return new C0654a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            k0.this.f24583b.remove(((Map.Entry) obj).getKey());
            return true;
        }

        @Override
        public int size() {
            return k0.this.f24583b.size();
        }
    }

    public k0() {
    }

    @Override
    public Character get(Object obj) {
        char c10 = this.f24583b.get(obj);
        if (c10 == this.f24583b.i()) {
            return null;
        }
        return i(c10);
    }

    @Override
    public void clear() {
        this.f24583b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        return this.f24583b.containsKey(obj);
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Character) && this.f24583b.O(h(obj));
    }

    public ee.Z<K> e() {
        return this.f24583b;
    }

    @Override
    public Set<Map.Entry<K, Character>> entrySet() {
        return new a();
    }

    @Override
    public Character put(K k10, Character ch2) {
        if (ch2 != null) {
            return i(this.f24583b.qa(k10, h(ch2)));
        }
        ee.Z<K> z10 = this.f24583b;
        return i(z10.qa(k10, z10.i()));
    }

    @Override
    public Character remove(Object obj) {
        char remove = this.f24583b.remove(obj);
        if (remove == this.f24583b.i()) {
            return null;
        }
        return i(remove);
    }

    public char h(Object obj) {
        return ((Character) obj).charValue();
    }

    public Character i(char c10) {
        return Character.valueOf(c10);
    }

    @Override
    public boolean isEmpty() {
        return this.f24583b.size() == 0;
    }

    @Override
    public void putAll(Map<? extends K, ? extends Character> map) {
        Iterator<Map.Entry<? extends K, ? extends Character>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends K, ? extends Character> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24583b = (ee.Z) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24583b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24583b);
    }

    public k0(ee.Z<K> z10) {
        this.f24583b = z10;
    }
}
