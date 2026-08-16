package android.content.pm;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/pm/PackageInfo.class
 */
public class PackageInfo implements Parcelable {
    public static final Parcelable.Creator<PackageInfo> CREATOR = null;
    public static final int INSTALL_LOCATION_AUTO = 0;
    public static final int INSTALL_LOCATION_INTERNAL_ONLY = 1;
    public static final int INSTALL_LOCATION_PREFER_EXTERNAL = 2;
    public static final int REQUESTED_PERMISSION_GRANTED = 2;
    public ApplicationInfo applicationInfo;
    public int baseRevisionCode;
    public long firstInstallTime;
    public int installLocation;
    public long lastUpdateTime;
    public String packageName;
    public String sharedUserId;
    public int sharedUserLabel;
    public int versionCode;
    public String versionName;
    public ActivityInfo[] activities = null;
    public ConfigurationInfo[] configPreferences = null;
    public FeatureGroupInfo[] featureGroups = null;
    public int[] gids = null;
    public InstrumentationInfo[] instrumentation = null;
    public PermissionInfo[] permissions = null;
    public ProviderInfo[] providers = null;
    public ActivityInfo[] receivers = null;
    public FeatureInfo[] reqFeatures = null;
    public String[] requestedPermissions = null;
    public int[] requestedPermissionsFlags = null;
    public ServiceInfo[] services = null;
    public Signature[] signatures = null;
    public String[] splitNames = null;
    public int[] splitRevisionCodes = null;

    public PackageInfo() {
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
