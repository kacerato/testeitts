package Yd;

import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13972f;

public class o0 implements ee.W, Serializable {

    public static final long f30306e = -1034234728574286014L;

    public final ee.W f30307b;

    public transient InterfaceC13972f f30308c = null;

    public transient Sd.i f30309d = null;

    public class a implements Zd.e0 {

        public Zd.e0 f30310b;

        public a() {
            this.f30310b = o0.this.f30307b.iterator();
        }

        @Override
        public short c(short s10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30310b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30310b.hasNext();
        }

        @Override
        public long key() {
            return this.f30310b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public short value() {
            return this.f30310b.value();
        }
    }

    public o0(ee.W w10) {
        w10.getClass();
        this.f30307b = w10;
    }

    @Override
    public boolean E(long j10) {
        return this.f30307b.E(j10);
    }

    @Override
    public boolean E9(he.c0 c0Var) {
        return this.f30307b.E9(c0Var);
    }

    @Override
    public boolean H0(long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean I6(he.c0 c0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public short Kc(long j10, short s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean L(short s10) {
        return this.f30307b.L(s10);
    }

    @Override
    public short Md(long j10, short s10, short s11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean N(he.t0 t0Var) {
        return this.f30307b.N(t0Var);
    }

    @Override
    public void S9(ee.W w10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public short e(long j10) {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30307b.equals(obj);
    }

    @Override
    public long[] h0(long[] jArr) {
        return this.f30307b.h0(jArr);
    }

    public int hashCode() {
        return this.f30307b.hashCode();
    }

    @Override
    public short i() {
        return this.f30307b.i();
    }

    @Override
    public short[] i0(short[] sArr) {
        return this.f30307b.i0(sArr);
    }

    @Override
    public boolean isEmpty() {
        return this.f30307b.isEmpty();
    }

    @Override
    public Zd.e0 iterator() {
        return new a();
    }

    @Override
    public long[] j() {
        return this.f30307b.j();
    }

    @Override
    public Sd.i k() {
        if (this.f30309d == null) {
            this.f30309d = Sd.c.h1(this.f30307b.k());
        }
        return this.f30309d;
    }

    @Override
    public InterfaceC13972f keySet() {
        if (this.f30308c == null) {
            this.f30308c = Sd.c.F2(this.f30307b.keySet());
        }
        return this.f30308c;
    }

    @Override
    public long l() {
        return this.f30307b.l();
    }

    @Override
    public boolean l0(he.b0 b0Var) {
        return this.f30307b.l0(b0Var);
    }

    @Override
    public void putAll(Map<? extends Long, ? extends Short> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void r(Ud.h hVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30307b.size();
    }

    public String toString() {
        return this.f30307b.toString();
    }

    @Override
    public short u(long j10) {
        return this.f30307b.u(j10);
    }

    @Override
    public short u7(long j10, short s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public short[] values() {
        return this.f30307b.values();
    }

    @Override
    public boolean vb(long j10, short s10) {
        throw new UnsupportedOperationException();
    }
}
