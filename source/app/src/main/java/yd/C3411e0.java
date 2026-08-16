package Yd;

import he.InterfaceC13453h;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13972f;

public class C3411e0 implements ee.O, Serializable {

    public static final long f30208e = -1034234728574286014L;

    public final ee.O f30209b;

    public transient InterfaceC13972f f30210c = null;

    public transient Sd.a f30211d = null;

    public class a implements Zd.W {

        public Zd.W f30212b;

        public a() {
            this.f30212b = C3411e0.this.f30209b.iterator();
        }

        @Override
        public byte b(byte b10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30212b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30212b.hasNext();
        }

        @Override
        public long key() {
            return this.f30212b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public byte value() {
            return this.f30212b.value();
        }
    }

    public C3411e0(ee.O o10) {
        o10.getClass();
        this.f30209b = o10;
    }

    @Override
    public boolean E(long j10) {
        return this.f30209b.E(j10);
    }

    @Override
    public boolean H0(long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte K7(long j10, byte b10, byte b11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean M(InterfaceC13453h interfaceC13453h) {
        return this.f30209b.M(interfaceC13453h);
    }

    @Override
    public boolean M6(he.U u10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean P(byte b10) {
        return this.f30209b.P(b10);
    }

    @Override
    public byte[] a0(byte[] bArr) {
        return this.f30209b.a0(bArr);
    }

    @Override
    public boolean aa(he.U u10) {
        return this.f30209b.aa(u10);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte e(long j10) {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30209b.equals(obj);
    }

    @Override
    public byte f7(long j10, byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public long[] h0(long[] jArr) {
        return this.f30209b.h0(jArr);
    }

    public int hashCode() {
        return this.f30209b.hashCode();
    }

    @Override
    public byte i() {
        return this.f30209b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30209b.isEmpty();
    }

    @Override
    public Zd.W iterator() {
        return new a();
    }

    @Override
    public long[] j() {
        return this.f30209b.j();
    }

    @Override
    public Sd.a k() {
        if (this.f30211d == null) {
            this.f30211d = Sd.c.b1(this.f30209b.k());
        }
        return this.f30211d;
    }

    @Override
    public InterfaceC13972f keySet() {
        if (this.f30210c == null) {
            this.f30210c = Sd.c.F2(this.f30209b.keySet());
        }
        return this.f30210c;
    }

    @Override
    public long l() {
        return this.f30209b.l();
    }

    @Override
    public boolean l0(he.b0 b0Var) {
        return this.f30209b.l0(b0Var);
    }

    @Override
    public boolean mb(long j10, byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends Long, ? extends Byte> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void s(Ud.a aVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30209b.size();
    }

    public String toString() {
        return this.f30209b.toString();
    }

    @Override
    public byte u(long j10) {
        return this.f30209b.u(j10);
    }

    @Override
    public byte ud(long j10, byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte[] values() {
        return this.f30209b.values();
    }

    @Override
    public void ya(ee.O o10) {
        throw new UnsupportedOperationException();
    }
}
