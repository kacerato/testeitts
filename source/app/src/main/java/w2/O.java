package w2;

import android.icu.text.DateFormat;
import java.util.concurrent.TimeUnit;

@InterfaceC15894k
@v2.b(emulated = true)
public final class O {

    public final U f126199a;

    public boolean f126200b;

    public long f126201c;

    public long f126202d;

    public static class a {

        public static final int[] f126203a;

        static {
            int[] iArr = new int[TimeUnit.values().length];
            f126203a = iArr;
            try {
                iArr[TimeUnit.NANOSECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f126203a[TimeUnit.MICROSECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f126203a[TimeUnit.MILLISECONDS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f126203a[TimeUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f126203a[TimeUnit.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f126203a[TimeUnit.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f126203a[TimeUnit.DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public O() {
        this.f126199a = U.b();
    }

    public static String a(TimeUnit timeUnit) {
        switch (a.f126203a[timeUnit.ordinal()]) {
            case 1:
                return "ns";
            case 2:
                return "\u03bcs";
            case 3:
                return DateFormat.MINUTE_SECOND;
            case 4:
                return "s";
            case 5:
                return "min";
            case 6:
                return "h";
            case 7:
                return "d";
            default:
                throw new AssertionError();
        }
    }

    public static TimeUnit b(long j10) {
        TimeUnit timeUnit = TimeUnit.DAYS;
        TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
        if (timeUnit.convert(j10, timeUnit2) > 0) {
            return timeUnit;
        }
        TimeUnit timeUnit3 = TimeUnit.HOURS;
        if (timeUnit3.convert(j10, timeUnit2) > 0) {
            return timeUnit3;
        }
        TimeUnit timeUnit4 = TimeUnit.MINUTES;
        if (timeUnit4.convert(j10, timeUnit2) > 0) {
            return timeUnit4;
        }
        TimeUnit timeUnit5 = TimeUnit.SECONDS;
        if (timeUnit5.convert(j10, timeUnit2) > 0) {
            return timeUnit5;
        }
        TimeUnit timeUnit6 = TimeUnit.MILLISECONDS;
        if (timeUnit6.convert(j10, timeUnit2) > 0) {
            return timeUnit6;
        }
        TimeUnit timeUnit7 = TimeUnit.MICROSECONDS;
        return timeUnit7.convert(j10, timeUnit2) > 0 ? timeUnit7 : timeUnit2;
    }

    public static O c() {
        return new O().k();
    }

    public static O d(U u10) {
        return new O(u10).k();
    }

    public static O e() {
        return new O();
    }

    public static O f(U u10) {
        return new O(u10);
    }

    public long g(TimeUnit timeUnit) {
        return timeUnit.convert(h(), TimeUnit.NANOSECONDS);
    }

    public final long h() {
        return this.f126200b ? (this.f126199a.a() - this.f126202d) + this.f126201c : this.f126201c;
    }

    public boolean i() {
        return this.f126200b;
    }

    @I2.a
    public O j() {
        this.f126201c = 0L;
        this.f126200b = false;
        return this;
    }

    @I2.a
    public O k() {
        H.h0(!this.f126200b, "This stopwatch is already running.");
        this.f126200b = true;
        this.f126202d = this.f126199a.a();
        return this;
    }

    @I2.a
    public O l() {
        long a10 = this.f126199a.a();
        H.h0(this.f126200b, "This stopwatch is already stopped.");
        this.f126200b = false;
        this.f126201c += a10 - this.f126202d;
        return this;
    }

    public String toString() {
        long h10 = h();
        TimeUnit b10 = b(h10);
        String d10 = G.d(h10 / TimeUnit.NANOSECONDS.convert(1L, b10));
        String a10 = a(b10);
        StringBuilder sb2 = new StringBuilder(String.valueOf(d10).length() + 1 + String.valueOf(a10).length());
        sb2.append(d10);
        sb2.append(" ");
        sb2.append(a10);
        return sb2.toString();
    }

    public O(U u10) {
        this.f126199a = (U) H.F(u10, "ticker");
    }
}
