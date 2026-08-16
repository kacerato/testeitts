package Yd;

import Zd.InterfaceC3457o;
import ee.InterfaceC13072m;
import he.InterfaceC13459n;
import he.InterfaceC13462q;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13968b;

public class C3432q implements InterfaceC13072m, Serializable {

    public static final long f30324e = -1034234728574286014L;

    public final InterfaceC13072m f30325b;

    public transient InterfaceC13968b f30326c = null;

    public transient Sd.g f30327d = null;

    public class a implements InterfaceC3457o {

        public InterfaceC3457o f30328b;

        public a() {
            this.f30328b = C3432q.this.f30325b.iterator();
        }

        @Override
        public int e(int i10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30328b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30328b.hasNext();
        }

        @Override
        public char key() {
            return this.f30328b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public int value() {
            return this.f30328b.value();
        }
    }

    public C3432q(InterfaceC13072m interfaceC13072m) {
        interfaceC13072m.getClass();
        this.f30325b = interfaceC13072m;
    }

    @Override
    public boolean C(char c10) {
        return this.f30325b.C(c10);
    }

    @Override
    public boolean D0(char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int E4(char c10, int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Od(char c10, int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Q(int i10) {
        return this.f30325b.Q(i10);
    }

    @Override
    public char[] V(char[] cArr) {
        return this.f30325b.V(cArr);
    }

    @Override
    public int b(char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void bb(InterfaceC13072m interfaceC13072m) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean c4(InterfaceC13459n interfaceC13459n) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public int[] e0(int[] iArr) {
        return this.f30325b.e0(iArr);
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30325b.equals(obj);
    }

    @Override
    public void f(Ud.e eVar) {
        throw new UnsupportedOperationException();
    }

    public int hashCode() {
        return this.f30325b.hashCode();
    }

    @Override
    public int i() {
        return this.f30325b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30325b.isEmpty();
    }

    @Override
    public InterfaceC3457o iterator() {
        return new a();
    }

    @Override
    public char[] j() {
        return this.f30325b.j();
    }

    @Override
    public Sd.g k() {
        if (this.f30327d == null) {
            this.f30327d = Sd.c.f1(this.f30325b.k());
        }
        return this.f30327d;
    }

    @Override
    public InterfaceC13968b keySet() {
        if (this.f30326c == null) {
            this.f30326c = Sd.c.B2(this.f30325b.keySet());
        }
        return this.f30326c;
    }

    @Override
    public char l() {
        return this.f30325b.l();
    }

    @Override
    public boolean m0(he.S s10) {
        return this.f30325b.m0(s10);
    }

    @Override
    public int o0(char c10) {
        return this.f30325b.o0(c10);
    }

    @Override
    public int o4(char c10, int i10, int i11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends Character, ? extends Integer> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean qb(InterfaceC13459n interfaceC13459n) {
        return this.f30325b.qb(interfaceC13459n);
    }

    @Override
    public int size() {
        return this.f30325b.size();
    }

    public String toString() {
        return this.f30325b.toString();
    }

    @Override
    public int[] values() {
        return this.f30325b.values();
    }

    @Override
    public int x9(char c10, int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean y(InterfaceC13462q interfaceC13462q) {
        return this.f30325b.y(interfaceC13462q);
    }
}
