package sg;

import Bf.h;
import Mf.l;
import Mf.p;
import Xf.InterfaceC3312m;
import com.google.android.gms.tasks.RuntimeExecutionException;
import eg.C13088A;
import eg.C13135q;
import eg.F0;
import eg.InterfaceC13128m0;
import eg.InterfaceC13133p;
import eg.InterfaceC13144v;
import eg.InterfaceC13148x;
import eg.InterfaceC13150y;
import eg.InterfaceC13153z0;
import eg.K0;
import eg.Z;
import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.O;
import kotlin.jvm.internal.t0;
import nf.C14416i0;
import nf.C14418j0;
import nf.EnumC14431q;
import nf.InterfaceC14427o;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pg.InterfaceC14998e;
import pg.g;
import v1.AbstractC15790k;
import v1.C15781b;
import v1.C15791l;
import v1.InterfaceC15784e;
import yf.f;
import yf.j;

@t0({"SMAP\nTasks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tasks.kt\nkotlinx/coroutines/tasks/TasksKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,167:1\n314#2,11:168\n*S KotlinDebug\n*F\n+ 1 Tasks.kt\nkotlinx/coroutines/tasks/TasksKt\n*L\n139#1:168,11\n*E\n"})
public final class C15297c {

    public static final class a extends O implements l<Throwable, P0> {

        public final C15781b f109460b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(C15781b c15781b) {
            super(1);
            this.f109460b = c15781b;
        }

        @Override
        public P0 invoke(Throwable th2) {
            invoke2(th2);
            return P0.f98194a;
        }

        public final void invoke2(@Nullable Throwable th2) {
            this.f109460b.a();
        }
    }

    public static final class b<T> implements Z<T> {

        public final InterfaceC13150y<T> f109461b;

        public b(InterfaceC13150y<T> interfaceC13150y) {
            this.f109461b = interfaceC13150y;
        }

        @Override
        @InterfaceC13153z0
        @Nullable
        public Throwable G() {
            return this.f109461b.G();
        }

        @Override
        @F0
        @NotNull
        public CancellationException Q() {
            return this.f109461b.Q();
        }

        @Override
        @F0
        @NotNull
        public InterfaceC13128m0 S(boolean z10, boolean z11, @NotNull l<? super Throwable, P0> lVar) {
            return this.f109461b.S(z10, z11, lVar);
        }

        @Override
        @NotNull
        public g<T> Y() {
            return this.f109461b.Y();
        }

        @Override
        @Nullable
        public Object Z(@NotNull f<? super T> fVar) {
            return this.f109461b.Z(fVar);
        }

        @Override
        public void a(@Nullable CancellationException cancellationException) {
            this.f109461b.a(cancellationException);
        }

        @Override
        @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
        public boolean b(Throwable th2) {
            return this.f109461b.b(th2);
        }

        @Override
        @Nullable
        public Object c0(@NotNull f<? super P0> fVar) {
            return this.f109461b.c0(fVar);
        }

        @Override
        @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
        public void cancel() {
            this.f109461b.cancel();
        }

        @Override
        public boolean d() {
            return this.f109461b.d();
        }

        @Override
        @InterfaceC13153z0
        public T e() {
            return this.f109461b.e();
        }

        @Override
        @F0
        @NotNull
        public InterfaceC13144v f(@NotNull InterfaceC13148x interfaceC13148x) {
            return this.f109461b.f(interfaceC13148x);
        }

        @Override
        public <R> R fold(R r10, @NotNull p<? super R, ? super j.b, ? extends R> pVar) {
            return (R) this.f109461b.fold(r10, pVar);
        }

        @Override
        @Nullable
        public <E extends j.b> E get(@NotNull j.c<E> cVar) {
            return (E) this.f109461b.get(cVar);
        }

        @Override
        @NotNull
        public InterfaceC3312m<K0> getChildren() {
            return this.f109461b.getChildren();
        }

        @Override
        @NotNull
        public j.c<?> getKey() {
            return this.f109461b.getKey();
        }

        @Override
        @Nullable
        public K0 getParent() {
            return this.f109461b.getParent();
        }

        @Override
        public boolean isActive() {
            return this.f109461b.isActive();
        }

        @Override
        public boolean isCancelled() {
            return this.f109461b.isCancelled();
        }

        @Override
        @NotNull
        public j minusKey(@NotNull j.c<?> cVar) {
            return this.f109461b.minusKey(cVar);
        }

        @Override
        @NotNull
        public j plus(@NotNull j jVar) {
            return this.f109461b.plus(jVar);
        }

        @Override
        public boolean start() {
            return this.f109461b.start();
        }

        @Override
        @NotNull
        public InterfaceC13128m0 w(@NotNull l<? super Throwable, P0> lVar) {
            return this.f109461b.w(lVar);
        }

        @Override
        @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
        @NotNull
        public K0 y(@NotNull K0 k02) {
            return this.f109461b.y(k02);
        }

        @Override
        @NotNull
        public InterfaceC14998e z() {
            return this.f109461b.z();
        }
    }

    public static final class C2007c extends O implements l<Throwable, P0> {

        public final C15781b f109462b;

        public final Z<T> f109463c;

        public final C15791l<T> f109464d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C2007c(C15781b c15781b, Z<? extends T> z10, C15791l<T> c15791l) {
            super(1);
            this.f109462b = c15781b;
            this.f109463c = z10;
            this.f109464d = c15791l;
        }

