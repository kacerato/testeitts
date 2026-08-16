package android.content.pm;

import android.content.ComponentName;
import android.graphics.drawable.Drawable;
import android.os.UserHandle;
import androidx.annotation.RecentlyNonNull;
import java.util.List;

public class CrossProfileApps {
    CrossProfileApps() {
        throw new RuntimeException("Stub!");
    }

    public void startMainActivity(@RecentlyNonNull ComponentName component, @RecentlyNonNull UserHandle targetUser) {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public List<UserHandle> getTargetUserProfiles() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public CharSequence getProfileSwitchingLabel(@RecentlyNonNull UserHandle userHandle) {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public Drawable getProfileSwitchingIconDrawable(@RecentlyNonNull UserHandle userHandle) {
        throw new RuntimeException("Stub!");
    }
}
