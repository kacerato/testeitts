package B0;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.DialogInterface;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.IntentSenderRequest;

public final class DialogInterfaceOnClickListenerC2338x implements DialogInterface.OnClickListener {

    public final Activity f1307b;

    public final int f1308c;

    public final ActivityResultLauncher f1309d;

    public final C2323h f1310e;

    public DialogInterfaceOnClickListenerC2338x(C2323h c2323h, Activity activity, int i10, ActivityResultLauncher activityResultLauncher) {
        this.f1310e = c2323h;
        this.f1307b = activity;
        this.f1308c = i10;
        this.f1309d = activityResultLauncher;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int i10) {
        dialogInterface.dismiss();
        PendingIntent f10 = this.f1310e.f(this.f1307b, this.f1308c, 0);
        if (f10 == null) {
            return;
        }
        this.f1309d.launch(new IntentSenderRequest.Builder(f10.getIntentSender()).build());
    }
}
