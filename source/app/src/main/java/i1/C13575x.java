package i1;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.consent_sdk.zzj;

public final class C13575x implements Application.ActivityLifecycleCallbacks {

    public final Activity f91359b;

    public final C13577z f91360c;

    public C13575x(C13577z c13577z, Activity activity) {
        this.f91360c = c13577z;
        this.f91359b = activity;
    }

    @Override
    public final void onActivityCreated(Activity activity, @Nullable Bundle bundle) {
    }

    @Override
    public final void onActivityDestroyed(Activity activity) {
        if (activity != this.f91359b) {
            return;
        }
        this.f91360c.e(new zzj(3, "Activity is destroyed."));
    }

    @Override
    public final void onActivityPaused(Activity activity) {
    }

    @Override
    public final void onActivityResumed(Activity activity) {
    }

    @Override
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override
    public final void onActivityStarted(Activity activity) {
    }

    @Override
    public final void onActivityStopped(Activity activity) {
    }
}
