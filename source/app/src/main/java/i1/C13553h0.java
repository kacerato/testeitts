package i1;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

public final class C13553h0 {

    public static final Handler f91303a = new Handler(Looper.getMainLooper());

    public static final Executor f91304b = new ExecutorC13551g0("Google consent worker");

    public static void a() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("Method must be call on main thread.");
        }
    }
}
