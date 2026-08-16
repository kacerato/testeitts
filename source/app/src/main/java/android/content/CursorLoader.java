package android.content;

import android.database.Cursor;
import android.net.Uri;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/CursorLoader.class
 */
public class CursorLoader extends AsyncTaskLoader<Cursor> {
    public CursorLoader(Context context) {
        super((Context) null);
        throw new RuntimeException("Stub!");
    }

    public CursorLoader(Context context, Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        super((Context) null);
        throw new RuntimeException("Stub!");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Cursor loadInBackground() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void cancelLoadInBackground() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void deliverResult(Cursor cursor) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void onStartLoading() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void onStopLoading() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onCanceled(Cursor cursor) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void onReset() {
        throw new RuntimeException("Stub!");
    }

    public Uri getUri() {
        throw new RuntimeException("Stub!");
    }

    public void setUri(Uri uri) {
        throw new RuntimeException("Stub!");
    }

    public String[] getProjection() {
        throw new RuntimeException("Stub!");
    }

    public void setProjection(String[] projection) {
        throw new RuntimeException("Stub!");
    }

    public String getSelection() {
        throw new RuntimeException("Stub!");
    }

    public void setSelection(String selection) {
        throw new RuntimeException("Stub!");
    }

    public String[] getSelectionArgs() {
        throw new RuntimeException("Stub!");
    }

    public void setSelectionArgs(String[] selectionArgs) {
        throw new RuntimeException("Stub!");
    }

    public String getSortOrder() {
        throw new RuntimeException("Stub!");
    }

    public void setSortOrder(String sortOrder) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dump(String prefix, FileDescriptor fd2, PrintWriter writer, String[] args) {
        throw new RuntimeException("Stub!");
    }
}
