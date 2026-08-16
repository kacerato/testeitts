package android.telephony;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/telephony/VisualVoicemailSmsFilterSettings.class
 */
public final class VisualVoicemailSmsFilterSettings implements Parcelable {
    public static final Parcelable.Creator<VisualVoicemailSmsFilterSettings> CREATOR = null;
    public static final int DESTINATION_PORT_ANY = -1;
    public static final int DESTINATION_PORT_DATA_SMS = -2;
    public final String clientPrefix;
    public final int destinationPort;
    public final List<String> originatingNumbers;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/telephony/VisualVoicemailSmsFilterSettings$Builder.class
 */
    public static class Builder {
        public Builder() {
            throw new RuntimeException("Stub!");
        }

        public VisualVoicemailSmsFilterSettings build() {
            throw new RuntimeException("Stub!");
        }

        public Builder setClientPrefix(String clientPrefix) {
            throw new RuntimeException("Stub!");
        }

        public Builder setOriginatingNumbers(List<String> originatingNumbers) {
            throw new RuntimeException("Stub!");
        }

        public Builder setDestinationPort(int destinationPort) {
            throw new RuntimeException("Stub!");
        }
    }

    VisualVoicemailSmsFilterSettings() {
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
}
