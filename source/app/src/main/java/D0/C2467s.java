package D0;

import G0.C2558c;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import v1.AbstractC15790k;
import v1.C15791l;

@C0.a
public class C2467s {
    @C0.a
    public static <ResultT> void a(@NonNull Status status, @Nullable ResultT resultt, @NonNull C15791l<ResultT> c15791l) {
        if (status.x0()) {
            c15791l.c(resultt);
        } else {
            c15791l.b(C2558c.a(status));
        }
    }

    @C0.a
    public static void b(@NonNull Status status, @NonNull C15791l<Void> c15791l) {
        a(status, null, c15791l);
    }

    @NonNull
    @C0.a
    @Deprecated
    public static AbstractC15790k<Void> c(@NonNull AbstractC15790k<Boolean> abstractC15790k) {
        return abstractC15790k.n(new F0());
    }

    @ResultIgnorabilityUnspecified
    @C0.a
    public static <ResultT> boolean d(@NonNull Status status, @Nullable ResultT resultt, @NonNull C15791l<ResultT> c15791l) {
        return status.x0() ? c15791l.e(resultt) : c15791l.d(C2558c.a(status));
    }
}
