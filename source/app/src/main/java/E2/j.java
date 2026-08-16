package E2;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;
import w2.B;
import w2.H;
import w2.z;

@e
@v2.c
@InterfaceC15800a
public final class j implements Serializable {

    public static final int f5411e = 88;

    public static final long f5412f = 0;

    public final n f5413b;

    public final n f5414c;

    public final double f5415d;

    public j(n nVar, n nVar2, double d10) {
        this.f5413b = nVar;
        this.f5414c = nVar2;
        this.f5415d = d10;
    }

    public static double b(double d10) {
        if (d10 >= 1.0d) {
            return 1.0d;
        }
        if (d10 <= -1.0d) {
            return -1.0d;
        }
        return d10;
    }

    public static double c(double d10) {
        if (d10 > 0.0d) {
            return d10;
        }
        return Double.MIN_VALUE;
    }

    public static j d(byte[] bArr) {
        H.E(bArr);
        H.m(bArr.length == 88, "Expected PairedStats.BYTES = %s, got %s", 88, bArr.length);
        ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
        return new j(n.r(order), n.r(order), order.getDouble());
    }

    public long a() {
        return this.f5413b.a();
    }

    public g e() {
        H.g0(a() > 1);
        if (Double.isNaN(this.f5415d)) {
            return g.a();
        }
        double w10 = this.f5413b.w();
        if (w10 > 0.0d) {
            return this.f5414c.w() > 0.0d ? g.f(this.f5413b.d(), this.f5414c.d()).b(this.f5415d / w10) : g.b(this.f5414c.d());
        }
        H.g0(this.f5414c.w() > 0.0d);
        return g.i(this.f5413b.d());
    }

    public boolean equals(@CheckForNull Object obj) {
        if (obj == null || j.class != obj.getClass()) {
            return false;
        }
        j jVar = (j) obj;
        return this.f5413b.equals(jVar.f5413b) && this.f5414c.equals(jVar.f5414c) && Double.doubleToLongBits(this.f5415d) == Double.doubleToLongBits(jVar.f5415d);
    }

    public double f() {
        H.g0(a() > 1);
        if (Double.isNaN(this.f5415d)) {
            return Double.NaN;
        }
        double w10 = k().w();
        double w11 = l().w();
        H.g0(w10 > 0.0d);
        H.g0(w11 > 0.0d);
        return b(this.f5415d / Math.sqrt(c(w10 * w11)));
    }

    public double g() {
        H.g0(a() != 0);
        return this.f5415d / a();
    }

    public double h() {
        H.g0(a() > 1);
        return this.f5415d / (a() - 1);
    }

    public int hashCode() {
        return B.b(this.f5413b, this.f5414c, Double.valueOf(this.f5415d));
    }

    public double i() {
        return this.f5415d;
    }

    public byte[] j() {
        ByteBuffer order = ByteBuffer.allocate(88).order(ByteOrder.LITTLE_ENDIAN);
        this.f5413b.y(order);
        this.f5414c.y(order);
        order.putDouble(this.f5415d);
        return order.array();
    }

    public n k() {
        return this.f5413b;
    }

    public n l() {
        return this.f5414c;
    }

    public String toString() {
        return a() > 0 ? z.c(this).f("xStats", this.f5413b).f("yStats", this.f5414c).b("populationCovariance", g()).toString() : z.c(this).f("xStats", this.f5413b).f("yStats", this.f5414c).toString();
    }
}
