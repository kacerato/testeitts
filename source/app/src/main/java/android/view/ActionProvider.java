package android.view;

import android.content.Context;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ActionProvider.class
 */
public abstract class ActionProvider {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ActionProvider$VisibilityListener.class
 */
    public interface VisibilityListener {
        void onActionProviderVisibilityChanged(boolean z10);
    }

    @Deprecated
    public abstract View onCreateActionView();

    public ActionProvider(Context context) {
        throw new RuntimeException("Stub!");
    }

    public View onCreateActionView(MenuItem forItem) {
        throw new RuntimeException("Stub!");
    }

    public boolean overridesItemVisibility() {
        throw new RuntimeException("Stub!");
    }

    public boolean isVisible() {
        throw new RuntimeException("Stub!");
    }

    public void refreshVisibility() {
        throw new RuntimeException("Stub!");
    }

    public boolean onPerformDefaultAction() {
        throw new RuntimeException("Stub!");
    }

    public boolean hasSubMenu() {
        throw new RuntimeException("Stub!");
    }

    public void onPrepareSubMenu(SubMenu subMenu) {
        throw new RuntimeException("Stub!");
    }

    public void setVisibilityListener(VisibilityListener listener) {
        throw new RuntimeException("Stub!");
    }
}
