package Me;

import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.atomic.AtomicReference;

public final class c0<T> extends AbstractC2815a<T, T> {

    public final Fe.o<? super Throwable, ? extends Be.y<? extends T>> f15001c;

    public final boolean f15002d;

    public static final class a<T> extends AtomicReference<De.c> implements Be.v<T>, De.c {

        public static final long f15003e = 2026620218879969836L;

        public final Be.v<? super T> f15004b;

        public final Fe.o<? super Throwable, ? extends Be.y<? extends T>> f15005c;

        public final boolean f15006d;

        public static final class C0427a<T> implements Be.v<T> {

            public final Be.v<? super T> f15007b;

            public final AtomicReference<De.c> f15008c;

            public C0427a(Be.v<? super T> vVar, AtomicReference<De.c> atomicReference) {
                this.f15007b = vVar;
                this.f15008c = atomicReference;
            }

            @Override
            public void a() {
                this.f15007b.a();
            }

            @Override
            public void b(T t10) {
                this.f15007b.b(t10);
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.h(this.f15008c, cVar);
            }

            @Override
            public void onError(Throwable th2) {
                this.f15007b.onError(th2);
            }
        }

        public a(Be.v<? super T> vVar, Fe.o<? super Throwable, ? extends Be.y<? extends T>> oVar, boolean z10) {
            this.f15004b = vVar;
            this.f15005c = oVar;
            this.f15006d = z10;
        }

        @Override
        public void a() {
            this.f15004b.a();
        }

        @Override
        public void b(T t10) {
            this.f15004b.b(t10);
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
            if (Ge.d.h(this, cVar)) {
                this.f15004b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f15006d && !(th2 instanceof Exception)) {
                this.f15004b.onError(th2);
                return;
            }
            try {
                Be.y yVar = (Be.y) He.b.g(this.f15005c.apply(th2), "The resumeFunction returned a null MaybeSource");
                Ge.d.c(this, null);
                yVar.d(new C0427a(this.f15004b, this));
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f15004b.onError(new CompositeException(th2, th3));
            }
        }
    }

    public c0(Be.y<T> yVar, Fe.o<? super Throwable, ? extends Be.y<? extends T>> oVar, boolean z10) {
        super(yVar);
        this.f15001c = oVar;
        this.f15002d = z10;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        this.f14976b.d(new a(vVar, this.f15001c, this.f15002d));
    }
}
