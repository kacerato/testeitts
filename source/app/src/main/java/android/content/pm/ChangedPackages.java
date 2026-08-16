package android.content.pm;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/pm/ChangedPackages.class
 */
public final class ChangedPackages implements Parcelable {
    public static final Parcelable.Creator<ChangedPackages> CREATOR = null;

    public ChangedPackages(int sequenceNumber, List<String> packageNames) {
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

    public int getSequenceNumber() {
        throw new RuntimeException("Stub!");
    }

    public List<String> getPackageNames() {
        throw new RuntimeException("Stub!");
    }
}
