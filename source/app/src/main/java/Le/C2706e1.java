package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import af.C3606d;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class C2706e1<T> extends Ee.a<T> implements Ie.h<T>, Ge.g {

    public static final Callable f12694g = new c();

    public final AbstractC2362l<T> f12695c;

    public final AtomicReference<j<T>> f12696d;

    public final Callable<? extends g<T>> f12697e;

    public final hn.b<T> f12698f;

    public static class a<T> extends AtomicReference<f> implements g<T> {

        public static final long f12699e = 2346567790059478686L;

        public f f12700b;

        public int f12701c;

        public long f12702d;

        public a() {
            f fVar = new f(null, 0L);
            this.f12700b = fVar;
            set(fVar);
        }

        public final void a(f fVar) {
            this.f12700b.set(fVar);
            this.f12700b = fVar;
            this.f12701c++;
        }

        public final void b(Collection<? super T> collection) {
            f g10 = g();
            while (true) {
                g10 = g10.get();
                if (g10 == null) {
                    return;
                }
                Object j10 = j(g10.f12718b);
                if (io.reactivex.internal.util.p.o(j10) || io.reactivex.internal.util.p.r(j10)) {
                    return;
                } else {
                    collection.add((Object) io.reactivex.internal.util.p.m(j10));
                }
            }
        }

        @Override
        public final void c(T t10) {
            Object f10 = f(io.reactivex.internal.util.p.u(t10));
            long j10 = this.f12702d + 1;
            this.f12702d = j10;
            a(new f(f10, j10));
            o();
        }

        @Override
        public final void complete() {
            Object f10 = f(io.reactivex.internal.util.p.e());
            long j10 = this.f12702d + 1;
            this.f12702d = j10;
            a(new f(f10, j10));
            p();
        }

        @Override
        public final void d(Throwable th2) {
            Object f10 = f(io.reactivex.internal.util.p.h(th2));
            long j10 = this.f12702d + 1;
            this.f12702d = j10;
            a(new f(f10, j10));
            p();
        }

        @Override
        public final void e(d<T> dVar) {
            f fVar;
            synchronized (dVar) {
                try {
                    if (dVar.f12711f) {
                        dVar.f12712g = true;
                        return;
                    }
                    dVar.f12711f = true;
                    while (!dVar.d()) {
                        long j10 = dVar.get();
                        boolean z10 = j10 == Long.MAX_VALUE;
                        f fVar2 = (f) dVar.a();
                        if (fVar2 == null) {
                            fVar2 = g();
                            dVar.f12709d = fVar2;
                            io.reactivex.internal.util.d.a(dVar.f12710e, fVar2.f12719c);
                        }
                        long j11 = 0;
                        while (j10 != 0 && (fVar = fVar2.get()) != null) {
                            Object j12 = j(fVar.f12718b);
                            try {
                                if (io.reactivex.internal.util.p.b(j12, dVar.f12708c)) {
                                    dVar.f12709d = null;
                                    return;
                                }
                                j11++;
                                j10--;
                                if (dVar.d()) {
                                    dVar.f12709d = null;
                                    return;
                                }
                                fVar2 = fVar;
                            } catch (Throwable th2) {
                                io.reactivex.exceptions.a.b(th2);
                                dVar.f12709d = null;
                                dVar.dispose();
                                if (io.reactivex.internal.util.p.r(j12) || io.reactivex.internal.util.p.o(j12)) {
                                    return;
                                }
                                dVar.f12708c.onError(th2);
                                return;
                            }
                        }
                        if (j11 != 0) {
                            dVar.f12709d = fVar2;
                            if (!z10) {
                                dVar.b(j11);
                            }
                        }
                        synchronized (dVar) {
                            try {
                                if (!dVar.f12712g) {
                                    dVar.f12711f = false;
                                    return;
                                }
                                dVar.f12712g = false;
                            } finally {
                            }
                        }
                    }
                    dVar.f12709d = null;
                } finally {
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
            Object obj = this.f12700b.f12718b;
            return obj != null && io.reactivex.internal.util.p.o(j(obj));
        }

        public boolean i() {
            Object obj = this.f12700b.f12718b;
            return obj != null && io.reactivex.internal.util.p.r(j(obj));
        }

        public Object j(Object obj) {
            return obj;
        }

        public final void k() {
            f fVar = get().get();
            if (fVar == null) {
                throw new IllegalStateException("Empty list!");
            }
            this.f12701c--;
            m(fVar);
        }

        public final void l(int i10) {
            f fVar = get();
            while (i10 > 0) {
                fVar = fVar.get();
                i10--;
                this.f12701c--;
            }
            m(fVar);
        }

        public final void m(f fVar) {
            set(fVar);
        }

        public final void n() {
            f fVar = get();
            if (fVar.f12718b != null) {
                f fVar2 = new f(null, 0L);
                fVar2.lazySet(fVar.get());
                set(fVar2);
            }
        }

        public void o() {
        }

        public void p() {
            n();
        }
    }

    public static final class b<T> extends Ee.a<T> {

        public final Ee.a<T> f12703c;

        public final AbstractC2362l<T> f12704d;

        public b(Ee.a<T> aVar, AbstractC2362l<T> abstractC2362l) {
            this.f12703c = aVar;
            this.f12704d = abstractC2362l;
        }

        @Override
        public void S8(Fe.g<? super De.c> gVar) {
            this.f12703c.S8(gVar);
        }

        @Override
        public void m6(hn.c<? super T> cVar) {
            this.f12704d.l(cVar);
        }
    }

    public static final class c implements Callable<Object> {
        @Override
        public Object call() {
            return new n(16);
        }
    }

    public static final class d<T> extends AtomicLong implements hn.d, De.c {

        public static final long f12705h = -4453897557930727610L;

        public static final long f12706i = Long.MIN_VALUE;

        public final j<T> f12707b;

        public final hn.c<? super T> f12708c;

        public Object f12709d;

        public final AtomicLong f12710e = new AtomicLong();

        public boolean f12711f;

        public boolean f12712g;

        public d(j<T> jVar, hn.c<? super T> cVar) {
            this.f12707b = jVar;
            this.f12708c = cVar;
        }

        public <U> U a() {
            return (U) this.f12709d;
        }

        public long b(long j10) {
            return io.reactivex.internal.util.d.f(this, j10);
        }

        @Override
        public void cancel() {
            dispose();
        }

        @Override
        public boolean d() {
            return get() == Long.MIN_VALUE;
        }

        @Override
        public void dispose() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f12707b.e(this);
                this.f12707b.c();
                this.f12709d = null;
            }
        }

        @Override
        public void i(long j10) {
            if (!Ue.j.m(j10) || io.reactivex.internal.util.d.b(this, j10) == Long.MIN_VALUE) {
                return;
            }
            io.reactivex.internal.util.d.a(this.f12710e, j10);
            this.f12707b.c();
            this.f12707b.f12726b.e(this);
        }
    }

    public static final class e<R, U> extends AbstractC2362l<R> {

        public final Callable<? extends Ee.a<U>> f12713c;

        public final Fe.o<? super AbstractC2362l<U>, ? extends hn.b<R>> f12714d;

        public final class a implements Fe.g<De.c> {

            public final Te.v<R> f12715b;

            public a(Te.v<R> vVar) {
                this.f12715b = vVar;
            }

            @Override
            public void accept(De.c cVar) {
                this.f12715b.b(cVar);
            }
        }

        public e(Callable<? extends Ee.a<U>> callable, Fe.o<? super AbstractC2362l<U>, ? extends hn.b<R>> oVar) {
            this.f12713c = callable;
            this.f12714d = oVar;
        }

        @Override
        public void m6(hn.c<? super R> cVar) {
            try {
                Ee.a aVar = (Ee.a) He.b.g(this.f12713c.call(), "The connectableFactory returned null");
                try {
                    hn.b bVar = (hn.b) He.b.g(this.f12714d.apply(aVar), "The selector returned a null Publisher");
                    Te.v vVar = new Te.v(cVar);
                    bVar.l(vVar);
                    aVar.S8(new a(vVar));
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    Ue.g.b(th2, cVar);
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                Ue.g.b(th3, cVar);
            }
        }
    }

    public static final class f extends AtomicReference<f> {

        public static final long f12717d = 245354315435971818L;

        public final Object f12718b;

        public final long f12719c;

        public f(Object obj, long j10) {
            this.f12718b = obj;
            this.f12719c = j10;
        }
    }

    public interface g<T> {
        void c(T t10);

        void complete();

        void d(Throwable th2);

        void e(d<T> dVar);
    }

    public static final class h<T> implements Callable<g<T>> {

        public final int f12720b;

        public h(int i10) {
            this.f12720b = i10;
        }

        @Override
        public g<T> call() {
            return new m(this.f12720b);
        }
    }

    public static final class i<T> implements hn.b<T> {

        public final AtomicReference<j<T>> f12721b;

        public final Callable<? extends g<T>> f12722c;

        public i(AtomicReference<j<T>> atomicReference, Callable<? extends g<T>> callable) {
            this.f12721b = atomicReference;
            this.f12722c = callable;
        }

        @Override
        public void l(hn.c<? super T> cVar) {
            j<T> jVar;
            while (true) {
                jVar = this.f12721b.get();
                if (jVar != null) {
                    break;
                }
                try {
                    j<T> jVar2 = new j<>(this.f12722c.call());
                    if (androidx.lifecycle.c.a(this.f12721b, null, jVar2)) {
                        jVar = jVar2;
                        break;
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    Ue.g.b(th2, cVar);
                    return;
                }
            }
            d<T> dVar = new d<>(jVar, cVar);
            cVar.j(dVar);
            jVar.b(dVar);
            if (dVar.d()) {
                jVar.e(dVar);
            } else {
                jVar.c();
                jVar.f12726b.e(dVar);
            }
        }
    }

    public static final class j<T> extends AtomicReference<hn.d> implements InterfaceC2367q<T>, De.c {

        public static final long f12723i = 7224554242710036740L;

        public static final d[] f12724j = new d[0];

        public static final d[] f12725k = new d[0];

        public final g<T> f12726b;

        public boolean f12727c;

        public long f12731g;

        public long f12732h;

        public final AtomicInteger f12730f = new AtomicInteger();

        public final AtomicReference<d<T>[]> f12728d = new AtomicReference<>(f12724j);

        public final AtomicBoolean f12729e = new AtomicBoolean();

        public j(g<T> gVar) {
            this.f12726b = gVar;
        }

        @Override
        public void a() {
            if (this.f12727c) {
                return;
            }
            this.f12727c = true;
            this.f12726b.complete();
            for (d<T> dVar : this.f12728d.getAndSet(f12725k)) {
                this.f12726b.e(dVar);
            }
        }

        public boolean b(d<T> dVar) {
            d<T>[] dVarArr;
            d[] dVarArr2;
            dVar.getClass();
            do {
                dVarArr = this.f12728d.get();
                if (dVarArr == f12725k) {
                    return false;
                }
                int length = dVarArr.length;
                dVarArr2 = new d[length + 1];
                System.arraycopy(dVarArr, 0, dVarArr2, 0, length);
                dVarArr2[length] = dVar;
            } while (!androidx.lifecycle.c.a(this.f12728d, dVarArr, dVarArr2));
            return true;
        }

        public void c() {
            if (this.f12730f.getAndIncrement() != 0) {
                return;
            }
            int i10 = 1;
            while (!d()) {
                d<T>[] dVarArr = this.f12728d.get();
                long j10 = this.f12731g;
                long j11 = j10;
                for (d<T> dVar : dVarArr) {
                    j11 = Math.max(j11, dVar.f12710e.get());
                }
                long j12 = this.f12732h;
                hn.d dVar2 = get();
                long j13 = j11 - j10;
                if (j13 != 0) {
                    this.f12731g = j11;
                    if (dVar2 == null) {
                        long j14 = j12 + j13;
                        if (j14 < 0) {
                            j14 = Long.MAX_VALUE;
                        }
                        this.f12732h = j14;
                    } else if (j12 != 0) {
                        this.f12732h = 0L;
                        dVar2.i(j12 + j13);
                    } else {
                        dVar2.i(j13);
                    }
                } else if (j12 != 0 && dVar2 != null) {
                    this.f12732h = 0L;
                    dVar2.i(j12);
                }
                i10 = this.f12730f.addAndGet(-i10);
                if (i10 == 0) {
                    return;
                }
            }
        }

        @Override
        public boolean d() {
            return this.f12728d.get() == f12725k;
        }

        @Override
        public void dispose() {
            this.f12728d.set(f12725k);
            Ue.j.a(this);
        }

        public void e(d<T> dVar) {
            d<T>[] dVarArr;
            d[] dVarArr2;
            do {
                dVarArr = this.f12728d.get();
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
                    dVarArr2 = f12724j;
                } else {
                    d[] dVarArr3 = new d[length - 1];
                    System.arraycopy(dVarArr, 0, dVarArr3, 0, i10);
                    System.arraycopy(dVarArr, i10 + 1, dVarArr3, i10, (length - i10) - 1);
                    dVarArr2 = dVarArr3;
                }
            } while (!androidx.lifecycle.c.a(this.f12728d, dVarArr, dVarArr2));
        }

        @Override
        public void h(T t10) {
            if (this.f12727c) {
                return;
            }
            this.f12726b.c(t10);
            for (d<T> dVar : this.f12728d.get()) {
                this.f12726b.e(dVar);
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.j(this, dVar)) {
                c();
                for (d<T> dVar2 : this.f12728d.get()) {
                    this.f12726b.e(dVar2);
                }
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12727c) {
                Ye.a.Y(th2);
                return;
            }
            this.f12727c = true;
            this.f12726b.d(th2);
            for (d<T> dVar : this.f12728d.getAndSet(f12725k)) {
                this.f12726b.e(dVar);
            }
        }
    }

    public static final class k<T> implements Callable<g<T>> {

        public final int f12733b;

        public final long f12734c;

        public final TimeUnit f12735d;

        public final Be.J f12736e;

        public k(int i10, long j10, TimeUnit timeUnit, Be.J j11) {
            this.f12733b = i10;
            this.f12734c = j10;
            this.f12735d = timeUnit;
            this.f12736e = j11;
        }

        @Override
        public g<T> call() {
            return new l(this.f12733b, this.f12734c, this.f12735d, this.f12736e);
        }
    }

    public static final class l<T> extends a<T> {

        public static final long f12737j = 3457957419649567404L;

        public final Be.J f12738f;

        public final long f12739g;

        public final TimeUnit f12740h;

        public final int f12741i;

        public l(int i10, long j10, TimeUnit timeUnit, Be.J j11) {
            this.f12738f = j11;
            this.f12741i = i10;
            this.f12739g = j10;
            this.f12740h = timeUnit;
        }

        @Override
        public Object f(Object obj) {
            return new C3606d(obj, this.f12738f.e(this.f12740h), this.f12740h);
        }

        @Override
        public f g() {
            f fVar;
            long e10 = this.f12738f.e(this.f12740h) - this.f12739g;
            f fVar2 = get();
            f fVar3 = fVar2.get();
            while (true) {
                f fVar4 = fVar3;
                fVar = fVar2;
                fVar2 = fVar4;
                if (fVar2 != null) {
                    C3606d c3606d = (C3606d) fVar2.f12718b;
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
            long e10 = this.f12738f.e(this.f12740h) - this.f12739g;
            f fVar2 = get();
            f fVar3 = fVar2.get();
            int i10 = 0;
            while (true) {
                f fVar4 = fVar3;
                fVar = fVar2;
                fVar2 = fVar4;
                if (fVar2 != null) {
                    int i11 = this.f12701c;
                    if (i11 <= this.f12741i) {
                        if (((C3606d) fVar2.f12718b).a() > e10) {
                            break;
                        }
                        i10++;
                        this.f12701c--;
                        fVar3 = fVar2.get();
                    } else {
                        i10++;
                        this.f12701c = i11 - 1;
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
            long e10 = this.f12738f.e(this.f12740h) - this.f12739g;
            f fVar = get();
            f fVar2 = fVar.get();
            int i10 = 0;
            while (true) {
                f fVar3 = fVar2;
                f fVar4 = fVar;
                fVar = fVar3;
                if (fVar == null || this.f12701c <= 1 || ((C3606d) fVar.f12718b).a() > e10) {
                    break;
                }
                i10++;
                this.f12701c--;
                fVar2 = fVar.get();
            }
        }
    }

    public static final class m<T> extends a<T> {

        public static final long f12742g = -5898283885385201806L;

        public final int f12743f;

        public m(int i10) {
            this.f12743f = i10;
        }

        @Override
        public void o() {
            if (this.f12701c > this.f12743f) {
                k();
            }
        }
    }

    public static final class n<T> extends ArrayList<Object> implements g<T> {

        public static final long f12744c = 7063189396499112664L;

        public volatile int f12745b;

        public n(int i10) {
            super(i10);
        }

        @Override
        public void c(T t10) {
            add(io.reactivex.internal.util.p.u(t10));
            this.f12745b++;
        }

        @Override
        public void complete() {
            add(io.reactivex.internal.util.p.e());
            this.f12745b++;
        }

        @Override
        public void d(Throwable th2) {
            add(io.reactivex.internal.util.p.h(th2));
            this.f12745b++;
        }

        @Override
        public void e(d<T> dVar) {
            synchronized (dVar) {
                try {
                    if (dVar.f12711f) {
                        dVar.f12712g = true;
                        return;
                    }
                    dVar.f12711f = true;
                    hn.c<? super T> cVar = dVar.f12708c;
                    while (!dVar.d()) {
                        int i10 = this.f12745b;
                        Integer num = (Integer) dVar.a();
                        int intValue = num != null ? num.intValue() : 0;
                        long j10 = dVar.get();
                        long j11 = j10;
                        long j12 = 0;
                        while (j11 != 0 && intValue < i10) {
                            Object obj = get(intValue);
                            try {
                                if (io.reactivex.internal.util.p.b(obj, cVar) || dVar.d()) {
                                    return;
                                }
                                intValue++;
                                j11--;
                                j12++;
                            } catch (Throwable th2) {
                                io.reactivex.exceptions.a.b(th2);
                                dVar.dispose();
                                if (io.reactivex.internal.util.p.r(obj) || io.reactivex.internal.util.p.o(obj)) {
                                    return;
                                }
                                cVar.onError(th2);
                                return;
                            }
                        }
                        if (j12 != 0) {
                            dVar.f12709d = Integer.valueOf(intValue);
                            if (j10 != Long.MAX_VALUE) {
                                dVar.b(j12);
                            }
                        }
                        synchronized (dVar) {
                            try {
                                if (!dVar.f12712g) {
                                    dVar.f12711f = false;
                                    return;
                                }
                                dVar.f12712g = false;
                            } finally {
                            }
                        }
                    }
                } finally {
                }
            }
        }
    }

    public C2706e1(hn.b<T> bVar, AbstractC2362l<T> abstractC2362l, AtomicReference<j<T>> atomicReference, Callable<? extends g<T>> callable) {
        this.f12698f = bVar;
        this.f12695c = abstractC2362l;
        this.f12696d = atomicReference;
        this.f12697e = callable;
    }

    public static <T> Ee.a<T> Z8(AbstractC2362l<T> abstractC2362l, int i10) {
        return i10 == Integer.MAX_VALUE ? d9(abstractC2362l) : c9(abstractC2362l, new h(i10));
    }

    public static <T> Ee.a<T> a9(AbstractC2362l<T> abstractC2362l, long j10, TimeUnit timeUnit, Be.J j11) {
        return b9(abstractC2362l, j10, timeUnit, j11, Integer.MAX_VALUE);
    }

    public static <T> Ee.a<T> b9(AbstractC2362l<T> abstractC2362l, long j10, TimeUnit timeUnit, Be.J j11, int i10) {
        return c9(abstractC2362l, new k(i10, j10, timeUnit, j11));
    }

    public static <T> Ee.a<T> c9(AbstractC2362l<T> abstractC2362l, Callable<? extends g<T>> callable) {
        AtomicReference atomicReference = new AtomicReference();
        return Ye.a.T(new C2706e1(new i(atomicReference, callable), abstractC2362l, atomicReference, callable));
    }

    public static <T> Ee.a<T> d9(AbstractC2362l<? extends T> abstractC2362l) {
        return c9(abstractC2362l, f12694g);
    }

    public static <U, R> AbstractC2362l<R> e9(Callable<? extends Ee.a<U>> callable, Fe.o<? super AbstractC2362l<U>, ? extends hn.b<R>> oVar) {
        return new e(callable, oVar);
    }

    public static <T> Ee.a<T> f9(Ee.a<T> aVar, Be.J j10) {
        return Ye.a.T(new b(aVar, aVar.n4(j10)));
    }

    @Override
    public void S8(Fe.g<? super De.c> gVar) {
        j<T> jVar;
        while (true) {
            jVar = this.f12696d.get();
            if (jVar != null && !jVar.d()) {
                break;
            }
            try {
                j<T> jVar2 = new j<>(this.f12697e.call());
                if (androidx.lifecycle.c.a(this.f12696d, jVar, jVar2)) {
                    jVar = jVar2;
                    break;
                }
            } finally {
                io.reactivex.exceptions.a.b(th);
                RuntimeException f10 = ExceptionHelper.f(th);
            }
        }
        boolean z10 = !jVar.f12729e.get() && jVar.f12729e.compareAndSet(false, true);
        try {
            gVar.accept(jVar);
            if (z10) {
                this.f12695c.l6(jVar);
            }
        } catch (Throwable th2) {
            if (z10) {
                jVar.f12729e.compareAndSet(true, false);
            }
            throw ExceptionHelper.f(th2);
        }
    }

    @Override
    public void b(De.c cVar) {
        androidx.lifecycle.c.a(this.f12696d, (j) cVar, null);
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12698f.l(cVar);
    }

    @Override
    public hn.b<T> source() {
        return this.f12695c;
    }
}
