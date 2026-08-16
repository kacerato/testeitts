package gg;

import eg.C13121j;
import eg.S;
import gg.p;
import kotlin.jvm.internal.t0;
import nf.C14416i0;
import nf.C14418j0;
import nf.EnumC14431q;
import nf.InterfaceC14412g0;
import nf.InterfaceC14427o;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/channels/ChannelsKt__ChannelsKt\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n*L\n1#1,61:1\n514#2,6:62\n*S KotlinDebug\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/channels/ChannelsKt__ChannelsKt\n*L\n37#1:62,6\n*E\n"})
public final class s {

    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__ChannelsKt$sendBlocking$1", f = "Channels.kt", i = {}, l = {58}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends Bf.q implements Mf.p<S, yf.f<? super P0>, Object> {

        public int f89702b;

        public final E<Object> f89703c;

        public final Object f89704d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(E<Object> e10, Object obj, yf.f<? super a> fVar) {
            super(2, fVar);
            this.f89703c = e10;
            this.f89704d = obj;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            return new a(this.f89703c, this.f89704d, fVar);
        }

        @Override
        @Nullable
        public final Object invoke(@NotNull S s10, @Nullable yf.f<? super P0> fVar) {
            return ((a) create(s10, fVar)).invokeSuspend(P0.f98194a);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object l10 = Af.d.l();
            int i10 = this.f89702b;
            if (i10 == 0) {
                C14418j0.n(obj);
                E<Object> e10 = this.f89703c;
                Object obj2 = this.f89704d;
                this.f89702b = 1;
                if (e10.M(obj2, this) == l10) {
                    return l10;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C14418j0.n(obj);
            }
            return P0.f98194a;
        }
    }

    @t0({"SMAP\nChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/channels/ChannelsKt__ChannelsKt$trySendBlocking$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,61:1\n1#2:62\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.channels.ChannelsKt__ChannelsKt$trySendBlocking$2", f = "Channels.kt", i = {}, l = {39}, m = "invokeSuspend", n = {}, s = {})
    public static final class b extends Bf.q implements Mf.p<S, yf.f<? super p<? extends P0>>, Object> {

        public int f89705b;

        public Object f89706c;

        public final E<E> f89707d;

        public final E f89708e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public b(E<? super E> e10, E e11, yf.f<? super b> fVar) {
            super(2, fVar);
            this.f89707d = e10;
            this.f89708e = e11;
        }

        @Override
        @NotNull
        public final yf.f<P0> create(@Nullable Object obj, @NotNull yf.f<?> fVar) {
            b bVar = new b(this.f89707d, this.f89708e, fVar);
            bVar.f89706c = obj;
            return bVar;
        }

        @Nullable
        public final Object invoke2(@NotNull S s10, @Nullable yf.f<? super p<P0>> fVar) {
            return ((b) create(s10, fVar)).invokeSuspend(P0.f98194a);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object b10;
            Object l10 = Af.d.l();
            int i10 = this.f89705b;
            try {
                if (i10 == 0) {
                    C14418j0.n(obj);
                    E<E> e10 = this.f89707d;
                    E e11 = this.f89708e;
                    C14416i0.a aVar = C14416i0.f98201c;
                    this.f89705b = 1;
                    if (e10.M(e11, this) == l10) {
                        return l10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    C14418j0.n(obj);
                }
                b10 = C14416i0.b(P0.f98194a);
            } catch (Throwable th2) {
                C14416i0.a aVar2 = C14416i0.f98201c;
                b10 = C14416i0.b(C14418j0.a(th2));
            }
            return p.b(C14416i0.j(b10) ? p.f89695b.c(P0.f98194a) : p.f89695b.a(C14416i0.e(b10)));
        }

        @Override
        public Object invoke(S s10, yf.f<? super p<? extends P0>> fVar) {
            return invoke2(s10, (yf.f<? super p<P0>>) fVar);
        }
    }

    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Deprecated in the favour of 'trySendBlocking'. Consider handling the result of 'trySendBlocking' explicitly and rethrow exception if necessary", replaceWith = @InterfaceC14412g0(expression = "trySendBlocking(element)", imports = {}))
    public static final void a(E e10, Object obj) {
        if (p.m(e10.p(obj))) {
            return;
        }
        C13121j.b(null, new a(e10, obj, null), 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <E> Object b(@NotNull E<? super E> e10, E e11) {
        Object b10;
        Object p10 = e10.p(e11);
        if (p10 instanceof p.c) {
            b10 = C13121j.b(null, new b(e10, e11, null), 1, null);
            return ((p) b10).o();
        }
        return p.f89695b.c(P0.f98194a);
    }
}
