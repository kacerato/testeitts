package Yd;

import Zd.InterfaceC3453k;
import ee.InterfaceC13068i;
import he.InterfaceC13453h;
import he.InterfaceC13455j;
import he.InterfaceC13462q;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13968b;

public class C3424l implements InterfaceC13068i, Serializable {

    public static final long f30271e = -1034234728574286014L;

    public final InterfaceC13068i f30272b;

    public transient InterfaceC13968b f30273c = null;

    public transient Sd.a f30274d = null;

    public class a implements InterfaceC3453k {

        public InterfaceC3453k f30275b;

        public a() {
            this.f30275b = C3424l.this.f30272b.iterator();
        }

        @Override
        public byte b(byte b10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30275b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30275b.hasNext();
        }

        @Override
        public char key() {
            return this.f30275b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public byte value() {
            return this.f30275b.value();
        }
    }

    public C3424l(InterfaceC13068i interfaceC13068i) {
        interfaceC13068i.getClass();
        this.f30272b = interfaceC13068i;
    }

    @Override
    public boolean C(char c10) {
        return this.f30272b.C(c10);
    }

    @Override
    public boolean D0(char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte F9(char c10, byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Fd(char c10, byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean M(InterfaceC13453h interfaceC13453h) {
        return this.f30272b.M(interfaceC13453h);
    }

    @Override
    public boolean P(byte b10) {
        return this.f30272b.P(b10);
    }

    @Override
    public boolean Q4(InterfaceC13455j interfaceC13455j) {
        return this.f30272b.Q4(interfaceC13455j);
    }

    @Override
    public char[] V(char[] cArr) {
        return this.f30272b.V(cArr);
    }

    @Override
    public void Vc(InterfaceC13068i interfaceC13068i) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte[] a0(byte[] bArr) {
        return this.f30272b.a0(bArr);
    }

    @Override
    public byte b(char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30272b.equals(obj);
    }

    public int hashCode() {
        return this.f30272b.hashCode();
    }

    @Override
    public byte i() {
        return this.f30272b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30272b.isEmpty();
    }

    @Override
    public InterfaceC3453k iterator() {
        return new a();
    }

    @Override
    public char[] j() {
        return this.f30272b.j();
    }

    @Override
    public Sd.a k() {
        if (this.f30274d == null) {
            this.f30274d = Sd.c.b1(this.f30272b.k());
        }
        return this.f30274d;
    }

    @Override
    public InterfaceC13968b keySet() {
        if (this.f30273c == null) {
            this.f30273c = Sd.c.B2(this.f30272b.keySet());
        }
        return this.f30273c;
    }

    @Override
    public char l() {
        return this.f30272b.l();
    }

    @Override
    public boolean na(InterfaceC13455j interfaceC13455j) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte o0(char c10) {
        return this.f30272b.o0(c10);
    }

    @Override
    public void putAll(Map<? extends Character, ? extends Byte> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte rc(char c10, byte b10, byte b11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void s(Ud.a aVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30272b.size();
    }

    public String toString() {
        return this.f30272b.toString();
    }

    @Override
    public byte[] values() {
        return this.f30272b.values();
    }

    @Override
    public boolean y(InterfaceC13462q interfaceC13462q) {
        return this.f30272b.y(interfaceC13462q);
    }

    @Override
    public byte z4(char c10, byte b10) {
        throw new UnsupportedOperationException();
    }
}
