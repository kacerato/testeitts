package g1;

import android.os.Handler;
import android.os.Looper;

public class u extends Handler {

    public final Looper f88029a;

    public u() {
        this.f88029a = Looper.getMainLooper();
    }

    public u(Looper looper) {
        super(looper);
        this.f88029a = Looper.getMainLooper();
    }

    public u(Looper looper, Handler.Callback callback) {
        super(looper, callback);
        this.f88029a = Looper.getMainLooper();
    }
}
