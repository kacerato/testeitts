package Yd;

import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13971e;

public class C3409d0 implements ee.N, Serializable {

    public static final long f30196e = -1034234728574286014L;

    public final ee.N f30197b;

    public transient InterfaceC13971e f30198c = null;

    public transient Sd.i f30199d = null;

    public class a implements Zd.U {

        public Zd.U f30200b;

        public a() {
            this.f30200b = C3409d0.this.f30197b.iterator();
        }

        @Override
        public short c(short s10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30200b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30200b.hasNext();
        }

        @Override
        public int key() {
            return this.f30200b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public short value() {
            return this.f30200b.value();
        }
    }

    public C3409d0(ee.N n10) {
        n10.getClass();
        this.f30197b = n10;
    }

    @Override
    public boolean E5(he.T t10) {
        return this.f30197b.E5(t10);
    }

    @Override
    public boolean F(int i10) {
        return this.f30197b.F(i10);
    }

    @Override
    public boolean F0(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean J(he.S s10) {
        return this.f30197b.J(s10);
    }

    @Override
    public boolean L(short s10) {
        return this.f30197b.L(s10);
    }

    @Override
    public boolean N(he.t0 t0Var) {
        return this.f30197b.N(t0Var);
    }

    @Override
    public boolean Ub(int i10, short s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean eb(he.T t10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public short ed(int i10, short s10) {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30197b.equals(obj);
    }

    @Override
    public int[] f0(int[] iArr) {
        return this.f30197b.f0(iArr);
    }

    @Override
    public short get(int i10) {
        return this.f30197b.get(i10);
    }

    public int hashCode() {
        return this.f30197b.hashCode();
    }

    @Override
    public short i() {
        return this.f30197b.i();
    }

    @Override
    public short[] i0(short[] sArr) {
        return this.f30197b.i0(sArr);
    }

    @Override
    public boolean isEmpty() {
        return this.f30197b.isEmpty();
    }

    @Override
    public Zd.U iterator() {
        return new a();
    }

    @Override
    public int[] j() {
        return this.f30197b.j();
    }

    @Override
    public Sd.i k() {
        if (this.f30199d == null) {
            this.f30199d = Sd.c.h1(this.f30197b.k());
        }
        return this.f30199d;
    }

    @Override
    public InterfaceC13971e keySet() {
        if (this.f30198c == null) {
            this.f30198c = Sd.c.E2(this.f30197b.keySet());
        }
        return this.f30198c;
    }

    @Override
    public int l() {
        return this.f30197b.l();
    }

    @Override
    public short md(int i10, short s10, short s11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public short p5(int i10, short s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends Integer, ? extends Short> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void qe(ee.N n10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void r(Ud.h hVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public short remove(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30197b.size();
    }

    public String toString() {
        return this.f30197b.toString();
    }

    @Override
    public short[] values() {
        return this.f30197b.values();
    }
}
