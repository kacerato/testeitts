package Yd;

import Zd.InterfaceC3444b;
import ee.InterfaceC13060a;
import he.InterfaceC13446a;
import he.InterfaceC13453h;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13967a;

public class C3402a implements InterfaceC13060a, Serializable {

    public static final long f30161e = -1034234728574286014L;

    public final InterfaceC13060a f30162b;

    public transient InterfaceC13967a f30163c = null;

    public transient Sd.a f30164d = null;

    public class C0803a implements InterfaceC3444b {

        public InterfaceC3444b f30165b;

        public C0803a() {
            this.f30165b = C3402a.this.f30162b.iterator();
        }

        @Override
        public byte b(byte b10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30165b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30165b.hasNext();
        }

        @Override
        public byte key() {
            return this.f30165b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public byte value() {
            return this.f30165b.value();
        }
    }

    public C3402a(InterfaceC13060a interfaceC13060a) {
        interfaceC13060a.getClass();
        this.f30162b = interfaceC13060a;
    }

    @Override
    public boolean D(byte b10) {
        return this.f30162b.D(b10);
    }

    @Override
    public boolean E0(byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean G2(InterfaceC13446a interfaceC13446a) {
        return this.f30162b.G2(interfaceC13446a);
    }

    @Override
    public void L8(InterfaceC13060a interfaceC13060a) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean M(InterfaceC13453h interfaceC13453h) {
        return this.f30162b.M(interfaceC13453h);
    }

    @Override
    public boolean P(byte b10) {
        return this.f30162b.P(b10);
    }

    @Override
    public byte P3(byte b10, byte b11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Uc(InterfaceC13446a interfaceC13446a) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte[] X(byte[] bArr) {
        return this.f30162b.X(bArr);
    }

    @Override
    public byte X5(byte b10, byte b11, byte b12) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte[] a0(byte[] bArr) {
        return this.f30162b.a0(bArr);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte da(byte b10, byte b11) {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30162b.equals(obj);
    }

    public int hashCode() {
        return this.f30162b.hashCode();
    }

    @Override
    public byte i() {
        return this.f30162b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30162b.isEmpty();
    }

    @Override
    public InterfaceC3444b iterator() {
        return new C0803a();
    }

    @Override
    public byte[] j() {
        return this.f30162b.j();
    }

    @Override
    public Sd.a k() {
        if (this.f30164d == null) {
            this.f30164d = Sd.c.b1(this.f30162b.k());
        }
        return this.f30164d;
    }

    @Override
    public InterfaceC13967a keySet() {
        if (this.f30163c == null) {
            this.f30163c = Sd.c.A2(this.f30162b.keySet());
        }
        return this.f30163c;
    }

    @Override
    public byte l() {
        return this.f30162b.l();
    }

    @Override
    public byte m(byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean me(byte b10, byte b11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends Byte, ? extends Byte> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void s(Ud.a aVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte s0(byte b10) {
        return this.f30162b.s0(b10);
    }

    @Override
    public int size() {
        return this.f30162b.size();
    }

    public String toString() {
        return this.f30162b.toString();
    }

    @Override
    public byte[] values() {
        return this.f30162b.values();
    }

    @Override
    public boolean w(InterfaceC13453h interfaceC13453h) {
        return this.f30162b.w(interfaceC13453h);
    }
}
