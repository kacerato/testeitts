package androidx.loader.content;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import androidx.core.content.ContentResolverCompat;
import androidx.core.os.CancellationSignal;
import androidx.core.os.OperationCanceledException;
import androidx.loader.content.Loader;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Arrays;

public class CursorLoader extends AsyncTaskLoader<Cursor> {
    private CancellationSignal mCancellationSignal;
    private Cursor mCursor;
    private final Loader<Cursor>.ForceLoadContentObserver mObserver;
    private String[] mProjection;
    private String mSelection;
    private String[] mSelectionArgs;
    private String mSortOrder;
    private Uri mUri;

    public CursorLoader(Context context) {
        super(context);
        this.mObserver = new Loader.ForceLoadContentObserver();
    }

    @Override
    public void cancelLoadInBackground() {
        super.cancelLoadInBackground();
        synchronized (this) {
            try {
                CancellationSignal cancellationSignal = this.mCancellationSignal;
                if (cancellationSignal != null) {
                    cancellationSignal.cancel();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    @Deprecated
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("mUri=");
        printWriter.println(this.mUri);
        printWriter.print(str);
        printWriter.print("mProjection=");
        printWriter.println(Arrays.toString(this.mProjection));
        printWriter.print(str);
        printWriter.print("mSelection=");
        printWriter.println(this.mSelection);
        printWriter.print(str);
        printWriter.print("mSelectionArgs=");
        printWriter.println(Arrays.toString(this.mSelectionArgs));
        printWriter.print(str);
        printWriter.print("mSortOrder=");
        printWriter.println(this.mSortOrder);
        printWriter.print(str);
        printWriter.print("mCursor=");
        printWriter.println(this.mCursor);
    }

    public String[] getProjection() {
        return this.mProjection;
    }

    public String getSelection() {
        return this.mSelection;
    }

    public String[] getSelectionArgs() {
        return this.mSelectionArgs;
    }

    public String getSortOrder() {
        return this.mSortOrder;
    }

    public Uri getUri() {
        return this.mUri;
    }

    @Override
    public void onReset() {
        super.onReset();
        onStopLoading();
        Cursor cursor = this.mCursor;
        if (cursor != null && !cursor.isClosed()) {
            this.mCursor.close();
        }
        this.mCursor = null;
    }

    @Override
    public void onStartLoading() {
        Cursor cursor = this.mCursor;
        if (cursor != null) {
            deliverResult(cursor);
        }
        if (takeContentChanged() || this.mCursor == null) {
            forceLoad();
        }
    }

    @Override
    public void onStopLoading() {
        cancelLoad();
    }

    public void setProjection(String[] strArr) {
        this.mProjection = strArr;
    }

    public void setSelection(String str) {
        this.mSelection = str;
    }

    public void setSelectionArgs(String[] strArr) {
        this.mSelectionArgs = strArr;
    }

    public void setSortOrder(String str) {
        this.mSortOrder = str;
    }

    public void setUri(Uri uri) {
        this.mUri = uri;
    }

    @Override
    public void deliverResult(Cursor cursor) {
        if (isReset()) {
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        Cursor cursor2 = this.mCursor;
        this.mCursor = cursor;
        if (isStarted()) {
            super.deliverResult((CursorLoader) cursor);
        }
        if (cursor2 == null || cursor2 == cursor || cursor2.isClosed()) {
            return;
        }
        cursor2.close();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Cursor loadInBackground() {
        synchronized (this) {
            if (!isLoadInBackgroundCanceled()) {
                this.mCancellationSignal = new CancellationSignal();
            } else {
                throw new OperationCanceledException();
            }
        }
        try {
            Cursor query = ContentResolverCompat.query(getContext().getContentResolver(), this.mUri, this.mProjection, this.mSelection, this.mSelectionArgs, this.mSortOrder, this.mCancellationSignal);
            if (query != null) {
                try {
                    query.getCount();
                    query.registerContentObserver(this.mObserver);
                } catch (RuntimeException e10) {
                    query.close();
                    throw e10;
                }
            }
            synchronized (this) {
                this.mCancellationSignal = null;
            }
            return query;
        } catch (Throwable th2) {
            synchronized (this) {
                this.mCancellationSignal = null;
                throw th2;
            }
        }
    }

    @Override
    public void onCanceled(Cursor cursor) {
        if (cursor == null || cursor.isClosed()) {
            return;
        }
        cursor.close();
    }

    public CursorLoader(Context context, Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        super(context);
        this.mObserver = new Loader.ForceLoadContentObserver();
        this.mUri = uri;
        this.mProjection = strArr;
        this.mSelection = str;
        this.mSelectionArgs = strArr2;
        this.mSortOrder = str2;
    }
}
