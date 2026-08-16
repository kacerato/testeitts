package Yd;

import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13970d;

public class M implements ee.C, Serializable {

    public static final long f30091e = -1034234728574286014L;

    public final ee.C f30092b;

    public transient InterfaceC13970d f30093c = null;

    public transient Sd.g f30094d = null;

    public class a implements Zd.G {

        public Zd.G f30095b;

        public a() {
            this.f30095b = M.this.f30092b.iterator();
        }

        @Override
        public int e(int i10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30095b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30095b.hasNext();
        }

        @Override
        public float key() {
            return this.f30095b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public int value() {
            return this.f30095b.value();
        }
    }

    public M(ee.C c10) {
        c10.getClass();
        this.f30092b = c10;
    }

    @Override
    public boolean D9(float f10, int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean G0(float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean H(float f10) {
        return this.f30092b.H(f10);
    }

    @Override
    public boolean L3(he.F f10) {
        return this.f30092b.L3(f10);
    }

    @Override
    public int M5(float f10, int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Q(int i10) {
        return this.f30092b.Q(i10);
    }

    @Override
    public int Sc(float f10, int i10, int i11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int c(float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public float[] d0(float[] fArr) {
        return this.f30092b.d0(fArr);
    }

    @Override
    public int[] e0(int[] iArr) {
        return this.f30092b.e0(iArr);
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30092b.equals(obj);
    }

    @Override
    public void f(Ud.e eVar) {
        throw new UnsupportedOperationException();
    }

    public int hashCode() {
        return this.f30092b.hashCode();
    }

    @Override
    public int i() {
        return this.f30092b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30092b.isEmpty();
    }

    @Override
    public Zd.G iterator() {
        return new a();
    }

    @Override
    public float[] j() {
        return this.f30092b.j();
    }

    @Override
    public boolean j0(he.I i10) {
        return this.f30092b.j0(i10);
    }

    @Override
    public Sd.g k() {
        if (this.f30094d == null) {
            this.f30094d = Sd.c.f1(this.f30092b.k());
        }
        return this.f30094d;
    }

    @Override
    public InterfaceC13970d keySet() {
        if (this.f30093c == null) {
            this.f30093c = Sd.c.D2(this.f30092b.keySet());
        }
        return this.f30093c;
    }

    @Override
    public float l() {
        return this.f30092b.l();
    }

    @Override
    public boolean m0(he.S s10) {
        return this.f30092b.m0(s10);
    }

    @Override
    public void putAll(Map<? extends Float, ? extends Integer> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int q0(float f10) {
        return this.f30092b.q0(f10);
    }

    @Override
    public int size() {
        return this.f30092b.size();
    }

    public String toString() {
        return this.f30092b.toString();
    }

    @Override
    public int[] values() {
        return this.f30092b.values();
    }

    @Override
    public int ve(float f10, int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void y9(ee.C c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean yc(he.F f10) {
        throw new UnsupportedOperationException();
    }
}
