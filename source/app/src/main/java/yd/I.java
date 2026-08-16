package Yd;

import ee.InterfaceC13084z;
import he.InterfaceC13462q;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13970d;

public class I implements InterfaceC13084z, Serializable {

    public static final long f30049e = -1034234728574286014L;

    public final InterfaceC13084z f30050b;

    public transient InterfaceC13970d f30051c = null;

    public transient Sd.b f30052d = null;

    public class a implements Zd.D {

        public Zd.D f30053b;

        public a() {
            this.f30053b = I.this.f30050b.iterator();
        }

        @Override
        public char a(char c10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30053b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30053b.hasNext();
        }

        @Override
        public float key() {
            return this.f30053b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public char value() {
            return this.f30053b.value();
        }
    }

    public I(InterfaceC13084z interfaceC13084z) {
        interfaceC13084z.getClass();
        this.f30050b = interfaceC13084z;
    }

    @Override
    public char F5(float f10, char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean G0(float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean H(float f10) {
        return this.f30050b.H(f10);
    }

    @Override
    public boolean J9(float f10, char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean K(InterfaceC13462q interfaceC13462q) {
        return this.f30050b.K(interfaceC13462q);
    }

    @Override
    public boolean O(char c10) {
        return this.f30050b.O(c10);
    }

    @Override
    public void S7(InterfaceC13084z interfaceC13084z) {
        throw new UnsupportedOperationException();
    }

    @Override
    public char[] Z(char[] cArr) {
        return this.f30050b.Z(cArr);
    }

    @Override
    public boolean Zb(he.C c10) {
        return this.f30050b.Zb(c10);
    }

    @Override
    public char c(float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public float[] d0(float[] fArr) {
        return this.f30050b.d0(fArr);
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30050b.equals(obj);
    }

    @Override
    public void g(Ud.b bVar) {
        throw new UnsupportedOperationException();
    }

    public int hashCode() {
        return this.f30050b.hashCode();
    }

    @Override
    public char i() {
        return this.f30050b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30050b.isEmpty();
    }

    @Override
    public Zd.D iterator() {
        return new a();
    }

    @Override
    public float[] j() {
        return this.f30050b.j();
    }

    @Override
    public boolean j0(he.I i10) {
        return this.f30050b.j0(i10);
    }

    @Override
    public Sd.b k() {
        if (this.f30052d == null) {
            this.f30052d = Sd.c.c1(this.f30050b.k());
        }
        return this.f30052d;
    }

    @Override
    public InterfaceC13970d keySet() {
        if (this.f30051c == null) {
            this.f30051c = Sd.c.D2(this.f30050b.keySet());
        }
        return this.f30051c;
    }

    @Override
    public float l() {
        return this.f30050b.l();
    }

    @Override
    public char p9(float f10, char c10, char c11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends Float, ? extends Character> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public char q0(float f10) {
        return this.f30050b.q0(f10);
    }

    @Override
    public int size() {
        return this.f30050b.size();
    }

    public String toString() {
        return this.f30050b.toString();
    }

    @Override
    public boolean v5(he.C c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public char[] values() {
        return this.f30050b.values();
    }

    @Override
    public char xe(float f10, char c10) {
        throw new UnsupportedOperationException();
    }
}
