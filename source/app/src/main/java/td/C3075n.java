package Td;

import Zd.InterfaceC3456n;
import ee.InterfaceC13071l;
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

public class C3075n extends AbstractMap<Character, Float> implements Map<Character, Float>, Externalizable, Cloneable {

    public static final long f24627c = 1;

    public InterfaceC13071l f24628b;

    public class a extends AbstractSet<Map.Entry<Character, Float>> {

        public class C0664a implements Iterator<Map.Entry<Character, Float>> {

            public final InterfaceC3456n f24630b;

            public class C0665a implements Map.Entry<Character, Float> {

                public Float f24632b;

                public final Float f24633c;

                public final Character f24634d;

                public C0665a(Float f10, Character ch2) {
                    this.f24633c = f10;
                    this.f24634d = ch2;
                    this.f24632b = f10;
                }

                @Override
                public Character getKey() {
                    return this.f24634d;
                }

                @Override
                public Float getValue() {
                    return this.f24632b;
                }

                @Override
                public Float setValue(Float f10) {
                    this.f24632b = f10;
                    return C3075n.this.put(this.f24634d, f10);
                }

                @Override
                public boolean equals(Object obj) {
                    if (obj instanceof Map.Entry) {
                        Map.Entry entry = (Map.Entry) obj;
                        if (entry.getKey().equals(this.f24634d) && entry.getValue().equals(this.f24632b)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override
                public int hashCode() {
                    return this.f24634d.hashCode() + this.f24632b.hashCode();
                }
            }

            public C0664a() {
                this.f24630b = C3075n.this.f24628b.iterator();
            }

            @Override
            public Map.Entry<Character, Float> next() {
                this.f24630b.g();
                char key = this.f24630b.key();
                Character j10 = key == C3075n.this.f24628b.l() ? null : C3075n.this.j(key);
                float value = this.f24630b.value();
                return new C0665a(value != C3075n.this.f24628b.i() ? C3075n.this.k(value) : null, j10);
            }

            @Override
            public boolean hasNext() {
                return this.f24630b.hasNext();
            }

            @Override
            public void remove() {
                this.f24630b.remove();
            }
        }

        public a() {
        }

        @Override
        public boolean add(Map.Entry<Character, Float> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<Character, Float>> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C3075n.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            return C3075n.this.containsKey(key) && C3075n.this.get(key).equals(entry.getValue());
        }

        @Override
        public boolean isEmpty() {
            return C3075n.this.isEmpty();
        }

        @Override
        public Iterator<Map.Entry<Character, Float>> iterator() {
            return new C0664a();
        }

        @Override
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Character ch2 = (Character) ((Map.Entry) obj).getKey();
            C3075n c3075n = C3075n.this;
            c3075n.f24628b.b(c3075n.h(ch2));
            return true;
        }

        @Override
        public int size() {
            return C3075n.this.f24628b.size();
        }
    }

    public C3075n() {
    }

    @Override
    public Float get(Object obj) {
        char l10;
        if (obj == null) {
            l10 = this.f24628b.l();
        } else {
            if (!(obj instanceof Character)) {
                return null;
            }
            l10 = h(obj);
        }
        float o02 = this.f24628b.o0(l10);
        if (o02 == this.f24628b.i()) {
            return null;
        }
        return k(o02);
    }

    @Override
    public void clear() {
        this.f24628b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        if (obj != null) {
            return (obj instanceof Character) && this.f24628b.C(h(obj));
        }
        InterfaceC13071l interfaceC13071l = this.f24628b;
        return interfaceC13071l.C(interfaceC13071l.l());
    }

    @Override
    public boolean containsValue(Object obj) {
        return (obj instanceof Float) && this.f24628b.U(i(obj));
    }

    public InterfaceC13071l e() {
        return this.f24628b;
    }

    @Override
    public Set<Map.Entry<Character, Float>> entrySet() {
        return new a();
    }

    @Override
    public Float put(Character ch2, Float f10) {
        float C42 = this.f24628b.C4(ch2 == null ? this.f24628b.l() : h(ch2), f10 == null ? this.f24628b.i() : i(f10));
        if (C42 == this.f24628b.i()) {
            return null;
        }
        return k(C42);
    }

    @Override
    public Float remove(Object obj) {
        char l10;
        if (obj == null) {
            l10 = this.f24628b.l();
        } else {
            if (!(obj instanceof Character)) {
                return null;
            }
            l10 = h(obj);
        }
        float b10 = this.f24628b.b(l10);
        if (b10 == this.f24628b.i()) {
            return null;
        }
        return k(b10);
    }

    public char h(Object obj) {
        return ((Character) obj).charValue();
    }

    public float i(Object obj) {
        return ((Float) obj).floatValue();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public Character j(char c10) {
        return Character.valueOf(c10);
    }

    public Float k(float f10) {
        return Float.valueOf(f10);
    }

    @Override
    public void putAll(Map<? extends Character, ? extends Float> map) {
        Iterator<Map.Entry<? extends Character, ? extends Float>> it = map.entrySet().iterator();
        int size = map.size();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            Map.Entry<? extends Character, ? extends Float> next = it.next();
            put(next.getKey(), next.getValue());
            size = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24628b = (InterfaceC13071l) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24628b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24628b);
    }

    public C3075n(InterfaceC13071l interfaceC13071l) {
        this.f24628b = interfaceC13071l;
    }
}
