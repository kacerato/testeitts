package Je;

import Be.I;
import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.atomic.AtomicReference;

public final class u<T> extends AtomicReference<De.c> implements I<T>, De.c, We.g {

    public static final long f10510f = -7251123623727029452L;

    public final Fe.g<? super T> f10511b;

    public final Fe.g<? super Throwable> f10512c;

    public final Fe.a f10513d;

    public final Fe.g<? super De.c> f10514e;

    public u(Fe.g<? super T> gVar, Fe.g<? super Throwable> gVar2, Fe.a aVar, Fe.g<? super De.c> gVar3) {
        this.f10511b = gVar;
        this.f10512c = gVar2;
        this.f10513d = aVar;
        this.f10514e = gVar3;
    }

    @Override
    public void a() {
        if (d()) {
            return;
        }
        lazySet(Ge.d.DISPOSED);
        try {
            this.f10513d.run();
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ye.a.Y(th2);
        }
    }

    @Override
    public boolean c() {
        return this.f10512c != He.a.f8380f;
    }

    @Override
    public boolean d() {
        return get() == Ge.d.DISPOSED;
    }

    @Override
    public void dispose() {
        Ge.d.a(this);
    }

    @Override
    public void e(De.c cVar) {
        if (Ge.d.h(this, cVar)) {
            try {
                this.f10514e.accept(this);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                cVar.dispose();
                onError(th2);
            }
        }
    }

    @Override
    public void h(T t10) {
        if (d()) {
            return;
        }
        try {
            this.f10511b.accept(t10);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            get().dispose();
            onError(th2);
        }
    }

    @Override
    public void onError(Throwable th2) {
        if (d()) {
            Ye.a.Y(th2);
            return;
        }
        lazySet(Ge.d.DISPOSED);
        try {
            this.f10512c.accept(th2);
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            Ye.a.Y(new CompositeException(th2, th3));
        }
    }
}
