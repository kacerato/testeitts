package android.widget;

import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.SparseBooleanArray;
import android.view.ActionMode;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.Filter;
import java.util.ArrayList;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/AbsListView.class
 */
public abstract class AbsListView extends AdapterView<ListAdapter> implements TextWatcher, ViewTreeObserver.OnGlobalLayoutListener, Filter.FilterListener, ViewTreeObserver.OnTouchModeChangeListener {
    public static final int CHOICE_MODE_MULTIPLE = 2;
    public static final int CHOICE_MODE_MULTIPLE_MODAL = 3;
    public static final int CHOICE_MODE_NONE = 0;
    public static final int CHOICE_MODE_SINGLE = 1;
    public static final int TRANSCRIPT_MODE_ALWAYS_SCROLL = 2;
    public static final int TRANSCRIPT_MODE_DISABLED = 0;
    public static final int TRANSCRIPT_MODE_NORMAL = 1;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/AbsListView$MultiChoiceModeListener.class
 */
    public interface MultiChoiceModeListener extends ActionMode.Callback {
        void onItemCheckedStateChanged(ActionMode actionMode, int i10, long j10, boolean z10);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/AbsListView$OnScrollListener.class
 */
    public interface OnScrollListener {
        public static final int SCROLL_STATE_FLING = 2;
        public static final int SCROLL_STATE_IDLE = 0;
        public static final int SCROLL_STATE_TOUCH_SCROLL = 1;

        void onScrollStateChanged(AbsListView absListView, int i10);

