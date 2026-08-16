package Yd;

import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13973g;

public class I0 implements ee.j0, Serializable {

    public static final long f30055e = -1034234728574286014L;

    public final ee.j0 f30056b;

    public transient InterfaceC13973g f30057c = null;

    public transient Sd.g f30058d = null;

    public class a implements Zd.r0 {

        public Zd.r0 f30059b;

        public a() {
            this.f30059b = I0.this.f30056b.iterator();
        }

        @Override
        public int e(int i10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30059b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30059b.hasNext();
        }

        @Override
        public short key() {
            return this.f30059b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public int value() {
            return this.f30059b.value();
        }
    }

    public I0(ee.j0 j0Var) {
        j0Var.getClass();
        this.f30056b = j0Var;
    }

    @Override
    public int A3(short s10, int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean De(he.q0 q0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean I0(short s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Q(int i10) {
        return this.f30056b.Q(i10);
    }

    @Override
    public void Ta(ee.j0 j0Var) {
        throw new UnsupportedOperationException();
    }

    @Override
    public short[] Y(short[] sArr) {
        return this.f30056b.Y(sArr);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public int d(short s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean d8(short s10, int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int[] e0(int[] iArr) {
        return this.f30056b.e0(iArr);
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30056b.equals(obj);
    }

    @Override
    public void f(Ud.e eVar) {
        throw new UnsupportedOperationException();
    }

    public int hashCode() {
        return this.f30056b.hashCode();
    }

    @Override
    public int i() {
        return this.f30056b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30056b.isEmpty();
    }

    @Override
    public Zd.r0 iterator() {
        return new a();
    }

    @Override
    public short[] j() {
        return this.f30056b.j();
    }

    @Override
    public Sd.g k() {
        if (this.f30058d == null) {
            this.f30058d = Sd.c.f1(this.f30056b.k());
        }
        return this.f30058d;
    }

    @Override
    public InterfaceC13973g keySet() {
        if (this.f30057c == null) {
            this.f30057c = Sd.c.G2(this.f30056b.keySet());
        }
        return this.f30057c;
    }

    @Override
    public short l() {
        return this.f30056b.l();
    }

    @Override
    public boolean m0(he.S s10) {
        return this.f30056b.m0(s10);
    }

    @Override
    public int n0(short s10) {
        return this.f30056b.n0(s10);
    }

    @Override
    public int o9(short s10, int i10, int i11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends Short, ? extends Integer> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30056b.size();
    }

    public String toString() {
        return this.f30056b.toString();
    }

    @Override
    public boolean v(he.t0 t0Var) {
        return this.f30056b.v(t0Var);
    }

    @Override
    public int va(short s10, int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int[] values() {
        return this.f30056b.values();
    }

    @Override
    public boolean w8(he.q0 q0Var) {
        return this.f30056b.w8(q0Var);
    }

    @Override
    public boolean z(short s10) {
        return this.f30056b.z(s10);
    }
}
