package Yd;

import Zd.InterfaceC3467z;
import ee.InterfaceC13080v;
import he.InterfaceC13468x;
import he.InterfaceC13470z;
import java.io.Serializable;
import java.util.Map;
import ke.InterfaceC13969c;

public class D implements InterfaceC13080v, Serializable {

    public static final long f29996e = -1034234728574286014L;

    public final InterfaceC13080v f29997b;

    public transient InterfaceC13969c f29998c = null;

    public transient Sd.h f29999d = null;

    public class a implements InterfaceC3467z {

        public InterfaceC3467z f30000b;

        public a() {
            this.f30000b = D.this.f29997b.iterator();
        }

        @Override
        public long d(long j10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void g() {
            this.f30000b.g();
        }

        @Override
        public boolean hasNext() {
            return this.f30000b.hasNext();
        }

        @Override
        public double key() {
            return this.f30000b.key();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public long value() {
            return this.f30000b.value();
        }
    }

    public D(InterfaceC13080v interfaceC13080v) {
        interfaceC13080v.getClass();
        this.f29997b = interfaceC13080v;
    }

    @Override
    public boolean A(double d10) {
        return this.f29997b.A(d10);
    }

    @Override
    public boolean L2(InterfaceC13468x interfaceC13468x) {
        return this.f29997b.L2(interfaceC13468x);
    }

    @Override
    public long O2(double d10, long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean Oa(double d10, long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean R(long j10) {
        return this.f29997b.R(j10);
    }

    @Override
    public long U4(double d10, long j10, long j11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public double[] W(double[] dArr) {
        return this.f29997b.W(dArr);
    }

    @Override
    public long Y8(double d10, long j10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public long a(double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        return obj == this || this.f29997b.equals(obj);
    }

    @Override
    public long[] g0(long[] jArr) {
        return this.f29997b.g0(jArr);
    }

    @Override
    public void h(Ud.f fVar) {
        throw new UnsupportedOperationException();
    }

    public int hashCode() {
        return this.f29997b.hashCode();
    }

    @Override
    public long i() {
        return this.f29997b.i();
    }

    @Override
    public boolean increment(double d10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean isEmpty() {
        return this.f29997b.isEmpty();
    }

    @Override
    public InterfaceC3467z iterator() {
        return new a();
    }

    @Override
    public double[] j() {
        return this.f29997b.j();
    }

    @Override
    public Sd.h k() {
        if (this.f29999d == null) {
            this.f29999d = Sd.c.g1(this.f29997b.k());
        }
        return this.f29999d;
    }

    @Override
    public boolean k0(InterfaceC13470z interfaceC13470z) {
        return this.f29997b.k0(interfaceC13470z);
    }

    @Override
    public InterfaceC13969c keySet() {
        if (this.f29998c == null) {
            this.f29998c = Sd.c.C2(this.f29997b.keySet());
        }
        return this.f29998c;
    }

    @Override
    public double l() {
        return this.f29997b.l();
    }

    @Override
    public boolean oc(InterfaceC13468x interfaceC13468x) {
        throw new UnsupportedOperationException();
    }

    @Override
    public long p0(double d10) {
        return this.f29997b.p0(d10);
    }

    @Override
    public void pe(InterfaceC13080v interfaceC13080v) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void putAll(Map<? extends Double, ? extends Long> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    public int size() {
        return this.f29997b.size();
    }

    public String toString() {
        return this.f29997b.toString();
    }

    @Override
    public long[] values() {
        return this.f29997b.values();
    }

    @Override
    public boolean x(he.b0 b0Var) {
        return this.f29997b.x(b0Var);
    }
}
