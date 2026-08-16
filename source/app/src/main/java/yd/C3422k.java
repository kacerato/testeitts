package Yd;

import Zd.InterfaceC3452j;
import ee.InterfaceC13067h;
import he.InterfaceC13453h;
import he.InterfaceC13454i;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13967a;

public class C3422k implements InterfaceC13067h, Serializable {

    public static final long f30263e = -1034234728574286014L;

    public final InterfaceC13067h f30264b;

    public transient InterfaceC13967a f30265c = null;

    public transient Sd.i f30266d = null;

    public class a implements InterfaceC3452j {

        public InterfaceC3452j f30267b;

        public a() {
            this.f30267b = C3422k.this.f30264b.iterator();
        }

        @Override
        public short c(short s10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30267b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30267b.hasNext();
        }

        @Override
        public byte key() {
            return this.f30267b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public short value() {
            return this.f30267b.value();
        }
    }

    public C3422k(InterfaceC13067h interfaceC13067h) {
        interfaceC13067h.getClass();
        this.f30264b = interfaceC13067h;
    }

    @Override
    public boolean Cd(byte b10, short s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean D(byte b10) {
        return this.f30264b.D(b10);
    }

    @Override
    public boolean Dd(InterfaceC13454i interfaceC13454i) {
        return this.f30264b.Dd(interfaceC13454i);
    }

    @Override
    public boolean E0(byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean L(short s10) {
        return this.f30264b.L(s10);
    }

    @Override
    public void Lc(InterfaceC13067h interfaceC13067h) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean N(he.t0 t0Var) {
        return this.f30264b.N(t0Var);
    }

    @Override
    public boolean P7(InterfaceC13454i interfaceC13454i) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte[] X(byte[] bArr) {
        return this.f30264b.X(bArr);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30264b.equals(obj);
    }

    public int hashCode() {
        return this.f30264b.hashCode();
    }

    @Override
    public short i() {
        return this.f30264b.i();
    }

    @Override
    public short[] i0(short[] sArr) {
        return this.f30264b.i0(sArr);
    }

    @Override
    public short ia(byte b10, short s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public short ic(byte b10, short s10, short s11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean isEmpty() {
        return this.f30264b.isEmpty();
    }

    @Override
    public InterfaceC3452j iterator() {
        return new a();
    }

    @Override
    public byte[] j() {
        return this.f30264b.j();
    }

    @Override
    public Sd.i k() {
        if (this.f30266d == null) {
            this.f30266d = Sd.c.h1(this.f30264b.k());
        }
        return this.f30266d;
    }

    @Override
    public InterfaceC13967a keySet() {
        if (this.f30265c == null) {
            this.f30265c = Sd.c.A2(this.f30264b.keySet());
        }
        return this.f30265c;
    }

    @Override
    public byte l() {
        return this.f30264b.l();
    }

    @Override
    public short m(byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends Byte, ? extends Short> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void r(Ud.h hVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public short s0(byte b10) {
        return this.f30264b.s0(b10);
    }

    @Override
    public short s4(byte b10, short s10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30264b.size();
    }

    public String toString() {
        return this.f30264b.toString();
    }

    @Override
    public short[] values() {
        return this.f30264b.values();
    }

    @Override
    public boolean w(InterfaceC13453h interfaceC13453h) {
        return this.f30264b.w(interfaceC13453h);
    }
}
