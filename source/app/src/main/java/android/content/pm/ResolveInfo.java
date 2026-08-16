package android.content.pm;

import android.content.IntentFilter;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Printer;
import java.util.Comparator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/pm/ResolveInfo.class
 */
public class ResolveInfo implements Parcelable {
    public static final Parcelable.Creator<ResolveInfo> CREATOR = null;
    public ActivityInfo activityInfo;
    public IntentFilter filter;
    public int icon;
    public boolean isDefault;
    public boolean isInstantAppAvailable;
    public int labelRes;
    public int match;
    public CharSequence nonLocalizedLabel;
    public int preferredOrder;
    public int priority;
    public ProviderInfo providerInfo;
    public String resolvePackageName;
    public ServiceInfo serviceInfo;
    public int specificIndex;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/pm/ResolveInfo$DisplayNameComparator.class
 */
    public static class DisplayNameComparator implements Comparator<ResolveInfo> {
        public DisplayNameComparator(PackageManager pm2) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public final int compare(ResolveInfo a10, ResolveInfo b10) {
            throw new RuntimeException("Stub!");
        }
    }

    public ResolveInfo() {
        throw new RuntimeException("Stub!");
    }

    public ResolveInfo(ResolveInfo orig) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence loadLabel(PackageManager pm2) {
        throw new RuntimeException("Stub!");
    }

    public Drawable loadIcon(PackageManager pm2) {
        throw new RuntimeException("Stub!");
    }

    public final int getIconResource() {
        throw new RuntimeException("Stub!");
    }

    public void dump(Printer pw, String prefix) {
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
