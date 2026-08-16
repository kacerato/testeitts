package eg;

import eg.InterfaceC13101N;
import mg.C14249j;
import nf.C14436t;
import org.jetbrains.annotations.NotNull;
import yf.AbstractC16183a;

@kotlin.jvm.internal.t0({"SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n+ 2 Exceptions.kt\nkotlinx/coroutines/ExceptionsKt\n*L\n1#1,110:1\n75#2:111\n*S KotlinDebug\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n38#1:111\n*E\n"})
public final class O {

    @kotlin.jvm.internal.t0({"SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n*L\n1#1,110:1\n*E\n"})
    public static final class a extends AbstractC16183a implements InterfaceC13101N {

        public final Mf.p<yf.j, Throwable, nf.P0> f85630b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(Mf.p<? super yf.j, ? super Throwable, nf.P0> pVar, InterfaceC13101N.b bVar) {
            super(bVar);
            this.f85630b = pVar;
        }

        @Override
        public void q(@NotNull yf.j jVar, @NotNull Throwable th2) {
            this.f85630b.invoke(jVar, th2);
        }
    }

    @NotNull
    public static final InterfaceC13101N a(@NotNull Mf.p<? super yf.j, ? super Throwable, nf.P0> pVar) {
        return new a(pVar, InterfaceC13101N.f85628x4);
    }

    @F0
    public static final void b(@NotNull yf.j jVar, @NotNull Throwable th2) {
        try {
            InterfaceC13101N interfaceC13101N = (InterfaceC13101N) jVar.get(InterfaceC13101N.f85628x4);
            if (interfaceC13101N != null) {
                interfaceC13101N.q(jVar, th2);
            } else {
                C14249j.a(jVar, th2);
            }
        } catch (Throwable th3) {
            C14249j.a(jVar, c(th2, th3));
        }
    }

    @NotNull
    public static final Throwable c(@NotNull Throwable th2, @NotNull Throwable th3) {
        if (th2 == th3) {
            return th2;
        }
        RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th3);
        C14436t.a(runtimeException, th2);
        return runtimeException;
    }
}
