package android.view.accessibility;

import android.os.Bundle;
import android.os.Message;
import android.view.View;
import androidx.annotation.RecentlyNullable;

public abstract class AccessibilityRequestPreparer {
    public static final int REQUEST_TYPE_EXTRA_DATA = 1;

    public abstract void onPrepareExtraData(int i10, String str, Bundle bundle, Message message);

    public AccessibilityRequestPreparer(View view, int requestTypes) {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNullable
    public View getView() {
        throw new RuntimeException("Stub!");
    }
}
