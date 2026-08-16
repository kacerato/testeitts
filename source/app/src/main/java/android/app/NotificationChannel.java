package android.app;

import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/NotificationChannel.class
 */
public final class NotificationChannel implements Parcelable {
    public static final Parcelable.Creator<NotificationChannel> CREATOR = null;
    public static final String DEFAULT_CHANNEL_ID = "miscellaneous";

    public NotificationChannel(String id2, CharSequence name, int importance) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }

    public void setName(CharSequence name) {
        throw new RuntimeException("Stub!");
    }

    public void setDescription(String description) {
        throw new RuntimeException("Stub!");
    }

    public void setGroup(String groupId) {
        throw new RuntimeException("Stub!");
    }

    public void setShowBadge(boolean showBadge) {
        throw new RuntimeException("Stub!");
    }

    public void setSound(Uri sound, AudioAttributes audioAttributes) {
        throw new RuntimeException("Stub!");
    }

    public void enableLights(boolean lights) {
        throw new RuntimeException("Stub!");
    }

    public void setLightColor(int argb) {
        throw new RuntimeException("Stub!");
    }

    public void enableVibration(boolean vibration) {
        throw new RuntimeException("Stub!");
    }

    public void setVibrationPattern(long[] vibrationPattern) {
        throw new RuntimeException("Stub!");
    }

    public void setImportance(int importance) {
        throw new RuntimeException("Stub!");
    }

    public void setBypassDnd(boolean bypassDnd) {
        throw new RuntimeException("Stub!");
    }

    public void setLockscreenVisibility(int lockscreenVisibility) {
        throw new RuntimeException("Stub!");
    }

    public String getId() {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getName() {
        throw new RuntimeException("Stub!");
    }

    public String getDescription() {
        throw new RuntimeException("Stub!");
    }

    public int getImportance() {
        throw new RuntimeException("Stub!");
    }

    public boolean canBypassDnd() {
        throw new RuntimeException("Stub!");
    }

    public Uri getSound() {
        throw new RuntimeException("Stub!");
    }

    public AudioAttributes getAudioAttributes() {
        throw new RuntimeException("Stub!");
    }

    public boolean shouldShowLights() {
        throw new RuntimeException("Stub!");
    }

    public int getLightColor() {
        throw new RuntimeException("Stub!");
    }

    public boolean shouldVibrate() {
        throw new RuntimeException("Stub!");
    }

    public long[] getVibrationPattern() {
        throw new RuntimeException("Stub!");
    }

    public int getLockscreenVisibility() {
        throw new RuntimeException("Stub!");
    }

    public boolean canShowBadge() {
        throw new RuntimeException("Stub!");
    }

    public String getGroup() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
