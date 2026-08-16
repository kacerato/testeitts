package gg;

import eg.InterfaceC13112e0;
import eg.InterfaceC13153z0;
import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.M;
import mg.S;
import nf.C14418j0;
import nf.EnumC14431q;
import nf.InterfaceC14412g0;
import nf.InterfaceC14427o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface InterfaceC13360D<E> {

    public static final class a {

        @Bf.f(c = "kotlinx.coroutines.channels.ReceiveChannel$DefaultImpls", f = "Channel.kt", i = {}, l = {372}, m = "receiveOrNull", n = {}, s = {})
        public static final class C1717a<E> extends Bf.d {

            public Object f89557b;

            public int f89558c;

            public C1717a(yf.f<? super C1717a> fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f89557b = obj;
                this.f89558c |= Integer.MIN_VALUE;
                return a.i(null, this);
            }
        }

        public static void b(InterfaceC13360D interfaceC13360D, CancellationException cancellationException, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i10 & 1) != 0) {
                cancellationException = null;
            }
            interfaceC13360D.a(cancellationException);
        }

        public static boolean c(InterfaceC13360D interfaceC13360D, Throwable th2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i10 & 1) != 0) {
                th2 = null;
            }
            return interfaceC13360D.b(th2);
        }

        @NotNull
        public static <E> pg.g<E> d(@NotNull InterfaceC13360D<? extends E> interfaceC13360D) {
            M.n(interfaceC13360D, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel<E of kotlinx.coroutines.channels.ReceiveChannel>");
            return ((j) interfaceC13360D).s();
        }

        @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Deprecated in favor of onReceiveCatching extension", replaceWith = @InterfaceC14412g0(expression = "onReceiveCatching", imports = {}))
        public static void e() {
        }

        @InterfaceC13112e0
        public static void f() {
        }

        @InterfaceC13153z0
        public static void g() {
        }

        @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Deprecated in the favour of 'tryReceive'. Please note that the provided replacement does not rethrow channel's close cause as 'poll' did, for the precise replacement please refer to the 'poll' documentation", replaceWith = @InterfaceC14412g0(expression = "tryReceive().getOrNull()", imports = {}))
        @Nullable
        public static <E> E h(@NotNull InterfaceC13360D<? extends E> interfaceC13360D) {
            Object v10 = interfaceC13360D.v();
            if (p.m(v10)) {
                return (E) p.i(v10);
            }
            Throwable f10 = p.f(v10);
            if (f10 == null) {
                return null;
            }
            throw S.o(f10);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0037  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Deprecated in favor of 'receiveCatching'. Please note that the provided replacement does not rethrow channel's close cause as 'receiveOrNull' did, for the detailed replacement please refer to the 'receiveOrNull' documentation", replaceWith = @InterfaceC14412g0(expression = "receiveCatching().getOrNull()", imports = {}))
        @Ef.i
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static <E> Object i(@NotNull InterfaceC13360D<? extends E> interfaceC13360D, @NotNull yf.f<? super E> fVar) {
            C1717a c1717a;
            int i10;
            Object u10;
            if (fVar instanceof C1717a) {
                c1717a = (C1717a) fVar;
                int i11 = c1717a.f89558c;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    c1717a.f89558c = i11 - Integer.MIN_VALUE;
                    Object obj = c1717a.f89557b;
                    Object l10 = Af.d.l();
                    i10 = c1717a.f89558c;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        c1717a.f89558c = 1;
                        u10 = interfaceC13360D.u(c1717a);
                        if (u10 == l10) {
                            return l10;
                        }
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        C14418j0.n(obj);
                        u10 = ((p) obj).o();
                    }
                    return p.h(u10);
                }
            }
            c1717a = new C1717a(fVar);
            Object obj2 = c1717a.f89557b;
            Object l102 = Af.d.l();
            i10 = c1717a.f89558c;
            if (i10 != 0) {
            }
            return p.h(u10);
        }
    }

    boolean D();

    @Nullable
    Object H(@NotNull yf.f<? super E> fVar);

    @NotNull
    pg.g<E> I();

    void a(@Nullable CancellationException cancellationException);

    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    boolean b(Throwable th2);

    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    void cancel();

    boolean isEmpty();

    @NotNull
    n<E> iterator();

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Deprecated in the favour of 'tryReceive'. Please note that the provided replacement does not rethrow channel's close cause as 'poll' did, for the precise replacement please refer to the 'poll' documentation", replaceWith = @InterfaceC14412g0(expression = "tryReceive().getOrNull()", imports = {}))
    @Nullable
    E poll();

    @NotNull
    pg.g<p<E>> r();

    @NotNull
    pg.g<E> s();

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Deprecated in favor of 'receiveCatching'. Please note that the provided replacement does not rethrow channel's close cause as 'receiveOrNull' did, for the detailed replacement please refer to the 'receiveOrNull' documentation", replaceWith = @InterfaceC14412g0(expression = "receiveCatching().getOrNull()", imports = {}))
    @Ef.i
    @Nullable
    Object t(@NotNull yf.f<? super E> fVar);

    @Nullable
    Object u(@NotNull yf.f<? super p<? extends E>> fVar);

    @NotNull
    Object v();
}
