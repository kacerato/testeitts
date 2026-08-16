package android.database;

import android.content.ContentResolver;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/database/AbstractCursor.class
 */
public abstract class AbstractCursor implements CrossProcessCursor {

    @Deprecated
    protected boolean mClosed;

    @Deprecated
    protected ContentResolver mContentResolver;

    @Deprecated
    protected int mPos;

    @Override
    public abstract int getCount();

    @Override
    public abstract String[] getColumnNames();

    @Override
    public abstract String getString(int i10);

    @Override
    public abstract short getShort(int i10);

    @Override
    public abstract int getInt(int i10);

    @Override
    public abstract long getLong(int i10);

    @Override
    public abstract float getFloat(int i10);

    @Override
    public abstract double getDouble(int i10);

    @Override
    public abstract boolean isNull(int i10);

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/database/AbstractCursor$SelfContentObserver.class
 */
    protected static class SelfContentObserver extends ContentObserver {
        public SelfContentObserver(AbstractCursor cursor) {
            super((Handler) null);
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean deliverSelfNotifications() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void onChange(boolean selfChange) {
            throw new RuntimeException("Stub!");
        }
    }

    public AbstractCursor() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getType(int column) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public byte[] getBlob(int column) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CursorWindow getWindow() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getColumnCount() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void deactivate() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean requery() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isClosed() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onMove(int oldPosition, int newPosition) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void copyStringToBuffer(int columnIndex, CharArrayBuffer buffer) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final int getPosition() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final boolean moveToPosition(int position) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void fillWindow(int position, CursorWindow window) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final boolean move(int offset) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final boolean moveToFirst() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final boolean moveToLast() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final boolean moveToNext() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final boolean moveToPrevious() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final boolean isFirst() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final boolean isLast() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final boolean isBeforeFirst() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final boolean isAfterLast() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getColumnIndex(String columnName) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getColumnIndexOrThrow(String columnName) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getColumnName(int columnIndex) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void registerContentObserver(ContentObserver observer) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void unregisterContentObserver(ContentObserver observer) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void registerDataSetObserver(DataSetObserver observer) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void unregisterDataSetObserver(DataSetObserver observer) {
        throw new RuntimeException("Stub!");
    }

    protected void onChange(boolean selfChange) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setNotificationUri(ContentResolver cr, Uri notifyUri) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Uri getNotificationUri() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean getWantsAllOnMoveCalls() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setExtras(Bundle extras) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Bundle getExtras() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Bundle respond(Bundle extras) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    protected boolean isFieldUpdated(int columnIndex) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    protected Object getUpdatedField(int columnIndex) {
        throw new RuntimeException("Stub!");
    }

    protected void checkPosition() {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() {
        throw new RuntimeException("Stub!");
    }
}
