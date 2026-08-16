package Je;

import Be.I;
import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.atomic.AtomicReference;

public final class p<T> extends AtomicReference<De.c> implements I<T>, De.c {

    public static final long f10493f = -4403180040475402120L;

    public final Fe.r<? super T> f10494b;

    public final Fe.g<? super Throwable> f10495c;

    public final Fe.a f10496d;

    public boolean f10497e;

    public p(Fe.r<? super T> rVar, Fe.g<? super Throwable> gVar, Fe.a aVar) {
        this.f10494b = rVar;
        this.f10495c = gVar;
        this.f10496d = aVar;
    }

    @Override
    public void a() {
        if (this.f10497e) {
            return;
        }
        this.f10497e = true;
        try {
            this.f10496d.run();
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ye.a.Y(th2);
        }
    }

    @Override
    public boolean d() {
        return Ge.d.b(get());
    }

    @Override
    public void dispose() {
        Ge.d.a(this);
    }

    @Override
    public void e(De.c cVar) {
        Ge.d.h(this, cVar);
    }

    @Override
    public void h(T t10) {
        if (this.f10497e) {
            return;
        }
        try {
            if (this.f10494b.test(t10)) {
                return;
            }
            dispose();
            a();
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            dispose();
            onError(th2);
        }
    }

    @Override
    public void onError(Throwable th2) {
        if (this.f10497e) {
            Ye.a.Y(th2);
            return;
        }
        this.f10497e = true;
        try {
            this.f10495c.accept(th2);
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            Ye.a.Y(new CompositeException(th2, th3));
        }
    }
}
