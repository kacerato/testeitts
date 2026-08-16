package L2;

import androidx.annotation.Nullable;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Objects;
import java.util.concurrent.Callable;

public final class e implements Callable {

    public final FirebaseAnalytics f11551b;

    public e(FirebaseAnalytics firebaseAnalytics) {
        Objects.requireNonNull(firebaseAnalytics);
        this.f11551b = firebaseAnalytics;
    }

    @Override
    @Nullable
    public final Object call() throws Exception {
        return this.f11551b.k().g();
    }
}
