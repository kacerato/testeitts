package G0;

import android.app.Activity;
import android.content.Intent;

public final class U extends X {

    public final Intent f7326b;

    public final Activity f7327c;

    public final int f7328d;

    public U(Intent intent, Activity activity, int i10) {
        this.f7326b = intent;
        this.f7327c = activity;
        this.f7328d = i10;
    }

    @Override
    public final void a() {
        Intent intent = this.f7326b;
        if (intent != null) {
            this.f7327c.startActivityForResult(intent, this.f7328d);
        }
    }
}
