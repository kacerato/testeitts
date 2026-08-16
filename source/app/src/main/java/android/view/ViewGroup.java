package android.view;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Region;
import android.os.Bundle;
import android.os.Parcelable;
import android.security.keystore.KeyProperties;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ActionMode;
import android.view.ViewDebug;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Animation;
import android.view.animation.LayoutAnimationController;
import android.view.animation.Transformation;
import java.util.ArrayList;
import java.util.Collection;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ViewGroup.class
 */
public abstract class ViewGroup extends View implements ViewParent, ViewManager {
    protected static final int CLIP_TO_PADDING_MASK = 34;
    public static final int FOCUS_AFTER_DESCENDANTS = 262144;
    public static final int FOCUS_BEFORE_DESCENDANTS = 131072;
    public static final int FOCUS_BLOCK_DESCENDANTS = 393216;
    public static final int LAYOUT_MODE_CLIP_BOUNDS = 0;
    public static final int LAYOUT_MODE_OPTICAL_BOUNDS = 1;
    public static final int PERSISTENT_ALL_CACHES = 3;
    public static final int PERSISTENT_ANIMATION_CACHE = 1;
    public static final int PERSISTENT_NO_CACHE = 0;
    public static final int PERSISTENT_SCROLLING_CACHE = 2;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ViewGroup$OnHierarchyChangeListener.class
 */
    public interface OnHierarchyChangeListener {
        void onChildViewAdded(View view, View view2);

        void onChildViewRemoved(View view, View view2);
    }

    @Override
    public abstract void onLayout(boolean z10, int i10, int i11, int i12, int i13);

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ViewGroup$LayoutParams.class
 */
    public static class LayoutParams {

        @Deprecated
        public static final int FILL_PARENT = -1;
        public static final int MATCH_PARENT = -1;
        public static final int WRAP_CONTENT = -2;

        @ViewDebug.ExportedProperty(category = "layout", mapping = {@ViewDebug.IntToString(from = -1, to = "MATCH_PARENT"), @ViewDebug.IntToString(from = -2, to = "WRAP_CONTENT")})
        public int height;
        public LayoutAnimationController.AnimationParameters layoutAnimationParameters;

        @ViewDebug.ExportedProperty(category = "layout", mapping = {@ViewDebug.IntToString(from = -1, to = "MATCH_PARENT"), @ViewDebug.IntToString(from = -2, to = "WRAP_CONTENT")})
        public int width;

