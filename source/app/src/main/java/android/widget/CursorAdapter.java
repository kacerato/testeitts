package android.widget;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/CursorAdapter.class
 */
public abstract class CursorAdapter extends BaseAdapter implements Filterable, ThemedSpinnerAdapter {

    @Deprecated
    public static final int FLAG_AUTO_REQUERY = 1;
    public static final int FLAG_REGISTER_CONTENT_OBSERVER = 2;

    public abstract View newView(Context context, Cursor cursor, ViewGroup viewGroup);

    public abstract void bindView(View view, Context context, Cursor cursor);

    @Deprecated
    public CursorAdapter(Context context, Cursor c10) {
        throw new RuntimeException("Stub!");
    }

    public CursorAdapter(Context context, Cursor c10, boolean autoRequery) {
        throw new RuntimeException("Stub!");
    }

    public CursorAdapter(Context context, Cursor c10, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    protected void init(Context context, Cursor c10, boolean autoRequery) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setDropDownViewTheme(Resources.Theme theme) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Resources.Theme getDropDownViewTheme() {
        throw new RuntimeException("Stub!");
    }

    public Cursor getCursor() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getCount() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Object getItem(int position) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long getItemId(int position) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean hasStableIds() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public View getDropDownView(int position, View convertView, ViewGroup parent) {
        throw new RuntimeException("Stub!");
    }

    public View newDropDownView(Context context, Cursor cursor, ViewGroup parent) {
        throw new RuntimeException("Stub!");
    }

    public void changeCursor(Cursor cursor) {
        throw new RuntimeException("Stub!");
    }

    public Cursor swapCursor(Cursor newCursor) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence convertToString(Cursor cursor) {
        throw new RuntimeException("Stub!");
    }

    public Cursor runQueryOnBackgroundThread(CharSequence constraint) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Filter getFilter() {
        throw new RuntimeException("Stub!");
    }

    public FilterQueryProvider getFilterQueryProvider() {
        throw new RuntimeException("Stub!");
    }

    public void setFilterQueryProvider(FilterQueryProvider filterQueryProvider) {
        throw new RuntimeException("Stub!");
    }

    protected void onContentChanged() {
        throw new RuntimeException("Stub!");
    }
}
