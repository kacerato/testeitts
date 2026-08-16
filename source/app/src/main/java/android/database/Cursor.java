package android.database;

import android.content.ContentResolver;
import android.net.Uri;
import android.os.Bundle;
import java.io.Closeable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/database/Cursor.class
 */
public interface Cursor extends Closeable {
    public static final int FIELD_TYPE_BLOB = 4;
    public static final int FIELD_TYPE_FLOAT = 2;
    public static final int FIELD_TYPE_INTEGER = 1;
    public static final int FIELD_TYPE_NULL = 0;
    public static final int FIELD_TYPE_STRING = 3;

    int getCount();

    int getPosition();

    boolean move(int i10);

    boolean moveToPosition(int i10);

    boolean moveToFirst();

    boolean moveToLast();

    boolean moveToNext();

    boolean moveToPrevious();

    boolean isFirst();

    boolean isLast();

    boolean isBeforeFirst();

    boolean isAfterLast();

    int getColumnIndex(String str);

    int getColumnIndexOrThrow(String str) throws IllegalArgumentException;

    String getColumnName(int i10);

    String[] getColumnNames();

    int getColumnCount();

    byte[] getBlob(int i10);

    String getString(int i10);

    void copyStringToBuffer(int i10, CharArrayBuffer charArrayBuffer);

    short getShort(int i10);

    int getInt(int i10);

    long getLong(int i10);

    float getFloat(int i10);

    double getDouble(int i10);

    int getType(int i10);

    boolean isNull(int i10);

    @Deprecated
    void deactivate();

    @Deprecated
    boolean requery();

    @Override
    void close();

    boolean isClosed();

    void registerContentObserver(ContentObserver contentObserver);

    void unregisterContentObserver(ContentObserver contentObserver);

    void registerDataSetObserver(DataSetObserver dataSetObserver);

    void unregisterDataSetObserver(DataSetObserver dataSetObserver);

    void setNotificationUri(ContentResolver contentResolver, Uri uri);

    Uri getNotificationUri();

    boolean getWantsAllOnMoveCalls();

    void setExtras(Bundle bundle);

    Bundle getExtras();

    Bundle respond(Bundle bundle);
}
