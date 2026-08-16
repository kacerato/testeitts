package Yd;

import he.InterfaceC13462q;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13972f;

public class C3413f0 implements ee.P, Serializable {

    public static final long f30220e = -1034234728574286014L;

    public final ee.P f30221b;

    public transient InterfaceC13972f f30222c = null;

    public transient Sd.b f30223d = null;

    public class a implements Zd.X {

        public Zd.X f30224b;

        public a() {
            this.f30224b = C3413f0.this.f30221b.iterator();
        }

        @Override
        public char a(char c10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30224b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30224b.hasNext();
        }

        @Override
        public long key() {
            return this.f30224b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public char value() {
            return this.f30224b.value();
        }
    }

    public C3413f0(ee.P p10) {
        p10.getClass();
        this.f30221b = p10;
    }

    @Override
    public boolean E(long j10) {
        return this.f30221b.E(j10);
    }

    @Override
    public boolean H0(long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean K(InterfaceC13462q interfaceC13462q) {
        return this.f30221b.K(interfaceC13462q);
    }

    @Override
    public boolean O(char c10) {
        return this.f30221b.O(c10);
    }

    @Override
    public void P4(ee.P p10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public char X7(long j10, char c10, char c11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Xd(he.V v10) {
        return this.f30221b.Xd(v10);
    }

    @Override
    public char[] Z(char[] cArr) {
        return this.f30221b.Z(cArr);
    }

    @Override
    public boolean a8(he.V v10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public char e(long j10) {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30221b.equals(obj);
    }

    @Override
    public void g(Ud.b bVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public long[] h0(long[] jArr) {
        return this.f30221b.h0(jArr);
    }

    @Override
    public char h7(long j10, char c10) {
        throw new UnsupportedOperationException();
    }

    public int hashCode() {
        return this.f30221b.hashCode();
    }

    @Override
    public char i() {
        return this.f30221b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30221b.isEmpty();
    }

    @Override
    public Zd.X iterator() {
        return new a();
    }

    @Override
    public long[] j() {
        return this.f30221b.j();
    }

    @Override
    public Sd.b k() {
        if (this.f30223d == null) {
            this.f30223d = Sd.c.c1(this.f30221b.k());
        }
        return this.f30223d;
    }

    @Override
    public boolean kb(long j10, char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public InterfaceC13972f keySet() {
        if (this.f30222c == null) {
            this.f30222c = Sd.c.F2(this.f30221b.keySet());
        }
        return this.f30222c;
    }

    @Override
    public long l() {
        return this.f30221b.l();
    }

    @Override
    public boolean l0(he.b0 b0Var) {
        return this.f30221b.l0(b0Var);
    }

    @Override
    public void putAll(Map<? extends Long, ? extends Character> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30221b.size();
    }

    public String toString() {
        return this.f30221b.toString();
    }

    @Override
    public char u(long j10) {
        return this.f30221b.u(j10);
    }

    @Override
    public char[] values() {
        return this.f30221b.values();
    }

    @Override
    public char wd(long j10, char c10) {
        throw new UnsupportedOperationException();
    }
}
