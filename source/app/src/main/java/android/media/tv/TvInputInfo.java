package android.media.tv;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ServiceInfo;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/tv/TvInputInfo.class
 */
public final class TvInputInfo implements Parcelable {
    public static final Parcelable.Creator<TvInputInfo> CREATOR = null;
    public static final String EXTRA_INPUT_ID = "android.media.tv.extra.INPUT_ID";
    public static final int TYPE_COMPONENT = 1004;
    public static final int TYPE_COMPOSITE = 1001;
    public static final int TYPE_DISPLAY_PORT = 1008;
    public static final int TYPE_DVI = 1006;
    public static final int TYPE_HDMI = 1007;
    public static final int TYPE_OTHER = 1000;
    public static final int TYPE_SCART = 1003;
    public static final int TYPE_SVIDEO = 1002;
    public static final int TYPE_TUNER = 0;
    public static final int TYPE_VGA = 1005;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/tv/TvInputInfo$Builder.class
 */
    public static final class Builder {
        public Builder(Context context, ComponentName component) {
            throw new RuntimeException("Stub!");
        }

        public Builder setTunerCount(int tunerCount) {
            throw new RuntimeException("Stub!");
        }

        public Builder setCanRecord(boolean canRecord) {
            throw new RuntimeException("Stub!");
        }

        public Builder setExtras(Bundle extras) {
            throw new RuntimeException("Stub!");
        }

        public TvInputInfo build() {
            throw new RuntimeException("Stub!");
        }
    }

    TvInputInfo() {
        throw new RuntimeException("Stub!");
    }

    public String getId() {
        throw new RuntimeException("Stub!");
    }

    public String getParentId() {
        throw new RuntimeException("Stub!");
    }

    public ServiceInfo getServiceInfo() {
        throw new RuntimeException("Stub!");
    }

    public Intent createSetupIntent() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public Intent createSettingsIntent() {
        throw new RuntimeException("Stub!");
    }

    public int getType() {
        throw new RuntimeException("Stub!");
    }

    public int getTunerCount() {
        throw new RuntimeException("Stub!");
    }

    public boolean canRecord() {
        throw new RuntimeException("Stub!");
    }

    public Bundle getExtras() {
        throw new RuntimeException("Stub!");
    }

    public boolean isPassthroughInput() {
        throw new RuntimeException("Stub!");
    }

    public boolean isHidden(Context context) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence loadLabel(Context context) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence loadCustomLabel(Context context) {
        throw new RuntimeException("Stub!");
    }

    public Drawable loadIcon(Context context) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }
}
