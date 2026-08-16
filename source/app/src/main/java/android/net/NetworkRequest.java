package android.net;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/NetworkRequest.class
 */
public class NetworkRequest implements Parcelable {
    public static final Parcelable.Creator<NetworkRequest> CREATOR = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/NetworkRequest$Builder.class
 */
    public static class Builder {
        public Builder() {
            throw new RuntimeException("Stub!");
        }

        public NetworkRequest build() {
            throw new RuntimeException("Stub!");
        }

        public Builder addCapability(int capability) {
            throw new RuntimeException("Stub!");
        }

        public Builder removeCapability(int capability) {
            throw new RuntimeException("Stub!");
        }

        public Builder addTransportType(int transportType) {
            throw new RuntimeException("Stub!");
        }

        public Builder removeTransportType(int transportType) {
            throw new RuntimeException("Stub!");
        }

        public Builder setNetworkSpecifier(String networkSpecifier) {
            throw new RuntimeException("Stub!");
        }

        public Builder setNetworkSpecifier(NetworkSpecifier networkSpecifier) {
            throw new RuntimeException("Stub!");
        }
    }

    NetworkRequest() {
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

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }
}
