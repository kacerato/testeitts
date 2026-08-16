package Yd;

import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13972f;

public class C3421j0 implements ee.T, Serializable {

    public static final long f30257e = -1034234728574286014L;

    public final ee.T f30258b;

    public transient InterfaceC13972f f30259c = null;

    public transient Sd.g f30260d = null;

    public class a implements Zd.a0 {

        public Zd.a0 f30261b;

        public a() {
            this.f30261b = C3421j0.this.f30258b.iterator();
        }

        @Override
        public int e(int i10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30261b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30261b.hasNext();
        }

        @Override
        public long key() {
            return this.f30261b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public int value() {
            return this.f30261b.value();
        }
    }

    public C3421j0(ee.T t10) {
        t10.getClass();
        this.f30258b = t10;
    }

    @Override
    public boolean Cb(he.Y y10) {
        return this.f30258b.Cb(y10);
    }

    @Override
    public boolean E(long j10) {
        return this.f30258b.E(j10);
    }

    @Override
    public boolean H0(long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Q(int i10) {
        return this.f30258b.Q(i10);
    }

    @Override
    public int Xb(long j10, int i10, int i11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Y4(he.Y y10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public int e(long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int[] e0(int[] iArr) {
        return this.f30258b.e0(iArr);
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30258b.equals(obj);
    }

    @Override
    public void f(Ud.e eVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean gb(long j10, int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public long[] h0(long[] jArr) {
        return this.f30258b.h0(jArr);
    }

    public int hashCode() {
        return this.f30258b.hashCode();
    }

    @Override
    public int i() {
        return this.f30258b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30258b.isEmpty();
    }

    @Override
    public Zd.a0 iterator() {
        return new a();
    }

    @Override
    public long[] j() {
        return this.f30258b.j();
    }

    @Override
    public Sd.g k() {
        if (this.f30260d == null) {
            this.f30260d = Sd.c.f1(this.f30258b.k());
        }
        return this.f30260d;
    }

    @Override
    public InterfaceC13972f keySet() {
        if (this.f30259c == null) {
            this.f30259c = Sd.c.F2(this.f30258b.keySet());
        }
        return this.f30259c;
    }

    @Override
    public long l() {
        return this.f30258b.l();
    }

    @Override
    public boolean l0(he.b0 b0Var) {
        return this.f30258b.l0(b0Var);
    }

    @Override
    public boolean m0(he.S s10) {
        return this.f30258b.m0(s10);
    }

    @Override
    public void m3(ee.T t10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int m7(long j10, int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends Long, ? extends Integer> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int sd(long j10, int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30258b.size();
    }

    public String toString() {
        return this.f30258b.toString();
    }

    @Override
    public int u(long j10) {
        return this.f30258b.u(j10);
    }

    @Override
    public int[] values() {
        return this.f30258b.values();
    }
}
