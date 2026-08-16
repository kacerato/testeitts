package android.widget;

import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.RemoteViews;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/ListView.class
 */
@RemoteViews.RemoteView
public class ListView extends AbsListView {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/ListView$FixedViewInfo.class
 */
    public class FixedViewInfo {
        public Object data;
        public boolean isSelectable;
        public View view;

        public FixedViewInfo() {
            throw new RuntimeException("Stub!");
        }
    }

    public ListView(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public ListView(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public ListView(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public ListView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public int getMaxScrollAmount() {
        throw new RuntimeException("Stub!");
    }

    public void addHeaderView(View v10, Object data, boolean isSelectable) {
        throw new RuntimeException("Stub!");
    }

    public void addHeaderView(View v10) {
        throw new RuntimeException("Stub!");
    }

    public int getHeaderViewsCount() {
        throw new RuntimeException("Stub!");
    }

    public boolean removeHeaderView(View v10) {
        throw new RuntimeException("Stub!");
    }

    public void addFooterView(View v10, Object data, boolean isSelectable) {
        throw new RuntimeException("Stub!");
    }

    public void addFooterView(View v10) {
        throw new RuntimeException("Stub!");
    }

    public int getFooterViewsCount() {
        throw new RuntimeException("Stub!");
    }

    public boolean removeFooterView(View v10) {
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
    public boolean requestChildRectangleOnScreen(View child, Rect rect, boolean immediate) {
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
    public void onDetachedFromWindow() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void layoutChildren() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected boolean canAnimate() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setSelection(int position) {
        throw new RuntimeException("Stub!");
    }

    public void setSelectionAfterHeaderView() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
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

    public void setItemsCanFocus(boolean itemsCanFocus) {
        throw new RuntimeException("Stub!");
    }

    public boolean getItemsCanFocus() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isOpaque() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setCacheColorHint(int color) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean drawChild(Canvas canvas, View child, long drawingTime) {
        throw new RuntimeException("Stub!");
    }

    public Drawable getDivider() {
        throw new RuntimeException("Stub!");
    }

    public void setDivider(Drawable divider) {
        throw new RuntimeException("Stub!");
    }

    public int getDividerHeight() {
        throw new RuntimeException("Stub!");
    }

    public void setDividerHeight(int height) {
        throw new RuntimeException("Stub!");
    }

    public void setHeaderDividersEnabled(boolean headerDividersEnabled) {
        throw new RuntimeException("Stub!");
    }

    public boolean areHeaderDividersEnabled() {
        throw new RuntimeException("Stub!");
    }

    public void setFooterDividersEnabled(boolean footerDividersEnabled) {
        throw new RuntimeException("Stub!");
    }

    public boolean areFooterDividersEnabled() {
        throw new RuntimeException("Stub!");
    }

    public void setOverscrollHeader(Drawable header) {
        throw new RuntimeException("Stub!");
    }

    public Drawable getOverscrollHeader() {
        throw new RuntimeException("Stub!");
    }

    public void setOverscrollFooter(Drawable footer) {
        throw new RuntimeException("Stub!");
    }

    public Drawable getOverscrollFooter() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onFocusChanged(boolean gainFocus, int direction, Rect previouslyFocusedRect) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onFinishInflate() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public long[] getCheckItemIds() {
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
