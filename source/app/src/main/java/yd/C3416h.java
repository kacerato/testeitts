package Yd;

import Zd.InterfaceC3450h;
import ee.InterfaceC13065f;
import he.InterfaceC13451f;
import he.InterfaceC13453h;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13967a;

public class C3416h implements InterfaceC13065f, Serializable {

    public static final long f30232e = -1034234728574286014L;

    public final InterfaceC13065f f30233b;

    public transient InterfaceC13967a f30234c = null;

    public transient Sd.h f30235d = null;

    public class a implements InterfaceC3450h {

        public InterfaceC3450h f30236b;

        public a() {
            this.f30236b = C3416h.this.f30233b.iterator();
        }

        @Override
        public long d(long j10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30236b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30236b.hasNext();
        }

        @Override
        public byte key() {
            return this.f30236b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public long value() {
            return this.f30236b.value();
        }
    }

    public C3416h(InterfaceC13065f interfaceC13065f) {
        interfaceC13065f.getClass();
        this.f30233b = interfaceC13065f;
    }

    @Override
    public boolean D(byte b10) {
        return this.f30233b.D(b10);
    }

    @Override
    public boolean E0(byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public long N8(byte b10, long j10, long j11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean R(long j10) {
        return this.f30233b.R(j10);
    }

    @Override
    public void R4(InterfaceC13065f interfaceC13065f) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean V5(InterfaceC13451f interfaceC13451f) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte[] X(byte[] bArr) {
        return this.f30233b.X(bArr);
    }

    @Override
    public boolean a9(InterfaceC13451f interfaceC13451f) {
        return this.f30233b.a9(interfaceC13451f);
    }

    @Override
    public long b4(byte b10, long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30233b.equals(obj);
    }

    @Override
    public long[] g0(long[] jArr) {
        return this.f30233b.g0(jArr);
    }

    @Override
    public void h(Ud.f fVar) {
        throw new UnsupportedOperationException();
    }

    public int hashCode() {
        return this.f30233b.hashCode();
    }

    @Override
    public long i() {
        return this.f30233b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30233b.isEmpty();
    }

    @Override
    public InterfaceC3450h iterator() {
        return new a();
    }

    @Override
    public byte[] j() {
        return this.f30233b.j();
    }

    @Override
    public Sd.h k() {
        if (this.f30235d == null) {
            this.f30235d = Sd.c.g1(this.f30233b.k());
        }
        return this.f30235d;
    }

    @Override
    public InterfaceC13967a keySet() {
        if (this.f30234c == null) {
            this.f30234c = Sd.c.A2(this.f30233b.keySet());
        }
        return this.f30234c;
    }

    @Override
    public byte l() {
        return this.f30233b.l();
    }

    @Override
    public long m(byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean oe(byte b10, long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends Byte, ? extends Long> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public long s0(byte b10) {
        return this.f30233b.s0(b10);
    }

    @Override
    public int size() {
        return this.f30233b.size();
    }

    @Override
    public long ta(byte b10, long j10) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return this.f30233b.toString();
    }

    @Override
    public long[] values() {
        return this.f30233b.values();
    }

    @Override
    public boolean w(InterfaceC13453h interfaceC13453h) {
        return this.f30233b.w(interfaceC13453h);
    }

    @Override
    public boolean x(he.b0 b0Var) {
        return this.f30233b.x(b0Var);
    }
}
