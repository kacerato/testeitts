package E2;

import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;
import w2.H;

@E2.e
@v2.c
@InterfaceC15800a
public abstract class g {

    public static final class b {

        public final double f5391a;

        public final double f5392b;

        public g a(double d10, double d11) {
            H.d(E2.d.d(d10) && E2.d.d(d11));
            double d12 = this.f5391a;
            if (d10 != d12) {
                return b((d11 - this.f5392b) / (d10 - d12));
            }
            H.d(d11 != this.f5392b);
            return new e(this.f5391a);
        }

        public g b(double d10) {
            H.d(!Double.isNaN(d10));
            return E2.d.d(d10) ? new d(d10, this.f5392b - (this.f5391a * d10)) : new e(this.f5391a);
        }

        public b(double d10, double d11) {
            this.f5391a = d10;
            this.f5392b = d11;
        }
    }

    public static final class c extends g {

        public static final c f5393a = new c();

        @Override
        public g c() {
            return this;
        }

        @Override
        public boolean d() {
            return false;
        }

        @Override
        public boolean e() {
            return false;
        }

        @Override
        public double g() {
            return Double.NaN;
        }

        @Override
        public double h(double d10) {
            return Double.NaN;
        }

        public String toString() {
            return "NaN";
        }
    }

    public static g a() {
        return c.f5393a;
    }

    public static g b(double d10) {
        H.d(E2.d.d(d10));
        return new d(0.0d, d10);
    }

    public static b f(double d10, double d11) {
        H.d(E2.d.d(d10) && E2.d.d(d11));
        return new b(d10, d11);
    }

    public static g i(double d10) {
        H.d(E2.d.d(d10));
        return new e(d10);
    }

    public abstract g c();

    public abstract boolean d();

    public abstract boolean e();

    public abstract double g();

    public abstract double h(double d10);

    public static final class e extends g {

        public final double f5397a;

        @CheckForNull
        @J2.b
        public g f5398b;

        public e(double d10) {
            this.f5397a = d10;
            this.f5398b = null;
        }

        private g j() {
            return new d(0.0d, this.f5397a, this);
        }

        @Override
        public g c() {
            g gVar = this.f5398b;
            if (gVar != null) {
                return gVar;
            }
            g j10 = j();
            this.f5398b = j10;
            return j10;
        }

        @Override
        public boolean d() {
            return false;
        }

        @Override
        public boolean e() {
            return true;
        }

        @Override
        public double g() {
            throw new IllegalStateException();
        }

        @Override
        public double h(double d10) {
            throw new IllegalStateException();
        }

        public String toString() {
            return String.format("x = %g", Double.valueOf(this.f5397a));
        }

        public e(double d10, g gVar) {
            this.f5397a = d10;
            this.f5398b = gVar;
        }
    }

    public static final class d extends g {

        public final double f5394a;

        public final double f5395b;

        @CheckForNull
        @J2.b
        public g f5396c;

        public d(double d10, double d11) {
            this.f5394a = d10;
            this.f5395b = d11;
            this.f5396c = null;
        }

        @Override
        public g c() {
            g gVar = this.f5396c;
            if (gVar != null) {
                return gVar;
            }
            g j10 = j();
            this.f5396c = j10;
            return j10;
        }

        @Override
        public boolean d() {
            return this.f5394a == 0.0d;
        }

        @Override
        public boolean e() {
            return false;
        }

        @Override
        public double g() {
            return this.f5394a;
        }

        @Override
        public double h(double d10) {
            return (d10 * this.f5394a) + this.f5395b;
        }

        public final g j() {
            double d10 = this.f5394a;
            return d10 != 0.0d ? new d(1.0d / d10, (this.f5395b * (-1.0d)) / d10, this) : new e(this.f5395b, this);
        }

        public String toString() {
            return String.format("y = %g * x + %g", Double.valueOf(this.f5394a), Double.valueOf(this.f5395b));
        }

        public d(double d10, double d11, g gVar) {
            this.f5394a = d10;
            this.f5395b = d11;
            this.f5396c = gVar;
        }
    }
}
