package Yd;

import Zd.InterfaceC3460s;
import ee.InterfaceC13075p;
import he.InterfaceC13462q;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13968b;

public class C3436v implements InterfaceC13075p, Serializable {

    public static final long f30375e = -1034234728574286014L;

    public final InterfaceC13075p f30376b;

    public transient InterfaceC13968b f30377c = null;

    public transient Sd.i f30378d = null;

    public class a implements InterfaceC3460s {

        public InterfaceC3460s f30379b;

        public a() {
            this.f30379b = C3436v.this.f30376b.iterator();
        }

        @Override
        public short c(short s10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30379b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30379b.hasNext();
        }

        @Override
        public char key() {
            return this.f30379b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public short value() {
            return this.f30379b.value();
        }
    }

    public C3436v(InterfaceC13075p interfaceC13075p) {
        interfaceC13075p.getClass();
        this.f30376b = interfaceC13075p;
    }

    @Override
    public boolean C(char c10) {
        return this.f30376b.C(c10);
    }

    @Override
    public boolean D0(char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public short D6(char c10, short s10, short s11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public short F2(char c10, short s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean I5(he.r rVar) {
        return this.f30376b.I5(rVar);
    }

    @Override
    public boolean L(short s10) {
        return this.f30376b.L(s10);
    }

    @Override
    public boolean N(he.t0 t0Var) {
        return this.f30376b.N(t0Var);
    }

    @Override
    public short Q9(char c10, short s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void R9(InterfaceC13075p interfaceC13075p) {
        throw new UnsupportedOperationException();
    }

    @Override
    public char[] V(char[] cArr) {
        return this.f30376b.V(cArr);
    }

    @Override
    public boolean Wd(char c10, short s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public short b(char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30376b.equals(obj);
    }

    public int hashCode() {
        return this.f30376b.hashCode();
    }

    @Override
    public short i() {
        return this.f30376b.i();
    }

    @Override
    public short[] i0(short[] sArr) {
        return this.f30376b.i0(sArr);
    }

    @Override
    public boolean isEmpty() {
        return this.f30376b.isEmpty();
    }

    @Override
    public InterfaceC3460s iterator() {
        return new a();
    }

    @Override
    public char[] j() {
        return this.f30376b.j();
    }

    @Override
    public Sd.i k() {
        if (this.f30378d == null) {
            this.f30378d = Sd.c.h1(this.f30376b.k());
        }
        return this.f30378d;
    }

    @Override
    public InterfaceC13968b keySet() {
        if (this.f30377c == null) {
            this.f30377c = Sd.c.B2(this.f30376b.keySet());
        }
        return this.f30377c;
    }

    @Override
    public char l() {
        return this.f30376b.l();
    }

    @Override
    public short o0(char c10) {
        return this.f30376b.o0(c10);
    }

    @Override
    public void putAll(Map<? extends Character, ? extends Short> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void r(Ud.h hVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30376b.size();
    }

    @Override
    public boolean t9(he.r rVar) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return this.f30376b.toString();
    }

    @Override
    public short[] values() {
        return this.f30376b.values();
    }

    @Override
    public boolean y(InterfaceC13462q interfaceC13462q) {
        return this.f30376b.y(interfaceC13462q);
    }
}
