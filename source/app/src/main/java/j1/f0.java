package j1;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import b1.InterfaceC3829b;

public final class f0 implements InterfaceC3829b {

    public final PendingIntent f92524a;

    public f0(PendingIntent pendingIntent) {
        this.f92524a = pendingIntent;
    }

    @Override
    public final void a(Activity activity, int i10) throws IntentSender.SendIntentException {
        PendingIntent pendingIntent = this.f92524a;
        if (pendingIntent == null) {
            throw new IllegalStateException("No PendingIntent available");
        }
        activity.startIntentSenderForResult(pendingIntent.getIntentSender(), i10, null, 0, 0, 0);
    }

    @Override
    public final boolean b() {
        return this.f92524a != null;
    }
}
