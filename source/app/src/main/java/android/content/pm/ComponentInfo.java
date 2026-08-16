package android.content.pm;

import android.os.Parcel;
import android.util.Printer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/pm/ComponentInfo.class
 */
public class ComponentInfo extends PackageItemInfo {
    public ApplicationInfo applicationInfo;
    public int descriptionRes;
    public boolean directBootAware;
    public boolean enabled;
    public boolean exported;
    public String processName;
    public String splitName;

    public ComponentInfo() {
        throw new RuntimeException("Stub!");
    }

    public ComponentInfo(ComponentInfo orig) {
        throw new RuntimeException("Stub!");
    }

    protected ComponentInfo(Parcel source) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence loadLabel(PackageManager pm2) {
        throw new RuntimeException("Stub!");
    }

    public boolean isEnabled() {
        throw new RuntimeException("Stub!");
    }

    public final int getIconResource() {
        throw new RuntimeException("Stub!");
    }

    public final int getLogoResource() {
        throw new RuntimeException("Stub!");
    }

    public final int getBannerResource() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void dumpFront(Printer pw, String prefix) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void dumpBack(Printer pw, String prefix) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int parcelableFlags) {
        throw new RuntimeException("Stub!");
    }
}
