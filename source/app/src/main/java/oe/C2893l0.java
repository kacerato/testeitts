package Oe;

import bf.C3886j;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class C2893l0<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AbstractC2859a<TLeft, R> {

    public final Be.G<? extends TRight> f19594c;

    public final Fe.o<? super TLeft, ? extends Be.G<TLeftEnd>> f19595d;

    public final Fe.o<? super TRight, ? extends Be.G<TRightEnd>> f19596e;

    public final Fe.c<? super TLeft, ? super Be.B<TRight>, ? extends R> f19597f;

    public static final class a<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements De.c, b {

        public static final long f19598o = -6071216598687999801L;

        public static final Integer f19599p = 1;

        public static final Integer f19600q = 2;

        public static final Integer f19601r = 3;

        public static final Integer f19602s = 4;

        public final Be.I<? super R> f19603b;

        public final Fe.o<? super TLeft, ? extends Be.G<TLeftEnd>> f19609h;

        public final Fe.o<? super TRight, ? extends Be.G<TRightEnd>> f19610i;

        public final Fe.c<? super TLeft, ? super Be.B<TRight>, ? extends R> f19611j;

        public int f19613l;

        public int f19614m;

        public volatile boolean f19615n;

        public final De.b f19605d = new De.b();

        public final Re.c<Object> f19604c = new Re.c<>(Be.B.V());

        public final Map<Integer, C3886j<TRight>> f19606e = new LinkedHashMap();

        public final Map<Integer, TRight> f19607f = new LinkedHashMap();

        public final AtomicReference<Throwable> f19608g = new AtomicReference<>();

        public final AtomicInteger f19612k = new AtomicInteger(2);

        public a(Be.I<? super R> i10, Fe.o<? super TLeft, ? extends Be.G<TLeftEnd>> oVar, Fe.o<? super TRight, ? extends Be.G<TRightEnd>> oVar2, Fe.c<? super TLeft, ? super Be.B<TRight>, ? extends R> cVar) {
            this.f19603b = i10;
            this.f19609h = oVar;
            this.f19610i = oVar2;
            this.f19611j = cVar;
        }

        @Override
        public void a(Throwable th2) {
            if (ExceptionHelper.a(this.f19608g, th2)) {
                h();
            } else {
                Ye.a.Y(th2);
            }
        }

        @Override
        public void b(boolean z10, Object obj) {
            synchronized (this) {
                try {
                    this.f19604c.o(z10 ? f19599p : f19600q, obj);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            h();
        }

        @Override
        public void c(Throwable th2) {
            if (!ExceptionHelper.a(this.f19608g, th2)) {
                Ye.a.Y(th2);
            } else {
                this.f19612k.decrementAndGet();
                h();
            }
        }

        @Override
        public boolean d() {
            return this.f19615n;
        }

        @Override
        public void dispose() {
            if (this.f19615n) {
                return;
            }
            this.f19615n = true;
            g();
            if (getAndIncrement() == 0) {
                this.f19604c.clear();
            }
        }

        @Override
        public void e(d dVar) {
            this.f19605d.b(dVar);
            this.f19612k.decrementAndGet();
            h();
        }

        @Override
        public void f(boolean z10, c cVar) {
            synchronized (this) {
                try {
                    this.f19604c.o(z10 ? f19601r : f19602s, cVar);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            h();
        }

        public void g() {
            this.f19605d.dispose();
        }

        public void h() {
            if (getAndIncrement() != 0) {
                return;
            }
            Re.c<?> cVar = this.f19604c;
            Be.I<? super R> i10 = this.f19603b;
            int i11 = 1;
            while (!this.f19615n) {
                if (this.f19608g.get() != null) {
                    cVar.clear();
                    g();
                    i(i10);
                    return;
                }
                boolean z10 = this.f19612k.get() == 0;
                Integer num = (Integer) cVar.poll();
                boolean z11 = num == null;
                if (z10 && z11) {
                    Iterator<C3886j<TRight>> it = this.f19606e.values().iterator();
                    while (it.hasNext()) {
                        it.next().a();
                    }
                    this.f19606e.clear();
                    this.f19607f.clear();
                    this.f19605d.dispose();
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
                    if (num == f19599p) {
                        C3886j o82 = C3886j.o8();
                        int i12 = this.f19613l;
                        this.f19613l = i12 + 1;
                        this.f19606e.put(Integer.valueOf(i12), o82);
                        try {
                            Be.G g10 = (Be.G) He.b.g(this.f19609h.apply(poll), "The leftEnd returned a null ObservableSource");
                            c cVar2 = new c(this, true, i12);
                            this.f19605d.a(cVar2);
                            g10.c(cVar2);
                            if (this.f19608g.get() != null) {
                                cVar.clear();
                                g();
                                i(i10);
                                return;
                            } else {
                                try {
                                    i10.h((Object) He.b.g(this.f19611j.apply(poll, o82), "The resultSelector returned a null value"));
                                    Iterator<TRight> it2 = this.f19607f.values().iterator();
                                    while (it2.hasNext()) {
                                        o82.h(it2.next());
                                    }
                                } catch (Throwable th2) {
                                    j(th2, i10, cVar);
                                    return;
                                }
                            }
                        } catch (Throwable th3) {
                            j(th3, i10, cVar);
                            return;
                        }
                    } else if (num == f19600q) {
                        int i13 = this.f19614m;
                        this.f19614m = i13 + 1;
                        this.f19607f.put(Integer.valueOf(i13), poll);
                        try {
                            Be.G g11 = (Be.G) He.b.g(this.f19610i.apply(poll), "The rightEnd returned a null ObservableSource");
                            c cVar3 = new c(this, false, i13);
                            this.f19605d.a(cVar3);
                            g11.c(cVar3);
                            if (this.f19608g.get() != null) {
                                cVar.clear();
                                g();
                                i(i10);
                                return;
                            } else {
                                Iterator<C3886j<TRight>> it3 = this.f19606e.values().iterator();
                                while (it3.hasNext()) {
                                    it3.next().h(poll);
                                }
                            }
                        } catch (Throwable th4) {
                            j(th4, i10, cVar);
                            return;
                        }
                    } else if (num == f19601r) {
                        c cVar4 = (c) poll;
                        C3886j<TRight> remove = this.f19606e.remove(Integer.valueOf(cVar4.f19619d));
                        this.f19605d.c(cVar4);
                        if (remove != null) {
                            remove.a();
                        }
                    } else if (num == f19602s) {
                        c cVar5 = (c) poll;
                        this.f19607f.remove(Integer.valueOf(cVar5.f19619d));
                        this.f19605d.c(cVar5);
                    }
                }
            }
            cVar.clear();
        }

        public void i(Be.I<?> i10) {
            Throwable c10 = ExceptionHelper.c(this.f19608g);
            Iterator<C3886j<TRight>> it = this.f19606e.values().iterator();
            while (it.hasNext()) {
                it.next().onError(c10);
            }
            this.f19606e.clear();
            this.f19607f.clear();
            i10.onError(c10);
        }

        public void j(Throwable th2, Be.I<?> i10, Re.c<?> cVar) {
            io.reactivex.exceptions.a.b(th2);
            ExceptionHelper.a(this.f19608g, th2);
            cVar.clear();
            g();
            i(i10);
        }
    }

    public interface b {
        void a(Throwable th2);

        void b(boolean z10, Object obj);

        void c(Throwable th2);

        void e(d dVar);

        void f(boolean z10, c cVar);
    }

    public static final class c extends AtomicReference<De.c> implements Be.I<Object>, De.c {

        public static final long f19616e = 1883890389173668373L;

        public final b f19617b;

        public final boolean f19618c;

        public final int f19619d;

        public c(b bVar, boolean z10, int i10) {
            this.f19617b = bVar;
            this.f19618c = z10;
            this.f19619d = i10;
        }

        @Override
        public void a() {
            this.f19617b.f(this.f19618c, this);
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
        public void h(Object obj) {
            if (Ge.d.a(this)) {
                this.f19617b.f(this.f19618c, this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f19617b.a(th2);
        }
    }

    public static final class d extends AtomicReference<De.c> implements Be.I<Object>, De.c {

        public static final long f19620d = 1883890389173668373L;

        public final b f19621b;

        public final boolean f19622c;

        public d(b bVar, boolean z10) {
            this.f19621b = bVar;
            this.f19622c = z10;
        }

        @Override
        public void a() {
            this.f19621b.e(this);
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
        public void h(Object obj) {
            this.f19621b.b(this.f19622c, obj);
        }

        @Override
        public void onError(Throwable th2) {
            this.f19621b.c(th2);
        }
    }

    public C2893l0(Be.G<TLeft> g10, Be.G<? extends TRight> g11, Fe.o<? super TLeft, ? extends Be.G<TLeftEnd>> oVar, Fe.o<? super TRight, ? extends Be.G<TRightEnd>> oVar2, Fe.c<? super TLeft, ? super Be.B<TRight>, ? extends R> cVar) {
        super(g10);
        this.f19594c = g11;
        this.f19595d = oVar;
        this.f19596e = oVar2;
        this.f19597f = cVar;
    }

    @Override
    public void J5(Be.I<? super R> i10) {
        a aVar = new a(i10, this.f19595d, this.f19596e, this.f19597f);
        i10.e(aVar);
        d dVar = new d(aVar, true);
        aVar.f19605d.a(dVar);
        d dVar2 = new d(aVar, false);
        aVar.f19605d.a(dVar2);
        this.f19344b.c(dVar);
        this.f19594c.c(dVar2);
    }
}
