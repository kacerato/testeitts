package Oe;

import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.LinkedBlockingQueue;

public final class C2892l {
    public C2892l() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> void a(Be.G<? extends T> g10) {
        io.reactivex.internal.util.f fVar = new io.reactivex.internal.util.f();
        Je.u uVar = new Je.u(He.a.h(), fVar, fVar, He.a.h());
        g10.c(uVar);
        io.reactivex.internal.util.e.a(fVar, uVar);
        Throwable th2 = fVar.f92440b;
        if (th2 != null) {
            throw ExceptionHelper.f(th2);
        }
    }

    public static <T> void b(Be.G<? extends T> g10, Be.I<? super T> i10) {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        Je.i iVar = new Je.i(linkedBlockingQueue);
        i10.e(iVar);
        g10.c(iVar);
        while (!iVar.d()) {
            Object poll = linkedBlockingQueue.poll();
            if (poll == null) {
                try {
                    poll = linkedBlockingQueue.take();
                } catch (InterruptedException e10) {
                    iVar.dispose();
                    i10.onError(e10);
                    return;
                }
            }
            if (iVar.d() || g10 == Je.i.f10470d || io.reactivex.internal.util.p.c(poll, i10)) {
                return;
            }
        }
    }

    public static <T> void c(Be.G<? extends T> g10, Fe.g<? super T> gVar, Fe.g<? super Throwable> gVar2, Fe.a aVar) {
        He.b.g(gVar, "onNext is null");
        He.b.g(gVar2, "onError is null");
        He.b.g(aVar, "onComplete is null");
        b(g10, new Je.u(gVar, gVar2, aVar, He.a.h()));
    }
}
