package Le;

import Be.AbstractC2362l;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.util.ExceptionHelper;

public final class S<T> extends AbstractC2692a<T, T> {

    public final Fe.g<? super T> f12196d;

    public final Fe.g<? super Throwable> f12197e;

    public final Fe.a f12198f;

    public final Fe.a f12199g;

    public static final class a<T> extends Te.a<T, T> {

        public final Fe.g<? super T> f12200g;

        public final Fe.g<? super Throwable> f12201h;

        public final Fe.a f12202i;

        public final Fe.a f12203j;

        public a(Ie.a<? super T> aVar, Fe.g<? super T> gVar, Fe.g<? super Throwable> gVar2, Fe.a aVar2, Fe.a aVar3) {
            super(aVar);
            this.f12200g = gVar;
            this.f12201h = gVar2;
            this.f12202i = aVar2;
            this.f12203j = aVar3;
        }

        @Override
        public void a() {
            if (this.f24833e) {
                return;
            }
            try {
                this.f12202i.run();
                this.f24833e = true;
                this.f24830b.a();
                try {
                    this.f12203j.run();
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    Ye.a.Y(th2);
                }
            } catch (Throwable th3) {
                d(th3);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f24833e) {
                return;
            }
            if (this.f24834f != 0) {
                this.f24830b.h(null);
                return;
            }
            try {
                this.f12200g.accept(t10);
                this.f24830b.h(t10);
            } catch (Throwable th2) {
                d(th2);
            }
        }

        @Override
        public int m(int i10) {
            return e(i10);
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f24833e) {
                Ye.a.Y(th2);
                return;
            }
            this.f24833e = true;
            try {
                this.f12201h.accept(th2);
                this.f24830b.onError(th2);
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f24830b.onError(new CompositeException(th2, th3));
            }
            try {
                this.f12203j.run();
            } catch (Throwable th4) {
                io.reactivex.exceptions.a.b(th4);
                Ye.a.Y(th4);
            }
        }

        @Override
        @Ce.g
        public T poll() throws Exception {
            CompositeException compositeException;
            try {
                T poll = this.f24832d.poll();
                if (poll != null) {
                    try {
                        this.f12200g.accept(poll);
                        this.f12203j.run();
                    } catch (Throwable th2) {
                        try {
                            io.reactivex.exceptions.a.b(th2);
                            try {
                                this.f12201h.accept(th2);
                                throw ExceptionHelper.d(th2);
                            } finally {
                            }
                        } catch (Throwable th3) {
                            this.f12203j.run();
                            throw th3;
                        }
                    }
                } else if (this.f24834f == 1) {
                    this.f12202i.run();
                    this.f12203j.run();
                }
                return poll;
            } catch (Throwable th22) {
                io.reactivex.exceptions.a.b(th22);
                try {
                    this.f12201h.accept(th22);
                    throw ExceptionHelper.d(th22);
                } finally {
                }
            }
        }

        @Override
        public boolean u(T t10) {
            if (this.f24833e) {
                return false;
            }
            try {
                this.f12200g.accept(t10);
                return this.f24830b.u(t10);
            } catch (Throwable th2) {
                d(th2);
                return false;
            }
        }
    }

    public static final class b<T> extends Te.b<T, T> {

        public final Fe.g<? super T> f12204g;

        public final Fe.g<? super Throwable> f12205h;

        public final Fe.a f12206i;

        public final Fe.a f12207j;

        public b(hn.c<? super T> cVar, Fe.g<? super T> gVar, Fe.g<? super Throwable> gVar2, Fe.a aVar, Fe.a aVar2) {
            super(cVar);
            this.f12204g = gVar;
            this.f12205h = gVar2;
            this.f12206i = aVar;
            this.f12207j = aVar2;
        }

        @Override
        public void a() {
            if (this.f24838e) {
                return;
            }
            try {
                this.f12206i.run();
                this.f24838e = true;
                this.f24835b.a();
                try {
                    this.f12207j.run();
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    Ye.a.Y(th2);
                }
            } catch (Throwable th3) {
                d(th3);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f24838e) {
                return;
            }
            if (this.f24839f != 0) {
                this.f24835b.h(null);
                return;
            }
            try {
                this.f12204g.accept(t10);
                this.f24835b.h(t10);
            } catch (Throwable th2) {
                d(th2);
            }
        }

        @Override
        public int m(int i10) {
            return e(i10);
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f24838e) {
                Ye.a.Y(th2);
                return;
            }
            this.f24838e = true;
            try {
                this.f12205h.accept(th2);
                this.f24835b.onError(th2);
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f24835b.onError(new CompositeException(th2, th3));
            }
            try {
                this.f12207j.run();
            } catch (Throwable th4) {
                io.reactivex.exceptions.a.b(th4);
                Ye.a.Y(th4);
            }
        }

        @Override
        @Ce.g
        public T poll() throws Exception {
            CompositeException compositeException;
            try {
                T poll = this.f24837d.poll();
                if (poll != null) {
                    try {
                        this.f12204g.accept(poll);
                        this.f12207j.run();
                    } catch (Throwable th2) {
                        try {
                            io.reactivex.exceptions.a.b(th2);
                            try {
                                this.f12205h.accept(th2);
                                throw ExceptionHelper.d(th2);
                            } finally {
                            }
                        } catch (Throwable th3) {
                            this.f12207j.run();
                            throw th3;
                        }
                    }
                } else if (this.f24839f == 1) {
                    this.f12206i.run();
                    this.f12207j.run();
                }
                return poll;
            } catch (Throwable th22) {
                io.reactivex.exceptions.a.b(th22);
                try {
                    this.f12205h.accept(th22);
                    throw ExceptionHelper.d(th22);
                } finally {
                }
            }
        }
    }

    public S(AbstractC2362l<T> abstractC2362l, Fe.g<? super T> gVar, Fe.g<? super Throwable> gVar2, Fe.a aVar, Fe.a aVar2) {
        super(abstractC2362l);
        this.f12196d = gVar;
        this.f12197e = gVar2;
        this.f12198f = aVar;
        this.f12199g = aVar2;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        if (cVar instanceof Ie.a) {
            this.f12507c.l6(new a((Ie.a) cVar, this.f12196d, this.f12197e, this.f12198f, this.f12199g));
        } else {
            this.f12507c.l6(new b(cVar, this.f12196d, this.f12197e, this.f12198f, this.f12199g));
        }
    }
}
