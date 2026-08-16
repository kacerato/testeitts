package android.view;

import android.view.ViewGroup;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ViewManager.class
 */
public interface ViewManager {
    void addView(View view, ViewGroup.LayoutParams layoutParams);

    void updateViewLayout(View view, ViewGroup.LayoutParams layoutParams);

    void removeView(View view);
}
