package E2;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;
import w2.B;
import w2.H;
import w2.z;

@e
@v2.c
@InterfaceC15800a
public final class n implements Serializable {

    public static final int f5424g = 40;

    public static final long f5425h = 0;

    public final long f5426b;

    public final double f5427c;

    public final double f5428d;

    public final double f5429e;

    public final double f5430f;

    public n(long j10, double d10, double d11, double d12, double d13) {
        this.f5426b = j10;
        this.f5427c = d10;
        this.f5428d = d11;
        this.f5429e = d12;
        this.f5430f = d13;
    }

    public static n b(byte[] bArr) {
        H.E(bArr);
        H.m(bArr.length == 40, "Expected Stats.BYTES = %s remaining , got %s", 40, bArr.length);
        return r(ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN));
    }

    public static double e(Iterable<? extends Number> iterable) {
        return f(iterable.iterator());
    }

    public static double f(Iterator<? extends Number> it) {
        H.d(it.hasNext());
        double doubleValue = it.next().doubleValue();
        long j10 = 1;
        while (it.hasNext()) {
            double doubleValue2 = it.next().doubleValue();
            j10++;
            doubleValue = (com.google.common.primitives.d.n(doubleValue2) && com.google.common.primitives.d.n(doubleValue)) ? doubleValue + ((doubleValue2 - doubleValue) / j10) : o.i(doubleValue, doubleValue2);
        }
        return doubleValue;
    }

    public static double g(double... dArr) {
        H.d(dArr.length > 0);
        double d10 = dArr[0];
        for (int i10 = 1; i10 < dArr.length; i10++) {
            double d11 = dArr[i10];
            d10 = (com.google.common.primitives.d.n(d11) && com.google.common.primitives.d.n(d10)) ? d10 + ((d11 - d10) / (i10 + 1)) : o.i(d10, d11);
        }
        return d10;
    }

    public static double h(int... iArr) {
        H.d(iArr.length > 0);
        double d10 = iArr[0];
        for (int i10 = 1; i10 < iArr.length; i10++) {
            double d11 = iArr[i10];
            d10 = (com.google.common.primitives.d.n(d11) && com.google.common.primitives.d.n(d10)) ? d10 + ((d11 - d10) / (i10 + 1)) : o.i(d10, d11);
        }
        return d10;
    }

    public static double i(long... jArr) {
        H.d(jArr.length > 0);
        double d10 = jArr[0];
        for (int i10 = 1; i10 < jArr.length; i10++) {
            double d11 = jArr[i10];
            d10 = (com.google.common.primitives.d.n(d11) && com.google.common.primitives.d.n(d10)) ? d10 + ((d11 - d10) / (i10 + 1)) : o.i(d10, d11);
        }
        return d10;
    }

    public static n k(Iterable<? extends Number> iterable) {
        o oVar = new o();
        oVar.d(iterable);
        return oVar.s();
    }

    public static n l(Iterator<? extends Number> it) {
        o oVar = new o();
        oVar.e(it);
        return oVar.s();
    }

    public static n m(double... dArr) {
        o oVar = new o();
        oVar.f(dArr);
        return oVar.s();
    }

    public static n n(int... iArr) {
        o oVar = new o();
        oVar.g(iArr);
        return oVar.s();
    }

    public static n o(long... jArr) {
        o oVar = new o();
        oVar.h(jArr);
        return oVar.s();
    }

    public static n r(ByteBuffer byteBuffer) {
        H.E(byteBuffer);
        H.m(byteBuffer.remaining() >= 40, "Expected at least Stats.BYTES = %s remaining , got %s", 40, byteBuffer.remaining());
        return new n(byteBuffer.getLong(), byteBuffer.getDouble(), byteBuffer.getDouble(), byteBuffer.getDouble(), byteBuffer.getDouble());
    }

    public long a() {
        return this.f5426b;
    }

    public double c() {
        H.g0(this.f5426b != 0);
        return this.f5430f;
    }

    public double d() {
        H.g0(this.f5426b != 0);
        return this.f5427c;
    }

    public boolean equals(@CheckForNull Object obj) {
        if (obj == null || n.class != obj.getClass()) {
            return false;
        }
        n nVar = (n) obj;
        return this.f5426b == nVar.f5426b && Double.doubleToLongBits(this.f5427c) == Double.doubleToLongBits(nVar.f5427c) && Double.doubleToLongBits(this.f5428d) == Double.doubleToLongBits(nVar.f5428d) && Double.doubleToLongBits(this.f5429e) == Double.doubleToLongBits(nVar.f5429e) && Double.doubleToLongBits(this.f5430f) == Double.doubleToLongBits(nVar.f5430f);
    }

    public int hashCode() {
        return B.b(Long.valueOf(this.f5426b), Double.valueOf(this.f5427c), Double.valueOf(this.f5428d), Double.valueOf(this.f5429e), Double.valueOf(this.f5430f));
    }

    public double j() {
        H.g0(this.f5426b != 0);
        return this.f5429e;
    }

    public double p() {
        return Math.sqrt(q());
    }

    public double q() {
        H.g0(this.f5426b > 0);
        if (Double.isNaN(this.f5428d)) {
            return Double.NaN;
        }
        if (this.f5426b == 1) {
            return 0.0d;
        }
        return d.b(this.f5428d) / a();
    }

    public double s() {
        return Math.sqrt(u());
    }

    public String toString() {
        return a() > 0 ? z.c(this).e(oc.c.f98682m, this.f5426b).b("mean", this.f5427c).b("populationStandardDeviation", p()).b("min", this.f5429e).b("max", this.f5430f).toString() : z.c(this).e(oc.c.f98682m, this.f5426b).toString();
    }

    public double u() {
        H.g0(this.f5426b > 1);
        if (Double.isNaN(this.f5428d)) {
            return Double.NaN;
        }
        return d.b(this.f5428d) / (this.f5426b - 1);
    }

    public double v() {
        return this.f5427c * this.f5426b;
    }

    public double w() {
        return this.f5428d;
    }

    public byte[] x() {
        ByteBuffer order = ByteBuffer.allocate(40).order(ByteOrder.LITTLE_ENDIAN);
        y(order);
        return order.array();
    }

    public void y(ByteBuffer byteBuffer) {
        H.E(byteBuffer);
        H.m(byteBuffer.remaining() >= 40, "Expected at least Stats.BYTES = %s remaining , got %s", 40, byteBuffer.remaining());
        byteBuffer.putLong(this.f5426b).putDouble(this.f5427c).putDouble(this.f5428d).putDouble(this.f5429e).putDouble(this.f5430f);
    }
}
