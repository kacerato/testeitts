package android.test.mock;

import android.content.ContentProvider;
import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PathPermission;
import android.content.pm.ProviderInfo;
import android.content.res.AssetFileDescriptor;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import java.util.ArrayList;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/test/mock/MockContentProvider.class
 */
public class MockContentProvider extends ContentProvider {
    protected MockContentProvider() {
        throw new RuntimeException("Stub!");
    }

    public MockContentProvider(Context context) {
        throw new RuntimeException("Stub!");
    }

    public MockContentProvider(Context context, String readPermission, String writePermission, PathPermission[] pathPermissions) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getType(Uri uri) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Uri insert(Uri uri, ContentValues values) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onCreate() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int bulkInsert(Uri uri, ContentValues[] values) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void attachInfo(Context context, ProviderInfo info) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ContentProviderResult[] applyBatch(ArrayList<ContentProviderOperation> operations) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String[] getStreamTypes(Uri url, String mimeTypeFilter) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public AssetFileDescriptor openTypedAssetFile(Uri url, String mimeType, Bundle opts) {
        throw new RuntimeException("Stub!");
    }
}
