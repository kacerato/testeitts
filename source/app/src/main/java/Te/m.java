package Te;

import Be.InterfaceC2367q;
import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.atomic.AtomicReference;

public final class m<T> extends AtomicReference<hn.d> implements InterfaceC2367q<T>, hn.d, De.c, We.g {

    public static final long f24874f = -7251123623727029452L;

    public final Fe.g<? super T> f24875b;

    public final Fe.g<? super Throwable> f24876c;

    public final Fe.a f24877d;

    public final Fe.g<? super hn.d> f24878e;

    public m(Fe.g<? super T> gVar, Fe.g<? super Throwable> gVar2, Fe.a aVar, Fe.g<? super hn.d> gVar3) {
        this.f24875b = gVar;
        this.f24876c = gVar2;
        this.f24877d = aVar;
        this.f24878e = gVar3;
    }

    @Override
    public void a() {
        hn.d dVar = get();
        Ue.j jVar = Ue.j.CANCELLED;
        if (dVar != jVar) {
            lazySet(jVar);
            try {
                this.f24877d.run();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                Ye.a.Y(th2);
            }
        }
    }

    @Override
    public boolean c() {
        return this.f24876c != He.a.f8380f;
    }

    @Override
    public void cancel() {
        Ue.j.a(this);
    }

    @Override
    public boolean d() {
        return get() == Ue.j.CANCELLED;
    }

    @Override
    public void dispose() {
        cancel();
    }

    @Override
    public void h(T t10) {
        if (d()) {
            return;
        }
        try {
            this.f24875b.accept(t10);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            get().cancel();
            onError(th2);
        }
    }

    @Override
    public void i(long j10) {
        get().i(j10);
    }

    @Override
    public void j(hn.d dVar) {
        if (Ue.j.j(this, dVar)) {
            try {
                this.f24878e.accept(this);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                dVar.cancel();
                onError(th2);
            }
        }
    }

    @Override
    public void onError(Throwable th2) {
        hn.d dVar = get();
        Ue.j jVar = Ue.j.CANCELLED;
        if (dVar == jVar) {
            Ye.a.Y(th2);
            return;
        }
        lazySet(jVar);
        try {
            this.f24876c.accept(th2);
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            Ye.a.Y(new CompositeException(th2, th3));
        }
    }
}
