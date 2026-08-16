package Td;

import ee.InterfaceC13074o;
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

public class r<V> extends AbstractMap<Character, V> implements Map<Character, V>, Externalizable, Cloneable {

    public static final long f24692c = 1;

    public InterfaceC13074o<V> f24693b;

    public class a extends AbstractSet<Map.Entry<Character, V>> {

        public class C0678a implements Iterator<Map.Entry<Character, V>> {

            public final Zd.r<V> f24695b;

            public class C0679a implements Map.Entry<Character, V> {

                public V f24697b;

                public final Object f24698c;

                public final Character f24699d;

                /* JADX WARN: Multi-variable type inference failed */
                public C0679a(Object obj, Character ch2) {
                    this.f24698c = obj;
                    this.f24699d = ch2;
                    this.f24697b = obj;
                }

                @Override
                public Character getKey() {
                    return this.f24699d;
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24699d) && entry.getValue().equals(this.f24697b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public V getValue() {
                    return this.f24697b;
                }

                @Override
                public int hashCode() {
                    return this.f24699d.hashCode() + this.f24697b.hashCode();
                }

                @Override
                public V setValue(V v10) {
                    this.f24697b = v10;
                    return (V) r.this.put(this.f24699d, v10);
                }
            }

            public C0678a() {
                this.f24695b = r.this.f24693b.iterator();
            }

            @Override
            public Map.Entry<Character, V> next() {
                this.f24695b.g();
                char key = this.f24695b.key();
                return new C0679a(this.f24695b.value(), key == r.this.f24693b.l() ? null : r.this.h(key));
            }

            @Override
            public boolean hasNext() {
                return this.f24695b.hasNext();
            }

            @Override
            public void remove() {
                this.f24695b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Character, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Character, V>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            r.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return r.this.containsKey(key) && r.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return r.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Character, V>> iterator() {
            return new C0678a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Character ch2 = (Character) ((Map.Entry) obj).getKey();
            r rVar = r.this;
            rVar.f24693b.b(rVar.g(ch2));
            return true;
        }

        @Override
        public int size() {
            return r.this.f24693b.size();
        }
    }

    public r() {
    }

    @Override
    public void clear() {
        this.f24693b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Character) && this.f24693b.C(((Character) obj).charValue());
        }
        InterfaceC13074o<V> interfaceC13074o = this.f24693b;
        return interfaceC13074o.C(interfaceC13074o.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return this.f24693b.containsValue(obj);
    }

    public InterfaceC13074o<V> e() {
        return this.f24693b;
    }

    @Override
    public Set<Map.Entry<Character, V>> entrySet() {
        return new a();
    }

    @Override
    public V put(Character ch2, V v10) {
        return this.f24693b.I3(ch2 == null ? this.f24693b.l() : g(ch2), v10);
    }

    public char g(Character ch2) {
        return ch2.charValue();
    }

    @Override
    public V get(Object obj) {
        char l10;
        if (obj == null) {
            l10 = this.f24693b.l();
        } else {
            if (!(obj instanceof Character)) {
                return null;
            }
            l10 = g((Character) obj);
        }
        return this.f24693b.o0(l10);
    }

    public Character h(char c10) {
        return Character.valueOf(c10);
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override
    public void putAll(Map<? extends Character, ? extends V> map) {
        Iterator<Map.Entry<? extends Character, ? extends V>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Character, ? extends V> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24693b = (InterfaceC13074o) objectInput.readObject();
    }

    @Override
    public V remove(Object obj) {
        char l10;
        if (obj == null) {
            l10 = this.f24693b.l();
        } else {
            if (!(obj instanceof Character)) {
                return null;
            }
            l10 = g((Character) obj);
        }
        return this.f24693b.b(l10);
    }

    @Override
    public int size() {
        return this.f24693b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24693b);
    }

    public r(InterfaceC13074o<V> interfaceC13074o) {
        this.f24693b = interfaceC13074o;
    }
}
