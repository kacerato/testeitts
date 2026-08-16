package android.test.mock;

import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ChangedPackages;
import android.content.pm.FeatureInfo;
import android.content.pm.InstrumentationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.pm.PermissionGroupInfo;
import android.content.pm.PermissionInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.SharedLibraryInfo;
import android.content.pm.VersionedPackage;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.UserHandle;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/test/mock/MockPackageManager.class
 */
@Deprecated
public class MockPackageManager extends PackageManager {
    public MockPackageManager() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public PackageInfo getPackageInfo(String packageName, int flags) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public PackageInfo getPackageInfo(VersionedPackage versionedPackage, int flags) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String[] currentToCanonicalPackageNames(String[] names) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String[] canonicalToCurrentPackageNames(String[] names) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Intent getLaunchIntentForPackage(String packageName) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Intent getLeanbackLaunchIntentForPackage(String packageName) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int[] getPackageGids(String packageName) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int[] getPackageGids(String packageName, int flags) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getPackageUid(String packageName, int flags) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public PermissionInfo getPermissionInfo(String name, int flags) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public List<PermissionInfo> queryPermissionsByGroup(String group, int flags) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public PermissionGroupInfo getPermissionGroupInfo(String name, int flags) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public List<PermissionGroupInfo> getAllPermissionGroups(int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ApplicationInfo getApplicationInfo(String packageName, int flags) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ActivityInfo getActivityInfo(ComponentName className, int flags) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ActivityInfo getReceiverInfo(ComponentName className, int flags) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ServiceInfo getServiceInfo(ComponentName className, int flags) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ProviderInfo getProviderInfo(ComponentName className, int flags) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public List<PackageInfo> getInstalledPackages(int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public List<PackageInfo> getPackagesHoldingPermissions(String[] permissions, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int checkPermission(String permName, String pkgName) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean canRequestPackageInstalls() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isPermissionRevokedByPolicy(String permName, String pkgName) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean addPermission(PermissionInfo info) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean addPermissionAsync(PermissionInfo info) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void removePermission(String name) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int checkSignatures(String pkg1, String pkg2) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int checkSignatures(int uid1, int uid2) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String[] getPackagesForUid(int uid) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getNameForUid(int uid) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public List<ApplicationInfo> getInstalledApplications(int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ResolveInfo resolveActivity(Intent intent, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public List<ResolveInfo> queryIntentActivities(Intent intent, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public List<ResolveInfo> queryIntentActivityOptions(ComponentName caller, Intent[] specifics, Intent intent, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public List<ResolveInfo> queryBroadcastReceivers(Intent intent, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ResolveInfo resolveService(Intent intent, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public List<ResolveInfo> queryIntentServices(Intent intent, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public List<ResolveInfo> queryIntentContentProviders(Intent intent, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ProviderInfo resolveContentProvider(String name, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public List<ProviderInfo> queryContentProviders(String processName, int uid, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public InstrumentationInfo getInstrumentationInfo(ComponentName className, int flags) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public List<InstrumentationInfo> queryInstrumentation(String targetPackage, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Drawable getDrawable(String packageName, int resid, ApplicationInfo appInfo) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Drawable getActivityIcon(ComponentName activityName) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Drawable getActivityIcon(Intent intent) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Drawable getDefaultActivityIcon() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Drawable getActivityBanner(ComponentName activityName) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Drawable getActivityBanner(Intent intent) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Drawable getApplicationBanner(ApplicationInfo info) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Drawable getApplicationBanner(String packageName) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Drawable getApplicationIcon(ApplicationInfo info) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Drawable getApplicationIcon(String packageName) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Drawable getActivityLogo(ComponentName activityName) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Drawable getActivityLogo(Intent intent) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Drawable getApplicationLogo(ApplicationInfo info) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Drawable getApplicationLogo(String packageName) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Drawable getUserBadgedIcon(Drawable icon, UserHandle user) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Drawable getUserBadgedDrawableForDensity(Drawable drawable, UserHandle user, Rect badgeLocation, int badgeDensity) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getUserBadgedLabel(CharSequence label, UserHandle user) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getText(String packageName, int resid, ApplicationInfo appInfo) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public XmlResourceParser getXml(String packageName, int resid, ApplicationInfo appInfo) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getApplicationLabel(ApplicationInfo info) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Resources getResourcesForActivity(ComponentName activityName) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Resources getResourcesForApplication(ApplicationInfo app) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Resources getResourcesForApplication(String appPackageName) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public PackageInfo getPackageArchiveInfo(String archiveFilePath, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setInstallerPackageName(String targetPackage, String installerPackageName) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getInstallerPackageName(String packageName) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void addPackageToPreferred(String packageName) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void removePackageFromPreferred(String packageName) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public List<PackageInfo> getPreferredPackages(int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setComponentEnabledSetting(ComponentName componentName, int newState, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getComponentEnabledSetting(ComponentName componentName) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setApplicationEnabledSetting(String packageName, int newState, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getApplicationEnabledSetting(String packageName) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void addPreferredActivity(IntentFilter filter, int match, ComponentName[] set, ComponentName activity) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void clearPackagePreferredActivities(String packageName) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getPreferredActivities(List<IntentFilter> outFilters, List<ComponentName> outActivities, String packageName) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String[] getSystemSharedLibraryNames() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public List<SharedLibraryInfo> getSharedLibraries(int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public FeatureInfo[] getSystemAvailableFeatures() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean hasSystemFeature(String name) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean hasSystemFeature(String name, int version) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isSafeMode() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void verifyPendingInstall(int id2, int verificationCode) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void extendVerificationTimeout(int id2, int verificationCodeAtTimeout, long millisecondsToDelay) {
        throw new RuntimeException("Stub!");
    }

    public List<IntentFilter> getAllIntentFilters(String packageName) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public byte[] getInstantAppCookie() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isInstantApp() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isInstantApp(String packageName) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getInstantAppCookieMaxBytes() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void clearInstantAppCookie() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void updateInstantAppCookie(byte[] cookie) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ChangedPackages getChangedPackages(int sequenceNumber) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setApplicationCategoryHint(String packageName, int categoryHint) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public PackageInstaller getPackageInstaller() {
        throw new RuntimeException("Stub!");
    }
}
