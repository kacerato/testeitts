package Me;

import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.atomic.AtomicReference;

public final class C2818d<T> extends AtomicReference<De.c> implements Be.v<T>, De.c, We.g {

    public static final long f15009e = -6076952298809384986L;

    public final Fe.g<? super T> f15010b;

    public final Fe.g<? super Throwable> f15011c;

    public final Fe.a f15012d;

    public C2818d(Fe.g<? super T> gVar, Fe.g<? super Throwable> gVar2, Fe.a aVar) {
        this.f15010b = gVar;
        this.f15011c = gVar2;
        this.f15012d = aVar;
    }

    @Override
    public void a() {
        lazySet(Ge.d.DISPOSED);
        try {
            this.f15012d.run();
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ye.a.Y(th2);
        }
    }

    @Override
    public void b(T t10) {
        lazySet(Ge.d.DISPOSED);
        try {
            this.f15010b.accept(t10);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ye.a.Y(th2);
        }
    }

    @Override
    public boolean c() {
        return this.f15011c != He.a.f8380f;
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
    public void onError(Throwable th2) {
        lazySet(Ge.d.DISPOSED);
        try {
            this.f15011c.accept(th2);
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            Ye.a.Y(new CompositeException(th2, th3));
        }
    }
}
