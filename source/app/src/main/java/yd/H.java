package Yd;

import ee.InterfaceC13083y;
import he.InterfaceC13445B;
import he.InterfaceC13453h;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13970d;

public class H implements InterfaceC13083y, Serializable {

    public static final long f30037e = -1034234728574286014L;

    public final InterfaceC13083y f30038b;

    public transient InterfaceC13970d f30039c = null;

    public transient Sd.a f30040d = null;

    public class a implements Zd.C {

        public Zd.C f30041b;

        public a() {
            this.f30041b = H.this.f30038b.iterator();
        }

        @Override
        public byte b(byte b10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30041b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30041b.hasNext();
        }

        @Override
        public float key() {
            return this.f30041b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public byte value() {
            return this.f30041b.value();
        }
    }

    public H(InterfaceC13083y interfaceC13083y) {
        interfaceC13083y.getClass();
        this.f30038b = interfaceC13083y;
    }

    @Override
    public byte D5(float f10, byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean G0(float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean H(float f10) {
        return this.f30038b.H(f10);
    }

    @Override
    public boolean K9(float f10, byte b10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean M(InterfaceC13453h interfaceC13453h) {
        return this.f30038b.M(interfaceC13453h);
    }

    @Override
    public void Ma(InterfaceC13083y interfaceC13083y) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean P(byte b10) {
        return this.f30038b.P(b10);
    }

    @Override
    public byte Qa(float f10, byte b10, byte b11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Za(InterfaceC13445B interfaceC13445B) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte[] a0(byte[] bArr) {
        return this.f30038b.a0(bArr);
    }

    @Override
    public byte c(float f10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public float[] d0(float[] fArr) {
        return this.f30038b.d0(fArr);
    }

    public boolean equals(Object obj) {
        return obj == this || this.f30038b.equals(obj);
    }

    public int hashCode() {
        return this.f30038b.hashCode();
    }

    @Override
    public byte i() {
        return this.f30038b.i();
    }

    @Override
    public boolean isEmpty() {
        return this.f30038b.isEmpty();
    }

    @Override
    public Zd.C iterator() {
        return new a();
    }

    @Override
    public float[] j() {
        return this.f30038b.j();
    }

    @Override
    public boolean j0(he.I i10) {
        return this.f30038b.j0(i10);
    }

    @Override
    public Sd.a k() {
        if (this.f30040d == null) {
            this.f30040d = Sd.c.b1(this.f30038b.k());
        }
        return this.f30040d;
    }

    @Override
    public boolean kc(InterfaceC13445B interfaceC13445B) {
        return this.f30038b.kc(interfaceC13445B);
    }

    @Override
    public InterfaceC13970d keySet() {
        if (this.f30039c == null) {
            this.f30039c = Sd.c.D2(this.f30038b.keySet());
        }
        return this.f30039c;
    }

    @Override
    public float l() {
        return this.f30038b.l();
    }

    @Override
    public void putAll(Map<? extends Float, ? extends Byte> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public byte q0(float f10) {
        return this.f30038b.q0(f10);
    }

    @Override
    public void s(Ud.a aVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f30038b.size();
    }

    public String toString() {
        return this.f30038b.toString();
    }

    @Override
    public byte[] values() {
        return this.f30038b.values();
    }

    @Override
    public byte we(float f10, byte b10) {
        throw new UnsupportedOperationException();
    }
}
