package android.content;

import android.accounts.Account;
import android.content.res.AssetFileDescriptor;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/ContentResolver.class
 */
public abstract class ContentResolver {
    public static final String ANY_CURSOR_ITEM_TYPE = "vnd.android.cursor.item/*";
    public static final String CURSOR_DIR_BASE_TYPE = "vnd.android.cursor.dir";
    public static final String CURSOR_ITEM_BASE_TYPE = "vnd.android.cursor.item";
    public static final String EXTRA_HONORED_ARGS = "android.content.extra.HONORED_ARGS";
    public static final String EXTRA_REFRESH_SUPPORTED = "android.content.extra.REFRESH_SUPPORTED";
    public static final String EXTRA_SIZE = "android.content.extra.SIZE";
    public static final String EXTRA_TOTAL_COUNT = "android.content.extra.TOTAL_COUNT";
    public static final int NOTIFY_SKIP_NOTIFY_FOR_DESCENDANTS = 2;
    public static final int NOTIFY_SYNC_TO_NETWORK = 1;
    public static final String QUERY_ARG_LIMIT = "android:query-arg-limit";
    public static final String QUERY_ARG_OFFSET = "android:query-arg-offset";
    public static final String QUERY_ARG_SORT_COLLATION = "android:query-arg-sort-collation";
    public static final String QUERY_ARG_SORT_COLUMNS = "android:query-arg-sort-columns";
    public static final String QUERY_ARG_SORT_DIRECTION = "android:query-arg-sort-direction";
    public static final String QUERY_ARG_SQL_SELECTION = "android:query-arg-sql-selection";
    public static final String QUERY_ARG_SQL_SELECTION_ARGS = "android:query-arg-sql-selection-args";
    public static final String QUERY_ARG_SQL_SORT_ORDER = "android:query-arg-sql-sort-order";
    public static final int QUERY_SORT_DIRECTION_ASCENDING = 0;
    public static final int QUERY_SORT_DIRECTION_DESCENDING = 1;
    public static final String SCHEME_ANDROID_RESOURCE = "android.resource";
    public static final String SCHEME_CONTENT = "content";
    public static final String SCHEME_FILE = "file";

    @Deprecated
    public static final String SYNC_EXTRAS_ACCOUNT = "account";
    public static final String SYNC_EXTRAS_DISCARD_LOCAL_DELETIONS = "discard_deletions";
    public static final String SYNC_EXTRAS_DO_NOT_RETRY = "do_not_retry";
    public static final String SYNC_EXTRAS_EXPEDITED = "expedited";

    @Deprecated
    public static final String SYNC_EXTRAS_FORCE = "force";
    public static final String SYNC_EXTRAS_IGNORE_BACKOFF = "ignore_backoff";
    public static final String SYNC_EXTRAS_IGNORE_SETTINGS = "ignore_settings";
    public static final String SYNC_EXTRAS_INITIALIZE = "initialize";
    public static final String SYNC_EXTRAS_MANUAL = "force";
    public static final String SYNC_EXTRAS_OVERRIDE_TOO_MANY_DELETIONS = "deletions_override";
    public static final String SYNC_EXTRAS_REQUIRE_CHARGING = "require_charging";
    public static final String SYNC_EXTRAS_UPLOAD = "upload";
    public static final int SYNC_OBSERVER_TYPE_ACTIVE = 4;
    public static final int SYNC_OBSERVER_TYPE_PENDING = 2;
    public static final int SYNC_OBSERVER_TYPE_SETTINGS = 1;

    public ContentResolver(Context context) {
        throw new RuntimeException("Stub!");
    }

    public final String getType(Uri url) {
        throw new RuntimeException("Stub!");
    }

    public String[] getStreamTypes(Uri url, String mimeTypeFilter) {
        throw new RuntimeException("Stub!");
    }

