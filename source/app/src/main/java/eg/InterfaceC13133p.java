package eg;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface InterfaceC13133p<T> extends yf.f<T> {

    public static final class a {
        public static boolean a(InterfaceC13133p interfaceC13133p, Throwable th2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i10 & 1) != 0) {
                th2 = null;
            }
            return interfaceC13133p.b(th2);
        }

        public static Object b(InterfaceC13133p interfaceC13133p, Object obj, Object obj2, int i10, Object obj3) {
            if (obj3 != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: tryResume");
            }
            if ((i10 & 2) != 0) {
                obj2 = null;
            }
            return interfaceC13133p.C(obj, obj2);
        }
    }

    @F0
    void B(@NotNull Object obj);

    @F0
    @Nullable
    Object C(T t10, @Nullable Object obj);

    @F0
    @Nullable
    Object E(@NotNull Throwable th2);

    void K(@NotNull Mf.l<? super Throwable, nf.P0> lVar);

    @F0
    void O();

    boolean b(@Nullable Throwable th2);

    boolean d();

    @InterfaceC13153z0
    void i(@NotNull AbstractC13100M abstractC13100M, @NotNull Throwable th2);

    boolean isActive();

    boolean isCancelled();

    @F0
    @Nullable
    Object k(T t10, @Nullable Object obj, @Nullable Mf.l<? super Throwable, nf.P0> lVar);

    @InterfaceC13153z0
    void o(T t10, @Nullable Mf.l<? super Throwable, nf.P0> lVar);

    @InterfaceC13153z0
    void x(@NotNull AbstractC13100M abstractC13100M, T t10);
}
