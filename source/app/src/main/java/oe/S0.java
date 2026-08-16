package Oe;

import af.C3606d;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class S0<T> extends Ve.a<T> implements Ie.g<T>, Ge.g {

    public static final b f19166f = new o();

    public final Be.G<T> f19167b;

    public final AtomicReference<j<T>> f19168c;

    public final b<T> f19169d;

    public final Be.G<T> f19170e;

    public static abstract class a<T> extends AtomicReference<f> implements h<T> {

        public static final long f19171d = 2346567790059478686L;

        public f f19172b;

        public int f19173c;

        public a() {
            f fVar = new f(null);
            this.f19172b = fVar;
            set(fVar);
        }

        @Override
        public final void a(d<T> dVar) {
            if (dVar.getAndIncrement() != 0) {
                return;
            }
            int i10 = 1;
            do {
                f fVar = (f) dVar.a();
                if (fVar == null) {
                    fVar = g();
                    dVar.f19178d = fVar;
                }
                while (!dVar.d()) {
                    f fVar2 = fVar.get();
                    if (fVar2 == null) {
                        dVar.f19178d = fVar;
                        i10 = dVar.addAndGet(-i10);
                    } else {
                        if (io.reactivex.internal.util.p.a(j(fVar2.f19183b), dVar.f19177c)) {
                            dVar.f19178d = null;
                            return;
                        }
                        fVar = fVar2;
                    }
                }
                dVar.f19178d = null;
                return;
            } while (i10 != 0);
        }

        public final void b(f fVar) {
            this.f19172b.set(fVar);
            this.f19172b = fVar;
            this.f19173c++;
        }

        @Override
        public final void c(T t10) {
            b(new f(f(io.reactivex.internal.util.p.u(t10))));
            o();
        }

        @Override
        public final void complete() {
            b(new f(f(io.reactivex.internal.util.p.e())));
            p();
        }

        @Override
        public final void d(Throwable th2) {
            b(new f(f(io.reactivex.internal.util.p.h(th2))));
            p();
        }

        public final void e(Collection<? super T> collection) {
            f g10 = g();
            while (true) {
                g10 = g10.get();
                if (g10 == null) {
                    return;
                }
                Object j10 = j(g10.f19183b);
                if (io.reactivex.internal.util.p.o(j10) || io.reactivex.internal.util.p.r(j10)) {
                    return;
                } else {
                    collection.add((Object) io.reactivex.internal.util.p.m(j10));
                }
            }
        }

        public Object f(Object obj) {
            return obj;
        }

        public f g() {
            return get();
        }

        public boolean h() {
            Object obj = this.f19172b.f19183b;
            return obj != null && io.reactivex.internal.util.p.o(j(obj));
        }

        public boolean i() {
            Object obj = this.f19172b.f19183b;
            return obj != null && io.reactivex.internal.util.p.r(j(obj));
        }

        public Object j(Object obj) {
            return obj;
        }

        public final void k() {
            this.f19173c--;
            m(get().get());
        }

        public final void l(int i10) {
            f fVar = get();
            while (i10 > 0) {
                fVar = fVar.get();
                i10--;
                this.f19173c--;
            }
            m(fVar);
        }

        public final void m(f fVar) {
            set(fVar);
        }

        public final void n() {
            f fVar = get();
            if (fVar.f19183b != null) {
                f fVar2 = new f(null);
                fVar2.lazySet(fVar.get());
                set(fVar2);
            }
        }

        public abstract void o();

        public void p() {
            n();
        }
    }

    public interface b<T> {
        h<T> call();
    }

    public static final class c<R> implements Fe.g<De.c> {

        public final O1<R> f19174b;

        public c(O1<R> o12) {
            this.f19174b = o12;
        }

        @Override
        public void accept(De.c cVar) {
            this.f19174b.b(cVar);
        }
    }

    public static final class d<T> extends AtomicInteger implements De.c {

        public static final long f19175f = 2728361546769921047L;

        public final j<T> f19176b;

        public final Be.I<? super T> f19177c;

        public Object f19178d;

        public volatile boolean f19179e;

        public d(j<T> jVar, Be.I<? super T> i10) {
            this.f19176b = jVar;
            this.f19177c = i10;
        }

        public <U> U a() {
            return (U) this.f19178d;
        }

        @Override
        public boolean d() {
            return this.f19179e;
        }

        @Override
        public void dispose() {
            if (this.f19179e) {
                return;
            }
            this.f19179e = true;
            this.f19176b.c(this);
            this.f19178d = null;
        }
    }

    public static final class e<R, U> extends Be.B<R> {

        public final Callable<? extends Ve.a<U>> f19180b;

        public final Fe.o<? super Be.B<U>, ? extends Be.G<R>> f19181c;

        public e(Callable<? extends Ve.a<U>> callable, Fe.o<? super Be.B<U>, ? extends Be.G<R>> oVar) {
            this.f19180b = callable;
            this.f19181c = oVar;
        }

        @Override
        public void J5(Be.I<? super R> i10) {
            try {
                Ve.a aVar = (Ve.a) He.b.g(this.f19180b.call(), "The connectableFactory returned a null ConnectableObservable");
                Be.G g10 = (Be.G) He.b.g(this.f19181c.apply(aVar), "The selector returned a null ObservableSource");
                O1 o12 = new O1(i10);
                g10.c(o12);
                aVar.n8(new c(o12));
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                Ge.e.h(th2, i10);
            }
        }
    }

    public static final class f extends AtomicReference<f> {

        public static final long f19182c = 245354315435971818L;

        public final Object f19183b;

        public f(Object obj) {
            this.f19183b = obj;
        }
    }

    public static final class g<T> extends Ve.a<T> {

        public final Ve.a<T> f19184b;

        public final Be.B<T> f19185c;

        public g(Ve.a<T> aVar, Be.B<T> b10) {
            this.f19184b = aVar;
            this.f19185c = b10;
        }

        @Override
        public void J5(Be.I<? super T> i10) {
            this.f19185c.c(i10);
        }

        @Override
        public void n8(Fe.g<? super De.c> gVar) {
            this.f19184b.n8(gVar);
        }
    }

    public interface h<T> {
        void a(d<T> dVar);

        void c(T t10);

        void complete();

        void d(Throwable th2);
    }

    public static final class i<T> implements b<T> {

        public final int f19186a;

        public i(int i10) {
            this.f19186a = i10;
        }

        @Override
        public h<T> call() {
            return new n(this.f19186a);
        }
    }

    public static final class j<T> extends AtomicReference<De.c> implements Be.I<T>, De.c {

        public static final long f19187f = -533785617179540163L;

        public static final d[] f19188g = new d[0];

        public static final d[] f19189h = new d[0];

        public final h<T> f19190b;

        public boolean f19191c;

        public final AtomicReference<d[]> f19192d = new AtomicReference<>(f19188g);

        public final AtomicBoolean f19193e = new AtomicBoolean();

        public j(h<T> hVar) {
            this.f19190b = hVar;
        }

        @Override
        public void a() {
            if (this.f19191c) {
                return;
            }
            this.f19191c = true;
            this.f19190b.complete();
            g();
        }

        public boolean b(d<T> dVar) {
            d[] dVarArr;
            d[] dVarArr2;
            do {
                dVarArr = this.f19192d.get();
                if (dVarArr == f19189h) {
                    return false;
                }
                int length = dVarArr.length;
                dVarArr2 = new d[length + 1];
                System.arraycopy(dVarArr, 0, dVarArr2, 0, length);
                dVarArr2[length] = dVar;
            } while (!androidx.lifecycle.c.a(this.f19192d, dVarArr, dVarArr2));
            return true;
        }

        public void c(d<T> dVar) {
            d[] dVarArr;
            d[] dVarArr2;
            do {
                dVarArr = this.f19192d.get();
                int length = dVarArr.length;
                if (length == 0) {
                    return;
                }
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        i10 = -1;
                        break;
                    } else if (dVarArr[i10].equals(dVar)) {
                        break;
                    } else {
                        i10++;
                    }
                }
                if (i10 < 0) {
                    return;
                }
                if (length == 1) {
                    dVarArr2 = f19188g;
                } else {
                    d[] dVarArr3 = new d[length - 1];
                    System.arraycopy(dVarArr, 0, dVarArr3, 0, i10);
                    System.arraycopy(dVarArr, i10 + 1, dVarArr3, i10, (length - i10) - 1);
                    dVarArr2 = dVarArr3;
                }
            } while (!androidx.lifecycle.c.a(this.f19192d, dVarArr, dVarArr2));
        }

        @Override
        public boolean d() {
            return this.f19192d.get() == f19189h;
        }

        @Override
        public void dispose() {
            this.f19192d.set(f19189h);
            Ge.d.a(this);
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.h(this, cVar)) {
                f();
            }
        }

        public void f() {
            for (d<T> dVar : this.f19192d.get()) {
                this.f19190b.a(dVar);
            }
        }

        public void g() {
            for (d<T> dVar : this.f19192d.getAndSet(f19189h)) {
                this.f19190b.a(dVar);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f19191c) {
                return;
            }
            this.f19190b.c(t10);
            f();
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f19191c) {
                Ye.a.Y(th2);
                return;
            }
            this.f19191c = true;
            this.f19190b.d(th2);
            g();
        }
    }

    public static final class k<T> implements Be.G<T> {

        public final AtomicReference<j<T>> f19194b;

        public final b<T> f19195c;

        public k(AtomicReference<j<T>> atomicReference, b<T> bVar) {
            this.f19194b = atomicReference;
            this.f19195c = bVar;
        }

        @Override
        public void c(Be.I<? super T> i10) {
            j<T> jVar;
            while (true) {
                jVar = this.f19194b.get();
                if (jVar != null) {
                    break;
                }
                j<T> jVar2 = new j<>(this.f19195c.call());
                if (androidx.lifecycle.c.a(this.f19194b, null, jVar2)) {
                    jVar = jVar2;
                    break;
                }
            }
            d<T> dVar = new d<>(jVar, i10);
            i10.e(dVar);
            jVar.b(dVar);
            if (dVar.d()) {
                jVar.c(dVar);
            } else {
                jVar.f19190b.a(dVar);
            }
        }
    }

    public static final class l<T> implements b<T> {

        public final int f19196a;

        public final long f19197b;

        public final TimeUnit f19198c;

        public final Be.J f19199d;

        public l(int i10, long j10, TimeUnit timeUnit, Be.J j11) {
            this.f19196a = i10;
            this.f19197b = j10;
            this.f19198c = timeUnit;
            this.f19199d = j11;
        }

        @Override
        public h<T> call() {
            return new m(this.f19196a, this.f19197b, this.f19198c, this.f19199d);
        }
    }

    public static final class m<T> extends a<T> {

        public static final long f19200i = 3457957419649567404L;

        public final Be.J f19201e;

        public final long f19202f;

        public final TimeUnit f19203g;

        public final int f19204h;

        public m(int i10, long j10, TimeUnit timeUnit, Be.J j11) {
            this.f19201e = j11;
            this.f19204h = i10;
            this.f19202f = j10;
            this.f19203g = timeUnit;
        }

        @Override
        public Object f(Object obj) {
            return new C3606d(obj, this.f19201e.e(this.f19203g), this.f19203g);
        }

        @Override
        public f g() {
            f fVar;
            long e10 = this.f19201e.e(this.f19203g) - this.f19202f;
            f fVar2 = get();
            f fVar3 = fVar2.get();
            while (true) {
                f fVar4 = fVar3;
                fVar = fVar2;
                fVar2 = fVar4;
                if (fVar2 != null) {
                    C3606d c3606d = (C3606d) fVar2.f19183b;
                    if (io.reactivex.internal.util.p.o(c3606d.d()) || io.reactivex.internal.util.p.r(c3606d.d()) || c3606d.a() > e10) {
                        break;
                    }
                    fVar3 = fVar2.get();
                } else {
                    break;
                }
            }
            return fVar;
        }

        @Override
        public Object j(Object obj) {
            return ((C3606d) obj).d();
        }

        @Override
        public void o() {
            f fVar;
            long e10 = this.f19201e.e(this.f19203g) - this.f19202f;
            f fVar2 = get();
            f fVar3 = fVar2.get();
            int i10 = 0;
            while (true) {
                f fVar4 = fVar3;
                fVar = fVar2;
                fVar2 = fVar4;
                if (fVar2 != null) {
                    int i11 = this.f19173c;
                    if (i11 <= this.f19204h) {
                        if (((C3606d) fVar2.f19183b).a() > e10) {
                            break;
                        }
                        i10++;
                        this.f19173c--;
                        fVar3 = fVar2.get();
                    } else {
                        i10++;
                        this.f19173c = i11 - 1;
                        fVar3 = fVar2.get();
                    }
                } else {
                    break;
                }
            }
            if (i10 != 0) {
                m(fVar);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x003e, code lost:
        
            m(r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0041, code lost:
        
            return;
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void p() {
            long e10 = this.f19201e.e(this.f19203g) - this.f19202f;
            f fVar = get();
            f fVar2 = fVar.get();
            int i10 = 0;
            while (true) {
                f fVar3 = fVar2;
                f fVar4 = fVar;
                fVar = fVar3;
                if (fVar == null || this.f19173c <= 1 || ((C3606d) fVar.f19183b).a() > e10) {
                    break;
                }
                i10++;
                this.f19173c--;
                fVar2 = fVar.get();
            }
        }
    }

    public static final class n<T> extends a<T> {

        public static final long f19205f = -5898283885385201806L;

        public final int f19206e;

        public n(int i10) {
            this.f19206e = i10;
        }

        @Override
        public void o() {
            if (this.f19173c > this.f19206e) {
                k();
            }
        }
    }

    public static final class o implements b<Object> {
        @Override
        public h<Object> call() {
            return new p(16);
        }
    }

    public static final class p<T> extends ArrayList<Object> implements h<T> {

        public static final long f19207c = 7063189396499112664L;

        public volatile int f19208b;

        public p(int i10) {
            super(i10);
        }

        @Override
        public void a(d<T> dVar) {
            if (dVar.getAndIncrement() != 0) {
                return;
            }
            Be.I<? super T> i10 = dVar.f19177c;
            int i11 = 1;
            while (!dVar.d()) {
                int i12 = this.f19208b;
                Integer num = (Integer) dVar.a();
                int intValue = num != null ? num.intValue() : 0;
                while (intValue < i12) {
                    if (io.reactivex.internal.util.p.a(get(intValue), i10) || dVar.d()) {
                        return;
                    } else {
                        intValue++;
                    }
                }
                dVar.f19178d = Integer.valueOf(intValue);
                i11 = dVar.addAndGet(-i11);
                if (i11 == 0) {
                    return;
                }
            }
        }

        @Override
        public void c(T t10) {
            add(io.reactivex.internal.util.p.u(t10));
            this.f19208b++;
        }

        @Override
        public void complete() {
            add(io.reactivex.internal.util.p.e());
            this.f19208b++;
        }

        @Override
        public void d(Throwable th2) {
            add(io.reactivex.internal.util.p.h(th2));
            this.f19208b++;
        }
    }

    public S0(Be.G<T> g10, Be.G<T> g11, AtomicReference<j<T>> atomicReference, b<T> bVar) {
        this.f19170e = g10;
        this.f19167b = g11;
        this.f19168c = atomicReference;
        this.f19169d = bVar;
    }

    public static <T> Ve.a<T> A8(Ve.a<T> aVar, Be.J j10) {
        return Ye.a.U(new g(aVar, aVar.c4(j10)));
    }

    public static <T> Ve.a<T> u8(Be.G<T> g10, int i10) {
        return i10 == Integer.MAX_VALUE ? y8(g10) : x8(g10, new i(i10));
    }

    public static <T> Ve.a<T> v8(Be.G<T> g10, long j10, TimeUnit timeUnit, Be.J j11) {
        return w8(g10, j10, timeUnit, j11, Integer.MAX_VALUE);
    }

    public static <T> Ve.a<T> w8(Be.G<T> g10, long j10, TimeUnit timeUnit, Be.J j11, int i10) {
        return x8(g10, new l(i10, j10, timeUnit, j11));
    }

    public static <T> Ve.a<T> x8(Be.G<T> g10, b<T> bVar) {
        AtomicReference atomicReference = new AtomicReference();
        return Ye.a.U(new S0(new k(atomicReference, bVar), g10, atomicReference, bVar));
    }

    public static <T> Ve.a<T> y8(Be.G<? extends T> g10) {
        return x8(g10, f19166f);
    }

    public static <U, R> Be.B<R> z8(Callable<? extends Ve.a<U>> callable, Fe.o<? super Be.B<U>, ? extends Be.G<R>> oVar) {
        return Ye.a.R(new e(callable, oVar));
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19170e.c(i10);
    }

    @Override
    public void b(De.c cVar) {
        androidx.lifecycle.c.a(this.f19168c, (j) cVar, null);
    }

    @Override
    public void n8(Fe.g<? super De.c> gVar) {
        j<T> jVar;
        while (true) {
            jVar = this.f19168c.get();
            if (jVar != null && !jVar.d()) {
                break;
            }
            j<T> jVar2 = new j<>(this.f19169d.call());
            if (androidx.lifecycle.c.a(this.f19168c, jVar, jVar2)) {
                jVar = jVar2;
                break;
            }
        }
        boolean z10 = !jVar.f19193e.get() && jVar.f19193e.compareAndSet(false, true);
        try {
            gVar.accept(jVar);
            if (z10) {
                this.f19167b.c(jVar);
            }
        } catch (Throwable th2) {
            if (z10) {
                jVar.f19193e.compareAndSet(true, false);
            }
            io.reactivex.exceptions.a.b(th2);
            throw ExceptionHelper.f(th2);
        }
    }

    @Override
    public Be.G<T> source() {
        return this.f19167b;
    }
}
