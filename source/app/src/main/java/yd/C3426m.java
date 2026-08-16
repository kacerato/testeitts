package Yd;

import Zd.InterfaceC3454l;
import ee.InterfaceC13069j;
import he.InterfaceC13456k;
import he.InterfaceC13462q;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13968b;

public class C3426m implements InterfaceC13069j, Serializable {

    public static final long f30283e = -1034234728574286014L;

    public final InterfaceC13069j f30284b;

    public transient InterfaceC13968b f30285c = null;

    public transient Sd.b f30286d = null;

    public class a implements InterfaceC3454l {

        public InterfaceC3454l f30287b;

        public a() {
            this.f30287b = C3426m.this.f30284b.iterator();
        }

        @Override
        public char a(char c10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30287b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30287b.hasNext();
        }

        @Override
        public char key() {
            return this.f30287b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public char value() {
            return this.f30287b.value();
        }
    }

    public C3426m(InterfaceC13069j interfaceC13069j) {
        interfaceC13069j.getClass();
        this.f30284b = interfaceC13069j;
    }

    @Override
    public char A4(char c10, char c11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Bb(InterfaceC13456k interfaceC13456k) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean C(char c10) {
        return this.f30284b.C(c10);
    }

    @Override
    public boolean D0(char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public char Ec(char c10, char c11, char c12) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Ed(char c10, char c11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public char H9(char c10, char c11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean K(InterfaceC13462q interfaceC13462q) {
        return this.f30284b.K(interfaceC13462q);
    }

    @Override
    public boolean O(char c10) {
        return this.f30284b.O(c10);
    }

    @Override
    public char[] V(char[] cArr) {
        return this.f30284b.V(cArr);
    }

    @Override
    public char[] Z(char[] cArr) {
        return this.f30284b.Z(cArr);
    }

    @Override
    public char b(char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30284b.equals(obj);
    }

    @Override
    public void g(Ud.b bVar) {
        throw new UnsupportedOperationException();
    }

    public int hashCode() {
        return this.f30284b.hashCode();
    }

    @Override
    public char i() {
        return this.f30284b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30284b.isEmpty();
    }

    @Override
    public InterfaceC3454l iterator() {
        return new a();
    }

    @Override
    public char[] j() {
        return this.f30284b.j();
    }

    @Override
    public Sd.b k() {
        if (this.f30286d == null) {
            this.f30286d = Sd.c.c1(this.f30284b.k());
        }
        return this.f30286d;
    }

    @Override
    public InterfaceC13968b keySet() {
        if (this.f30285c == null) {
            this.f30285c = Sd.c.B2(this.f30284b.keySet());
        }
        return this.f30285c;
    }

    @Override
    public char l() {
        return this.f30284b.l();
    }

    @Override
    public boolean nb(InterfaceC13456k interfaceC13456k) {
        return this.f30284b.nb(interfaceC13456k);
    }

    @Override
    public char o0(char c10) {
        return this.f30284b.o0(c10);
    }

    @Override
    public void pd(InterfaceC13069j interfaceC13069j) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends Character, ? extends Character> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30284b.size();
    }

    public String toString() {
        return this.f30284b.toString();
    }

    @Override
    public char[] values() {
        return this.f30284b.values();
    }

    @Override
    public boolean y(InterfaceC13462q interfaceC13462q) {
        return this.f30284b.y(interfaceC13462q);
    }
}
