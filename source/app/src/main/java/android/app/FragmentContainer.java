package android.app;

import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/FragmentContainer.class
 */
public abstract class FragmentContainer {
    public abstract <T extends View> T onFindViewById(int i10);

    public abstract boolean onHasView();

    public FragmentContainer() {
        throw new RuntimeException("Stub!");
    }
}
