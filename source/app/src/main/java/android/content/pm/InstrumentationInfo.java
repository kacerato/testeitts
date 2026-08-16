package android.content.pm;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/pm/InstrumentationInfo.class
 */
public class InstrumentationInfo extends PackageItemInfo implements Parcelable {
    public static final Parcelable.Creator<InstrumentationInfo> CREATOR = null;
    public String dataDir;
    public boolean functionalTest;
    public boolean handleProfiling;
    public String publicSourceDir;
    public String sourceDir;
    public String[] splitNames = null;
    public String[] splitPublicSourceDirs = null;
    public String[] splitSourceDirs = null;
    public String targetPackage;
    public String targetProcesses;

    public InstrumentationInfo() {
        throw new RuntimeException("Stub!");
    }

    public InstrumentationInfo(InstrumentationInfo orig) {
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
    public void writeToParcel(Parcel dest, int parcelableFlags) {
        throw new RuntimeException("Stub!");
    }
}
