package gg;

import eg.AbstractC13102a;
import eg.B0;
import eg.C13099L;
import eg.C13122j0;
import eg.InterfaceC13101N;
import eg.InterfaceC13104a1;
import eg.R0;
import eg.S;
import eg.T;
import eg.U;
import kotlin.jvm.internal.O;
import kotlin.jvm.internal.t0;
import nf.C14418j0;
import nf.EnumC14431q;
import nf.InterfaceC14401b;
import nf.InterfaceC14427o;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.AbstractC16183a;

@t0({"SMAP\nBroadcast.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastKt\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,202:1\n48#2,4:203\n*S KotlinDebug\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastKt\n*L\n51#1:203,4\n*E\n"})
public final class C13368h {

    @t0({"SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastKt\n*L\n1#1,110:1\n51#2:111\n*E\n"})
    public static final class a extends AbstractC16183a implements InterfaceC13101N {
        public a(InterfaceC13101N.b bVar) {
            super(bVar);
        }

        @Override
        public void q(@NotNull yf.j jVar, @NotNull Throwable th2) {
        }
    }

    public static final class b extends O implements Mf.l<Throwable, P0> {

        public final InterfaceC13360D<E> f89594b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public b(InterfaceC13360D<? extends E> interfaceC13360D) {
            super(1);
            this.f89594b = interfaceC13360D;
        }

        @Override
        public P0 invoke(Throwable th2) {
            invoke2(th2);
            return P0.f98194a;
        }

        public final void invoke2(@Nullable Throwable th2) {
            r.b(this.f89594b, th2);
        }
    }

    @Bf.f(c = "kotlinx.coroutines.channels.BroadcastKt$broadcast$2", f = "Broadcast.kt", i = {0, 1}, l = {56, 57}, m = "invokeSuspend", n = {"$this$broadcast", "$this$broadcast"}, s = {"L$0", "L$0"})
    public static final class c<E> extends Bf.q implements Mf.p<InterfaceC13358B<? super E>, yf.f<? super P0>, Object> {

        public Object f89595b;

        public int f89596c;

        public Object f89597d;

        public final InterfaceC13360D<E> f89598e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public c(InterfaceC13360D<? extends E> interfaceC13360D, yf.f<? super c> fVar) {
            super(2, fVar);
            this.f89598e = interfaceC13360D;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            c cVar = new c(this.f89598e, fVar);
            cVar.f89597d = obj;
            return cVar;
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull InterfaceC13358B<? super E> interfaceC13358B, @Nullable yf.f<? super P0> fVar) {
            return ((c) create(interfaceC13358B, fVar)).invokeSuspend(P0.f98194a);
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x0049  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0054  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0065  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0048 A[RETURN] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0062 -> B:6:0x0019). Please report as a decompilation issue!!! */
        @Override
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(@NotNull Object obj) {
            InterfaceC13358B interfaceC13358B;
            n<E> it;
            InterfaceC13358B interfaceC13358B2;
            Object a10;
            Object l10 = Af.d.l();
            int i10 = this.f89596c;
            if (i10 == 0) {
                C14418j0.n(obj);
                interfaceC13358B = (InterfaceC13358B) this.f89597d;
                it = this.f89598e.iterator();
                this.f89597d = interfaceC13358B;
                this.f89595b = it;
                this.f89596c = 1;
                a10 = it.a(this);
                if (a10 == l10) {
                }
            } else if (i10 == 1) {
                it = (n) this.f89595b;
                interfaceC13358B2 = (InterfaceC13358B) this.f89597d;
                C14418j0.n(obj);
                if (((Boolean) obj).booleanValue()) {
                }
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                it = (n) this.f89595b;
                interfaceC13358B2 = (InterfaceC13358B) this.f89597d;
                C14418j0.n(obj);
                interfaceC13358B = interfaceC13358B2;
                this.f89597d = interfaceC13358B;
                this.f89595b = it;
                this.f89596c = 1;
                a10 = it.a(this);
                if (a10 == l10) {
                    return l10;
                }
                interfaceC13358B2 = interfaceC13358B;
                obj = a10;
                if (((Boolean) obj).booleanValue()) {
                    return P0.f98194a;
                }
                E next = it.next();
                this.f89597d = interfaceC13358B2;
                this.f89595b = it;
                this.f89596c = 2;
                if (interfaceC13358B2.M(next, this) == l10) {
                    return l10;
                }
                interfaceC13358B = interfaceC13358B2;
                this.f89597d = interfaceC13358B;
                this.f89595b = it;
                this.f89596c = 1;
                a10 = it.a(this);
                if (a10 == l10) {
                }
            }
        }
    }

    @InterfaceC14427o(level = EnumC14431q.WARNING, message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported")
    @InterfaceC13104a1
    @NotNull
    public static final <E> InterfaceC13364d<E> a(@NotNull S s10, @NotNull yf.j jVar, int i10, @NotNull U u10, @Nullable Mf.l<? super Throwable, P0> lVar, @InterfaceC14401b @NotNull Mf.p<? super InterfaceC13358B<? super E>, ? super yf.f<? super P0>, ? extends Object> pVar) {
        yf.j d10 = C13099L.d(s10, jVar);
        InterfaceC13364d a10 = C13366f.a(i10);
        C13367g yVar = u10.d() ? new y(d10, a10, pVar) : new C13367g(d10, a10, true);
        if (lVar != null) {
            ((R0) yVar).w(lVar);
        }
        ((AbstractC13102a) yVar).B1(u10, yVar, pVar);
        return (InterfaceC13364d<E>) yVar;
    }

    @InterfaceC14427o(level = EnumC14431q.WARNING, message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported")
    @InterfaceC13104a1
    @NotNull
    public static final <E> InterfaceC13364d<E> b(@NotNull InterfaceC13360D<? extends E> interfaceC13360D, int i10, @NotNull U u10) {
        return c(T.m(T.m(B0.f85596b, C13122j0.g()), new a(InterfaceC13101N.f85628x4)), null, i10, u10, new b(interfaceC13360D), new c(interfaceC13360D, null), 1, null);
    }

    public static InterfaceC13364d c(S s10, yf.j jVar, int i10, U u10, Mf.l lVar, Mf.p pVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            jVar = yf.l.f130251b;
        }
        yf.j jVar2 = jVar;
        if ((i11 & 2) != 0) {
            i10 = 1;
        }
        int i12 = i10;
        if ((i11 & 4) != 0) {
            u10 = U.LAZY;
        }
        U u11 = u10;
        if ((i11 & 8) != 0) {
            lVar = null;
        }
        return a(s10, jVar2, i12, u11, lVar, pVar);
    }

    public static InterfaceC13364d d(InterfaceC13360D interfaceC13360D, int i10, U u10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 1;
        }
        if ((i11 & 2) != 0) {
            u10 = U.LAZY;
        }
        return b(interfaceC13360D, i10, u10);
    }
}
