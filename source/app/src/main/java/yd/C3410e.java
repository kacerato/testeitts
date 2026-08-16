package Yd;

import Zd.InterfaceC3447e;
import ee.InterfaceC13063d;
import he.InterfaceC13449d;
import he.InterfaceC13453h;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13967a;

public class C3410e implements InterfaceC13063d, Serializable {

    public static final long f30202e = -1034234728574286014L;

    public final InterfaceC13063d f30203b;

    public transient InterfaceC13967a f30204c = null;

    public transient Sd.f f30205d = null;

    public class a implements InterfaceC3447e {

        public InterfaceC3447e f30206b;

        public a() {
            this.f30206b = C3410e.this.f30203b.iterator();
        }

        @Override
        public void g() {
            this.f30206b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30206b.hasNext();
        }

        @Override
        public byte key() {
            return this.f30206b.key();
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
            return this.f30206b.value();
        }
    }

    public C3410e(InterfaceC13063d interfaceC13063d) {
        interfaceC13063d.getClass();
        this.f30203b = interfaceC13063d;
    }

    @Override
    public boolean B(he.I i10) {
        return this.f30203b.B(i10);
    }

    @Override
    public boolean D(byte b10) {
        return this.f30203b.D(b10);
    }

    @Override
    public boolean E0(byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean U(float f10) {
        return this.f30203b.U(f10);
    }

    @Override
    public float V3(byte b10, float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte[] X(byte[] bArr) {
        return this.f30203b.X(bArr);
    }

    @Override
    public float X9(byte b10, float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float[] c0(float[] fArr) {
        return this.f30203b.c0(fArr);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public void d9(InterfaceC13063d interfaceC13063d) {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30203b.equals(obj);
    }

    public int hashCode() {
        return this.f30203b.hashCode();
    }

    @Override
    public boolean he(byte b10, float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float i() {
        return this.f30203b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30203b.isEmpty();
    }

    @Override
    public InterfaceC3447e iterator() {
        return new a();
    }

    @Override
    public byte[] j() {
        return this.f30203b.j();
    }

    @Override
    public Sd.f k() {
        if (this.f30205d == null) {
            this.f30205d = Sd.c.e1(this.f30203b.k());
        }
        return this.f30205d;
    }

    @Override
    public InterfaceC13967a keySet() {
        if (this.f30204c == null) {
            this.f30204c = Sd.c.A2(this.f30203b.keySet());
        }
        return this.f30204c;
    }

    @Override
    public byte l() {
        return this.f30203b.l();
    }

    @Override
    public float m(byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void n(Ud.d dVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float n4(byte b10, float f10, float f11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean ob(InterfaceC13449d interfaceC13449d) {
        return this.f30203b.ob(interfaceC13449d);
    }

    @Override
    public void putAll(Map<? extends Byte, ? extends Float> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public float s0(byte b10) {
        return this.f30203b.s0(b10);
    }

    @Override
    public boolean s3(InterfaceC13449d interfaceC13449d) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30203b.size();
    }

    public String toString() {
        return this.f30203b.toString();
    }

    @Override
    public float[] values() {
        return this.f30203b.values();
    }

    @Override
    public boolean w(InterfaceC13453h interfaceC13453h) {
        return this.f30203b.w(interfaceC13453h);
    }
}