        public LayoutParams(Context c10, AttributeSet attrs) {
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(int width, int height) {
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(LayoutParams source) {
            throw new RuntimeException("Stub!");
        }

        protected void setBaseAttributes(TypedArray a10, int widthAttr, int heightAttr) {
            throw new RuntimeException("Stub!");
        }

        public void resolveLayoutDirection(int layoutDirection) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ViewGroup$MarginLayoutParams.class
 */
    public static class MarginLayoutParams extends LayoutParams {

        @ViewDebug.ExportedProperty(category = "layout")
        public int bottomMargin;

        @ViewDebug.ExportedProperty(category = "layout")
        public int leftMargin;

        @ViewDebug.ExportedProperty(category = "layout")
        public int rightMargin;

        @ViewDebug.ExportedProperty(category = "layout")
        public int topMargin;

        public MarginLayoutParams(Context c10, AttributeSet attrs) {
            super((LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public MarginLayoutParams(int width, int height) {
            super((LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public MarginLayoutParams(MarginLayoutParams source) {
            super((LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public MarginLayoutParams(LayoutParams source) {
            super((LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public void setMargins(int left, int top, int right, int bottom) {
            throw new RuntimeException("Stub!");
        }

        public void setMarginStart(int start) {
            throw new RuntimeException("Stub!");
        }

        public int getMarginStart() {
            throw new RuntimeException("Stub!");
        }

        public void setMarginEnd(int end) {
            throw new RuntimeException("Stub!");
        }

        public int getMarginEnd() {
            throw new RuntimeException("Stub!");
        }

        public boolean isMarginRelative() {
            throw new RuntimeException("Stub!");
        }

        public void setLayoutDirection(int layoutDirection) {
            throw new RuntimeException("Stub!");
        }

        public int getLayoutDirection() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void resolveLayoutDirection(int layoutDirection) {
            throw new RuntimeException("Stub!");
        }
    }

    public ViewGroup(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public ViewGroup(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public ViewGroup(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public ViewGroup(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "focus", mapping = {@ViewDebug.IntToString(from = 131072, to = "FOCUS_BEFORE_DESCENDANTS"), @ViewDebug.IntToString(from = 262144, to = "FOCUS_AFTER_DESCENDANTS"), @ViewDebug.IntToString(from = 393216, to = "FOCUS_BLOCK_DESCENDANTS")})
    public int getDescendantFocusability() {
        throw new RuntimeException("Stub!");
    }

    public void setDescendantFocusability(int focusability) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void requestChildFocus(View child, View focused) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void focusableViewAvailable(View v10) {
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
    public ActionMode startActionModeForChild(View originalView, ActionMode.Callback callback) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ActionMode startActionModeForChild(View originalView, ActionMode.Callback callback, int type) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public View focusSearch(View focused, int direction) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean requestChildRectangleOnScreen(View child, Rect rectangle, boolean immediate) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean requestSendAccessibilityEvent(View child, AccessibilityEvent event) {
        throw new RuntimeException("Stub!");
    }

    public boolean onRequestSendAccessibilityEvent(View child, AccessibilityEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void childHasTransientStateChanged(View child, boolean childHasTransientState) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean hasTransientState() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchUnhandledMove(View focused, int direction) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void clearChildFocus(View child) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void clearFocus() {
        throw new RuntimeException("Stub!");
    }

    public View getFocusedChild() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean hasFocus() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public View findFocus() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void addFocusables(ArrayList<View> views, int direction, int focusableMode) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void addKeyboardNavigationClusters(Collection<View> views, int direction) {
        throw new RuntimeException("Stub!");
    }

    public void setTouchscreenBlocksFocus(boolean touchscreenBlocksFocus) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "focus")
    public boolean getTouchscreenBlocksFocus() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void findViewsWithText(ArrayList<View> outViews, CharSequence text, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dispatchWindowFocusChanged(boolean hasFocus) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void addTouchables(ArrayList<View> views) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dispatchDisplayHint(int hint) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dispatchVisibilityChanged(View changedView, int visibility) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dispatchWindowVisibilityChanged(int visibility) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dispatchConfigurationChanged(Configuration newConfig) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void recomputeViewAttributes(View child) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void bringChildToFront(View child) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchDragEvent(DragEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dispatchWindowSystemUiVisiblityChanged(int visible) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dispatchSystemUiVisibilityChanged(int visible) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchKeyEventPreIme(KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchKeyShortcutEvent(KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchTrackballEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchCapturedPointerEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dispatchPointerCaptureChanged(boolean hasCapture) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public PointerIcon onResolvePointerIcon(MotionEvent event, int pointerIndex) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchHoverEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void addChildrenForAccessibility(ArrayList<View> outChildren) {
        throw new RuntimeException("Stub!");
    }

    public boolean onInterceptHoverEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchGenericPointerEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchGenericFocusedEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent ev) {
        throw new RuntimeException("Stub!");
    }

    public void setMotionEventSplittingEnabled(boolean split) {
        throw new RuntimeException("Stub!");
    }

    public boolean isMotionEventSplittingEnabled() {
        throw new RuntimeException("Stub!");
    }

    public boolean isTransitionGroup() {
        throw new RuntimeException("Stub!");
    }

    public void setTransitionGroup(boolean isTransitionGroup) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void requestDisallowInterceptTouchEvent(boolean disallowIntercept) {
        throw new RuntimeException("Stub!");
    }

    public boolean onInterceptTouchEvent(MotionEvent ev) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean requestFocus(int direction, Rect previouslyFocusedRect) {
        throw new RuntimeException("Stub!");
    }

    public boolean onRequestFocusInDescendants(int direction, Rect previouslyFocusedRect) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean restoreDefaultFocus() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dispatchProvideStructure(ViewStructure structure) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dispatchProvideAutofillStructure(ViewStructure structure, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void notifySubtreeAccessibilityStateChanged(View child, View source, int changeType) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onNestedPrePerformAccessibilityAction(View target, int action, Bundle args) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void dispatchSaveInstanceState(SparseArray<Parcelable> container) {
        throw new RuntimeException("Stub!");
    }

    public void dispatchFreezeSelfOnly(SparseArray<Parcelable> container) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> container) {
        throw new RuntimeException("Stub!");
    }

    public void dispatchThawSelfOnly(SparseArray<Parcelable> container) {
        throw new RuntimeException("Stub!");
    }

    public void setChildrenDrawingCacheEnabled(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ViewGroupOverlay getOverlay() {
        throw new RuntimeException("Stub!");
    }

    public int getChildDrawingOrder(int childCount, int i10) {
        throw new RuntimeException("Stub!");
    }

    public boolean drawChild(Canvas canvas, View child, long drawingTime) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public boolean getClipChildren() {
        throw new RuntimeException("Stub!");
    }

    public void setClipChildren(boolean clipChildren) {
        throw new RuntimeException("Stub!");
    }

    public void setClipToPadding(boolean clipToPadding) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public boolean getClipToPadding() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dispatchSetSelected(boolean selected) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dispatchSetActivated(boolean activated) {
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

    public void setStaticTransformationsEnabled(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    public boolean getChildStaticTransformation(View child, Transformation t10) {
        throw new RuntimeException("Stub!");
    }

    public void addView(View child) {
        throw new RuntimeException("Stub!");
    }

    public void addView(View child, int index) {
        throw new RuntimeException("Stub!");
    }

    public void addView(View child, int width, int height) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void addView(View child, LayoutParams params) {
        throw new RuntimeException("Stub!");
    }

    public void addView(View child, int index, LayoutParams params) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void updateViewLayout(View view, LayoutParams params) {
        throw new RuntimeException("Stub!");
    }

    public boolean checkLayoutParams(LayoutParams p10) {
        throw new RuntimeException("Stub!");
    }

    public void setOnHierarchyChangeListener(OnHierarchyChangeListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void onViewAdded(View child) {
        throw new RuntimeException("Stub!");
    }

    public void onViewRemoved(View child) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onAttachedToWindow() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDetachedFromWindow() {
        throw new RuntimeException("Stub!");
    }

    public boolean addViewInLayout(View child, int index, LayoutParams params) {
        throw new RuntimeException("Stub!");
    }

    public boolean addViewInLayout(View child, int index, LayoutParams params, boolean preventRequestLayout) {
        throw new RuntimeException("Stub!");
    }

    public void cleanupLayoutState(View child) {
        throw new RuntimeException("Stub!");
    }

    public void attachLayoutAnimationParameters(View child, LayoutParams params, int index, int count) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void removeView(View view) {
        throw new RuntimeException("Stub!");
    }

    public void removeViewInLayout(View view) {
        throw new RuntimeException("Stub!");
    }

    public void removeViewsInLayout(int start, int count) {
        throw new RuntimeException("Stub!");
    }

    public void removeViewAt(int index) {
        throw new RuntimeException("Stub!");
    }

    public void removeViews(int start, int count) {
        throw new RuntimeException("Stub!");
    }

    public void setLayoutTransition(LayoutTransition transition) {
        throw new RuntimeException("Stub!");
    }

    public LayoutTransition getLayoutTransition() {
        throw new RuntimeException("Stub!");
    }

    public void removeAllViews() {
        throw new RuntimeException("Stub!");
    }

    public void removeAllViewsInLayout() {
        throw new RuntimeException("Stub!");
    }

    public void removeDetachedView(View child, boolean animate) {
        throw new RuntimeException("Stub!");
    }

    public void attachViewToParent(View child, int index, LayoutParams params) {
        throw new RuntimeException("Stub!");
    }

    public void detachViewFromParent(View child) {
        throw new RuntimeException("Stub!");
    }

    public void detachViewFromParent(int index) {
        throw new RuntimeException("Stub!");
    }

    public void detachViewsFromParent(int start, int count) {
        throw new RuntimeException("Stub!");
    }

    public void detachAllViewsFromParent() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDescendantInvalidated(View child, View target) {
        throw new RuntimeException("Stub!");
    }

    @Override
    @Deprecated
    public final void invalidateChild(View child, Rect dirty) {
        throw new RuntimeException("Stub!");
    }

    @Override
    @Deprecated
    public ViewParent invalidateChildInParent(int[] location, Rect dirty) {
        throw new RuntimeException("Stub!");
    }

    public final void offsetDescendantRectToMyCoords(View descendant, Rect rect) {
        throw new RuntimeException("Stub!");
    }

    public final void offsetRectIntoDescendantCoords(View descendant, Rect rect) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean getChildVisibleRect(View child, Rect r10, Point offset) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final void layout(int l10, int t10, int r10, int b10) {
        throw new RuntimeException("Stub!");
    }

    public boolean canAnimate() {
        throw new RuntimeException("Stub!");
    }

    public void startLayoutAnimation() {
        throw new RuntimeException("Stub!");
    }

    public void scheduleLayoutAnimation() {
        throw new RuntimeException("Stub!");
    }

    public void setLayoutAnimation(LayoutAnimationController controller) {
        throw new RuntimeException("Stub!");
    }

    public LayoutAnimationController getLayoutAnimation() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public boolean isAnimationCacheEnabled() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void setAnimationCacheEnabled(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public boolean isAlwaysDrawnWithCacheEnabled() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void setAlwaysDrawnWithCacheEnabled(boolean always) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public boolean isChildrenDrawnWithCacheEnabled() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void setChildrenDrawnWithCacheEnabled(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public boolean isChildrenDrawingOrderEnabled() {
        throw new RuntimeException("Stub!");
    }

    public void setChildrenDrawingOrderEnabled(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "drawing", mapping = {@ViewDebug.IntToString(from = 0, to = KeyProperties.DIGEST_NONE), @ViewDebug.IntToString(from = 1, to = "ANIMATION"), @ViewDebug.IntToString(from = 2, to = "SCROLLING"), @ViewDebug.IntToString(from = 3, to = "ALL")})
    public int getPersistentDrawingCache() {
        throw new RuntimeException("Stub!");
    }

    public void setPersistentDrawingCache(int drawingCacheToKeep) {
        throw new RuntimeException("Stub!");
    }

    public int getLayoutMode() {
        throw new RuntimeException("Stub!");
    }

    public void setLayoutMode(int layoutMode) {
        throw new RuntimeException("Stub!");
    }

    public LayoutParams generateLayoutParams(AttributeSet attrs) {
        throw new RuntimeException("Stub!");
    }

    protected LayoutParams generateLayoutParams(LayoutParams p10) {
        throw new RuntimeException("Stub!");
    }

    public LayoutParams generateDefaultLayoutParams() {
        throw new RuntimeException("Stub!");
    }

    public void debug(int depth) {
        throw new RuntimeException("Stub!");
    }

    public int indexOfChild(View child) {
        throw new RuntimeException("Stub!");
    }

    public int getChildCount() {
        throw new RuntimeException("Stub!");
    }

    public View getChildAt(int index) {
        throw new RuntimeException("Stub!");
    }

    public void measureChildren(int widthMeasureSpec, int heightMeasureSpec) {
        throw new RuntimeException("Stub!");
    }

    public void measureChild(View child, int parentWidthMeasureSpec, int parentHeightMeasureSpec) {
        throw new RuntimeException("Stub!");
    }

    public void measureChildWithMargins(View child, int parentWidthMeasureSpec, int widthUsed, int parentHeightMeasureSpec, int heightUsed) {
        throw new RuntimeException("Stub!");
    }

    public static int getChildMeasureSpec(int spec, int padding, int childDimension) {
        throw new RuntimeException("Stub!");
    }

    public void clearDisappearingChildren() {
        throw new RuntimeException("Stub!");
    }

    public void startViewTransition(View view) {
        throw new RuntimeException("Stub!");
    }

    public void endViewTransition(View view) {
        throw new RuntimeException("Stub!");
    }

    public boolean gatherTransparentRegion(Region region) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void requestTransparentRegion(View child) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public WindowInsets dispatchApplyWindowInsets(WindowInsets insets) {
        throw new RuntimeException("Stub!");
    }

    public Animation.AnimationListener getLayoutAnimationListener() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void drawableStateChanged() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void jumpDrawablesToCurrentState() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int[] onCreateDrawableState(int extraSpace) {
        throw new RuntimeException("Stub!");
    }

    public void setAddStatesFromChildren(boolean addsStates) {
        throw new RuntimeException("Stub!");
    }

    public boolean addStatesFromChildren() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void childDrawableStateChanged(View child) {
        throw new RuntimeException("Stub!");
    }

    public void setLayoutAnimationListener(Animation.AnimationListener animationListener) {
        throw new RuntimeException("Stub!");
    }

    public boolean shouldDelayChildPressedState() {
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
    public void onStopNestedScroll(View child) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onNestedScroll(View target, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onNestedPreScroll(View target, int dx, int dy, int[] consumed) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onNestedFling(View target, float velocityX, float velocityY, boolean consumed) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onNestedPreFling(View target, float velocityX, float velocityY) {
        throw new RuntimeException("Stub!");
    }

    public int getNestedScrollAxes() {
        throw new RuntimeException("Stub!");
    }
}
