package U0;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import h1.v;
import java.util.concurrent.Executor;

@C0.a
public class a implements Executor {

    public final Handler f25656b;

    @C0.a
    public a(@NonNull Looper looper) {
        this.f25656b = new v(looper);
    }

    @Override
    public final void execute(@NonNull Runnable runnable) {
        this.f25656b.post(runnable);
    }
}
