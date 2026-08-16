package Tg;

import com.tonyodev.fetch2core.FetchErrorStrings;
import eg.C13143u0;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

public class z {

    public static final z f25073d = new a();

    public boolean f25074a;

    public long f25075b;

    public long f25076c;

    public class a extends z {
        @Override
        public z e(long j10) {
            return this;
        }

        @Override
        public void g() throws IOException {
        }

        @Override
        public z h(long j10, TimeUnit timeUnit) {
            return this;
        }
    }

    public z a() {
        this.f25074a = false;
        return this;
    }

    public z b() {
        this.f25076c = 0L;
        return this;
    }

    public final z c(long j10, TimeUnit timeUnit) {
        if (j10 > 0) {
            if (timeUnit != null) {
                return e(System.nanoTime() + timeUnit.toNanos(j10));
            }
            throw new IllegalArgumentException("unit == null");
        }
        throw new IllegalArgumentException("duration <= 0: " + j10);
    }

    public long d() {
        if (this.f25074a) {
            return this.f25075b;
        }
        throw new IllegalStateException("No deadline");
    }

    public z e(long j10) {
        this.f25074a = true;
        this.f25075b = j10;
        return this;
    }

    public boolean f() {
        return this.f25074a;
    }

    public void g() throws IOException {
        if (Thread.interrupted()) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
        if (this.f25074a && this.f25075b - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public z h(long j10, TimeUnit timeUnit) {
        if (j10 >= 0) {
            if (timeUnit == null) {
                throw new IllegalArgumentException("unit == null");
            }
            this.f25076c = timeUnit.toNanos(j10);
            return this;
        }
        throw new IllegalArgumentException("timeout < 0: " + j10);
    }

    public long i() {
        return this.f25076c;
    }

    public final void j(Object obj) throws InterruptedIOException {
        try {
            boolean f10 = f();
            long i10 = i();
            long j10 = 0;
            if (!f10 && i10 == 0) {
                obj.wait();
                return;
            }
            long nanoTime = System.nanoTime();
            if (f10 && i10 != 0) {
                i10 = Math.min(i10, d() - nanoTime);
            } else if (f10) {
                i10 = d() - nanoTime;
            }
            if (i10 > 0) {
                long j11 = i10 / C13143u0.f85788e;
                obj.wait(j11, (int) (i10 - (C13143u0.f85788e * j11)));
                j10 = System.nanoTime() - nanoTime;
            }
            if (j10 >= i10) {
                throw new InterruptedIOException(FetchErrorStrings.CONNECTION_TIMEOUT);
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
    }
}
