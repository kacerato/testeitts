package android.content;

import android.content.res.Configuration;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/ComponentCallbacks.class
 */
public interface ComponentCallbacks {
    void onConfigurationChanged(Configuration configuration);

    void onLowMemory();
}
