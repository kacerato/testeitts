package android.webkit;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import java.io.OutputStream;
import java.util.concurrent.Executor;

public abstract class TracingController {
    public abstract void start(@RecentlyNonNull TracingConfig tracingConfig);

    public abstract boolean stop(@RecentlyNullable OutputStream outputStream, @RecentlyNonNull Executor executor);

    public abstract boolean isTracing();

    public TracingController() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public static TracingController getInstance() {
        throw new RuntimeException("Stub!");
    }
}
