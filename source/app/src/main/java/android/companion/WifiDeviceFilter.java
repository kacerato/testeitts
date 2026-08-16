package android.companion;

import android.net.wifi.ScanResult;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.regex.Pattern;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/companion/WifiDeviceFilter.class
 */
public final class WifiDeviceFilter implements DeviceFilter<ScanResult> {
    public static final Parcelable.Creator<WifiDeviceFilter> CREATOR = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/companion/WifiDeviceFilter$Builder.class
 */
    public static final class Builder {
        public Builder() {
            throw new RuntimeException("Stub!");
        }

        public Builder setNamePattern(Pattern regex) {
            throw new RuntimeException("Stub!");
        }

        public WifiDeviceFilter build() {
            throw new RuntimeException("Stub!");
        }
    }

    WifiDeviceFilter() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }
}
