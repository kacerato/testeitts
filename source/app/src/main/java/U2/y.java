package U2;

import com.google.firebase.concurrent.ExecutorsRegistrar;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;

public class y {

    public enum a implements Executor {
        INSTANCE;

        @Override
        public void execute(Runnable runnable) {
            runnable.run();
        }
    }

    public static Executor a() {
        return a.INSTANCE;
    }

    public static Executor b(Executor executor, int i10) {
        return new A(executor, i10);
    }

    public static ExecutorService c(ExecutorService executorService, int i10) {
        return new D(executorService, i10);
    }

    public static ScheduledExecutorService d(ExecutorService executorService, int i10) {
        return new o(c(executorService, i10), ExecutorsRegistrar.f67739d.get());
    }

    public static E e(Executor executor) {
        return new F(false, executor);
    }

    public static G f(ExecutorService executorService) {
        return new J(false, executorService);
    }

    public static K g(ScheduledExecutorService scheduledExecutorService) {
        return new L(f(scheduledExecutorService), ExecutorsRegistrar.f67739d.get());
    }

    public static Executor h(Executor executor) {
        return new M(executor);
    }
}
