package androidx.core.app;

import android.app.Activity;
import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Bundle;
import android.util.Pair;
import android.view.View;

public class ActivityOptionsCompat {
    public static final String EXTRA_USAGE_TIME_REPORT = "android.activity.usage_time";
    public static final String EXTRA_USAGE_TIME_REPORT_PACKAGES = "android.usage_time_packages";

    public static class ActivityOptionsCompatImpl extends ActivityOptionsCompat {
        private final ActivityOptions mActivityOptions;

        public ActivityOptionsCompatImpl(ActivityOptions activityOptions) {
            this.mActivityOptions = activityOptions;
        }

        @Override
        public Rect getLaunchBounds() {
            return Api24Impl.getLaunchBounds(this.mActivityOptions);
        }

        @Override
        public void requestUsageTimeReport(PendingIntent pendingIntent) {
            Api23Impl.requestUsageTimeReport(this.mActivityOptions, pendingIntent);
        }

        @Override
        public ActivityOptionsCompat setLaunchBounds(Rect rect) {
            return new ActivityOptionsCompatImpl(Api24Impl.setLaunchBounds(this.mActivityOptions, rect));
        }

        @Override
        public Bundle toBundle() {
            return this.mActivityOptions.toBundle();
        }

        @Override
        public void update(ActivityOptionsCompat activityOptionsCompat) {
            if (activityOptionsCompat instanceof ActivityOptionsCompatImpl) {
                this.mActivityOptions.update(((ActivityOptionsCompatImpl) activityOptionsCompat).mActivityOptions);
            }
        }
    }

    public static class Api16Impl {
        private Api16Impl() {
        }

        public static ActivityOptions makeCustomAnimation(Context context, int i10, int i11) {
            return ActivityOptions.makeCustomAnimation(context, i10, i11);
        }

        public static ActivityOptions makeScaleUpAnimation(View view, int i10, int i11, int i12, int i13) {
            return ActivityOptions.makeScaleUpAnimation(view, i10, i11, i12, i13);
        }

        public static ActivityOptions makeThumbnailScaleUpAnimation(View view, Bitmap bitmap, int i10, int i11) {
            return ActivityOptions.makeThumbnailScaleUpAnimation(view, bitmap, i10, i11);
        }
    }

    public static class Api21Impl {
        private Api21Impl() {
        }

        public static ActivityOptions makeSceneTransitionAnimation(Activity activity, View view, String str) {
            return ActivityOptions.makeSceneTransitionAnimation(activity, view, str);
        }

        public static ActivityOptions makeTaskLaunchBehind() {
            return ActivityOptions.makeTaskLaunchBehind();
        }

        @SafeVarargs
        public static ActivityOptions makeSceneTransitionAnimation(Activity activity, Pair<View, String>... pairArr) {
            return ActivityOptions.makeSceneTransitionAnimation(activity, pairArr);
        }
    }

    public static class Api23Impl {
        private Api23Impl() {
        }

        public static ActivityOptions makeBasic() {
            return ActivityOptions.makeBasic();
        }

        public static ActivityOptions makeClipRevealAnimation(View view, int i10, int i11, int i12, int i13) {
            return ActivityOptions.makeClipRevealAnimation(view, i10, i11, i12, i13);
        }

        public static void requestUsageTimeReport(ActivityOptions activityOptions, PendingIntent pendingIntent) {
            activityOptions.requestUsageTimeReport(pendingIntent);
        }
    }

    public static class Api24Impl {
        private Api24Impl() {
        }

        public static Rect getLaunchBounds(ActivityOptions activityOptions) {
            return activityOptions.getLaunchBounds();
        }

        public static ActivityOptions setLaunchBounds(ActivityOptions activityOptions, Rect rect) {
            return activityOptions.setLaunchBounds(rect);
        }
    }

    public static ActivityOptionsCompat makeBasic() {
        return new ActivityOptionsCompatImpl(Api23Impl.makeBasic());
    }

    public static ActivityOptionsCompat makeClipRevealAnimation(View view, int i10, int i11, int i12, int i13) {
        return new ActivityOptionsCompatImpl(Api23Impl.makeClipRevealAnimation(view, i10, i11, i12, i13));
    }

    public static ActivityOptionsCompat makeCustomAnimation(Context context, int i10, int i11) {
        return new ActivityOptionsCompatImpl(Api16Impl.makeCustomAnimation(context, i10, i11));
    }

    public static ActivityOptionsCompat makeScaleUpAnimation(View view, int i10, int i11, int i12, int i13) {
        return new ActivityOptionsCompatImpl(Api16Impl.makeScaleUpAnimation(view, i10, i11, i12, i13));
    }

    public static ActivityOptionsCompat makeSceneTransitionAnimation(Activity activity, View view, String str) {
        return new ActivityOptionsCompatImpl(Api21Impl.makeSceneTransitionAnimation(activity, view, str));
    }

    public static ActivityOptionsCompat makeTaskLaunchBehind() {
        return new ActivityOptionsCompatImpl(Api21Impl.makeTaskLaunchBehind());
    }

    public static ActivityOptionsCompat makeThumbnailScaleUpAnimation(View view, Bitmap bitmap, int i10, int i11) {
        return new ActivityOptionsCompatImpl(Api16Impl.makeThumbnailScaleUpAnimation(view, bitmap, i10, i11));
    }

    public Rect getLaunchBounds() {
        return null;
    }

    public void requestUsageTimeReport(PendingIntent pendingIntent) {
    }

    public ActivityOptionsCompat setLaunchBounds(Rect rect) {
        return this;
    }

    public Bundle toBundle() {
        return null;
    }

    public void update(ActivityOptionsCompat activityOptionsCompat) {
    }

    public static ActivityOptionsCompat makeSceneTransitionAnimation(Activity activity, androidx.core.util.Pair<View, String>... pairArr) {
        Pair[] pairArr2;
        if (pairArr != null) {
            pairArr2 = new Pair[pairArr.length];
            for (int i10 = 0; i10 < pairArr.length; i10++) {
                androidx.core.util.Pair<View, String> pair = pairArr[i10];
                pairArr2[i10] = Pair.create(pair.first, pair.second);
            }
        } else {
            pairArr2 = null;
        }
        return new ActivityOptionsCompatImpl(Api21Impl.makeSceneTransitionAnimation(activity, pairArr2));
    }
}
