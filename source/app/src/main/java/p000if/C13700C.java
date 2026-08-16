package p000if;

import java.util.logging.Level;
import java.util.logging.Logger;
import jf.f;

public class C13700C extends C13726v {

    public static final int f92062g = 24;

    public static final int f92063h = 60;

    public static final int f92064i = 60;

    public static final int f92065j = 3600;

    public static final int f92066k = 86400;

    public static final Logger f92067l = Logger.getLogger(C13700C.class.getName());

    public static final boolean f92068m = false;

    public double f92069e;

    public float f92070f;

    public C13700C(float f10) {
        super(EnumC13712h.Enabled);
        this.f92070f = 1.0f;
        if (f10 < 0.0f || f10 >= 24.0f) {
            f92067l.log(Level.SEVERE, "startHour={0}", Float.valueOf(f10));
            throw new IllegalArgumentException("hour should be between 0 and 24");
        }
        this.f92069e = f10 * 3600.0f;
    }

    public float e() {
        return this.f92070f;
    }

    public float f() {
        float f10 = ((float) this.f92069e) / 3600.0f;
        if (f10 == 24.0f) {
            return 0.0f;
        }
        return f10;
    }

    public int g() {
        int round = (int) Math.round(this.f92069e);
        if (round == 86400) {
            return 0;
        }
        return round;
    }

    public void h(float f10) {
        C13702E.h(f10, "new hour", 0.0f, 24.0f);
        this.f92069e = f10 * 3600.0d;
    }

    public void i(float f10) {
        this.f92070f = f10;
    }

    @Override
    public String toString() {
        int g10 = g();
        int i10 = g10 % 60;
        int i11 = g10 / 60;
        return String.format("%02d:%02d:%02d", Integer.valueOf(i11 / 60), Integer.valueOf(i11 % 60), Integer.valueOf(i10));
    }

    @Override
    public void update(float f10) {
        super.update(f10);
        double d10 = this.f92069e + (this.f92070f * f10);
        this.f92069e = d10;
        this.f92069e = f.I(d10, 86400.0d);
    }
}
