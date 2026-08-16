package Yd;

import Zd.InterfaceC3456n;
import ee.InterfaceC13071l;
import he.InterfaceC13458m;
import he.InterfaceC13462q;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13968b;

public class C3431p implements InterfaceC13071l, Serializable {

    public static final long f30312e = -1034234728574286014L;

    public final InterfaceC13071l f30313b;

    public transient InterfaceC13968b f30314c = null;

    public transient Sd.f f30315d = null;

    public class a implements InterfaceC3456n {

        public InterfaceC3456n f30316b;

        public a() {
            this.f30316b = C3431p.this.f30313b.iterator();
        }

        @Override
        public void g() {
            this.f30316b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30316b.hasNext();
        }

        @Override
        public char key() {
            return this.f30316b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public float setValue(float f10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public float value() {
            return this.f30316b.value();
        }
    }

    public C3431p(InterfaceC13071l interfaceC13071l) {
        interfaceC13071l.getClass();
        this.f30313b = interfaceC13071l;
    }

    @Override
    public boolean B(he.I i10) {
        return this.f30313b.B(i10);
    }

    @Override
    public float B9(char c10, float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean C(char c10) {
        return this.f30313b.C(c10);
    }

    @Override
    public float C4(char c10, float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean D0(char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void E6(InterfaceC13071l interfaceC13071l) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float M4(char c10, float f10, float f11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Sd(char c10, float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean U(float f10) {
        return this.f30313b.U(f10);
    }

    @Override
    public char[] V(char[] cArr) {
        return this.f30313b.V(cArr);
    }

    @Override
    public boolean X8(InterfaceC13458m interfaceC13458m) {
        return this.f30313b.X8(interfaceC13458m);
    }

    @Override
    public float b(char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float[] c0(float[] fArr) {
        return this.f30313b.c0(fArr);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30313b.equals(obj);
    }

    @Override
    public boolean fd(InterfaceC13458m interfaceC13458m) {
        throw new UnsupportedOperationException();
    }

    public int hashCode() {
        return this.f30313b.hashCode();
    }

    @Override
    public float i() {
        return this.f30313b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30313b.isEmpty();
    }

    @Override
    public InterfaceC3456n iterator() {
        return new a();
    }

    @Override
    public char[] j() {
        return this.f30313b.j();
    }

    @Override
    public Sd.f k() {
        if (this.f30315d == null) {
            this.f30315d = Sd.c.e1(this.f30313b.k());
        }
        return this.f30315d;
    }

    @Override
    public InterfaceC13968b keySet() {
        if (this.f30314c == null) {
            this.f30314c = Sd.c.B2(this.f30313b.keySet());
        }
        return this.f30314c;
    }

    @Override
    public char l() {
        return this.f30313b.l();
    }

    @Override
    public void n(Ud.d dVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float o0(char c10) {
        return this.f30313b.o0(c10);
    }

    @Override
    public void putAll(Map<? extends Character, ? extends Float> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30313b.size();
    }

    public String toString() {
        return this.f30313b.toString();
    }

    @Override
    public float[] values() {
        return this.f30313b.values();
    }

    @Override
    public boolean y(InterfaceC13462q interfaceC13462q) {
        return this.f30313b.y(interfaceC13462q);
    }
}
