package Oe;

import Oe.C2893l0;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class C2910s0<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AbstractC2859a<TLeft, R> {

    public final Be.G<? extends TRight> f19854c;

    public final Fe.o<? super TLeft, ? extends Be.G<TLeftEnd>> f19855d;

    public final Fe.o<? super TRight, ? extends Be.G<TRightEnd>> f19856e;

    public final Fe.c<? super TLeft, ? super TRight, ? extends R> f19857f;

    public static final class a<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements De.c, C2893l0.b {

        public static final long f19858o = -6071216598687999801L;

        public static final Integer f19859p = 1;

        public static final Integer f19860q = 2;

        public static final Integer f19861r = 3;

        public static final Integer f19862s = 4;

        public final Be.I<? super R> f19863b;

        public final Fe.o<? super TLeft, ? extends Be.G<TLeftEnd>> f19869h;

        public final Fe.o<? super TRight, ? extends Be.G<TRightEnd>> f19870i;

        public final Fe.c<? super TLeft, ? super TRight, ? extends R> f19871j;

        public int f19873l;

        public int f19874m;

        public volatile boolean f19875n;

        public final De.b f19865d = new De.b();

        public final Re.c<Object> f19864c = new Re.c<>(Be.B.V());

        public final Map<Integer, TLeft> f19866e = new LinkedHashMap();

        public final Map<Integer, TRight> f19867f = new LinkedHashMap();

        public final AtomicReference<Throwable> f19868g = new AtomicReference<>();

        public final AtomicInteger f19872k = new AtomicInteger(2);

        public a(Be.I<? super R> i10, Fe.o<? super TLeft, ? extends Be.G<TLeftEnd>> oVar, Fe.o<? super TRight, ? extends Be.G<TRightEnd>> oVar2, Fe.c<? super TLeft, ? super TRight, ? extends R> cVar) {
            this.f19863b = i10;
            this.f19869h = oVar;
            this.f19870i = oVar2;
            this.f19871j = cVar;
        }

        @Override
        public void a(Throwable th2) {
            if (ExceptionHelper.a(this.f19868g, th2)) {
                h();
            } else {
                Ye.a.Y(th2);
            }
        }

        @Override
        public void b(boolean z10, Object obj) {
            synchronized (this) {
                try {
                    this.f19864c.o(z10 ? f19859p : f19860q, obj);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            h();
        }

        @Override
        public void c(Throwable th2) {
            if (!ExceptionHelper.a(this.f19868g, th2)) {
                Ye.a.Y(th2);
            } else {
                this.f19872k.decrementAndGet();
                h();
            }
        }

        @Override
        public boolean d() {
            return this.f19875n;
        }

        @Override
        public void dispose() {
            if (this.f19875n) {
                return;
            }
            this.f19875n = true;
            g();
            if (getAndIncrement() == 0) {
                this.f19864c.clear();
            }
        }

        @Override
        public void e(C2893l0.d dVar) {
            this.f19865d.b(dVar);
            this.f19872k.decrementAndGet();
            h();
        }

        @Override
        public void f(boolean z10, C2893l0.c cVar) {
            synchronized (this) {
                try {
                    this.f19864c.o(z10 ? f19861r : f19862s, cVar);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            h();
        }

        public void g() {
            this.f19865d.dispose();
        }

        public void h() {
            if (getAndIncrement() != 0) {
                return;
            }
            Re.c<?> cVar = this.f19864c;
            Be.I<? super R> i10 = this.f19863b;
            int i11 = 1;
            while (!this.f19875n) {
                if (this.f19868g.get() != null) {
                    cVar.clear();
                    g();
                    i(i10);
                    return;
                }
                boolean z10 = this.f19872k.get() == 0;
                Integer num = (Integer) cVar.poll();
                boolean z11 = num == null;
                if (z10 && z11) {
                    this.f19866e.clear();
                    this.f19867f.clear();
                    this.f19865d.dispose();
                    i10.a();
                    return;
                }
                if (z11) {
                    i11 = addAndGet(-i11);
                    if (i11 == 0) {
                        return;
                    }
                } else {
                    Object poll = cVar.poll();
                    if (num == f19859p) {
                        int i12 = this.f19873l;
                        this.f19873l = i12 + 1;
                        this.f19866e.put(Integer.valueOf(i12), poll);
                        try {
                            Be.G g10 = (Be.G) He.b.g(this.f19869h.apply(poll), "The leftEnd returned a null ObservableSource");
                            C2893l0.c cVar2 = new C2893l0.c(this, true, i12);
                            this.f19865d.a(cVar2);
                            g10.c(cVar2);
                            if (this.f19868g.get() != null) {
                                cVar.clear();
                                g();
                                i(i10);
                                return;
                            } else {
                                Iterator<TRight> it = this.f19867f.values().iterator();
                                while (it.hasNext()) {
                                    try {
                                        i10.h((Object) He.b.g(this.f19871j.apply(poll, it.next()), "The resultSelector returned a null value"));
                                    } catch (Throwable th2) {
                                        j(th2, i10, cVar);
                                        return;
                                    }
                                }
                            }
                        } catch (Throwable th3) {
                            j(th3, i10, cVar);
                            return;
                        }
                    } else if (num == f19860q) {
                        int i13 = this.f19874m;
                        this.f19874m = i13 + 1;
                        this.f19867f.put(Integer.valueOf(i13), poll);
                        try {
                            Be.G g11 = (Be.G) He.b.g(this.f19870i.apply(poll), "The rightEnd returned a null ObservableSource");
                            C2893l0.c cVar3 = new C2893l0.c(this, false, i13);
                            this.f19865d.a(cVar3);
                            g11.c(cVar3);
                            if (this.f19868g.get() != null) {
                                cVar.clear();
                                g();
                                i(i10);
                                return;
                            } else {
                                Iterator<TLeft> it2 = this.f19866e.values().iterator();
                                while (it2.hasNext()) {
                                    try {
                                        i10.h((Object) He.b.g(this.f19871j.apply(it2.next(), poll), "The resultSelector returned a null value"));
                                    } catch (Throwable th4) {
                                        j(th4, i10, cVar);
                                        return;
                                    }
                                }
                            }
                        } catch (Throwable th5) {
                            j(th5, i10, cVar);
                            return;
                        }
                    } else if (num == f19861r) {
                        C2893l0.c cVar4 = (C2893l0.c) poll;
                        this.f19866e.remove(Integer.valueOf(cVar4.f19619d));
                        this.f19865d.c(cVar4);
                    } else {
                        C2893l0.c cVar5 = (C2893l0.c) poll;
                        this.f19867f.remove(Integer.valueOf(cVar5.f19619d));
                        this.f19865d.c(cVar5);
                    }
                }
            }
            cVar.clear();
        }

        public void i(Be.I<?> i10) {
            Throwable c10 = ExceptionHelper.c(this.f19868g);
            this.f19866e.clear();
            this.f19867f.clear();
            i10.onError(c10);
        }

        public void j(Throwable th2, Be.I<?> i10, Re.c<?> cVar) {
            io.reactivex.exceptions.a.b(th2);
            ExceptionHelper.a(this.f19868g, th2);
            cVar.clear();
            g();
            i(i10);
        }
    }

    public C2910s0(Be.G<TLeft> g10, Be.G<? extends TRight> g11, Fe.o<? super TLeft, ? extends Be.G<TLeftEnd>> oVar, Fe.o<? super TRight, ? extends Be.G<TRightEnd>> oVar2, Fe.c<? super TLeft, ? super TRight, ? extends R> cVar) {
        super(g10);
        this.f19854c = g11;
        this.f19855d = oVar;
        this.f19856e = oVar2;
        this.f19857f = cVar;
    }

    @Override
    public void J5(Be.I<? super R> i10) {
        a aVar = new a(i10, this.f19855d, this.f19856e, this.f19857f);
        i10.e(aVar);
        C2893l0.d dVar = new C2893l0.d(aVar, true);
        aVar.f19865d.a(dVar);
        C2893l0.d dVar2 = new C2893l0.d(aVar, false);
        aVar.f19865d.a(dVar2);
        this.f19344b.c(dVar);
        this.f19854c.c(dVar2);
    }
}
