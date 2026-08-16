package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import io.reactivex.exceptions.CompositeException;

public final class I extends AbstractC2353c {

    public final InterfaceC2359i f11159b;

    public final Fe.g<? super De.c> f11160c;

    public final Fe.g<? super Throwable> f11161d;

    public final Fe.a f11162e;

    public final Fe.a f11163f;

    public final Fe.a f11164g;

    public final Fe.a f11165h;

    public final class a implements InterfaceC2356f, De.c {

        public final InterfaceC2356f f11166b;

        public De.c f11167c;

        public a(InterfaceC2356f interfaceC2356f) {
            this.f11166b = interfaceC2356f;
        }

        @Override
        public void a() {
            if (this.f11167c == Ge.d.DISPOSED) {
                return;
            }
            try {
                I.this.f11162e.run();
                I.this.f11163f.run();
                this.f11166b.a();
                b();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f11166b.onError(th2);
            }
        }

        public void b() {
            try {
                I.this.f11164g.run();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                Ye.a.Y(th2);
            }
        }

        @Override
        public boolean d() {
            return this.f11167c.d();
        }

        @Override
        public void dispose() {
            try {
                I.this.f11165h.run();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                Ye.a.Y(th2);
            }
            this.f11167c.dispose();
        }

        @Override
        public void e(De.c cVar) {
            try {
                I.this.f11160c.accept(cVar);
                if (Ge.d.j(this.f11167c, cVar)) {
                    this.f11167c = cVar;
                    this.f11166b.e(this);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                cVar.dispose();
                this.f11167c = Ge.d.DISPOSED;
                Ge.e.e(th2, this.f11166b);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f11167c == Ge.d.DISPOSED) {
                Ye.a.Y(th2);
                return;
            }
            try {
                I.this.f11161d.accept(th2);
                I.this.f11163f.run();
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                th2 = new CompositeException(th2, th3);
            }
            this.f11166b.onError(th2);
            b();
        }
    }

    public I(InterfaceC2359i interfaceC2359i, Fe.g<? super De.c> gVar, Fe.g<? super Throwable> gVar2, Fe.a aVar, Fe.a aVar2, Fe.a aVar3, Fe.a aVar4) {
        this.f11159b = interfaceC2359i;
        this.f11160c = gVar;
        this.f11161d = gVar2;
        this.f11162e = aVar;
        this.f11163f = aVar2;
        this.f11164g = aVar3;
        this.f11165h = aVar4;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        this.f11159b.b(new a(interfaceC2356f));
    }
}
