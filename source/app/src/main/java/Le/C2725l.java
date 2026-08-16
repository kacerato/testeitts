package Le;

import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.LinkedBlockingQueue;

public final class C2725l {
    public C2725l() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> void a(hn.b<? extends T> bVar) {
        io.reactivex.internal.util.f fVar = new io.reactivex.internal.util.f();
        Te.m mVar = new Te.m(He.a.h(), fVar, fVar, He.a.f8386l);
        bVar.l(mVar);
        io.reactivex.internal.util.e.a(fVar, mVar);
        Throwable th2 = fVar.f92440b;
        if (th2 != null) {
            throw ExceptionHelper.f(th2);
        }
    }

    public static <T> void b(hn.b<? extends T> bVar, Fe.g<? super T> gVar, Fe.g<? super Throwable> gVar2, Fe.a aVar) {
        He.b.g(gVar, "onNext is null");
        He.b.g(gVar2, "onError is null");
        He.b.g(aVar, "onComplete is null");
        d(bVar, new Te.m(gVar, gVar2, aVar, He.a.f8386l));
    }

    public static <T> void c(hn.b<? extends T> bVar, Fe.g<? super T> gVar, Fe.g<? super Throwable> gVar2, Fe.a aVar, int i10) {
        He.b.g(gVar, "onNext is null");
        He.b.g(gVar2, "onError is null");
        He.b.g(aVar, "onComplete is null");
        He.b.h(i10, "number > 0 required");
        d(bVar, new Te.g(gVar, gVar2, aVar, He.a.d(i10), i10));
    }

    public static <T> void d(hn.b<? extends T> bVar, hn.c<? super T> cVar) {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        Te.f fVar = new Te.f(linkedBlockingQueue);
        bVar.l(fVar);
        while (!fVar.b()) {
            try {
                Object poll = linkedBlockingQueue.poll();
                if (poll == null) {
                    if (fVar.b()) {
                        return;
                    }
                    io.reactivex.internal.util.e.b();
                    poll = linkedBlockingQueue.take();
                }
                if (fVar.b() || poll == Te.f.f24845d || io.reactivex.internal.util.p.d(poll, cVar)) {
                    return;
                }
            } catch (InterruptedException e10) {
                fVar.cancel();
                cVar.onError(e10);
                return;
            }
        }
    }
}
