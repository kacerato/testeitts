package B0;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

@SuppressLint({"HandlerLeak"})
public final class HandlerC2339y extends g1.u {

    public final Context f1311b;

    public final C2323h f1312c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC2339y(C2323h c2323h, Context context) {
        super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
        this.f1312c = c2323h;
        this.f1311b = context.getApplicationContext();
    }

    @Override
    public final void handleMessage(Message message) {
        int i10 = message.what;
        if (i10 != 1) {
            Log.w("GoogleApiAvailability", "Don't know how to handle this message: " + i10);
            return;
        }
        C2323h c2323h = this.f1312c;
        int j10 = c2323h.j(this.f1311b);
        if (c2323h.o(j10)) {
            this.f1312c.D(this.f1311b, j10);
        }
    }
}
