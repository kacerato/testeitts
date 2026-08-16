package android.app.admin;

import android.app.admin.SecurityLog;
import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.net.ProxyInfo;
import android.os.Bundle;
import android.os.PersistableBundle;
import android.os.UserHandle;
import java.security.PrivateKey;
import java.security.cert.Certificate;
import java.util.List;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/admin/DevicePolicyManager.class
 */
public class DevicePolicyManager {
    public static final String ACTION_ADD_DEVICE_ADMIN = "android.app.action.ADD_DEVICE_ADMIN";
    public static final String ACTION_APPLICATION_DELEGATION_SCOPES_CHANGED = "android.app.action.APPLICATION_DELEGATION_SCOPES_CHANGED";
    public static final String ACTION_DEVICE_ADMIN_SERVICE = "android.app.action.DEVICE_ADMIN_SERVICE";
    public static final String ACTION_DEVICE_OWNER_CHANGED = "android.app.action.DEVICE_OWNER_CHANGED";
    public static final String ACTION_MANAGED_PROFILE_PROVISIONED = "android.app.action.MANAGED_PROFILE_PROVISIONED";
    public static final String ACTION_PROVISIONING_SUCCESSFUL = "android.app.action.PROVISIONING_SUCCESSFUL";
    public static final String ACTION_PROVISION_MANAGED_DEVICE = "android.app.action.PROVISION_MANAGED_DEVICE";
    public static final String ACTION_PROVISION_MANAGED_PROFILE = "android.app.action.PROVISION_MANAGED_PROFILE";
    public static final String ACTION_SET_NEW_PARENT_PROFILE_PASSWORD = "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD";
    public static final String ACTION_SET_NEW_PASSWORD = "android.app.action.SET_NEW_PASSWORD";
    public static final String ACTION_START_ENCRYPTION = "android.app.action.START_ENCRYPTION";
    public static final String ACTION_SYSTEM_UPDATE_POLICY_CHANGED = "android.app.action.SYSTEM_UPDATE_POLICY_CHANGED";
    public static final String DELEGATION_APP_RESTRICTIONS = "delegation-app-restrictions";
    public static final String DELEGATION_BLOCK_UNINSTALL = "delegation-block-uninstall";
    public static final String DELEGATION_CERT_INSTALL = "delegation-cert-install";
    public static final String DELEGATION_ENABLE_SYSTEM_APP = "delegation-enable-system-app";
    public static final String DELEGATION_PACKAGE_ACCESS = "delegation-package-access";
    public static final String DELEGATION_PERMISSION_GRANT = "delegation-permission-grant";
    public static final int ENCRYPTION_STATUS_ACTIVATING = 2;
    public static final int ENCRYPTION_STATUS_ACTIVE = 3;
    public static final int ENCRYPTION_STATUS_ACTIVE_DEFAULT_KEY = 4;
    public static final int ENCRYPTION_STATUS_ACTIVE_PER_USER = 5;
    public static final int ENCRYPTION_STATUS_INACTIVE = 1;
    public static final int ENCRYPTION_STATUS_UNSUPPORTED = 0;
    public static final String EXTRA_ADD_EXPLANATION = "android.app.extra.ADD_EXPLANATION";
    public static final String EXTRA_DELEGATION_SCOPES = "android.app.extra.DELEGATION_SCOPES";
    public static final String EXTRA_DEVICE_ADMIN = "android.app.extra.DEVICE_ADMIN";
    public static final String EXTRA_PROVISIONING_ACCOUNT_TO_MIGRATE = "android.app.extra.PROVISIONING_ACCOUNT_TO_MIGRATE";
    public static final String EXTRA_PROVISIONING_ADMIN_EXTRAS_BUNDLE = "android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE";
    public static final String EXTRA_PROVISIONING_DEVICE_ADMIN_COMPONENT_NAME = "android.app.extra.PROVISIONING_DEVICE_ADMIN_COMPONENT_NAME";
    public static final String EXTRA_PROVISIONING_DEVICE_ADMIN_MINIMUM_VERSION_CODE = "android.app.extra.PROVISIONING_DEVICE_ADMIN_MINIMUM_VERSION_CODE";
    public static final String EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_CHECKSUM = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_CHECKSUM";
    public static final String EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_COOKIE_HEADER = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_COOKIE_HEADER";
    public static final String EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_LOCATION = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_LOCATION";

