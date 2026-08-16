package android.view;

import android.graphics.Outline;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ViewOutlineProvider.class
 */
public abstract class ViewOutlineProvider {
    public static final ViewOutlineProvider BACKGROUND = null;
    public static final ViewOutlineProvider BOUNDS = null;
    public static final ViewOutlineProvider PADDED_BOUNDS = null;

    public abstract void getOutline(View view, Outline outline);

    public ViewOutlineProvider() {
        throw new RuntimeException("Stub!");
    }
}