        void onScroll(AbsListView absListView, int i10, int i11, int i12);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/AbsListView$RecyclerListener.class
 */
    public interface RecyclerListener {
        void onMovedToScrapHeap(View view);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/AbsListView$SelectionBoundsAdjuster.class
 */
    public interface SelectionBoundsAdjuster {
        void adjustListItemSelectionBounds(Rect rect);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/AbsListView$LayoutParams.class
 */
    public static class LayoutParams extends ViewGroup.LayoutParams {
        public LayoutParams(Context c10, AttributeSet attrs) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(int w10, int h10) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(int w10, int h10, int viewType) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(ViewGroup.LayoutParams source) {
            super((ViewGroup.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }
    }

    public AbsListView(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public AbsListView(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public AbsListView(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public AbsListView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setOverScrollMode(int mode) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setAdapter(ListAdapter adapter) {
        throw new RuntimeException("Stub!");
    }

    public int getCheckedItemCount() {
        throw new RuntimeException("Stub!");
    }

    public boolean isItemChecked(int position) {
        throw new RuntimeException("Stub!");
    }

    public int getCheckedItemPosition() {
        throw new RuntimeException("Stub!");
    }

    public SparseBooleanArray getCheckedItemPositions() {
        throw new RuntimeException("Stub!");
    }

    public long[] getCheckedItemIds() {
        throw new RuntimeException("Stub!");
    }

    public void clearChoices() {
        throw new RuntimeException("Stub!");
    }

    public void setItemChecked(int position, boolean value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean performItemClick(View view, int position, long id2) {
        throw new RuntimeException("Stub!");
    }

    public int getChoiceMode() {
        throw new RuntimeException("Stub!");
    }

    public void setChoiceMode(int choiceMode) {
        throw new RuntimeException("Stub!");
    }

    public void setMultiChoiceModeListener(MultiChoiceModeListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void setFastScrollEnabled(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    public void setFastScrollStyle(int styleResId) {
        throw new RuntimeException("Stub!");
    }

    public void setFastScrollAlwaysVisible(boolean alwaysShow) {
        throw new RuntimeException("Stub!");
    }

    public boolean isFastScrollAlwaysVisible() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getVerticalScrollbarWidth() {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty
    public boolean isFastScrollEnabled() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setVerticalScrollbarPosition(int position) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setScrollBarStyle(int style) {
        throw new RuntimeException("Stub!");
    }

    public void setSmoothScrollbarEnabled(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty
    public boolean isSmoothScrollbarEnabled() {
        throw new RuntimeException("Stub!");
    }

    public void setOnScrollListener(OnScrollListener l10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty
    public boolean isScrollingCacheEnabled() {
        throw new RuntimeException("Stub!");
    }

    public void setScrollingCacheEnabled(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    public void setTextFilterEnabled(boolean textFilterEnabled) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty
    public boolean isTextFilterEnabled() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void getFocusedRect(Rect r10) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty
    public boolean isStackFromBottom() {
        throw new RuntimeException("Stub!");
    }

    public void setStackFromBottom(boolean stackFromBottom) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Parcelable onSaveInstanceState() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onRestoreInstanceState(Parcelable state) {
        throw new RuntimeException("Stub!");
    }

    public void setFilterText(String filterText) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getTextFilter() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onFocusChanged(boolean gainFocus, int direction, Rect previouslyFocusedRect) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void requestLayout() {
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
    public float getTopFadingEdgeStrength() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public float getBottomFadingEdgeStrength() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void onLayout(boolean changed, int l10, int t10, int r10, int b10) {
        throw new RuntimeException("Stub!");
    }

    public void layoutChildren() {
        throw new RuntimeException("Stub!");
    }

    @Override
    @ViewDebug.ExportedProperty
    public View getSelectedView() {
        throw new RuntimeException("Stub!");
    }

    public int getListPaddingTop() {
        throw new RuntimeException("Stub!");
    }

    public int getListPaddingBottom() {
        throw new RuntimeException("Stub!");
    }

    public int getListPaddingLeft() {
        throw new RuntimeException("Stub!");
    }

    public int getListPaddingRight() {
        throw new RuntimeException("Stub!");
    }

    public void onInitializeAccessibilityNodeInfoForItem(View view, int position, AccessibilityNodeInfo info) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isPaddingOffsetRequired() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getLeftPaddingOffset() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getTopPaddingOffset() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getRightPaddingOffset() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getBottomPaddingOffset() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        throw new RuntimeException("Stub!");
    }

    public void setDrawSelectorOnTop(boolean onTop) {
        throw new RuntimeException("Stub!");
    }

    public void setSelector(int resID) {
        throw new RuntimeException("Stub!");
    }

    public void setSelector(Drawable sel) {
        throw new RuntimeException("Stub!");
    }

    public Drawable getSelector() {
        throw new RuntimeException("Stub!");
    }

    public void setScrollIndicators(View up, View down) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void drawableStateChanged() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean verifyDrawable(Drawable dr) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void jumpDrawablesToCurrentState() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onAttachedToWindow() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void onDetachedFromWindow() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onWindowFocusChanged(boolean hasWindowFocus) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onRtlPropertiesChanged(int layoutDirection) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onCancelPendingInputEvents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ContextMenu.ContextMenuInfo getContextMenuInfo() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean showContextMenu() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean showContextMenu(float x10, float y10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean showContextMenuForChild(View originalView) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean showContextMenuForChild(View originalView, float x10, float y10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dispatchSetPressed(boolean pressed) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dispatchDrawableHotspotChanged(float x10, float y10) {
        throw new RuntimeException("Stub!");
    }

    public int pointToPosition(int x10, int y10) {
        throw new RuntimeException("Stub!");
    }

    public long pointToRowId(int x10, int y10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onTouchModeChanged(boolean isInTouchMode) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onTouchEvent(MotionEvent ev) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onOverScrolled(int scrollX, int scrollY, boolean clampedX, boolean clampedY) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onGenericMotionEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    public void fling(int velocityY) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onStartNestedScroll(View child, View target, int nestedScrollAxes) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onNestedScrollAccepted(View child, View target, int axes) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onNestedScroll(View target, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onNestedFling(View target, float velocityX, float velocityY, boolean consumed) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void draw(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void requestDisallowInterceptTouchEvent(boolean disallowIntercept) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onInterceptHoverEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public PointerIcon onResolvePointerIcon(MotionEvent event, int pointerIndex) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void addTouchables(ArrayList<View> views) {
        throw new RuntimeException("Stub!");
    }

    public void setFriction(float friction) {
        throw new RuntimeException("Stub!");
    }

    public void setVelocityScale(float scale) {
        throw new RuntimeException("Stub!");
    }

    public void smoothScrollToPosition(int position) {
        throw new RuntimeException("Stub!");
    }

    public void smoothScrollToPositionFromTop(int position, int offset, int duration) {
        throw new RuntimeException("Stub!");
    }

    public void smoothScrollToPositionFromTop(int position, int offset) {
        throw new RuntimeException("Stub!");
    }

    public void smoothScrollToPosition(int position, int boundPosition) {
        throw new RuntimeException("Stub!");
    }

    public void smoothScrollBy(int distance, int duration) {
        throw new RuntimeException("Stub!");
    }

    public void scrollListBy(int y10) {
        throw new RuntimeException("Stub!");
    }

    public boolean canScrollList(int direction) {
        throw new RuntimeException("Stub!");
    }

    public void invalidateViews() {
        throw new RuntimeException("Stub!");
    }

    protected void handleDataChanged() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDisplayHint(int hint) {
        throw new RuntimeException("Stub!");
    }

    protected boolean isInFilterMode() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public InputConnection onCreateInputConnection(EditorInfo outAttrs) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean checkInputConnectionProxy(View view) {
        throw new RuntimeException("Stub!");
    }

    public void clearTextFilter() {
        throw new RuntimeException("Stub!");
    }

    public boolean hasTextFilter() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onGlobalLayout() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void beforeTextChanged(CharSequence s10, int start, int count, int after) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onTextChanged(CharSequence s10, int start, int before, int count) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void afterTextChanged(Editable s10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onFilterComplete(int count) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams p10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LayoutParams generateLayoutParams(AttributeSet attrs) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean checkLayoutParams(ViewGroup.LayoutParams p10) {
        throw new RuntimeException("Stub!");
    }

    public void setTranscriptMode(int mode) {
        throw new RuntimeException("Stub!");
    }

    public int getTranscriptMode() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getSolidColor() {
        throw new RuntimeException("Stub!");
    }

    public void setCacheColorHint(int color) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public int getCacheColorHint() {
        throw new RuntimeException("Stub!");
    }

    public void reclaimViews(List<View> views) {
        throw new RuntimeException("Stub!");
    }

    public void setRemoteViewsAdapter(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    public void deferNotifyDataSetChanged() {
        throw new RuntimeException("Stub!");
    }

    public boolean onRemoteAdapterConnected() {
        throw new RuntimeException("Stub!");
    }

    public void onRemoteAdapterDisconnected() {
        throw new RuntimeException("Stub!");
    }

    public void setRecyclerListener(RecyclerListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void setSelectionFromTop(int position, int y10) {
        throw new RuntimeException("Stub!");
    }
}
