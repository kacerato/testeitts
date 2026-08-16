package Yd;

import he.InterfaceC13462q;
import java.io.Serializable;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

public class q0<K> implements ee.Z<K>, Serializable {

    public static final long f30330e = -1034234728574286014L;

    public final ee.Z<K> f30331b;

    public transient Set<K> f30332c = null;

    public transient Sd.b f30333d = null;

    public class a implements Zd.g0<K> {

        public Zd.g0<K> f30334b;

        public a() {
            this.f30334b = q0.this.f30331b.iterator();
        }

        @Override
        public char a(char c10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30334b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30334b.hasNext();
        }

        @Override
        public K key() {
            return this.f30334b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public char value() {
            return this.f30334b.value();
        }
    }

    public q0(ee.Z<K> z10) {
        z10.getClass();
        this.f30331b = z10;
    }

    @Override
    public K[] C0(K[] kArr) {
        return this.f30331b.C0(kArr);
    }

    @Override
    public boolean G(he.k0<? super K> k0Var) {
        return this.f30331b.G(k0Var);
    }

    @Override
    public boolean K(InterfaceC13462q interfaceC13462q) {
        return this.f30331b.K(interfaceC13462q);
    }

    @Override
    public boolean O(char c10) {
        return this.f30331b.O(c10);
    }

    @Override
    public void Ya(ee.Z<? extends K> z10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public char[] Z(char[] cArr) {
        return this.f30331b.Z(cArr);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean containsKey(Object obj) {
        return this.f30331b.containsKey(obj);
    }

    @Override
    public boolean equals(Object obj) {
        return obj == this || this.f30331b.equals(obj);
    }

    @Override
    public void g(Ud.b bVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public char get(Object obj) {
        return this.f30331b.get(obj);
    }

    @Override
    public char h4(K k10, char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int hashCode() {
        return this.f30331b.hashCode();
    }

    @Override
    public char i() {
        return this.f30331b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30331b.isEmpty();
    }

    @Override
    public Zd.g0<K> iterator() {
        return new a();
    }

    @Override
    public Object[] j() {
        return this.f30331b.j();
    }

    @Override
    public boolean je(he.e0<? super K> e0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public Sd.b k() {
        if (this.f30333d == null) {
            this.f30333d = Sd.c.c1(this.f30331b.k());
        }
        return this.f30333d;
    }

    @Override
    public boolean k5(K k10, char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public Set<K> keySet() {
        if (this.f30332c == null) {
            this.f30332c = Collections.unmodifiableSet(this.f30331b.keySet());
        }
        return this.f30332c;
    }

    @Override
    public char m9(K k10, char c10, char c11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean p7(he.e0<? super K> e0Var) {
        return this.f30331b.p7(e0Var);
    }

    @Override
    public void putAll(Map<? extends K, ? extends Character> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public char qa(K k10, char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public char remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30331b.size();
    }

    public String toString() {
        return this.f30331b.toString();
    }

    @Override
    public char[] values() {
        return this.f30331b.values();
    }

    @Override
    public boolean x0(K k10) {
        throw new UnsupportedOperationException();
    }
}
