package Oe;

import io.reactivex.exceptions.CompositeException;

public final class F0<T> extends AbstractC2859a<T, T> {

    public final Fe.o<? super Throwable, ? extends Be.G<? extends T>> f18816c;

    public final boolean f18817d;

    public static final class a<T> implements Be.I<T> {

        public final Be.I<? super T> f18818b;

        public final Fe.o<? super Throwable, ? extends Be.G<? extends T>> f18819c;

        public final boolean f18820d;

        public final Ge.h f18821e = new Ge.h();

        public boolean f18822f;

        public boolean f18823g;

        public a(Be.I<? super T> i10, Fe.o<? super Throwable, ? extends Be.G<? extends T>> oVar, boolean z10) {
            this.f18818b = i10;
            this.f18819c = oVar;
            this.f18820d = z10;
        }

        @Override
        public void a() {
            if (this.f18823g) {
                return;
            }
            this.f18823g = true;
            this.f18822f = true;
            this.f18818b.a();
        }

        @Override
        public void e(De.c cVar) {
            this.f18821e.a(cVar);
        }

        @Override
        public void h(T t10) {
            if (this.f18823g) {
                return;
            }
            this.f18818b.h(t10);
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f18822f) {
                if (this.f18823g) {
                    Ye.a.Y(th2);
                    return;
                } else {
                    this.f18818b.onError(th2);
                    return;
                }
            }
            this.f18822f = true;
            if (this.f18820d && !(th2 instanceof Exception)) {
                this.f18818b.onError(th2);
                return;
            }
            try {
                Be.G<? extends T> apply = this.f18819c.apply(th2);
                if (apply != null) {
                    apply.c(this);
                    return;
                }
                NullPointerException nullPointerException = new NullPointerException("Observable is null");
                nullPointerException.initCause(th2);
                this.f18818b.onError(nullPointerException);
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f18818b.onError(new CompositeException(th2, th3));
            }
        }
    }

    public F0(Be.G<T> g10, Fe.o<? super Throwable, ? extends Be.G<? extends T>> oVar, boolean z10) {
        super(g10);
        this.f18816c = oVar;
        this.f18817d = z10;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        a aVar = new a(i10, this.f18816c, this.f18817d);
        i10.e(aVar.f18821e);
        this.f19344b.c(aVar);
    }
}