    @Deprecated
    public static final String EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_NAME = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_NAME";
    public static final String EXTRA_PROVISIONING_DEVICE_ADMIN_SIGNATURE_CHECKSUM = "android.app.extra.PROVISIONING_DEVICE_ADMIN_SIGNATURE_CHECKSUM";
    public static final String EXTRA_PROVISIONING_DISCLAIMERS = "android.app.extra.PROVISIONING_DISCLAIMERS";
    public static final String EXTRA_PROVISIONING_DISCLAIMER_CONTENT = "android.app.extra.PROVISIONING_DISCLAIMER_CONTENT";
    public static final String EXTRA_PROVISIONING_DISCLAIMER_HEADER = "android.app.extra.PROVISIONING_DISCLAIMER_HEADER";

    @Deprecated
    public static final String EXTRA_PROVISIONING_EMAIL_ADDRESS = "android.app.extra.PROVISIONING_EMAIL_ADDRESS";
    public static final String EXTRA_PROVISIONING_KEEP_ACCOUNT_ON_MIGRATION = "android.app.extra.PROVISIONING_KEEP_ACCOUNT_ON_MIGRATION";
    public static final String EXTRA_PROVISIONING_LEAVE_ALL_SYSTEM_APPS_ENABLED = "android.app.extra.PROVISIONING_LEAVE_ALL_SYSTEM_APPS_ENABLED";
    public static final String EXTRA_PROVISIONING_LOCALE = "android.app.extra.PROVISIONING_LOCALE";
    public static final String EXTRA_PROVISIONING_LOCAL_TIME = "android.app.extra.PROVISIONING_LOCAL_TIME";
    public static final String EXTRA_PROVISIONING_LOGO_URI = "android.app.extra.PROVISIONING_LOGO_URI";
    public static final String EXTRA_PROVISIONING_MAIN_COLOR = "android.app.extra.PROVISIONING_MAIN_COLOR";
    public static final String EXTRA_PROVISIONING_SKIP_ENCRYPTION = "android.app.extra.PROVISIONING_SKIP_ENCRYPTION";
    public static final String EXTRA_PROVISIONING_SKIP_USER_CONSENT = "android.app.extra.PROVISIONING_SKIP_USER_CONSENT";
    public static final String EXTRA_PROVISIONING_TIME_ZONE = "android.app.extra.PROVISIONING_TIME_ZONE";
    public static final String EXTRA_PROVISIONING_WIFI_HIDDEN = "android.app.extra.PROVISIONING_WIFI_HIDDEN";
    public static final String EXTRA_PROVISIONING_WIFI_PAC_URL = "android.app.extra.PROVISIONING_WIFI_PAC_URL";
    public static final String EXTRA_PROVISIONING_WIFI_PASSWORD = "android.app.extra.PROVISIONING_WIFI_PASSWORD";
    public static final String EXTRA_PROVISIONING_WIFI_PROXY_BYPASS = "android.app.extra.PROVISIONING_WIFI_PROXY_BYPASS";
    public static final String EXTRA_PROVISIONING_WIFI_PROXY_HOST = "android.app.extra.PROVISIONING_WIFI_PROXY_HOST";
    public static final String EXTRA_PROVISIONING_WIFI_PROXY_PORT = "android.app.extra.PROVISIONING_WIFI_PROXY_PORT";
    public static final String EXTRA_PROVISIONING_WIFI_SECURITY_TYPE = "android.app.extra.PROVISIONING_WIFI_SECURITY_TYPE";
    public static final String EXTRA_PROVISIONING_WIFI_SSID = "android.app.extra.PROVISIONING_WIFI_SSID";
    public static final int FLAG_EVICT_CREDENTIAL_ENCRYPTION_KEY = 1;
    public static final int FLAG_MANAGED_CAN_ACCESS_PARENT = 2;
    public static final int FLAG_PARENT_CAN_ACCESS_MANAGED = 1;
    public static final int KEYGUARD_DISABLE_FEATURES_ALL = Integer.MAX_VALUE;
    public static final int KEYGUARD_DISABLE_FEATURES_NONE = 0;
    public static final int KEYGUARD_DISABLE_FINGERPRINT = 32;
    public static final int KEYGUARD_DISABLE_REMOTE_INPUT = 64;
    public static final int KEYGUARD_DISABLE_SECURE_CAMERA = 2;
    public static final int KEYGUARD_DISABLE_SECURE_NOTIFICATIONS = 4;
    public static final int KEYGUARD_DISABLE_TRUST_AGENTS = 16;
    public static final int KEYGUARD_DISABLE_UNREDACTED_NOTIFICATIONS = 8;
    public static final int KEYGUARD_DISABLE_WIDGETS_ALL = 1;
    public static final String MIME_TYPE_PROVISIONING_NFC = "application/com.android.managedprovisioning";
    public static final int PASSWORD_QUALITY_ALPHABETIC = 262144;
    public static final int PASSWORD_QUALITY_ALPHANUMERIC = 327680;
    public static final int PASSWORD_QUALITY_BIOMETRIC_WEAK = 32768;
    public static final int PASSWORD_QUALITY_COMPLEX = 393216;
    public static final int PASSWORD_QUALITY_NUMERIC = 131072;
    public static final int PASSWORD_QUALITY_NUMERIC_COMPLEX = 196608;
    public static final int PASSWORD_QUALITY_SOMETHING = 65536;
    public static final int PASSWORD_QUALITY_UNSPECIFIED = 0;
    public static final int PERMISSION_GRANT_STATE_DEFAULT = 0;
    public static final int PERMISSION_GRANT_STATE_DENIED = 2;
    public static final int PERMISSION_GRANT_STATE_GRANTED = 1;
    public static final int PERMISSION_POLICY_AUTO_DENY = 2;
    public static final int PERMISSION_POLICY_AUTO_GRANT = 1;
    public static final int PERMISSION_POLICY_PROMPT = 0;
    public static final String POLICY_DISABLE_CAMERA = "policy_disable_camera";
    public static final String POLICY_DISABLE_SCREEN_CAPTURE = "policy_disable_screen_capture";
    public static final int RESET_PASSWORD_DO_NOT_ASK_CREDENTIALS_ON_BOOT = 2;
    public static final int RESET_PASSWORD_REQUIRE_ENTRY = 1;
    public static final int SKIP_SETUP_WIZARD = 1;
    public static final int WIPE_EXTERNAL_STORAGE = 1;
    public static final int WIPE_RESET_PROTECTION_DATA = 2;

