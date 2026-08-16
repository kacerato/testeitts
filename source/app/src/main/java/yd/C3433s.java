package Yd;

import Zd.InterfaceC3459q;
import ee.InterfaceC13073n;
import he.InterfaceC13460o;
import he.InterfaceC13462q;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13968b;

public class C3433s implements InterfaceC13073n, Serializable {

    public static final long f30344e = -1034234728574286014L;

    public final InterfaceC13073n f30345b;

    public transient InterfaceC13968b f30346c = null;

    public transient Sd.h f30347d = null;

    public class a implements InterfaceC3459q {

        public InterfaceC3459q f30348b;

        public a() {
            this.f30348b = C3433s.this.f30345b.iterator();
        }

        @Override
        public long d(long j10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30348b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30348b.hasNext();
        }

        @Override
        public char key() {
            return this.f30348b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public long value() {
            return this.f30348b.value();
        }
    }

    public C3433s(InterfaceC13073n interfaceC13073n) {
        interfaceC13073n.getClass();
        this.f30345b = interfaceC13073n;
    }

    @Override
    public boolean C(char c10) {
        return this.f30345b.C(c10);
    }

    @Override
    public boolean D0(char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public long D2(char c10, long j10, long j11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public long G4(char c10, long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Ke(InterfaceC13460o interfaceC13460o) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Ld(char c10, long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean R(long j10) {
        return this.f30345b.R(j10);
    }

    @Override
    public char[] V(char[] cArr) {
        return this.f30345b.V(cArr);
    }

    @Override
    public boolean V7(InterfaceC13460o interfaceC13460o) {
        return this.f30345b.V7(interfaceC13460o);
    }

    @Override
    public long b(char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30345b.equals(obj);
    }

    @Override
    public long[] g0(long[] jArr) {
        return this.f30345b.g0(jArr);
    }

    @Override
    public void h(Ud.f fVar) {
        throw new UnsupportedOperationException();
    }

    public int hashCode() {
        return this.f30345b.hashCode();
    }

    @Override
    public long i() {
        return this.f30345b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30345b.isEmpty();
    }

    @Override
    public InterfaceC3459q iterator() {
        return new a();
    }

    @Override
    public char[] j() {
        return this.f30345b.j();
    }

    @Override
    public Sd.h k() {
        if (this.f30347d == null) {
            this.f30347d = Sd.c.g1(this.f30345b.k());
        }
        return this.f30347d;
    }

    @Override
    public InterfaceC13968b keySet() {
        if (this.f30346c == null) {
            this.f30346c = Sd.c.B2(this.f30345b.keySet());
        }
        return this.f30346c;
    }

    @Override
    public char l() {
        return this.f30345b.l();
    }

    @Override
    public long o0(char c10) {
        return this.f30345b.o0(c10);
    }

    @Override
    public void putAll(Map<? extends Character, ? extends Long> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30345b.size();
    }

    public String toString() {
        return this.f30345b.toString();
    }

    @Override
    public long[] values() {
        return this.f30345b.values();
    }

    @Override
    public boolean x(he.b0 b0Var) {
        return this.f30345b.x(b0Var);
    }

    @Override
    public boolean y(InterfaceC13462q interfaceC13462q) {
        return this.f30345b.y(interfaceC13462q);
    }

    @Override
    public long z9(char c10, long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void za(InterfaceC13073n interfaceC13073n) {
        throw new UnsupportedOperationException();
    }
}
