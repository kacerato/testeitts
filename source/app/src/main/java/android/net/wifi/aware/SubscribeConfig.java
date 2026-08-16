package android.net.wifi.aware;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/wifi/aware/SubscribeConfig.class
 */
public final class SubscribeConfig implements Parcelable {
    public static final Parcelable.Creator<SubscribeConfig> CREATOR = null;
    public static final int SUBSCRIBE_TYPE_ACTIVE = 1;
    public static final int SUBSCRIBE_TYPE_PASSIVE = 0;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/wifi/aware/SubscribeConfig$Builder.class
 */
    public static final class Builder {
        public Builder() {
            throw new RuntimeException("Stub!");
        }

        public Builder setServiceName(String serviceName) {
            throw new RuntimeException("Stub!");
        }

        public Builder setServiceSpecificInfo(byte[] serviceSpecificInfo) {
            throw new RuntimeException("Stub!");
        }

        public Builder setMatchFilter(List<byte[]> matchFilter) {
            throw new RuntimeException("Stub!");
        }

        public Builder setSubscribeType(int subscribeType) {
            throw new RuntimeException("Stub!");
        }

        public Builder setTtlSec(int ttlSec) {
            throw new RuntimeException("Stub!");
        }

        public Builder setTerminateNotificationEnabled(boolean enable) {
            throw new RuntimeException("Stub!");
        }

        public SubscribeConfig build() {
            throw new RuntimeException("Stub!");
        }
    }

    SubscribeConfig() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }
}
