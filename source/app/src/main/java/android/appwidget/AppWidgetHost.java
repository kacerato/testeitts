package android.appwidget;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/appwidget/AppWidgetHost.class
 */
public class AppWidgetHost {
    public AppWidgetHost(Context context, int hostId) {
        throw new RuntimeException("Stub!");
    }

    public void startListening() {
        throw new RuntimeException("Stub!");
    }

    public void stopListening() {
        throw new RuntimeException("Stub!");
    }

    public int allocateAppWidgetId() {
        throw new RuntimeException("Stub!");
    }

    public final void startAppWidgetConfigureActivityForResult(Activity activity, int appWidgetId, int intentFlags, int requestCode, Bundle options) {
        throw new RuntimeException("Stub!");
    }

    public int[] getAppWidgetIds() {
        throw new RuntimeException("Stub!");
    }

    public void deleteAppWidgetId(int appWidgetId) {
        throw new RuntimeException("Stub!");
    }

    public void deleteHost() {
        throw new RuntimeException("Stub!");
    }

    public static void deleteAllHosts() {
        throw new RuntimeException("Stub!");
    }

    public final AppWidgetHostView createView(Context context, int appWidgetId, AppWidgetProviderInfo appWidget) {
        throw new RuntimeException("Stub!");
    }

    protected AppWidgetHostView onCreateView(Context context, int appWidgetId, AppWidgetProviderInfo appWidget) {
        throw new RuntimeException("Stub!");
    }

    protected void onProviderChanged(int appWidgetId, AppWidgetProviderInfo appWidget) {
        throw new RuntimeException("Stub!");
    }

    protected void onProvidersChanged() {
        throw new RuntimeException("Stub!");
    }

    protected void clearViews() {
        throw new RuntimeException("Stub!");
    }
}
