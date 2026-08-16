package Te;

import Be.InterfaceC2367q;
import java.util.concurrent.atomic.AtomicReference;

public final class k<T> extends AtomicReference<hn.d> implements InterfaceC2367q<T>, hn.d {

    public static final long f24866i = 22876611072430776L;

    public final l<T> f24867b;

    public final int f24868c;

    public final int f24869d;

    public volatile Ie.o<T> f24870e;

    public volatile boolean f24871f;

    public long f24872g;

    public int f24873h;

    public k(l<T> lVar, int i10) {
        this.f24867b = lVar;
        this.f24868c = i10;
        this.f24869d = i10 - (i10 >> 2);
    }

    @Override
    public void a() {
        this.f24867b.d(this);
    }

    public boolean b() {
        return this.f24871f;
    }

    public Ie.o<T> c() {
        return this.f24870e;
    }

    @Override
    public void cancel() {
        Ue.j.a(this);
    }

    public void d() {
        if (this.f24873h != 1) {
            long j10 = this.f24872g + 1;
            if (j10 != this.f24869d) {
                this.f24872g = j10;
            } else {
                this.f24872g = 0L;
                get().i(j10);
            }
        }
    }

    public void e() {
        this.f24871f = true;
    }

    @Override
    public void h(T t10) {
        if (this.f24873h == 0) {
            this.f24867b.c(this, t10);
        } else {
            this.f24867b.f();
        }
    }

    @Override
    public void i(long j10) {
        if (this.f24873h != 1) {
            long j11 = this.f24872g + j10;
            if (j11 < this.f24869d) {
                this.f24872g = j11;
            } else {
                this.f24872g = 0L;
                get().i(j11);
            }
        }
    }

    @Override
    public void j(hn.d dVar) {
        if (Ue.j.j(this, dVar)) {
            if (dVar instanceof Ie.l) {
                Ie.l lVar = (Ie.l) dVar;
                int m10 = lVar.m(3);
                if (m10 == 1) {
                    this.f24873h = m10;
                    this.f24870e = lVar;
                    this.f24871f = true;
                    this.f24867b.d(this);
                    return;
                }
                if (m10 == 2) {
                    this.f24873h = m10;
                    this.f24870e = lVar;
                    io.reactivex.internal.util.u.j(dVar, this.f24868c);
                    return;
                }
            }
            this.f24870e = io.reactivex.internal.util.u.c(this.f24868c);
            io.reactivex.internal.util.u.j(dVar, this.f24868c);
        }
    }

    @Override
    public void onError(Throwable th2) {
        this.f24867b.b(this, th2);
    }
}
