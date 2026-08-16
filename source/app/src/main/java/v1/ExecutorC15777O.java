package v1;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
import l1.HandlerC14042a;

public final class ExecutorC15777O implements Executor {

    public final Handler f121129b = new HandlerC14042a(Looper.getMainLooper());

    @Override
    public final void execute(@NonNull Runnable runnable) {
        this.f121129b.post(runnable);
    }
}
