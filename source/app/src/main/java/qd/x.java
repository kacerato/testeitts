package qd;

import com.lmax.disruptor.AlertException;
import com.lmax.disruptor.TimeoutException;

public final class x implements InterfaceC15056A {

    public final J f106119a;

    public final z f106120b;

    public volatile boolean f106121c = false;

    public z f106122d;

    public E f106123e;

    public x(E e10, J j10, z zVar, z[] zVarArr) {
        this.f106123e = e10;
        this.f106119a = j10;
        this.f106122d = zVar;
        if (zVarArr.length == 0) {
            this.f106120b = zVar;
        } else {
            this.f106120b = new r(zVarArr);
        }
    }

    @Override
    public long a(long j10) throws AlertException, InterruptedException, TimeoutException {
        b();
        long b10 = this.f106119a.b(j10, this.f106122d, this.f106120b, this);
        return b10 < j10 ? b10 : this.f106123e.h(j10, b10);
    }

    @Override
    public void b() throws AlertException {
        if (this.f106121c) {
            throw AlertException.INSTANCE;
        }
    }

    @Override
    public boolean c() {
        return this.f106121c;
    }

    @Override
    public void d() {
        this.f106121c = true;
        this.f106119a.a();
    }

    @Override
    public void e() {
        this.f106121c = false;
    }

    @Override
    public long getCursor() {
        return this.f106120b.c();
    }
}
