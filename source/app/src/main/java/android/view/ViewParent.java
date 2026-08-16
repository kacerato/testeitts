package android.view;

import android.graphics.Point;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ViewParent.class
 */
public interface ViewParent {
    void requestLayout();

    boolean isLayoutRequested();

    void requestTransparentRegion(View view);

    @Deprecated
    void invalidateChild(View view, Rect rect);

    @Deprecated
    ViewParent invalidateChildInParent(int[] iArr, Rect rect);

    ViewParent getParent();

    void requestChildFocus(View view, View view2);

    void recomputeViewAttributes(View view);

    void clearChildFocus(View view);

    boolean getChildVisibleRect(View view, Rect rect, Point point);

    View focusSearch(View view, int i10);

    View keyboardNavigationClusterSearch(View view, int i10);

    void bringChildToFront(View view);

    void focusableViewAvailable(View view);

    boolean showContextMenuForChild(View view);

    boolean showContextMenuForChild(View view, float f10, float f11);

    void createContextMenu(ContextMenu contextMenu);

    ActionMode startActionModeForChild(View view, ActionMode.Callback callback);

    ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i10);

    void childDrawableStateChanged(View view);

    void requestDisallowInterceptTouchEvent(boolean z10);

    boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z10);

    boolean requestSendAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent);

    void childHasTransientStateChanged(View view, boolean z10);

    void requestFitSystemWindows();

    ViewParent getParentForAccessibility();

    void notifySubtreeAccessibilityStateChanged(View view, View view2, int i10);

    boolean canResolveLayoutDirection();

    boolean isLayoutDirectionResolved();

    int getLayoutDirection();

    boolean canResolveTextDirection();

    boolean isTextDirectionResolved();

    int getTextDirection();

    boolean canResolveTextAlignment();

    boolean isTextAlignmentResolved();

    int getTextAlignment();

    boolean onStartNestedScroll(View view, View view2, int i10);

    void onNestedScrollAccepted(View view, View view2, int i10);

    void onStopNestedScroll(View view);

    void onNestedScroll(View view, int i10, int i11, int i12, int i13);

    void onNestedPreScroll(View view, int i10, int i11, int[] iArr);

    boolean onNestedFling(View view, float f10, float f11, boolean z10);

    boolean onNestedPreFling(View view, float f10, float f11);

    boolean onNestedPrePerformAccessibilityAction(View view, int i10, Bundle bundle);

    default void onDescendantInvalidated(View child, View target) {
        throw new RuntimeException("Stub!");
    }
}
