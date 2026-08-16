package android.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.IntentSender;
import android.content.pm.ProviderInfo;
import android.content.res.AssetFileDescriptor;
import android.database.Cursor;
import android.graphics.Point;
import android.net.Uri;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.provider.DocumentsContract;
import java.io.FileNotFoundException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/provider/DocumentsProvider.class
 */
public abstract class DocumentsProvider extends ContentProvider {
    public abstract Cursor queryRoots(String[] strArr) throws FileNotFoundException;

    public abstract Cursor queryDocument(String str, String[] strArr) throws FileNotFoundException;

    public abstract Cursor queryChildDocuments(String str, String[] strArr, String str2) throws FileNotFoundException;

    public abstract ParcelFileDescriptor openDocument(String str, String str2, CancellationSignal cancellationSignal) throws FileNotFoundException;

    public DocumentsProvider() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void attachInfo(Context context, ProviderInfo info) {
        throw new RuntimeException("Stub!");
    }

    public boolean isChildDocument(String parentDocumentId, String documentId) {
        throw new RuntimeException("Stub!");
    }

    public String createDocument(String parentDocumentId, String mimeType, String displayName) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public String renameDocument(String documentId, String displayName) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public void deleteDocument(String documentId) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public String copyDocument(String sourceDocumentId, String targetParentDocumentId) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public String moveDocument(String sourceDocumentId, String sourceParentDocumentId, String targetParentDocumentId) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public void removeDocument(String documentId, String parentDocumentId) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public DocumentsContract.Path findDocumentPath(String parentDocumentId, String childDocumentId) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public IntentSender createWebLinkIntent(String documentId, Bundle options) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public Cursor queryRecentDocuments(String rootId, String[] projection) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public Cursor queryChildDocuments(String parentDocumentId, String[] projection, Bundle queryArgs) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public Cursor querySearchDocuments(String rootId, String query, String[] projection) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public void ejectRoot(String rootId) {
        throw new RuntimeException("Stub!");
    }

    public String getDocumentType(String documentId) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public AssetFileDescriptor openDocumentThumbnail(String documentId, Point sizeHint, CancellationSignal signal) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public AssetFileDescriptor openTypedDocument(String documentId, String mimeTypeFilter, Bundle opts, CancellationSignal signal) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder, CancellationSignal cancellationSignal) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final Cursor query(Uri uri, String[] projection, Bundle queryArgs, CancellationSignal cancellationSignal) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final String getType(Uri uri) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Uri canonicalize(Uri uri) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final Uri insert(Uri uri, ContentValues values) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final int delete(Uri uri, String selection, String[] selectionArgs) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Bundle call(String method, String arg, Bundle extras) {
        throw new RuntimeException("Stub!");
    }

    public final void revokeDocumentPermission(String documentId) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final ParcelFileDescriptor openFile(Uri uri, String mode) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final ParcelFileDescriptor openFile(Uri uri, String mode, CancellationSignal signal) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final AssetFileDescriptor openAssetFile(Uri uri, String mode) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final AssetFileDescriptor openAssetFile(Uri uri, String mode, CancellationSignal signal) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final AssetFileDescriptor openTypedAssetFile(Uri uri, String mimeTypeFilter, Bundle opts) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final AssetFileDescriptor openTypedAssetFile(Uri uri, String mimeTypeFilter, Bundle opts, CancellationSignal signal) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public String[] getDocumentStreamTypes(String documentId, String mimeTypeFilter) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String[] getStreamTypes(Uri uri, String mimeTypeFilter) {
        throw new RuntimeException("Stub!");
    }
}