    public final Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        throw new RuntimeException("Stub!");
    }

    public final Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder, CancellationSignal cancellationSignal) {
        throw new RuntimeException("Stub!");
    }

    public final Cursor query(Uri uri, String[] projection, Bundle queryArgs, CancellationSignal cancellationSignal) {
        throw new RuntimeException("Stub!");
    }

    public final Uri canonicalize(Uri url) {
        throw new RuntimeException("Stub!");
    }

    public final Uri uncanonicalize(Uri url) {
        throw new RuntimeException("Stub!");
    }

    public final boolean refresh(Uri url, Bundle args, CancellationSignal cancellationSignal) {
        throw new RuntimeException("Stub!");
    }

    public final InputStream openInputStream(Uri uri) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public final OutputStream openOutputStream(Uri uri) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public final OutputStream openOutputStream(Uri uri, String mode) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public final ParcelFileDescriptor openFileDescriptor(Uri uri, String mode) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public final ParcelFileDescriptor openFileDescriptor(Uri uri, String mode, CancellationSignal cancellationSignal) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public final AssetFileDescriptor openAssetFileDescriptor(Uri uri, String mode) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public final AssetFileDescriptor openAssetFileDescriptor(Uri uri, String mode, CancellationSignal cancellationSignal) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public final AssetFileDescriptor openTypedAssetFileDescriptor(Uri uri, String mimeType, Bundle opts) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public final AssetFileDescriptor openTypedAssetFileDescriptor(Uri uri, String mimeType, Bundle opts, CancellationSignal cancellationSignal) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public final Uri insert(Uri url, ContentValues values) {
        throw new RuntimeException("Stub!");
    }

    public ContentProviderResult[] applyBatch(String authority, ArrayList<ContentProviderOperation> operations) throws RemoteException, OperationApplicationException {
        throw new RuntimeException("Stub!");
    }

    public final int bulkInsert(Uri url, ContentValues[] values) {
        throw new RuntimeException("Stub!");
    }

    public final int delete(Uri url, String where, String[] selectionArgs) {
        throw new RuntimeException("Stub!");
    }

    public final int update(Uri uri, ContentValues values, String where, String[] selectionArgs) {
        throw new RuntimeException("Stub!");
    }

    public final Bundle call(Uri uri, String method, String arg, Bundle extras) {
        throw new RuntimeException("Stub!");
    }

    public final ContentProviderClient acquireContentProviderClient(Uri uri) {
        throw new RuntimeException("Stub!");
    }

    public final ContentProviderClient acquireContentProviderClient(String name) {
        throw new RuntimeException("Stub!");
    }

    public final ContentProviderClient acquireUnstableContentProviderClient(Uri uri) {
        throw new RuntimeException("Stub!");
    }

    public final ContentProviderClient acquireUnstableContentProviderClient(String name) {
        throw new RuntimeException("Stub!");
    }

    public final void registerContentObserver(Uri uri, boolean notifyForDescendants, ContentObserver observer) {
        throw new RuntimeException("Stub!");
    }

    public final void unregisterContentObserver(ContentObserver observer) {
        throw new RuntimeException("Stub!");
    }

    public void notifyChange(Uri uri, ContentObserver observer) {
        throw new RuntimeException("Stub!");
    }

    public void notifyChange(Uri uri, ContentObserver observer, boolean syncToNetwork) {
        throw new RuntimeException("Stub!");
    }

    public void notifyChange(Uri uri, ContentObserver observer, int flags) {
        throw new RuntimeException("Stub!");
    }

    public void takePersistableUriPermission(Uri uri, int modeFlags) {
        throw new RuntimeException("Stub!");
    }

    public void releasePersistableUriPermission(Uri uri, int modeFlags) {
        throw new RuntimeException("Stub!");
    }

    public List<UriPermission> getPersistedUriPermissions() {
        throw new RuntimeException("Stub!");
    }

    public List<UriPermission> getOutgoingPersistedUriPermissions() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void startSync(Uri uri, Bundle extras) {
        throw new RuntimeException("Stub!");
    }

    public static void requestSync(Account account, String authority, Bundle extras) {
        throw new RuntimeException("Stub!");
    }

    public static void requestSync(SyncRequest request) {
        throw new RuntimeException("Stub!");
    }

    public static void validateSyncExtrasBundle(Bundle extras) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void cancelSync(Uri uri) {
        throw new RuntimeException("Stub!");
    }

    public static void cancelSync(Account account, String authority) {
        throw new RuntimeException("Stub!");
    }

    public static SyncAdapterType[] getSyncAdapterTypes() {
        throw new RuntimeException("Stub!");
    }

    public static boolean getSyncAutomatically(Account account, String authority) {
        throw new RuntimeException("Stub!");
    }

    public static void setSyncAutomatically(Account account, String authority, boolean sync) {
        throw new RuntimeException("Stub!");
    }

    public static void addPeriodicSync(Account account, String authority, Bundle extras, long pollFrequency) {
        throw new RuntimeException("Stub!");
    }

    public static void removePeriodicSync(Account account, String authority, Bundle extras) {
        throw new RuntimeException("Stub!");
    }

    public static void cancelSync(SyncRequest request) {
        throw new RuntimeException("Stub!");
    }

    public static List<PeriodicSync> getPeriodicSyncs(Account account, String authority) {
        throw new RuntimeException("Stub!");
    }

    public static int getIsSyncable(Account account, String authority) {
        throw new RuntimeException("Stub!");
    }

    public static void setIsSyncable(Account account, String authority, int syncable) {
        throw new RuntimeException("Stub!");
    }

    public static boolean getMasterSyncAutomatically() {
        throw new RuntimeException("Stub!");
    }

    public static void setMasterSyncAutomatically(boolean sync) {
        throw new RuntimeException("Stub!");
    }

    public static boolean isSyncActive(Account account, String authority) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public static SyncInfo getCurrentSync() {
        throw new RuntimeException("Stub!");
    }

    public static List<SyncInfo> getCurrentSyncs() {
        throw new RuntimeException("Stub!");
    }

    public static boolean isSyncPending(Account account, String authority) {
        throw new RuntimeException("Stub!");
    }

    public static Object addStatusChangeListener(int mask, SyncStatusObserver callback) {
        throw new RuntimeException("Stub!");
    }

    public static void removeStatusChangeListener(Object handle) {
        throw new RuntimeException("Stub!");
    }
}
