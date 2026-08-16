package Yd;

import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13971e;

public class Y implements ee.K, Serializable {

    public static final long f30153e = -1034234728574286014L;

    public final ee.K f30154b;

    public transient InterfaceC13971e f30155c = null;

    public transient Sd.g f30156d = null;

    public class a implements Zd.P {

        public Zd.P f30157b;

        public a() {
            this.f30157b = Y.this.f30154b.iterator();
        }

        @Override
        public int e(int i10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30157b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30157b.hasNext();
        }

        @Override
        public int key() {
            return this.f30157b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public int value() {
            return this.f30157b.value();
        }
    }

    public Y(ee.K k10) {
        k10.getClass();
        this.f30154b = k10;
    }

    @Override
    public boolean F(int i10) {
        return this.f30154b.F(i10);
    }

    @Override
    public boolean F0(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean J(he.S s10) {
        return this.f30154b.J(s10);
    }

    @Override
    public boolean Ob(int i10, int i11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Q(int i10) {
        return this.f30154b.Q(i10);
    }

    @Override
    public void V6(ee.K k10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean be(he.O o10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public int[] e0(int[] iArr) {
        return this.f30154b.e0(iArr);
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30154b.equals(obj);
    }

    @Override
    public void f(Ud.e eVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int[] f0(int[] iArr) {
        return this.f30154b.f0(iArr);
    }

    @Override
    public int f5(int i10, int i11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int get(int i10) {
        return this.f30154b.get(i10);
    }

    public int hashCode() {
        return this.f30154b.hashCode();
    }

    @Override
    public int i() {
        return this.f30154b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30154b.isEmpty();
    }

    @Override
    public Zd.P iterator() {
        return new a();
    }

    @Override
    public int[] j() {
        return this.f30154b.j();
    }

    @Override
    public int jd(int i10, int i11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public Sd.g k() {
        if (this.f30156d == null) {
            this.f30156d = Sd.c.f1(this.f30154b.k());
        }
        return this.f30156d;
    }

    @Override
    public boolean k8(he.O o10) {
        return this.f30154b.k8(o10);
    }

    @Override
    public InterfaceC13971e keySet() {
        if (this.f30155c == null) {
            this.f30155c = Sd.c.E2(this.f30154b.keySet());
        }
        return this.f30155c;
    }

    @Override
    public int l() {
        return this.f30154b.l();
    }

    @Override
    public boolean m0(he.S s10) {
        return this.f30154b.m0(s10);
    }

    @Override
    public void putAll(Map<? extends Integer, ? extends Integer> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int remove(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30154b.size();
    }

    public String toString() {
        return this.f30154b.toString();
    }

    @Override
    public int[] values() {
        return this.f30154b.values();
    }

    @Override
    public int xb(int i10, int i11, int i12) {
        throw new UnsupportedOperationException();
    }
}
