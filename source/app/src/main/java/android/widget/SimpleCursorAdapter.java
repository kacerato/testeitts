package android.widget;

import android.content.Context;
import android.database.Cursor;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/SimpleCursorAdapter.class
 */
public class SimpleCursorAdapter extends ResourceCursorAdapter {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/SimpleCursorAdapter$CursorToStringConverter.class
 */
    public interface CursorToStringConverter {
        CharSequence convertToString(Cursor cursor);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/SimpleCursorAdapter$ViewBinder.class
 */
    public interface ViewBinder {
        boolean setViewValue(View view, Cursor cursor, int i10);
    }

    @Deprecated
    public SimpleCursorAdapter(Context context, int layout, Cursor c10, String[] from, int[] to) {
        super((Context) null, 0, (Cursor) null, 0);
        throw new RuntimeException("Stub!");
    }

    public SimpleCursorAdapter(Context context, int layout, Cursor c10, String[] from, int[] to, int flags) {
        super((Context) null, 0, (Cursor) null, 0);
        throw new RuntimeException("Stub!");
    }

    @Override
    public void bindView(View view, Context context, Cursor cursor) {
        throw new RuntimeException("Stub!");
    }

    public ViewBinder getViewBinder() {
        throw new RuntimeException("Stub!");
    }

    public void setViewBinder(ViewBinder viewBinder) {
        throw new RuntimeException("Stub!");
    }

    public void setViewImage(ImageView v10, String value) {
        throw new RuntimeException("Stub!");
    }

    public void setViewText(TextView v10, String text) {
        throw new RuntimeException("Stub!");
    }

    public int getStringConversionColumn() {
        throw new RuntimeException("Stub!");
    }

    public void setStringConversionColumn(int stringConversionColumn) {
        throw new RuntimeException("Stub!");
    }

    public CursorToStringConverter getCursorToStringConverter() {
        throw new RuntimeException("Stub!");
    }

    public void setCursorToStringConverter(CursorToStringConverter cursorToStringConverter) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence convertToString(Cursor cursor) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Cursor swapCursor(Cursor c10) {
        throw new RuntimeException("Stub!");
    }

    public void changeCursorAndColumns(Cursor c10, String[] from, int[] to) {
        throw new RuntimeException("Stub!");
    }
}
