package android.widget;

import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.RemoteViews;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/GridView.class
 */
@RemoteViews.RemoteView
public class GridView extends AbsListView {
    public static final int AUTO_FIT = -1;
    public static final int NO_STRETCH = 0;
    public static final int STRETCH_COLUMN_WIDTH = 2;
    public static final int STRETCH_SPACING = 1;
    public static final int STRETCH_SPACING_UNIFORM = 3;

    public GridView(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public GridView(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public GridView(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public GridView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public ListAdapter getAdapter() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setRemoteViewsAdapter(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public void setAdapter(ListAdapter adapter) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void smoothScrollToPosition(int position) {
        throw new RuntimeException("Stub!");
    }

    public void smoothScrollByOffset(int offset) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void attachLayoutAnimationParameters(View child, ViewGroup.LayoutParams params, int index, int count) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void layoutChildren() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setSelection(int position) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyMultiple(int keyCode, int repeatCount, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onFocusChanged(boolean gainFocus, int direction, Rect previouslyFocusedRect) {
        throw new RuntimeException("Stub!");
    }

    public void setGravity(int gravity) {
        throw new RuntimeException("Stub!");
    }

    public int getGravity() {
        throw new RuntimeException("Stub!");
    }

    public void setHorizontalSpacing(int horizontalSpacing) {
        throw new RuntimeException("Stub!");
    }

    public int getHorizontalSpacing() {
        throw new RuntimeException("Stub!");
    }

    public int getRequestedHorizontalSpacing() {
        throw new RuntimeException("Stub!");
    }

    public void setVerticalSpacing(int verticalSpacing) {
        throw new RuntimeException("Stub!");
    }

    public int getVerticalSpacing() {
        throw new RuntimeException("Stub!");
    }

    public void setStretchMode(int stretchMode) {
        throw new RuntimeException("Stub!");
    }

    public int getStretchMode() {
        throw new RuntimeException("Stub!");
    }

    public void setColumnWidth(int columnWidth) {
        throw new RuntimeException("Stub!");
    }

    public int getColumnWidth() {
        throw new RuntimeException("Stub!");
    }

    public int getRequestedColumnWidth() {
        throw new RuntimeException("Stub!");
    }

    public void setNumColumns(int numColumns) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty
    public int getNumColumns() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int computeVerticalScrollExtent() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int computeVerticalScrollOffset() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected int computeVerticalScrollRange() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onInitializeAccessibilityNodeInfoForItem(View view, int position, AccessibilityNodeInfo info) {
        throw new RuntimeException("Stub!");
    }
}
