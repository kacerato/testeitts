package android.widget;

import android.content.Context;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/ResourceCursorTreeAdapter.class
 */
public abstract class ResourceCursorTreeAdapter extends CursorTreeAdapter {
    public ResourceCursorTreeAdapter(Context context, Cursor cursor, int collapsedGroupLayout, int expandedGroupLayout, int childLayout, int lastChildLayout) {
        super((Cursor) null, (Context) null, false);
        throw new RuntimeException("Stub!");
    }

    public ResourceCursorTreeAdapter(Context context, Cursor cursor, int collapsedGroupLayout, int expandedGroupLayout, int childLayout) {
        super((Cursor) null, (Context) null, false);
        throw new RuntimeException("Stub!");
    }

    public ResourceCursorTreeAdapter(Context context, Cursor cursor, int groupLayout, int childLayout) {
        super((Cursor) null, (Context) null, false);
        throw new RuntimeException("Stub!");
    }

    @Override
    public View newChildView(Context context, Cursor cursor, boolean isLastChild, ViewGroup parent) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public View newGroupView(Context context, Cursor cursor, boolean isExpanded, ViewGroup parent) {
        throw new RuntimeException("Stub!");
    }
}
