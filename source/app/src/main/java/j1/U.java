package j1;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import androidx.annotation.Nullable;

@Deprecated
public final class U implements Z0.b {

    @Nullable
    public final PendingIntent f92521a;

    public U(@Nullable PendingIntent pendingIntent) {
        this.f92521a = pendingIntent;
    }

    @Override
    public final void a(Activity activity, int i10) throws IntentSender.SendIntentException {
        PendingIntent pendingIntent = this.f92521a;
        if (pendingIntent == null) {
            throw new IllegalStateException("No PendingIntent available");
        }
        activity.startIntentSenderForResult(pendingIntent.getIntentSender(), i10, null, 0, 0, 0);
    }

    @Override
    public final boolean b() {
        return this.f92521a != null;
    }
}
