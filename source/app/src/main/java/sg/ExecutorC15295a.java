package sg;

import java.util.concurrent.Executor;
import org.jetbrains.annotations.NotNull;

public final class ExecutorC15295a implements Executor {

    @NotNull
    public static final ExecutorC15295a f109458b = new ExecutorC15295a();

    @Override
    public void execute(@NotNull Runnable runnable) {
        runnable.run();
    }
}
