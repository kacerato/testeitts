package Yd;

import he.InterfaceC13462q;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13971e;

public class U implements ee.H, Serializable {

    public static final long f30131e = -1034234728574286014L;

    public final ee.H f30132b;

    public transient InterfaceC13971e f30133c = null;

    public transient Sd.b f30134d = null;

    public class a implements Zd.M {

        public Zd.M f30135b;

        public a() {
            this.f30135b = U.this.f30132b.iterator();
        }

        @Override
        public char a(char c10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30135b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30135b.hasNext();
        }

        @Override
        public int key() {
            return this.f30135b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public char value() {
            return this.f30135b.value();
        }
    }

    public U(ee.H h10) {
        h10.getClass();
        this.f30132b = h10;
    }

    @Override
    public boolean F(int i10) {
        return this.f30132b.F(i10);
    }

    @Override
    public boolean F0(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Gb(int i10, char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean J(he.S s10) {
        return this.f30132b.J(s10);
    }

    @Override
    public char J7(int i10, char c10, char c11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean K(InterfaceC13462q interfaceC13462q) {
        return this.f30132b.K(interfaceC13462q);
    }

    @Override
    public boolean O(char c10) {
        return this.f30132b.O(c10);
    }

    @Override
    public char Vd(int i10, char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public char X4(int i10, char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public char[] Z(char[] cArr) {
        return this.f30132b.Z(cArr);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30132b.equals(obj);
    }

    @Override
    public int[] f0(int[] iArr) {
        return this.f30132b.f0(iArr);
    }

    @Override
    public boolean f3(he.L l10) {
        return this.f30132b.f3(l10);
    }

    @Override
    public void g(Ud.b bVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public char get(int i10) {
        return this.f30132b.get(i10);
    }

    public int hashCode() {
        return this.f30132b.hashCode();
    }

    @Override
    public char i() {
        return this.f30132b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30132b.isEmpty();
    }

    @Override
    public Zd.M iterator() {
        return new a();
    }

    @Override
    public int[] j() {
        return this.f30132b.j();
    }

    @Override
    public Sd.b k() {
        if (this.f30134d == null) {
            this.f30134d = Sd.c.c1(this.f30132b.k());
        }
        return this.f30134d;
    }

    @Override
    public InterfaceC13971e keySet() {
        if (this.f30133c == null) {
            this.f30133c = Sd.c.E2(this.f30132b.keySet());
        }
        return this.f30133c;
    }

    @Override
    public int l() {
        return this.f30132b.l();
    }

    @Override
    public void m4(ee.H h10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean nc(he.L l10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends Integer, ? extends Character> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public char remove(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30132b.size();
    }

    public String toString() {
        return this.f30132b.toString();
    }

    @Override
    public char[] values() {
        return this.f30132b.values();
    }
}
