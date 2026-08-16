package Yd;

import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13971e;

public class C3403a0 implements ee.L, Serializable {

    public static final long f30167e = -1034234728574286014L;

    public final ee.L f30168b;

    public transient InterfaceC13971e f30169c = null;

    public transient Sd.h f30170d = null;

    public class a implements Zd.S {

        public Zd.S f30171b;

        public a() {
            this.f30171b = C3403a0.this.f30168b.iterator();
        }

        @Override
        public long d(long j10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30171b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30171b.hasNext();
        }

        @Override
        public int key() {
            return this.f30171b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public long value() {
            return this.f30171b.value();
        }
    }

    public C3403a0(ee.L l10) {
        l10.getClass();
        this.f30168b = l10;
    }

    @Override
    public boolean F(int i10) {
        return this.f30168b.F(i10);
    }

    @Override
    public boolean F0(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean J(he.S s10) {
        return this.f30168b.J(s10);
    }

    @Override
    public boolean Nb(int i10, long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean R(long j10) {
        return this.f30168b.R(j10);
    }

    @Override
    public boolean Ua(he.P p10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void Va(ee.L l10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30168b.equals(obj);
    }

    @Override
    public int[] f0(int[] iArr) {
        return this.f30168b.f0(iArr);
    }

    @Override
    public long[] g0(long[] jArr) {
        return this.f30168b.g0(jArr);
    }

    @Override
    public long get(int i10) {
        return this.f30168b.get(i10);
    }

    @Override
    public void h(Ud.f fVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public long h5(int i10, long j10) {
        throw new UnsupportedOperationException();
    }

    public int hashCode() {
        return this.f30168b.hashCode();
    }

    @Override
    public long i() {
        return this.f30168b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30168b.isEmpty();
    }

    @Override
    public Zd.S iterator() {
        return new a();
    }

    @Override
    public int[] j() {
        return this.f30168b.j();
    }

    @Override
    public Sd.h k() {
        if (this.f30170d == null) {
            this.f30170d = Sd.c.g1(this.f30168b.k());
        }
        return this.f30170d;
    }

    @Override
    public InterfaceC13971e keySet() {
        if (this.f30169c == null) {
            this.f30169c = Sd.c.E2(this.f30168b.keySet());
        }
        return this.f30169c;
    }

    @Override
    public int l() {
        return this.f30168b.l();
    }

    @Override
    public long la(int i10, long j10, long j11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public long nd(int i10, long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends Integer, ? extends Long> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public long remove(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean sc(he.P p10) {
        return this.f30168b.sc(p10);
    }

    @Override
    public int size() {
        return this.f30168b.size();
    }

    public String toString() {
        return this.f30168b.toString();
    }

    @Override
    public long[] values() {
        return this.f30168b.values();
    }

    @Override
    public boolean x(he.b0 b0Var) {
        return this.f30168b.x(b0Var);
    }
}
