package Te;

import Be.InterfaceC2367q;
import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.atomic.AtomicReference;

public final class g<T> extends AtomicReference<hn.d> implements InterfaceC2367q<T>, hn.d, De.c, We.g {

    public static final long f24847i = -7251123623727029452L;

    public final Fe.g<? super T> f24848b;

    public final Fe.g<? super Throwable> f24849c;

    public final Fe.a f24850d;

    public final Fe.g<? super hn.d> f24851e;

    public final int f24852f;

    public int f24853g;

    public final int f24854h;

    public g(Fe.g<? super T> gVar, Fe.g<? super Throwable> gVar2, Fe.a aVar, Fe.g<? super hn.d> gVar3, int i10) {
        this.f24848b = gVar;
        this.f24849c = gVar2;
        this.f24850d = aVar;
        this.f24851e = gVar3;
        this.f24852f = i10;
        this.f24854h = i10 - (i10 >> 2);
    }

    @Override
    public void a() {
        hn.d dVar = get();
        Ue.j jVar = Ue.j.CANCELLED;
        if (dVar != jVar) {
            lazySet(jVar);
            try {
                this.f24850d.run();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                Ye.a.Y(th2);
            }
        }
    }

    @Override
    public boolean c() {
        return this.f24849c != He.a.f8380f;
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
            this.f24848b.accept(t10);
            int i10 = this.f24853g + 1;
            if (i10 == this.f24854h) {
                this.f24853g = 0;
                get().i(this.f24854h);
            } else {
                this.f24853g = i10;
            }
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
                this.f24851e.accept(this);
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
            this.f24849c.accept(th2);
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            Ye.a.Y(new CompositeException(th2, th3));
        }
    }
}
