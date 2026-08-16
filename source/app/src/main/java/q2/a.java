package Q2;

import androidx.annotation.NonNull;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.jvm.internal.M;
import nf.P0;

public final class a {
    public static final void a(@NonNull FirebaseAnalytics analytics, @NonNull Mf.a<P0> block) {
        M.p(analytics, "analytics");
        M.p(block, "block");
        synchronized (L2.a.c()) {
            FirebaseAnalytics a10 = L2.a.a();
            L2.a.e(analytics);
            try {
                block.invoke();
                L2.a.e(a10);
                P0 p02 = P0.f98194a;
            } catch (Throwable th2) {
                L2.a.e(a10);
                throw th2;
            }
        }
    }
}
