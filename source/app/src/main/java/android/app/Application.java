package android.app;

import android.content.ComponentCallbacks;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Configuration;
import android.os.Bundle;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/Application.class
 */
public class Application extends ContextWrapper implements ComponentCallbacks2 {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/Application$ActivityLifecycleCallbacks.class
 */
    public interface ActivityLifecycleCallbacks {
        void onActivityCreated(Activity activity, Bundle bundle);

        void onActivityStarted(Activity activity);

        void onActivityResumed(Activity activity);

        void onActivityPaused(Activity activity);

        void onActivityStopped(Activity activity);

        void onActivitySaveInstanceState(Activity activity, Bundle bundle);

        void onActivityDestroyed(Activity activity);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/Application$OnProvideAssistDataListener.class
 */
    public interface OnProvideAssistDataListener {
        void onProvideAssistData(Activity activity, Bundle bundle);
    }

    public Application() {
        super((Context) null);
        throw new RuntimeException("Stub!");
    }

    public void onCreate() {
        throw new RuntimeException("Stub!");
    }

    public void onTerminate() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onLowMemory() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onTrimMemory(int level) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void registerComponentCallbacks(ComponentCallbacks callback) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void unregisterComponentCallbacks(ComponentCallbacks callback) {
        throw new RuntimeException("Stub!");
    }

    public void registerActivityLifecycleCallbacks(ActivityLifecycleCallbacks callback) {
        throw new RuntimeException("Stub!");
    }

    public void unregisterActivityLifecycleCallbacks(ActivityLifecycleCallbacks callback) {
        throw new RuntimeException("Stub!");
    }

    public void registerOnProvideAssistDataListener(OnProvideAssistDataListener callback) {
        throw new RuntimeException("Stub!");
    }

    public void unregisterOnProvideAssistDataListener(OnProvideAssistDataListener callback) {
        throw new RuntimeException("Stub!");
    }
}
