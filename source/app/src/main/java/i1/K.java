package i1;

import android.app.Activity;
import android.app.Application;
import android.content.ContextWrapper;
import android.content.Intent;

public final class K extends ContextWrapper {

    public Activity f91202a;

    public K(Application application) {
        super(application);
    }

    public final void a(Activity activity) {
        this.f91202a = activity;
    }

    @Override
    public final Object getSystemService(String str) {
        Activity activity = this.f91202a;
        return activity != null ? activity.getSystemService(str) : super.getSystemService(str);
    }

    @Override
    public final void startActivity(Intent intent) {
        Activity activity = this.f91202a;
        if (activity != null) {
            activity.startActivity(intent);
        } else {
            intent.setFlags(268435456);
            super.startActivity(intent);
        }
    }
}
