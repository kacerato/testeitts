package g3;

import androidx.annotation.GuardedBy;
import b3.s;
import java.util.concurrent.TimeUnit;

public class e {

    public static final long f88128d = TimeUnit.HOURS.toMillis(24);

    public static final long f88129e = TimeUnit.MINUTES.toMillis(30);

    public final s f88130a;

    @GuardedBy("this")
    public long f88131b;

    @GuardedBy("this")
    public int f88132c;

    public e(s sVar) {
        this.f88130a = sVar;
    }

    public static boolean c(int i10) {
        return i10 == 429 || (i10 >= 500 && i10 < 600);
    }

    public static boolean d(int i10) {
        return (i10 >= 200 && i10 < 300) || i10 == 401 || i10 == 404;
    }

    public final synchronized long a(int i10) {
        if (c(i10)) {
            return (long) Math.min(Math.pow(2.0d, this.f88132c) + this.f88130a.e(), f88129e);
        }
        return f88128d;
    }

    public synchronized boolean b() {
        boolean z10;
        if (this.f88132c != 0) {
            z10 = this.f88130a.a() > this.f88131b;
        }
        return z10;
    }

    public final synchronized void e() {
        this.f88132c = 0;
    }

    public synchronized void f(int i10) {
        if (d(i10)) {
            e();
            return;
        }
        this.f88132c++;
        this.f88131b = this.f88130a.a() + a(i10);
    }

    public e() {
        this.f88130a = s.c();
    }
}
