package N7;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;

public class b implements e {
    @Override
    public Activity a() {
        throw new RuntimeException("Not supported before editor opens!");
    }

    @Override
    public boolean d() {
        try {
            return Looper.getMainLooper().getThread() == Thread.currentThread();
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    @Override
    public void e(Runnable runnable) {
        if (d()) {
            runnable.run();
        } else {
            a().runOnUiThread(runnable);
        }
    }

    @Override
    public Context getContext() {
        return a();
    }
}
