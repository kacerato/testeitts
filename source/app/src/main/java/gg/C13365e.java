package gg;

import eg.C13119i;
import eg.S;
import eg.T;
import eg.U;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import kotlinx.coroutines.channels.ClosedSendChannelException;
import nf.C14418j0;
import nf.P0;
import org.apache.commons.math3.geometry.VectorFormat;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nBroadcastChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl\n+ 2 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,414:1\n15#2:415\n15#2:416\n15#2:420\n15#2:423\n15#2:429\n15#2:430\n15#2:436\n15#2:439\n15#2:440\n15#2:441\n766#3:417\n857#3,2:418\n1855#3,2:421\n1747#3,3:424\n1855#3,2:427\n1855#3,2:431\n766#3:433\n857#3,2:434\n1855#3,2:437\n*S KotlinDebug\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl\n*L\n166#1:415\n188#1:416\n213#1:420\n237#1:423\n279#1:429\n331#1:430\n343#1:436\n355#1:439\n382#1:440\n394#1:441\n189#1:417\n189#1:418,2\n226#1:421,2\n242#1:424,3\n251#1:427,2\n333#1:431,2\n338#1:433\n338#1:434,2\n346#1:437,2\n*E\n"})
public final class C13365e<E> extends j<E> implements InterfaceC13364d<E> {

    public final int f89575n;

    @NotNull
    public final ReentrantLock f89576o;

    @NotNull
    public List<? extends j<E>> f89577p;

    @Nullable
    public Object f89578q;

    @NotNull
    public final HashMap<pg.m<?>, Object> f89579r;

    @t0({"SMAP\nBroadcastChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl$SubscriberBuffered\n+ 2 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n*L\n1#1,414:1\n15#2:415\n*S KotlinDebug\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl$SubscriberBuffered\n*L\n362#1:415\n*E\n"})
    public final class a extends j<E> {
        /* JADX WARN: Multi-variable type inference failed */
        public a() {
            super(C13365e.this.K1(), null, 2, 0 == true ? 1 : 0);
        }

