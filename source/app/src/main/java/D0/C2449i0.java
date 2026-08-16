package D0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.annotation.Nullable;

public final class C2449i0 extends BroadcastReceiver {

    @Nullable
    public Context f4664a;

    public final AbstractC2447h0 f4665b;

    public C2449i0(AbstractC2447h0 abstractC2447h0) {
        this.f4665b = abstractC2447h0;
    }

    public final void a(Context context) {
        this.f4664a = context;
    }

    public final synchronized void b() {
        try {
            Context context = this.f4664a;
            if (context != null) {
                context.unregisterReceiver(this);
            }
            this.f4664a = null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            this.f4665b.a();
            b();
        }
    }
}
