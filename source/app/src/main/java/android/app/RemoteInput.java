package android.app;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Map;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/RemoteInput.class
 */
public final class RemoteInput implements Parcelable {
    public static final Parcelable.Creator<RemoteInput> CREATOR = null;
    public static final String EXTRA_RESULTS_DATA = "android.remoteinput.resultsData";
    public static final String RESULTS_CLIP_LABEL = "android.remoteinput.results";

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/RemoteInput$Builder.class
 */
    public static final class Builder {
        public Builder(String resultKey) {
            throw new RuntimeException("Stub!");
        }

        public Builder setLabel(CharSequence label) {
            throw new RuntimeException("Stub!");
        }

        public Builder setChoices(CharSequence[] choices) {
            throw new RuntimeException("Stub!");
        }

        public Builder setAllowDataType(String mimeType, boolean doAllow) {
            throw new RuntimeException("Stub!");
        }

        public Builder setAllowFreeFormInput(boolean allowFreeFormTextInput) {
            throw new RuntimeException("Stub!");
        }

        public Builder addExtras(Bundle extras) {
            throw new RuntimeException("Stub!");
        }

        public Bundle getExtras() {
            throw new RuntimeException("Stub!");
        }

        public RemoteInput build() {
            throw new RuntimeException("Stub!");
        }
    }

    RemoteInput() {
        throw new RuntimeException("Stub!");
    }

    public String getResultKey() {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getLabel() {
        throw new RuntimeException("Stub!");
    }

    public CharSequence[] getChoices() {
        throw new RuntimeException("Stub!");
    }

    public Set<String> getAllowedDataTypes() {
        throw new RuntimeException("Stub!");
    }

    public boolean isDataOnly() {
        throw new RuntimeException("Stub!");
    }

    public boolean getAllowFreeFormInput() {
        throw new RuntimeException("Stub!");
    }

    public Bundle getExtras() {
        throw new RuntimeException("Stub!");
    }

    public static Map<String, Uri> getDataResultsFromIntent(Intent intent, String remoteInputResultKey) {
        throw new RuntimeException("Stub!");
    }

    public static Bundle getResultsFromIntent(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    public static void addResultsToIntent(RemoteInput[] remoteInputs, Intent intent, Bundle results) {
        throw new RuntimeException("Stub!");
    }

    public static void addDataResultToIntent(RemoteInput remoteInput, Intent intent, Map<String, Uri> results) {
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
}
