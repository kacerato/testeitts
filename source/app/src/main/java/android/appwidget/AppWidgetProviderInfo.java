package android.appwidget;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.UserHandle;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/appwidget/AppWidgetProviderInfo.class
 */
public class AppWidgetProviderInfo implements Parcelable {
    public static final Parcelable.Creator<AppWidgetProviderInfo> CREATOR = null;
    public static final int RESIZE_BOTH = 3;
    public static final int RESIZE_HORIZONTAL = 1;
    public static final int RESIZE_NONE = 0;
    public static final int RESIZE_VERTICAL = 2;
    public static final int WIDGET_CATEGORY_HOME_SCREEN = 1;
    public static final int WIDGET_CATEGORY_KEYGUARD = 2;
    public static final int WIDGET_CATEGORY_SEARCHBOX = 4;
    public int autoAdvanceViewId;
    public ComponentName configure;
    public int icon;
    public int initialKeyguardLayout;
    public int initialLayout;

    @Deprecated
    public String label;
    public int minHeight;
    public int minResizeHeight;
    public int minResizeWidth;
    public int minWidth;
    public int previewImage;
    public ComponentName provider;
    public int resizeMode;
    public int updatePeriodMillis;
    public int widgetCategory;

    public AppWidgetProviderInfo() {
        throw new RuntimeException("Stub!");
    }

    public AppWidgetProviderInfo(Parcel in2) {
        throw new RuntimeException("Stub!");
    }

    public final String loadLabel(PackageManager packageManager) {
        throw new RuntimeException("Stub!");
    }

    public final Drawable loadIcon(Context context, int density) {
        throw new RuntimeException("Stub!");
    }

    public final Drawable loadPreviewImage(Context context, int density) {
        throw new RuntimeException("Stub!");
    }

    public final UserHandle getProfile() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel out, int flags) {
        throw new RuntimeException("Stub!");
    }

    public AppWidgetProviderInfo m140clone() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
