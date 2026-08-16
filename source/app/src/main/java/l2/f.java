package L2;

import androidx.annotation.Nullable;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Objects;
import java.util.concurrent.Callable;

public final class f implements Callable {

    public final FirebaseAnalytics f11552b;

    public f(FirebaseAnalytics firebaseAnalytics) {
        Objects.requireNonNull(firebaseAnalytics);
        this.f11552b = firebaseAnalytics;
    }

    @Override
    @Nullable
    public final Object call() throws Exception {
        return this.f11552b.k().h();
    }
}
