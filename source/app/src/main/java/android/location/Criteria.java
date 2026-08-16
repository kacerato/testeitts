package android.location;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/location/Criteria.class
 */
public class Criteria implements Parcelable {
    public static final int ACCURACY_COARSE = 2;
    public static final int ACCURACY_FINE = 1;
    public static final int ACCURACY_HIGH = 3;
    public static final int ACCURACY_LOW = 1;
    public static final int ACCURACY_MEDIUM = 2;
    public static final Parcelable.Creator<Criteria> CREATOR = null;
    public static final int NO_REQUIREMENT = 0;
    public static final int POWER_HIGH = 3;
    public static final int POWER_LOW = 1;
    public static final int POWER_MEDIUM = 2;

    public Criteria() {
        throw new RuntimeException("Stub!");
    }

    public Criteria(Criteria criteria) {
        throw new RuntimeException("Stub!");
    }

    public void setHorizontalAccuracy(int accuracy) {
        throw new RuntimeException("Stub!");
    }

    public int getHorizontalAccuracy() {
        throw new RuntimeException("Stub!");
    }

    public void setVerticalAccuracy(int accuracy) {
        throw new RuntimeException("Stub!");
    }

    public int getVerticalAccuracy() {
        throw new RuntimeException("Stub!");
    }

    public void setSpeedAccuracy(int accuracy) {
        throw new RuntimeException("Stub!");
    }

    public int getSpeedAccuracy() {
        throw new RuntimeException("Stub!");
    }

    public void setBearingAccuracy(int accuracy) {
        throw new RuntimeException("Stub!");
    }

    public int getBearingAccuracy() {
        throw new RuntimeException("Stub!");
    }

    public void setAccuracy(int accuracy) {
        throw new RuntimeException("Stub!");
    }

    public int getAccuracy() {
        throw new RuntimeException("Stub!");
    }

    public void setPowerRequirement(int level) {
        throw new RuntimeException("Stub!");
    }

    public int getPowerRequirement() {
        throw new RuntimeException("Stub!");
    }

    public void setCostAllowed(boolean costAllowed) {
        throw new RuntimeException("Stub!");
    }

    public boolean isCostAllowed() {
        throw new RuntimeException("Stub!");
    }

    public void setAltitudeRequired(boolean altitudeRequired) {
        throw new RuntimeException("Stub!");
    }

    public boolean isAltitudeRequired() {
        throw new RuntimeException("Stub!");
    }

    public void setSpeedRequired(boolean speedRequired) {
        throw new RuntimeException("Stub!");
    }

    public boolean isSpeedRequired() {
        throw new RuntimeException("Stub!");
    }

    public void setBearingRequired(boolean bearingRequired) {
        throw new RuntimeException("Stub!");
    }

    public boolean isBearingRequired() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
