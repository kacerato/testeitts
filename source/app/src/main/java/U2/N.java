package U2;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

public enum N implements Executor {
    INSTANCE;


    @SuppressLint({"ThreadPoolCreation"})
    private static final Handler HANDLER = new Handler(Looper.getMainLooper());

    @Override
    public void execute(Runnable runnable) {
        HANDLER.post(runnable);
    }
}
