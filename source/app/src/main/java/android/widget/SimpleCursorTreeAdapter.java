package android.widget;

import android.content.Context;
import android.database.Cursor;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/SimpleCursorTreeAdapter.class
 */
public abstract class SimpleCursorTreeAdapter extends ResourceCursorTreeAdapter {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/SimpleCursorTreeAdapter$ViewBinder.class
 */
    public interface ViewBinder {
        boolean setViewValue(View view, Cursor cursor, int i10);
    }

    public SimpleCursorTreeAdapter(Context context, Cursor cursor, int collapsedGroupLayout, int expandedGroupLayout, String[] groupFrom, int[] groupTo, int childLayout, int lastChildLayout, String[] childFrom, int[] childTo) {
        super((Context) null, (Cursor) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public SimpleCursorTreeAdapter(Context context, Cursor cursor, int collapsedGroupLayout, int expandedGroupLayout, String[] groupFrom, int[] groupTo, int childLayout, String[] childFrom, int[] childTo) {
        super((Context) null, (Cursor) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public SimpleCursorTreeAdapter(Context context, Cursor cursor, int groupLayout, String[] groupFrom, int[] groupTo, int childLayout, String[] childFrom, int[] childTo) {
        super((Context) null, (Cursor) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public ViewBinder getViewBinder() {
        throw new RuntimeException("Stub!");
    }

    public void setViewBinder(ViewBinder viewBinder) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void bindChildView(View view, Context context, Cursor cursor, boolean isLastChild) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void bindGroupView(View view, Context context, Cursor cursor, boolean isExpanded) {
        throw new RuntimeException("Stub!");
    }

    protected void setViewImage(ImageView v10, String value) {
        throw new RuntimeException("Stub!");
    }

    public void setViewText(TextView v10, String text) {
        throw new RuntimeException("Stub!");
    }
}
