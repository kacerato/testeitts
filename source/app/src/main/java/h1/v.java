package h1;

import android.os.Handler;
import android.os.Looper;

public class v extends Handler {

    public final Looper f90212a;

    public v() {
        this.f90212a = Looper.getMainLooper();
    }

    public v(Looper looper) {
        super(looper);
        this.f90212a = Looper.getMainLooper();
    }

    public v(Looper looper, Handler.Callback callback) {
        super(looper, callback);
        this.f90212a = Looper.getMainLooper();
    }
}
