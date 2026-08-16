package android.content;

import android.content.res.AssetFileDescriptor;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import java.io.FileNotFoundException;
import java.util.ArrayList;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/ContentProviderClient.class
 */
public class ContentProviderClient implements AutoCloseable {
    ContentProviderClient() {
        throw new RuntimeException("Stub!");
    }

    public Cursor query(Uri url, String[] projection, String selection, String[] selectionArgs, String sortOrder) throws RemoteException {
        throw new RuntimeException("Stub!");
    }

    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder, CancellationSignal cancellationSignal) throws RemoteException {
        throw new RuntimeException("Stub!");
    }

    public Cursor query(Uri uri, String[] projection, Bundle queryArgs, CancellationSignal cancellationSignal) throws RemoteException {
        throw new RuntimeException("Stub!");
    }

    public String getType(Uri url) throws RemoteException {
        throw new RuntimeException("Stub!");
    }

    public String[] getStreamTypes(Uri url, String mimeTypeFilter) throws RemoteException {
        throw new RuntimeException("Stub!");
    }

    public final Uri canonicalize(Uri url) throws RemoteException {
        throw new RuntimeException("Stub!");
    }

    public final Uri uncanonicalize(Uri url) throws RemoteException {
        throw new RuntimeException("Stub!");
    }

    public boolean refresh(Uri url, Bundle args, CancellationSignal cancellationSignal) throws RemoteException {
        throw new RuntimeException("Stub!");
    }

    public Uri insert(Uri url, ContentValues initialValues) throws RemoteException {
        throw new RuntimeException("Stub!");
    }

    public int bulkInsert(Uri url, ContentValues[] initialValues) throws RemoteException {
        throw new RuntimeException("Stub!");
    }

    public int delete(Uri url, String selection, String[] selectionArgs) throws RemoteException {
        throw new RuntimeException("Stub!");
    }

    public int update(Uri url, ContentValues values, String selection, String[] selectionArgs) throws RemoteException {
        throw new RuntimeException("Stub!");
    }

    public ParcelFileDescriptor openFile(Uri url, String mode) throws RemoteException, FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public ParcelFileDescriptor openFile(Uri url, String mode, CancellationSignal signal) throws RemoteException, FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public AssetFileDescriptor openAssetFile(Uri url, String mode) throws RemoteException, FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public AssetFileDescriptor openAssetFile(Uri url, String mode, CancellationSignal signal) throws RemoteException, FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public final AssetFileDescriptor openTypedAssetFileDescriptor(Uri uri, String mimeType, Bundle opts) throws RemoteException, FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public final AssetFileDescriptor openTypedAssetFileDescriptor(Uri uri, String mimeType, Bundle opts, CancellationSignal signal) throws RemoteException, FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public ContentProviderResult[] applyBatch(ArrayList<ContentProviderOperation> operations) throws RemoteException, OperationApplicationException {
        throw new RuntimeException("Stub!");
    }

    public Bundle call(String method, String arg, Bundle extras) throws RemoteException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public boolean release() {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() throws Throwable {
        throw new RuntimeException("Stub!");
    }

    public ContentProvider getLocalContentProvider() {
        throw new RuntimeException("Stub!");
    }
}
