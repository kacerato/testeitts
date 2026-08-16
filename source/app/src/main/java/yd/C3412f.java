package Yd;

import Zd.InterfaceC3448f;
import ee.InterfaceC13064e;
import he.InterfaceC13450e;
import he.InterfaceC13453h;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13967a;

public class C3412f implements InterfaceC13064e, Serializable {

    public static final long f30214e = -1034234728574286014L;

    public final InterfaceC13064e f30215b;

    public transient InterfaceC13967a f30216c = null;

    public transient Sd.g f30217d = null;

    public class a implements InterfaceC3448f {

        public InterfaceC3448f f30218b;

        public a() {
            this.f30218b = C3412f.this.f30215b.iterator();
        }

        @Override
        public int e(int i10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30218b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30218b.hasNext();
        }

        @Override
        public byte key() {
            return this.f30218b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public int value() {
            return this.f30218b.value();
        }
    }

    public C3412f(InterfaceC13064e interfaceC13064e) {
        interfaceC13064e.getClass();
        this.f30215b = interfaceC13064e;
    }

    @Override
    public boolean D(byte b10) {
        return this.f30215b.D(b10);
    }

    @Override
    public boolean E0(byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Q(int i10) {
        return this.f30215b.Q(i10);
    }

    @Override
    public boolean Vb(InterfaceC13450e interfaceC13450e) {
        return this.f30215b.Vb(interfaceC13450e);
    }

    @Override
    public byte[] X(byte[] bArr) {
        return this.f30215b.X(bArr);
    }

    @Override
    public int Y3(byte b10, int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void ac(InterfaceC13064e interfaceC13064e) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean bc(InterfaceC13450e interfaceC13450e) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int ca(byte b10, int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public int[] e0(int[] iArr) {
        return this.f30215b.e0(iArr);
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30215b.equals(obj);
    }

    @Override
    public void f(Ud.e eVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean ge(byte b10, int i10) {
        throw new UnsupportedOperationException();
    }

    public int hashCode() {
        return this.f30215b.hashCode();
    }

    @Override
    public int i() {
        return this.f30215b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30215b.isEmpty();
    }

    @Override
    public InterfaceC3448f iterator() {
        return new a();
    }

    @Override
    public byte[] j() {
        return this.f30215b.j();
    }

    @Override
    public Sd.g k() {
        if (this.f30217d == null) {
            this.f30217d = Sd.c.f1(this.f30215b.k());
        }
        return this.f30217d;
    }

    @Override
    public InterfaceC13967a keySet() {
        if (this.f30216c == null) {
            this.f30216c = Sd.c.A2(this.f30215b.keySet());
        }
        return this.f30216c;
    }

    @Override
    public byte l() {
        return this.f30215b.l();
    }

    @Override
    public int m(byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean m0(he.S s10) {
        return this.f30215b.m0(s10);
    }

    @Override
    public void putAll(Map<? extends Byte, ? extends Integer> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int s0(byte b10) {
        return this.f30215b.s0(b10);
    }

    @Override
    public int s8(byte b10, int i10, int i11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30215b.size();
    }

    public String toString() {
        return this.f30215b.toString();
    }

    @Override
    public int[] values() {
        return this.f30215b.values();
    }

    @Override
    public boolean w(InterfaceC13453h interfaceC13453h) {
        return this.f30215b.w(interfaceC13453h);
    }
}
