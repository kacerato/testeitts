package Yd;

import Zd.InterfaceC3445c;
import ee.InterfaceC13061b;
import he.InterfaceC13447b;
import he.InterfaceC13453h;
import he.InterfaceC13462q;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13967a;

public class C3404b implements InterfaceC13061b, Serializable {

    public static final long f30173e = -1034234728574286014L;

    public final InterfaceC13061b f30174b;

    public transient InterfaceC13967a f30175c = null;

    public transient Sd.b f30176d = null;

    public class a implements InterfaceC3445c {

        public InterfaceC3445c f30177b;

        public a() {
            this.f30177b = C3404b.this.f30174b.iterator();
        }

        @Override
        public char a(char c10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30177b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30177b.hasNext();
        }

        @Override
        public byte key() {
            return this.f30177b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public char value() {
            return this.f30177b.value();
        }
    }

    public C3404b(InterfaceC13061b interfaceC13061b) {
        interfaceC13061b.getClass();
        this.f30174b = interfaceC13061b;
    }

    @Override
    public boolean D(byte b10) {
        return this.f30174b.D(b10);
    }

    @Override
    public boolean E0(byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean K(InterfaceC13462q interfaceC13462q) {
        return this.f30174b.K(interfaceC13462q);
    }

    @Override
    public char L4(byte b10, char c10, char c11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean O(char c10) {
        return this.f30174b.O(c10);
    }

    @Override
    public void O6(InterfaceC13061b interfaceC13061b) {
        throw new UnsupportedOperationException();
    }

    @Override
    public char R3(byte b10, char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean R6(InterfaceC13447b interfaceC13447b) {
        return this.f30174b.R6(interfaceC13447b);
    }

    @Override
    public boolean U9(InterfaceC13447b interfaceC13447b) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte[] X(byte[] bArr) {
        return this.f30174b.X(bArr);
    }

    @Override
    public char[] Z(char[] cArr) {
        return this.f30174b.Z(cArr);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public char ea(byte b10, char c10) {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30174b.equals(obj);
    }

    @Override
    public void g(Ud.b bVar) {
        throw new UnsupportedOperationException();
    }

    public int hashCode() {
        return this.f30174b.hashCode();
    }

    @Override
    public char i() {
        return this.f30174b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30174b.isEmpty();
    }

    @Override
    public InterfaceC3445c iterator() {
        return new a();
    }

    @Override
    public byte[] j() {
        return this.f30174b.j();
    }

    @Override
    public Sd.b k() {
        if (this.f30176d == null) {
            this.f30176d = Sd.c.c1(this.f30174b.k());
        }
        return this.f30176d;
    }

    @Override
    public InterfaceC13967a keySet() {
        if (this.f30175c == null) {
            this.f30175c = Sd.c.A2(this.f30174b.keySet());
        }
        return this.f30175c;
    }

    @Override
    public byte l() {
        return this.f30174b.l();
    }

    @Override
    public boolean le(byte b10, char c10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public char m(byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends Byte, ? extends Character> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public char s0(byte b10) {
        return this.f30174b.s0(b10);
    }

    @Override
    public int size() {
        return this.f30174b.size();
    }

    public String toString() {
        return this.f30174b.toString();
    }

    @Override
    public char[] values() {
        return this.f30174b.values();
    }

    @Override
    public boolean w(InterfaceC13453h interfaceC13453h) {
        return this.f30174b.w(interfaceC13453h);
    }
}