        @Override
        public P0 invoke(Throwable th2) {
            invoke2(th2);
            return P0.f98194a;
        }

        public final void invoke2(@Nullable Throwable th2) {
            if (th2 instanceof CancellationException) {
                this.f109462b.a();
                return;
            }
            Throwable G10 = this.f109463c.G();
            if (G10 == null) {
                this.f109464d.c(this.f109463c.e());
                return;
            }
            C15791l<T> c15791l = this.f109464d;
            Exception exc = G10 instanceof Exception ? (Exception) G10 : null;
            if (exc == null) {
                exc = new RuntimeExecutionException(G10);
            }
            c15791l.b(exc);
        }
    }

    public static final class d<TResult> implements InterfaceC15784e {

        public final InterfaceC13133p<T> f109465a;

        /* JADX WARN: Multi-variable type inference failed */
        public d(InterfaceC13133p<? super T> interfaceC13133p) {
            this.f109465a = interfaceC13133p;
        }

        @Override
        public final void a(@NotNull AbstractC15790k<T> abstractC15790k) {
            Exception q10 = abstractC15790k.q();
            if (q10 != null) {
                f fVar = this.f109465a;
                C14416i0.a aVar = C14416i0.f98201c;
                fVar.resumeWith(C14416i0.b(C14418j0.a(q10)));
            } else {
                if (abstractC15790k.t()) {
                    InterfaceC13133p.a.a(this.f109465a, null, 1, null);
                    return;
                }
                f fVar2 = this.f109465a;
                C14416i0.a aVar2 = C14416i0.f98201c;
                fVar2.resumeWith(C14416i0.b(abstractC15790k.r()));
            }
        }
    }

    public static final class e extends O implements l<Throwable, P0> {

        public final C15781b f109466b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(C15781b c15781b) {
            super(1);
            this.f109466b = c15781b;
        }

        @Override
        public P0 invoke(Throwable th2) {
            invoke2(th2);
            return P0.f98194a;
        }

        public final void invoke2(@Nullable Throwable th2) {
            this.f109466b.a();
        }
    }

    @NotNull
    public static final <T> Z<T> c(@NotNull AbstractC15790k<T> abstractC15790k) {
        return e(abstractC15790k, null);
    }

    @InterfaceC13153z0
    @NotNull
    public static final <T> Z<T> d(@NotNull AbstractC15790k<T> abstractC15790k, @NotNull C15781b c15781b) {
        return e(abstractC15790k, c15781b);
    }

    public static final <T> Z<T> e(AbstractC15790k<T> abstractC15790k, C15781b c15781b) {
        final InterfaceC13150y c10 = C13088A.c(null, 1, null);
        if (abstractC15790k.u()) {
            Exception q10 = abstractC15790k.q();
            if (q10 != null) {
                c10.c(q10);
            } else if (abstractC15790k.t()) {
                K0.a.b(c10, null, 1, null);
            } else {
                c10.n(abstractC15790k.r());
            }
        } else {
            abstractC15790k.e(ExecutorC15295a.f109458b, new InterfaceC15784e() {
                @Override
                public final void a(AbstractC15790k abstractC15790k2) {
                    C15297c.f(InterfaceC13150y.this, abstractC15790k2);
                }
            });
        }
        if (c15781b != null) {
            c10.w(new a(c15781b));
        }
        return new b(c10);
    }

    public static final void f(InterfaceC13150y interfaceC13150y, AbstractC15790k abstractC15790k) {
        Exception q10 = abstractC15790k.q();
        if (q10 != null) {
            interfaceC13150y.c(q10);
        } else if (abstractC15790k.t()) {
            K0.a.b(interfaceC13150y, null, 1, null);
        } else {
            interfaceC13150y.n(abstractC15790k.r());
        }
    }

    @NotNull
    public static final <T> AbstractC15790k<T> g(@NotNull Z<? extends T> z10) {
        C15781b c15781b = new C15781b();
        C15791l c15791l = new C15791l(c15781b.b());
        z10.w(new C2007c(c15781b, z10, c15791l));
        return c15791l.a();
    }

    @InterfaceC13153z0
    @Nullable
    public static final <T> Object h(@NotNull AbstractC15790k<T> abstractC15790k, @NotNull C15781b c15781b, @NotNull f<? super T> fVar) {
        return j(abstractC15790k, c15781b, fVar);
    }

    @Nullable
    public static final <T> Object i(@NotNull AbstractC15790k<T> abstractC15790k, @NotNull f<? super T> fVar) {
        return j(abstractC15790k, null, fVar);
    }

    public static final <T> Object j(AbstractC15790k<T> abstractC15790k, C15781b c15781b, f<? super T> fVar) {
        if (!abstractC15790k.u()) {
            C13135q c13135q = new C13135q(Af.c.e(fVar), 1);
            c13135q.O();
            abstractC15790k.e(ExecutorC15295a.f109458b, new d(c13135q));
            if (c15781b != null) {
                c13135q.K(new e(c15781b));
            }
            Object D10 = c13135q.D();
            if (D10 == Af.d.l()) {
                h.c(fVar);
            }
            return D10;
        }
        Exception q10 = abstractC15790k.q();
        if (q10 != null) {
            throw q10;
        }
        if (!abstractC15790k.t()) {
            return abstractC15790k.r();
        }
        throw new CancellationException("Task " + ((Object) abstractC15790k) + " was cancelled normally.");
    }
}
