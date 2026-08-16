package v1;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

public final class ExecutorC15776N implements Executor {
    @Override
    public final void execute(@NonNull Runnable runnable) {
        runnable.run();
    }
}
