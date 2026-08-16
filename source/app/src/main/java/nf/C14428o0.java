package nf;

public class C14428o0 extends C14426n0 {
    @Ef.f
    @InterfaceC14394D
    public static final <R> R l(Object lock, Mf.a<? extends R> block) {
        R invoke;
        kotlin.jvm.internal.M.p(lock, "lock");
        kotlin.jvm.internal.M.p(block, "block");
        synchronized (lock) {
            try {
                invoke = block.invoke();
                kotlin.jvm.internal.J.d(1);
            } catch (Throwable th2) {
                kotlin.jvm.internal.J.d(1);
                kotlin.jvm.internal.J.c(1);
                throw th2;
            }
        }
        kotlin.jvm.internal.J.c(1);
        return invoke;
    }
}
