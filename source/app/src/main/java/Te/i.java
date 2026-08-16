package Te;

import Be.InterfaceC2367q;
import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.atomic.AtomicReference;

public final class i<T> extends AtomicReference<hn.d> implements InterfaceC2367q<T>, De.c {

    public static final long f24858f = -4403180040475402120L;

    public final Fe.r<? super T> f24859b;

    public final Fe.g<? super Throwable> f24860c;

    public final Fe.a f24861d;

    public boolean f24862e;

    public i(Fe.r<? super T> rVar, Fe.g<? super Throwable> gVar, Fe.a aVar) {
        this.f24859b = rVar;
        this.f24860c = gVar;
        this.f24861d = aVar;
    }

    @Override
    public void a() {
        if (this.f24862e) {
            return;
        }
        this.f24862e = true;
        try {
            this.f24861d.run();
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ye.a.Y(th2);
        }
    }

    @Override
    public boolean d() {
        return get() == Ue.j.CANCELLED;
    }

    @Override
    public void dispose() {
        Ue.j.a(this);
    }

    @Override
    public void h(T t10) {
        if (this.f24862e) {
            return;
        }
        try {
            if (this.f24859b.test(t10)) {
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
    public void j(hn.d dVar) {
        Ue.j.k(this, dVar, Long.MAX_VALUE);
    }

    @Override
    public void onError(Throwable th2) {
        if (this.f24862e) {
            Ye.a.Y(th2);
            return;
        }
        this.f24862e = true;
        try {
            this.f24860c.accept(th2);
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            Ye.a.Y(new CompositeException(th2, th3));
        }
    }
}