        @Override
        public boolean Q(@Nullable Throwable th2) {
            ReentrantLock reentrantLock = C13365e.this.f89576o;
            C13365e<E> c13365e = C13365e.this;
            reentrantLock.lock();
            try {
                c13365e.P1(this);
                return super.Q(th2);
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    public final class b extends w<E> {
        public b() {
            super(1, i.DROP_OLDEST, null, 4, null);
        }

        @Override
        public boolean Q(@Nullable Throwable th2) {
            C13365e.this.P1(this);
            return super.Q(th2);
        }
    }

    @t0({"SMAP\nBroadcastChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl$registerSelectForSend$2\n+ 2 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,414:1\n15#2:415\n1#3:416\n*S KotlinDebug\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl$registerSelectForSend$2\n*L\n304#1:415\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.channels.BroadcastChannelImpl$registerSelectForSend$2", f = "BroadcastChannel.kt", i = {}, l = {291}, m = "invokeSuspend", n = {}, s = {})
    public static final class c extends Bf.q implements Mf.p<S, yf.f<? super P0>, Object> {

        public int f89582b;

        public final C13365e<E> f89583c;

        public final Object f89584d;

        public final pg.m<?> f89585e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(C13365e<E> c13365e, Object obj, pg.m<?> mVar, yf.f<? super c> fVar) {
            super(2, fVar);
            this.f89583c = c13365e;
            this.f89584d = obj;
            this.f89585e = mVar;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            return new c(this.f89583c, this.f89584d, this.f89585e, fVar);
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull S s10, @Nullable yf.f<? super P0> fVar) {
            return ((c) create(s10, fVar)).invokeSuspend(P0.f98194a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object l10 = Af.d.l();
            int i10 = this.f89582b;
            boolean z10 = true;
            try {
                if (i10 == 0) {
                    C14418j0.n(obj);
                    C13365e<E> c13365e = this.f89583c;
                    Object obj2 = this.f89584d;
                    this.f89582b = 1;
                    if (c13365e.M(obj2, this) == l10) {
                        return l10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    C14418j0.n(obj);
                }
            } catch (Throwable th2) {
                if (!this.f89583c.A() || (!(th2 instanceof ClosedSendChannelException) && this.f89583c.n0() != th2)) {
                    throw th2;
                }
                z10 = false;
            }
            ReentrantLock reentrantLock = this.f89583c.f89576o;
            C13365e<E> c13365e2 = this.f89583c;
            pg.m<?> mVar = this.f89585e;
            reentrantLock.lock();
            try {
                c13365e2.f89579r.put(mVar, z10 ? P0.f98194a : k.z());
                M.n(mVar, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>");
                P0 p02 = P0.f98194a;
                if (((pg.l) mVar).j0(c13365e2, p02) != pg.r.REREGISTER) {
                    c13365e2.f89579r.remove(mVar);
                }
                reentrantLock.unlock();
                return p02;
            } catch (Throwable th3) {
                reentrantLock.unlock();
                throw th3;
            }
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.BroadcastChannelImpl", f = "BroadcastChannel.kt", i = {0, 0}, l = {230}, m = "send", n = {"this", "element"}, s = {"L$0", "L$1"})
    public static final class d extends Bf.d {

        public Object f89586b;

        public Object f89587c;

        public Object f89588d;

        public Object f89589e;

        public final C13365e<E> f89590f;

        public int f89591g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(C13365e<E> c13365e, yf.f<? super d> fVar) {
            super(fVar);
            this.f89590f = c13365e;
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f89589e = obj;
            this.f89591g |= Integer.MIN_VALUE;
            return this.f89590f.M(null, this);
        }
    }

    public C13365e(int i10) {
        super(0, null);
        this.f89575n = i10;
        if (i10 >= 1 || i10 == -1) {
            this.f89576o = new ReentrantLock();
            this.f89577p = pf.H.J();
            this.f89578q = C13366f.b();
            this.f89579r = new HashMap<>();
            return;
        }
        throw new IllegalArgumentException(("BroadcastChannel capacity must be positive or Channel.CONFLATED, but " + i10 + " was specified").toString());
    }

    public static void M1() {
    }

    public static void O1() {
    }

    @Override
    public boolean A() {
        ReentrantLock reentrantLock = this.f89576o;
        reentrantLock.lock();
        try {
            return super.A();
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override
    public boolean J(@Nullable Throwable th2) {
        ReentrantLock reentrantLock = this.f89576o;
        reentrantLock.lock();
        try {
            Iterator<? extends j<E>> it = this.f89577p.iterator();
            while (it.hasNext()) {
                it.next().J(th2);
            }
            List<? extends j<E>> list = this.f89577p;
            ArrayList arrayList = new ArrayList();
            for (j<E> jVar : list) {
                if (jVar.p0()) {
                    arrayList.add(jVar);
                }
            }
            this.f89577p = arrayList;
            boolean J10 = super.J(th2);
            reentrantLock.unlock();
            return J10;
        } catch (Throwable th3) {
            reentrantLock.unlock();
            throw th3;
        }
    }

    public final int K1() {
        return this.f89575n;
    }

    public final E L1() {
        ReentrantLock reentrantLock = this.f89576o;
        reentrantLock.lock();
        try {
            if (A()) {
                Throwable f02 = f0();
                if (f02 == null) {
                    throw new IllegalStateException("This broadcast channel is closed");
                }
                throw f02;
            }
            if (this.f89578q == C13366f.b()) {
                throw new IllegalStateException("No value");
            }
            E e10 = (E) this.f89578q;
            reentrantLock.unlock();
            return e10;
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x007d -> B:10:0x0080). Please report as a decompilation issue!!! */
    @Override
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object M(E e10, @NotNull yf.f<? super P0> fVar) {
        d dVar;
        int i10;
        C13365e<E> c13365e;
        E e11;
        Iterator<? extends j<E>> it;
        if (fVar instanceof d) {
            dVar = (d) fVar;
            int i11 = dVar.f89591g;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                dVar.f89591g = i11 - Integer.MIN_VALUE;
                Object obj = dVar.f89589e;
                Object l10 = Af.d.l();
                i10 = dVar.f89591g;
                if (i10 != 0) {
                    C14418j0.n(obj);
                    ReentrantLock reentrantLock = this.f89576o;
                    reentrantLock.lock();
                    try {
                        if (A()) {
                            throw n0();
                        }
                        if (this.f89575n == -1) {
                            this.f89578q = e10;
                        }
                        List<? extends j<E>> list = this.f89577p;
                        reentrantLock.unlock();
                        c13365e = this;
                        e11 = e10;
                        it = list.iterator();
                        if (it.hasNext()) {
                        }
                    } catch (Throwable th2) {
                        reentrantLock.unlock();
                        throw th2;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    it = (Iterator) dVar.f89588d;
                    Object obj2 = dVar.f89587c;
                    c13365e = (C13365e) dVar.f89586b;
                    C14418j0.n(obj);
                    E e12 = obj2;
                    if (((Boolean) obj).booleanValue() && c13365e.A()) {
                        throw c13365e.n0();
                    }
                    e11 = e12;
                    if (it.hasNext()) {
                        j<E> next = it.next();
                        dVar.f89586b = c13365e;
                        dVar.f89587c = e11;
                        dVar.f89588d = it;
                        dVar.f89591g = 1;
                        Object m12 = next.m1(e11, dVar);
                        if (m12 == l10) {
                            return l10;
                        }
                        e12 = e11;
                        obj = m12;
                        if (((Boolean) obj).booleanValue()) {
                        }
                        e11 = e12;
                        if (it.hasNext()) {
                            return P0.f98194a;
                        }
                    }
                }
            }
        }
        dVar = new d(this, fVar);
        Object obj3 = dVar.f89589e;
        Object l102 = Af.d.l();
        i10 = dVar.f89591g;
        if (i10 != 0) {
        }
    }

    @Nullable
    public final E N1() {
        ReentrantLock reentrantLock = this.f89576o;
        reentrantLock.lock();
        try {
            E e10 = null;
            if (!D() && this.f89578q != C13366f.b()) {
                e10 = (E) this.f89578q;
            }
            return e10;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void P1(InterfaceC13360D<? extends E> interfaceC13360D) {
        ReentrantLock reentrantLock = this.f89576o;
        reentrantLock.lock();
        try {
            List<? extends j<E>> list = this.f89577p;
            ArrayList arrayList = new ArrayList();
            for (j<E> jVar : list) {
                if (jVar != interfaceC13360D) {
                    arrayList.add(jVar);
                }
            }
            this.f89577p = arrayList;
            P0 p02 = P0.f98194a;
            reentrantLock.unlock();
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    @Override
    public boolean Q(@Nullable Throwable th2) {
        ReentrantLock reentrantLock = this.f89576o;
        reentrantLock.lock();
        try {
            Iterator<? extends j<E>> it = this.f89577p.iterator();
            while (it.hasNext()) {
                it.next().Q(th2);
            }
            this.f89578q = C13366f.b();
            boolean Q10 = super.Q(th2);
            reentrantLock.unlock();
            return Q10;
        } catch (Throwable th3) {
            reentrantLock.unlock();
            throw th3;
        }
    }

    @Override
    public void g1(@NotNull pg.m<?> mVar, @Nullable Object obj) {
        ReentrantLock reentrantLock = this.f89576o;
        reentrantLock.lock();
        try {
            Object remove = this.f89579r.remove(mVar);
            if (remove != null) {
                mVar.w(remove);
                return;
            }
            P0 p02 = P0.f98194a;
            reentrantLock.unlock();
            C13119i.e(T.a(mVar.getContext()), null, U.UNDISPATCHED, new c(this, obj, mVar, null), 1, null);
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override
    @NotNull
    public InterfaceC13360D<E> m() {
        ReentrantLock reentrantLock = this.f89576o;
        reentrantLock.lock();
        try {
            a bVar = this.f89575n == -1 ? new b() : new a();
            if (A() && this.f89578q == C13366f.b()) {
                ((j) bVar).J(f0());
                reentrantLock.unlock();
                return bVar;
            }
            if (this.f89578q != C13366f.b()) {
                ((j) bVar).p(L1());
            }
            this.f89577p = pf.S.K4(this.f89577p, bVar);
            reentrantLock.unlock();
            return bVar;
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    @Override
    @NotNull
    public Object p(E e10) {
        ReentrantLock reentrantLock = this.f89576o;
        reentrantLock.lock();
        try {
            if (A()) {
                return super.p(e10);
            }
            List<? extends j<E>> list = this.f89577p;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator<? extends j<E>> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next().t1()) {
                        return p.f89695b.b();
                    }
                }
            }
            if (this.f89575n == -1) {
                this.f89578q = e10;
            }
            Iterator<? extends j<E>> it2 = this.f89577p.iterator();
            while (it2.hasNext()) {
                it2.next().p(e10);
            }
            return p.f89695b.c(P0.f98194a);
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override
    @NotNull
    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        if (this.f89578q != C13366f.b()) {
            str = "CONFLATED_ELEMENT=" + this.f89578q + VectorFormat.DEFAULT_SEPARATOR;
        } else {
            str = "";
        }
        sb2.append(str);
        sb2.append("BROADCAST=<");
        sb2.append(super.toString());
        sb2.append(">; SUBSCRIBERS=");
        sb2.append(pf.S.r3(this.f89577p, ";", "<", ">", 0, null, null, 56, null));
        return sb2.toString();
    }
}
