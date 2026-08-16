package android.telecom;

import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/telecom/PhoneAccount.class
 */
public final class PhoneAccount implements Parcelable {
    public static final int CAPABILITY_CALL_PROVIDER = 2;
    public static final int CAPABILITY_CALL_SUBJECT = 64;
    public static final int CAPABILITY_CONNECTION_MANAGER = 1;
    public static final int CAPABILITY_PLACE_EMERGENCY_CALLS = 16;
    public static final int CAPABILITY_RTT = 4096;
    public static final int CAPABILITY_SELF_MANAGED = 2048;
    public static final int CAPABILITY_SIM_SUBSCRIPTION = 4;
    public static final int CAPABILITY_SUPPORTS_VIDEO_CALLING = 1024;
    public static final int CAPABILITY_VIDEO_CALLING = 8;
    public static final int CAPABILITY_VIDEO_CALLING_RELIES_ON_PRESENCE = 256;
    public static final Parcelable.Creator<PhoneAccount> CREATOR = null;
    public static final String EXTRA_CALL_SUBJECT_CHARACTER_ENCODING = "android.telecom.extra.CALL_SUBJECT_CHARACTER_ENCODING";
    public static final String EXTRA_CALL_SUBJECT_MAX_LENGTH = "android.telecom.extra.CALL_SUBJECT_MAX_LENGTH";
    public static final int NO_HIGHLIGHT_COLOR = 0;
    public static final int NO_RESOURCE_ID = -1;
    public static final String SCHEME_SIP = "sip";
    public static final String SCHEME_TEL = "tel";
    public static final String SCHEME_VOICEMAIL = "voicemail";

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/telecom/PhoneAccount$Builder.class
 */
    public static class Builder {
        public Builder(PhoneAccountHandle accountHandle, CharSequence label) {
            throw new RuntimeException("Stub!");
        }

        public Builder(PhoneAccount phoneAccount) {
            throw new RuntimeException("Stub!");
        }

        public Builder setAddress(Uri value) {
            throw new RuntimeException("Stub!");
        }

        public Builder setSubscriptionAddress(Uri value) {
            throw new RuntimeException("Stub!");
        }

        public Builder setCapabilities(int value) {
            throw new RuntimeException("Stub!");
        }

        public Builder setIcon(Icon icon) {
            throw new RuntimeException("Stub!");
        }

        public Builder setHighlightColor(int value) {
            throw new RuntimeException("Stub!");
        }

        public Builder setShortDescription(CharSequence value) {
            throw new RuntimeException("Stub!");
        }

        public Builder addSupportedUriScheme(String uriScheme) {
            throw new RuntimeException("Stub!");
        }

        public Builder setSupportedUriSchemes(List<String> uriSchemes) {
            throw new RuntimeException("Stub!");
        }

        public Builder setExtras(Bundle extras) {
            throw new RuntimeException("Stub!");
        }

        public PhoneAccount build() {
            throw new RuntimeException("Stub!");
        }
    }

    PhoneAccount() {
        throw new RuntimeException("Stub!");
    }

    public static Builder builder(PhoneAccountHandle accountHandle, CharSequence label) {
        throw new RuntimeException("Stub!");
    }

    public Builder toBuilder() {
        throw new RuntimeException("Stub!");
    }

    public PhoneAccountHandle getAccountHandle() {
        throw new RuntimeException("Stub!");
    }

    public Uri getAddress() {
        throw new RuntimeException("Stub!");
    }

    public Uri getSubscriptionAddress() {
        throw new RuntimeException("Stub!");
    }

    public int getCapabilities() {
        throw new RuntimeException("Stub!");
    }

    public boolean hasCapabilities(int capability) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getLabel() {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getShortDescription() {
        throw new RuntimeException("Stub!");
    }

    public List<String> getSupportedUriSchemes() {
        throw new RuntimeException("Stub!");
    }

    public Bundle getExtras() {
        throw new RuntimeException("Stub!");
    }

    public Icon getIcon() {
        throw new RuntimeException("Stub!");
    }

    public boolean isEnabled() {
        throw new RuntimeException("Stub!");
    }

    public boolean supportsUriScheme(String uriScheme) {
        throw new RuntimeException("Stub!");
    }

    public int getHighlightColor() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel out, int flags) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
