package P2;

import androidx.annotation.NonNull;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.jvm.internal.M;
import nf.P0;

public final class a {
    public static final void a(@NonNull FirebaseAnalytics analytics, @NonNull Mf.a<P0> block) {
        M.p(analytics, "analytics");
        M.p(block, "block");
        synchronized (O2.a.c()) {
            FirebaseAnalytics a10 = O2.a.a();
            O2.a.e(analytics);
            try {
                block.invoke();
                O2.a.e(a10);
                P0 p02 = P0.f98194a;
            } catch (Throwable th2) {
                O2.a.e(a10);
                throw th2;
            }
        }
    }
}
