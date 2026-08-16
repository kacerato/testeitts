package Yd;

import he.InterfaceC13462q;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13973g;

public class E0 implements ee.g0, Serializable {

    public static final long f30014e = -1034234728574286014L;

    public final ee.g0 f30015b;

    public transient InterfaceC13973g f30016c = null;

    public transient Sd.b f30017d = null;

    public class a implements Zd.o0 {

        public Zd.o0 f30018b;

        public a() {
            this.f30018b = E0.this.f30015b.iterator();
        }

        @Override
        public char a(char c10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30018b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30018b.hasNext();
        }

        @Override
        public short key() {
            return this.f30018b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public char value() {
            return this.f30018b.value();
        }
    }

    public E0(ee.g0 g0Var) {
        g0Var.getClass();
        this.f30015b = g0Var;
    }

    @Override
    public void Ab(ee.g0 g0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public char D3(short s10, char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean I0(short s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean K(InterfaceC13462q interfaceC13462q) {
        return this.f30015b.K(interfaceC13462q);
    }

    @Override
    public boolean O(char c10) {
        return this.f30015b.O(c10);
    }

    @Override
    public char Wb(short s10, char c10, char c11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public short[] Y(short[] sArr) {
        return this.f30015b.Y(sArr);
    }

    @Override
    public char[] Z(char[] cArr) {
        return this.f30015b.Z(cArr);
    }

    @Override
    public boolean Z5(he.n0 n0Var) {
        return this.f30015b.Z5(n0Var);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public char d(short s10) {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30015b.equals(obj);
    }

    @Override
    public boolean fc(he.n0 n0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void g(Ud.b bVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean h8(short s10, char c10) {
        throw new UnsupportedOperationException();
    }

    public int hashCode() {
        return this.f30015b.hashCode();
    }

    @Override
    public char i() {
        return this.f30015b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30015b.isEmpty();
    }

    @Override
    public Zd.o0 iterator() {
        return new a();
    }

    @Override
    public short[] j() {
        return this.f30015b.j();
    }

    @Override
    public Sd.b k() {
        if (this.f30017d == null) {
            this.f30017d = Sd.c.c1(this.f30015b.k());
        }
        return this.f30017d;
    }

    @Override
    public char ka(short s10, char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public InterfaceC13973g keySet() {
        if (this.f30016c == null) {
            this.f30016c = Sd.c.G2(this.f30015b.keySet());
        }
        return this.f30016c;
    }

    @Override
    public short l() {
        return this.f30015b.l();
    }

    @Override
    public char n0(short s10) {
        return this.f30015b.n0(s10);
    }

    @Override
    public void putAll(Map<? extends Short, ? extends Character> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30015b.size();
    }

    public String toString() {
        return this.f30015b.toString();
    }

    @Override
    public boolean v(he.t0 t0Var) {
        return this.f30015b.v(t0Var);
    }

    @Override
    public char[] values() {
        return this.f30015b.values();
    }

    @Override
    public boolean z(short s10) {
        return this.f30015b.z(s10);
    }
}
