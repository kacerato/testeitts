package G0;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import v1.AbstractC15790k;
import v1.C15791l;

@C0.a
public class C2603z {

    public static final InterfaceC2573j0 f7499a = new C2565f0();

    @C0.a
    public interface a<R extends com.google.android.gms.common.api.u, T> {
        @Nullable
        @C0.a
        T a(@NonNull R r10);
    }

    @NonNull
    @C0.a
    public static <R extends com.google.android.gms.common.api.u, T extends com.google.android.gms.common.api.t<R>> AbstractC15790k<T> a(@NonNull com.google.android.gms.common.api.p<R> pVar, @NonNull T t10) {
        return b(pVar, new C2569h0(t10));
    }

    @NonNull
    @C0.a
    public static <R extends com.google.android.gms.common.api.u, T> AbstractC15790k<T> b(@NonNull com.google.android.gms.common.api.p<R> pVar, @NonNull a<R, T> aVar) {
        InterfaceC2573j0 interfaceC2573j0 = f7499a;
        C15791l c15791l = new C15791l();
        pVar.c(new C2567g0(pVar, c15791l, aVar, interfaceC2573j0));
        return c15791l.a();
    }

    @NonNull
    @C0.a
    public static <R extends com.google.android.gms.common.api.u> AbstractC15790k<Void> c(@NonNull com.google.android.gms.common.api.p<R> pVar) {
        return b(pVar, new C2571i0());
    }
}
