package android.widget;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/ResourceCursorAdapter.class
 */
public abstract class ResourceCursorAdapter extends CursorAdapter {
    @Deprecated
    public ResourceCursorAdapter(Context context, int layout, Cursor c10) {
        super((Context) null, (Cursor) null, 0);
        throw new RuntimeException("Stub!");
    }

    public ResourceCursorAdapter(Context context, int layout, Cursor c10, boolean autoRequery) {
        super((Context) null, (Cursor) null, 0);
        throw new RuntimeException("Stub!");
    }

    public ResourceCursorAdapter(Context context, int layout, Cursor c10, int flags) {
        super((Context) null, (Cursor) null, 0);
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setDropDownViewTheme(Resources.Theme theme) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public View newView(Context context, Cursor cursor, ViewGroup parent) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public View newDropDownView(Context context, Cursor cursor, ViewGroup parent) {
        throw new RuntimeException("Stub!");
    }

    public void setViewResource(int layout) {
        throw new RuntimeException("Stub!");
    }

    public void setDropDownViewResource(int dropDownLayout) {
        throw new RuntimeException("Stub!");
    }
}