    DevicePolicyManager() {
        throw new RuntimeException("Stub!");
    }

    public boolean isAdminActive(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public List<ComponentName> getActiveAdmins() {
        throw new RuntimeException("Stub!");
    }

    public void removeActiveAdmin(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public boolean hasGrantedPolicy(ComponentName admin, int usesPolicy) {
        throw new RuntimeException("Stub!");
    }

    public void setPasswordQuality(ComponentName admin, int quality) {
        throw new RuntimeException("Stub!");
    }

    public int getPasswordQuality(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public void setPasswordMinimumLength(ComponentName admin, int length) {
        throw new RuntimeException("Stub!");
    }

    public int getPasswordMinimumLength(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public void setPasswordMinimumUpperCase(ComponentName admin, int length) {
        throw new RuntimeException("Stub!");
    }

    public int getPasswordMinimumUpperCase(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public void setPasswordMinimumLowerCase(ComponentName admin, int length) {
        throw new RuntimeException("Stub!");
    }

    public int getPasswordMinimumLowerCase(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public void setPasswordMinimumLetters(ComponentName admin, int length) {
        throw new RuntimeException("Stub!");
    }

    public int getPasswordMinimumLetters(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public void setPasswordMinimumNumeric(ComponentName admin, int length) {
        throw new RuntimeException("Stub!");
    }

    public int getPasswordMinimumNumeric(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public void setPasswordMinimumSymbols(ComponentName admin, int length) {
        throw new RuntimeException("Stub!");
    }

    public int getPasswordMinimumSymbols(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public void setPasswordMinimumNonLetter(ComponentName admin, int length) {
        throw new RuntimeException("Stub!");
    }

    public int getPasswordMinimumNonLetter(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public void setPasswordHistoryLength(ComponentName admin, int length) {
        throw new RuntimeException("Stub!");
    }

    public void setPasswordExpirationTimeout(ComponentName admin, long timeout) {
        throw new RuntimeException("Stub!");
    }

    public long getPasswordExpirationTimeout(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public long getPasswordExpiration(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public int getPasswordHistoryLength(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public int getPasswordMaximumLength(int quality) {
        throw new RuntimeException("Stub!");
    }

    public boolean isActivePasswordSufficient() {
        throw new RuntimeException("Stub!");
    }

    public int getCurrentFailedPasswordAttempts() {
        throw new RuntimeException("Stub!");
    }

    public void setMaximumFailedPasswordsForWipe(ComponentName admin, int num) {
        throw new RuntimeException("Stub!");
    }

    public int getMaximumFailedPasswordsForWipe(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public boolean resetPassword(String password, int flags) {
        throw new RuntimeException("Stub!");
    }

    public boolean setResetPasswordToken(ComponentName admin, byte[] token) {
        throw new RuntimeException("Stub!");
    }

    public boolean clearResetPasswordToken(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public boolean isResetPasswordTokenActive(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public boolean resetPasswordWithToken(ComponentName admin, String password, byte[] token, int flags) {
        throw new RuntimeException("Stub!");
    }

    public void setMaximumTimeToLock(ComponentName admin, long timeMs) {
        throw new RuntimeException("Stub!");
    }

    public long getMaximumTimeToLock(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public void setRequiredStrongAuthTimeout(ComponentName admin, long timeoutMs) {
        throw new RuntimeException("Stub!");
    }

    public long getRequiredStrongAuthTimeout(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public void lockNow() {
        throw new RuntimeException("Stub!");
    }

    public void lockNow(int flags) {
        throw new RuntimeException("Stub!");
    }

    public void wipeData(int flags) {
        throw new RuntimeException("Stub!");
    }

    public void setRecommendedGlobalProxy(ComponentName admin, ProxyInfo proxyInfo) {
        throw new RuntimeException("Stub!");
    }

    public int setStorageEncryption(ComponentName admin, boolean encrypt) {
        throw new RuntimeException("Stub!");
    }

    public boolean getStorageEncryption(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public int getStorageEncryptionStatus() {
        throw new RuntimeException("Stub!");
    }

    public boolean installCaCert(ComponentName admin, byte[] certBuffer) {
        throw new RuntimeException("Stub!");
    }

    public void uninstallCaCert(ComponentName admin, byte[] certBuffer) {
        throw new RuntimeException("Stub!");
    }

    public List<byte[]> getInstalledCaCerts(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public void uninstallAllUserCaCerts(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public boolean hasCaCertInstalled(ComponentName admin, byte[] certBuffer) {
        throw new RuntimeException("Stub!");
    }

    public boolean installKeyPair(ComponentName admin, PrivateKey privKey, Certificate cert, String alias) {
        throw new RuntimeException("Stub!");
    }

    public boolean installKeyPair(ComponentName admin, PrivateKey privKey, Certificate[] certs, String alias, boolean requestAccess) {
        throw new RuntimeException("Stub!");
    }

    public boolean removeKeyPair(ComponentName admin, String alias) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void setCertInstallerPackage(ComponentName admin, String installerPackage) throws SecurityException {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public String getCertInstallerPackage(ComponentName admin) throws SecurityException {
        throw new RuntimeException("Stub!");
    }

    public void setDelegatedScopes(ComponentName admin, String delegatePackage, List<String> scopes) {
        throw new RuntimeException("Stub!");
    }

    public List<String> getDelegatedScopes(ComponentName admin, String delegatedPackage) {
        throw new RuntimeException("Stub!");
    }

    public List<String> getDelegatePackages(ComponentName admin, String delegationScope) {
        throw new RuntimeException("Stub!");
    }

    public void setAlwaysOnVpnPackage(ComponentName admin, String vpnPackage, boolean lockdownEnabled) throws PackageManager.NameNotFoundException, UnsupportedOperationException {
        throw new RuntimeException("Stub!");
    }

    public String getAlwaysOnVpnPackage(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public void setCameraDisabled(ComponentName admin, boolean disabled) {
        throw new RuntimeException("Stub!");
    }

    public boolean getCameraDisabled(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public boolean requestBugreport(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public void setScreenCaptureDisabled(ComponentName admin, boolean disabled) {
        throw new RuntimeException("Stub!");
    }

    public boolean getScreenCaptureDisabled(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public void setAutoTimeRequired(ComponentName admin, boolean required) {
        throw new RuntimeException("Stub!");
    }

    public boolean getAutoTimeRequired() {
        throw new RuntimeException("Stub!");
    }

    public void setKeyguardDisabledFeatures(ComponentName admin, int which) {
        throw new RuntimeException("Stub!");
    }

    public int getKeyguardDisabledFeatures(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public boolean isDeviceOwnerApp(String packageName) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void clearDeviceOwnerApp(String packageName) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void clearProfileOwner(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public void setDeviceOwnerLockScreenInfo(ComponentName admin, CharSequence info) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getDeviceOwnerLockScreenInfo() {
        throw new RuntimeException("Stub!");
    }

    public String[] setPackagesSuspended(ComponentName admin, String[] packageNames, boolean suspended) {
        throw new RuntimeException("Stub!");
    }

    public boolean isPackageSuspended(ComponentName admin, String packageName) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public void setProfileEnabled(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public void setProfileName(ComponentName admin, String profileName) {
        throw new RuntimeException("Stub!");
    }

    public boolean isProfileOwnerApp(String packageName) {
        throw new RuntimeException("Stub!");
    }

    public void addPersistentPreferredActivity(ComponentName admin, IntentFilter filter, ComponentName activity) {
        throw new RuntimeException("Stub!");
    }

    public void clearPackagePersistentPreferredActivities(ComponentName admin, String packageName) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void setApplicationRestrictionsManagingPackage(ComponentName admin, String packageName) throws PackageManager.NameNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public String getApplicationRestrictionsManagingPackage(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public boolean isCallerApplicationRestrictionsManagingPackage() {
        throw new RuntimeException("Stub!");
    }

    public void setApplicationRestrictions(ComponentName admin, String packageName, Bundle settings) {
        throw new RuntimeException("Stub!");
    }

    public void setTrustAgentConfiguration(ComponentName admin, ComponentName target, PersistableBundle configuration) {
        throw new RuntimeException("Stub!");
    }

    public List<PersistableBundle> getTrustAgentConfiguration(ComponentName admin, ComponentName agent) {
        throw new RuntimeException("Stub!");
    }

    public void setCrossProfileCallerIdDisabled(ComponentName admin, boolean disabled) {
        throw new RuntimeException("Stub!");
    }

    public boolean getCrossProfileCallerIdDisabled(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public void setCrossProfileContactsSearchDisabled(ComponentName admin, boolean disabled) {
        throw new RuntimeException("Stub!");
    }

    public boolean getCrossProfileContactsSearchDisabled(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public void setBluetoothContactSharingDisabled(ComponentName admin, boolean disabled) {
        throw new RuntimeException("Stub!");
    }

    public boolean getBluetoothContactSharingDisabled(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public void addCrossProfileIntentFilter(ComponentName admin, IntentFilter filter, int flags) {
        throw new RuntimeException("Stub!");
    }

    public void clearCrossProfileIntentFilters(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public boolean setPermittedAccessibilityServices(ComponentName admin, List<String> packageNames) {
        throw new RuntimeException("Stub!");
    }

    public List<String> getPermittedAccessibilityServices(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public boolean setPermittedInputMethods(ComponentName admin, List<String> packageNames) {
        throw new RuntimeException("Stub!");
    }

    public List<String> getPermittedInputMethods(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public boolean setPermittedCrossProfileNotificationListeners(ComponentName admin, List<String> packageList) {
        throw new RuntimeException("Stub!");
    }

    public List<String> getPermittedCrossProfileNotificationListeners(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public UserHandle createAndManageUser(ComponentName admin, String name, ComponentName profileOwner, PersistableBundle adminExtras, int flags) {
        throw new RuntimeException("Stub!");
    }

    public boolean removeUser(ComponentName admin, UserHandle userHandle) {
        throw new RuntimeException("Stub!");
    }

    public boolean switchUser(ComponentName admin, UserHandle userHandle) {
        throw new RuntimeException("Stub!");
    }

    public Bundle getApplicationRestrictions(ComponentName admin, String packageName) {
        throw new RuntimeException("Stub!");
    }

    public void addUserRestriction(ComponentName admin, String key) {
        throw new RuntimeException("Stub!");
    }

    public void clearUserRestriction(ComponentName admin, String key) {
        throw new RuntimeException("Stub!");
    }

    public Bundle getUserRestrictions(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public Intent createAdminSupportIntent(String restriction) {
        throw new RuntimeException("Stub!");
    }

    public boolean setApplicationHidden(ComponentName admin, String packageName, boolean hidden) {
        throw new RuntimeException("Stub!");
    }

    public boolean isApplicationHidden(ComponentName admin, String packageName) {
        throw new RuntimeException("Stub!");
    }

    public void enableSystemApp(ComponentName admin, String packageName) {
        throw new RuntimeException("Stub!");
    }

    public int enableSystemApp(ComponentName admin, Intent intent) {
        throw new RuntimeException("Stub!");
    }

    public void setAccountManagementDisabled(ComponentName admin, String accountType, boolean disabled) {
        throw new RuntimeException("Stub!");
    }

    public String[] getAccountTypesWithManagementDisabled() {
        throw new RuntimeException("Stub!");
    }

    public void setLockTaskPackages(ComponentName admin, String[] packages) throws SecurityException {
        throw new RuntimeException("Stub!");
    }

    public String[] getLockTaskPackages(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public boolean isLockTaskPermitted(String pkg) {
        throw new RuntimeException("Stub!");
    }

    public void setGlobalSetting(ComponentName admin, String setting, String value) {
        throw new RuntimeException("Stub!");
    }

    public void setSecureSetting(ComponentName admin, String setting, String value) {
        throw new RuntimeException("Stub!");
    }

    public void setRestrictionsProvider(ComponentName admin, ComponentName provider) {
        throw new RuntimeException("Stub!");
    }

    public void setMasterVolumeMuted(ComponentName admin, boolean on2) {
        throw new RuntimeException("Stub!");
    }

    public boolean isMasterVolumeMuted(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public void setUninstallBlocked(ComponentName admin, String packageName, boolean uninstallBlocked) {
        throw new RuntimeException("Stub!");
    }

    public boolean isUninstallBlocked(ComponentName admin, String packageName) {
        throw new RuntimeException("Stub!");
    }

    public boolean addCrossProfileWidgetProvider(ComponentName admin, String packageName) {
        throw new RuntimeException("Stub!");
    }

    public boolean removeCrossProfileWidgetProvider(ComponentName admin, String packageName) {
        throw new RuntimeException("Stub!");
    }

    public List<String> getCrossProfileWidgetProviders(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public void setUserIcon(ComponentName admin, Bitmap icon) {
        throw new RuntimeException("Stub!");
    }

    public void setSystemUpdatePolicy(ComponentName admin, SystemUpdatePolicy policy) {
        throw new RuntimeException("Stub!");
    }

    public SystemUpdatePolicy getSystemUpdatePolicy() {
        throw new RuntimeException("Stub!");
    }

    public boolean setKeyguardDisabled(ComponentName admin, boolean disabled) {
        throw new RuntimeException("Stub!");
    }

    public boolean setStatusBarDisabled(ComponentName admin, boolean disabled) {
        throw new RuntimeException("Stub!");
    }

    public SystemUpdateInfo getPendingSystemUpdate(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public void setPermissionPolicy(ComponentName admin, int policy) {
        throw new RuntimeException("Stub!");
    }

    public int getPermissionPolicy(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public boolean setPermissionGrantState(ComponentName admin, String packageName, String permission, int grantState) {
        throw new RuntimeException("Stub!");
    }

    public int getPermissionGrantState(ComponentName admin, String packageName, String permission) {
        throw new RuntimeException("Stub!");
    }

    public boolean isProvisioningAllowed(String action) {
        throw new RuntimeException("Stub!");
    }

    public boolean isManagedProfile(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public String getWifiMacAddress(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public void reboot(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public void setShortSupportMessage(ComponentName admin, CharSequence message) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getShortSupportMessage(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public void setLongSupportMessage(ComponentName admin, CharSequence message) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getLongSupportMessage(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public DevicePolicyManager getParentProfileInstance(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public void setSecurityLoggingEnabled(ComponentName admin, boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    public boolean isSecurityLoggingEnabled(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public List<SecurityLog.SecurityEvent> retrieveSecurityLogs(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public List<SecurityLog.SecurityEvent> retrievePreRebootSecurityLogs(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public void setOrganizationColor(ComponentName admin, int color) {
        throw new RuntimeException("Stub!");
    }

    public int getOrganizationColor(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public void setOrganizationName(ComponentName admin, CharSequence title) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getOrganizationName(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public void setAffiliationIds(ComponentName admin, Set<String> ids) {
        throw new RuntimeException("Stub!");
    }

    public Set<String> getAffiliationIds(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public void setBackupServiceEnabled(ComponentName admin, boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    public boolean isBackupServiceEnabled(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public void setNetworkLoggingEnabled(ComponentName admin, boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    public boolean isNetworkLoggingEnabled(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }

    public List<NetworkEvent> retrieveNetworkLogs(ComponentName admin, long batchToken) {
        throw new RuntimeException("Stub!");
    }

    public boolean bindDeviceAdminServiceAsUser(ComponentName admin, Intent serviceIntent, ServiceConnection conn, int flags, UserHandle targetUser) {
        throw new RuntimeException("Stub!");
    }

    public List<UserHandle> getBindDeviceAdminTargetUsers(ComponentName admin) {
        throw new RuntimeException("Stub!");
    }
}
