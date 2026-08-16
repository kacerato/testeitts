package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class C2738p0<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AbstractC2692a<TLeft, R> {

    public final hn.b<? extends TRight> f13065d;

    public final Fe.o<? super TLeft, ? extends hn.b<TLeftEnd>> f13066e;

    public final Fe.o<? super TRight, ? extends hn.b<TRightEnd>> f13067f;

    public final Fe.c<? super TLeft, ? super AbstractC2362l<TRight>, ? extends R> f13068g;

    public static final class a<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements hn.d, b {

        public static final long f13069p = -6071216598687999801L;

        public static final Integer f13070q = 1;

        public static final Integer f13071r = 2;

        public static final Integer f13072s = 3;

        public static final Integer f13073t = 4;

        public final hn.c<? super R> f13074b;

        public final Fe.o<? super TLeft, ? extends hn.b<TLeftEnd>> f13081i;

        public final Fe.o<? super TRight, ? extends hn.b<TRightEnd>> f13082j;

        public final Fe.c<? super TLeft, ? super AbstractC2362l<TRight>, ? extends R> f13083k;

        public int f13085m;

        public int f13086n;

        public volatile boolean f13087o;

        public final AtomicLong f13075c = new AtomicLong();

        public final De.b f13077e = new De.b();

        public final Re.c<Object> f13076d = new Re.c<>(AbstractC2362l.a0());

        public final Map<Integer, Ze.h<TRight>> f13078f = new LinkedHashMap();

        public final Map<Integer, TRight> f13079g = new LinkedHashMap();

        public final AtomicReference<Throwable> f13080h = new AtomicReference<>();

        public final AtomicInteger f13084l = new AtomicInteger(2);

        public a(hn.c<? super R> cVar, Fe.o<? super TLeft, ? extends hn.b<TLeftEnd>> oVar, Fe.o<? super TRight, ? extends hn.b<TRightEnd>> oVar2, Fe.c<? super TLeft, ? super AbstractC2362l<TRight>, ? extends R> cVar2) {
            this.f13074b = cVar;
            this.f13081i = oVar;
            this.f13082j = oVar2;
            this.f13083k = cVar2;
        }

        @Override
        public void a(Throwable th2) {
            if (ExceptionHelper.a(this.f13080h, th2)) {
                g();
            } else {
                Ye.a.Y(th2);
            }
        }

        @Override
        public void b(boolean z10, Object obj) {
            synchronized (this) {
                try {
                    this.f13076d.o(z10 ? f13070q : f13071r, obj);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            g();
        }

        @Override
        public void c(Throwable th2) {
            if (!ExceptionHelper.a(this.f13080h, th2)) {
                Ye.a.Y(th2);
            } else {
                this.f13084l.decrementAndGet();
                g();
            }
        }

        @Override
        public void cancel() {
            if (this.f13087o) {
                return;
            }
            this.f13087o = true;
            f();
            if (getAndIncrement() == 0) {
                this.f13076d.clear();
            }
        }

        @Override
        public void d(boolean z10, c cVar) {
            synchronized (this) {
                try {
                    this.f13076d.o(z10 ? f13072s : f13073t, cVar);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            g();
        }

        @Override
        public void e(d dVar) {
            this.f13077e.b(dVar);
            this.f13084l.decrementAndGet();
            g();
        }

        public void f() {
            this.f13077e.dispose();
        }

        public void g() {
            if (getAndIncrement() != 0) {
                return;
            }
            Re.c<Object> cVar = this.f13076d;
            hn.c<? super R> cVar2 = this.f13074b;
            int i10 = 1;
            while (!this.f13087o) {
                if (this.f13080h.get() != null) {
                    cVar.clear();
                    f();
                    h(cVar2);
                    return;
                }
                boolean z10 = this.f13084l.get() == 0;
                Integer num = (Integer) cVar.poll();
                boolean z11 = num == null;
                if (z10 && z11) {
                    Iterator<Ze.h<TRight>> it = this.f13078f.values().iterator();
                    while (it.hasNext()) {
                        it.next().a();
                    }
                    this.f13078f.clear();
                    this.f13079g.clear();
                    this.f13077e.dispose();
                    cVar2.a();
                    return;
                }
                if (z11) {
                    i10 = addAndGet(-i10);
                    if (i10 == 0) {
                        return;
                    }
                } else {
                    Object poll = cVar.poll();
                    if (num == f13070q) {
                        Ze.h U82 = Ze.h.U8();
                        int i11 = this.f13085m;
                        this.f13085m = i11 + 1;
                        this.f13078f.put(Integer.valueOf(i11), U82);
                        try {
                            hn.b bVar = (hn.b) He.b.g(this.f13081i.apply(poll), "The leftEnd returned a null Publisher");
                            c cVar3 = new c(this, true, i11);
                            this.f13077e.a(cVar3);
                            bVar.l(cVar3);
                            if (this.f13080h.get() != null) {
                                cVar.clear();
                                f();
                                h(cVar2);
                                return;
                            }
                            try {
                                A0.a aVar = (Object) He.b.g(this.f13083k.apply(poll, U82), "The resultSelector returned a null value");
                                if (this.f13075c.get() == 0) {
                                    j(new MissingBackpressureException("Could not emit value due to lack of requests"), cVar2, cVar);
                                    return;
                                }
                                cVar2.h(aVar);
                                io.reactivex.internal.util.d.e(this.f13075c, 1L);
                                Iterator<TRight> it2 = this.f13079g.values().iterator();
                                while (it2.hasNext()) {
                                    U82.h(it2.next());
                                }
                            } catch (Throwable th2) {
                                j(th2, cVar2, cVar);
                                return;
                            }
                        } catch (Throwable th3) {
                            j(th3, cVar2, cVar);
                            return;
                        }
                    } else if (num == f13071r) {
                        int i12 = this.f13086n;
                        this.f13086n = i12 + 1;
                        this.f13079g.put(Integer.valueOf(i12), poll);
                        try {
                            hn.b bVar2 = (hn.b) He.b.g(this.f13082j.apply(poll), "The rightEnd returned a null Publisher");
                            c cVar4 = new c(this, false, i12);
                            this.f13077e.a(cVar4);
                            bVar2.l(cVar4);
                            if (this.f13080h.get() != null) {
                                cVar.clear();
                                f();
                                h(cVar2);
                                return;
                            } else {
                                Iterator<Ze.h<TRight>> it3 = this.f13078f.values().iterator();
                                while (it3.hasNext()) {
                                    it3.next().h(poll);
                                }
                            }
                        } catch (Throwable th4) {
                            j(th4, cVar2, cVar);
                            return;
                        }
                    } else if (num == f13072s) {
                        c cVar5 = (c) poll;
                        Ze.h<TRight> remove = this.f13078f.remove(Integer.valueOf(cVar5.f13091d));
                        this.f13077e.c(cVar5);
                        if (remove != null) {
                            remove.a();
                        }
                    } else if (num == f13073t) {
                        c cVar6 = (c) poll;
                        this.f13079g.remove(Integer.valueOf(cVar6.f13091d));
                        this.f13077e.c(cVar6);
                    }
                }
            }
            cVar.clear();
        }

        public void h(hn.c<?> cVar) {
            Throwable c10 = ExceptionHelper.c(this.f13080h);
            Iterator<Ze.h<TRight>> it = this.f13078f.values().iterator();
            while (it.hasNext()) {
                it.next().onError(c10);
            }
            this.f13078f.clear();
            this.f13079g.clear();
            cVar.onError(c10);
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f13075c, j10);
            }
        }

        public void j(Throwable th2, hn.c<?> cVar, Ie.o<?> oVar) {
            io.reactivex.exceptions.a.b(th2);
            ExceptionHelper.a(this.f13080h, th2);
            oVar.clear();
            f();
            h(cVar);
        }
    }

    public interface b {
        void a(Throwable th2);

        void b(boolean z10, Object obj);

        void c(Throwable th2);

        void d(boolean z10, c cVar);

        void e(d dVar);
    }

    public static final class c extends AtomicReference<hn.d> implements InterfaceC2367q<Object>, De.c {

        public static final long f13088e = 1883890389173668373L;

        public final b f13089b;

        public final boolean f13090c;

        public final int f13091d;

        public c(b bVar, boolean z10, int i10) {
            this.f13089b = bVar;
            this.f13090c = z10;
            this.f13091d = i10;
        }

        @Override
        public void a() {
            this.f13089b.d(this.f13090c, this);
        }

        @Override
        public boolean d() {
            return get() == Ue.j.CANCELLED;
        }

        @Override
        public void dispose() {
            Ue.j.a(this);
        }

        @Override
        public void h(Object obj) {
            if (Ue.j.a(this)) {
                this.f13089b.d(this.f13090c, this);
            }
        }

        @Override
        public void j(hn.d dVar) {
            Ue.j.k(this, dVar, Long.MAX_VALUE);
        }

        @Override
        public void onError(Throwable th2) {
            this.f13089b.a(th2);
        }
    }

    public static final class d extends AtomicReference<hn.d> implements InterfaceC2367q<Object>, De.c {

        public static final long f13092d = 1883890389173668373L;

        public final b f13093b;

        public final boolean f13094c;

        public d(b bVar, boolean z10) {
            this.f13093b = bVar;
            this.f13094c = z10;
        }

        @Override
        public void a() {
            this.f13093b.e(this);
        }

        @Override
        public boolean d() {
            return get() == Ue.j.CANCELLED;
        }

        @Override
        public void dispose() {
            Ue.j.a(this);
        }

        @Override
        public void h(Object obj) {
            this.f13093b.b(this.f13094c, obj);
        }

        @Override
        public void j(hn.d dVar) {
            Ue.j.k(this, dVar, Long.MAX_VALUE);
        }

        @Override
        public void onError(Throwable th2) {
            this.f13093b.c(th2);
        }
    }

    public C2738p0(AbstractC2362l<TLeft> abstractC2362l, hn.b<? extends TRight> bVar, Fe.o<? super TLeft, ? extends hn.b<TLeftEnd>> oVar, Fe.o<? super TRight, ? extends hn.b<TRightEnd>> oVar2, Fe.c<? super TLeft, ? super AbstractC2362l<TRight>, ? extends R> cVar) {
        super(abstractC2362l);
        this.f13065d = bVar;
        this.f13066e = oVar;
        this.f13067f = oVar2;
        this.f13068g = cVar;
    }

    @Override
    public void m6(hn.c<? super R> cVar) {
        a aVar = new a(cVar, this.f13066e, this.f13067f, this.f13068g);
        cVar.j(aVar);
        d dVar = new d(aVar, true);
        aVar.f13077e.a(dVar);
        d dVar2 = new d(aVar, false);
        aVar.f13077e.a(dVar2);
        this.f12507c.l6(dVar);
        this.f13065d.l(dVar2);
    }
}
