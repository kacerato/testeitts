package Tg;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

public class j extends z {

    public z f25006e;

    public j(z zVar) {
        if (zVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f25006e = zVar;
    }

    @Override
    public z a() {
        return this.f25006e.a();
    }

    @Override
    public z b() {
        return this.f25006e.b();
    }

    @Override
    public long d() {
        return this.f25006e.d();
    }

    @Override
    public z e(long j10) {
        return this.f25006e.e(j10);
    }

    @Override
    public boolean f() {
        return this.f25006e.f();
    }

    @Override
    public void g() throws IOException {
        this.f25006e.g();
    }

    @Override
    public z h(long j10, TimeUnit timeUnit) {
        return this.f25006e.h(j10, timeUnit);
    }

    @Override
    public long i() {
        return this.f25006e.i();
    }

    public final z k() {
        return this.f25006e;
    }

    public final j l(z zVar) {
        if (zVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f25006e = zVar;
        return this;
    }
}
