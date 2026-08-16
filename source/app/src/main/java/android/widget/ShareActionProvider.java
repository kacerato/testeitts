package android.widget;

import android.content.Context;
import android.content.Intent;
import android.view.ActionProvider;
import android.view.SubMenu;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/ShareActionProvider.class
 */
public class ShareActionProvider extends ActionProvider {
    public static final String DEFAULT_SHARE_HISTORY_FILE_NAME = "share_history.xml";

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/ShareActionProvider$OnShareTargetSelectedListener.class
 */
    public interface OnShareTargetSelectedListener {
        boolean onShareTargetSelected(ShareActionProvider shareActionProvider, Intent intent);
    }

    public ShareActionProvider(Context context) {
        super((Context) null);
        throw new RuntimeException("Stub!");
    }

    public void setOnShareTargetSelectedListener(OnShareTargetSelectedListener listener) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public View onCreateActionView() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean hasSubMenu() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onPrepareSubMenu(SubMenu subMenu) {
        throw new RuntimeException("Stub!");
    }

    public void setShareHistoryFileName(String shareHistoryFile) {
        throw new RuntimeException("Stub!");
    }

    public void setShareIntent(Intent shareIntent) {
        throw new RuntimeException("Stub!");
    }
}
