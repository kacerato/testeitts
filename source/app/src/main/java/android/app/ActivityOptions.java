package android.app;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Bundle;
import android.util.Pair;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/ActivityOptions.class
 */
public class ActivityOptions {
    public static final String EXTRA_USAGE_TIME_REPORT = "android.activity.usage_time";
    public static final String EXTRA_USAGE_TIME_REPORT_PACKAGES = "android.usage_time_packages";

    ActivityOptions() {
        throw new RuntimeException("Stub!");
    }

    public static ActivityOptions makeCustomAnimation(Context context, int enterResId, int exitResId) {
        throw new RuntimeException("Stub!");
    }

    public static ActivityOptions makeScaleUpAnimation(View source, int startX, int startY, int width, int height) {
        throw new RuntimeException("Stub!");
    }

    public static ActivityOptions makeClipRevealAnimation(View source, int startX, int startY, int width, int height) {
        throw new RuntimeException("Stub!");
    }

    public static ActivityOptions makeThumbnailScaleUpAnimation(View source, Bitmap thumbnail, int startX, int startY) {
        throw new RuntimeException("Stub!");
    }

    public static ActivityOptions makeSceneTransitionAnimation(Activity activity, View sharedElement, String sharedElementName) {
        throw new RuntimeException("Stub!");
    }

    @SafeVarargs
    public static ActivityOptions makeSceneTransitionAnimation(Activity activity, Pair<View, String>... sharedElements) {
        throw new RuntimeException("Stub!");
    }

    public static ActivityOptions makeTaskLaunchBehind() {
        throw new RuntimeException("Stub!");
    }

    public static ActivityOptions makeBasic() {
        throw new RuntimeException("Stub!");
    }

    public ActivityOptions setLaunchBounds(Rect screenSpacePixelRect) {
        throw new RuntimeException("Stub!");
    }

    public Rect getLaunchBounds() {
        throw new RuntimeException("Stub!");
    }

    public int getLaunchDisplayId() {
        throw new RuntimeException("Stub!");
    }

    public ActivityOptions setLaunchDisplayId(int launchDisplayId) {
        throw new RuntimeException("Stub!");
    }

    public void update(ActivityOptions otherOptions) {
        throw new RuntimeException("Stub!");
    }

    public Bundle toBundle() {
        throw new RuntimeException("Stub!");
    }

    public void requestUsageTimeReport(PendingIntent receiver) {
        throw new RuntimeException("Stub!");
    }

    public ActivityOptions setAppVerificationBundle(Bundle bundle) {
        throw new RuntimeException("Stub!");
    }
}
