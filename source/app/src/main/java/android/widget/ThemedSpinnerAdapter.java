package android.widget;

import android.content.res.Resources;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/ThemedSpinnerAdapter.class
 */
public interface ThemedSpinnerAdapter extends SpinnerAdapter {
    void setDropDownViewTheme(Resources.Theme theme);

    Resources.Theme getDropDownViewTheme();
}
