package com.itsmagic.engine.Activities.Editor.Utils;

import android.animation.LayoutTransition;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ActionMode;
import android.view.ContextMenu;
import android.view.Display;
import android.view.DragEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.view.ViewStructure;
import android.view.ViewTreeObserver;
import android.view.WindowId;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import android.view.WindowInsetsAnimation$Callback;
import android.view.WindowInsetsController;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LayoutAnimationController;
import android.view.animation.Transformation;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillValue;
import android.view.contentcapture.ContentCaptureSession;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

public class ExceptionSafeRecyclerView extends RecyclerView {
    public ExceptionSafeRecyclerView(@NonNull Context context) {
        super(context);
    }

    @Override
    public void addChildrenForAccessibility(ArrayList<View> outChildren) {
        super.addChildrenForAccessibility(outChildren);
    }

    @Override
    public void addExtraDataToAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo info, @NonNull String extraDataKey, @Nullable @org.jetbrains.annotations.Nullable Bundle arguments) {
        super.addExtraDataToAccessibilityNodeInfo(info, extraDataKey, arguments);
    }

    @Override
    public void addFocusables(ArrayList<View> views, int direction, int focusableMode) {
        super.addFocusables(views, direction, focusableMode);
    }

    @Override
    public void addItemDecoration(@NonNull RecyclerView.ItemDecoration decor, int index) {
        super.addItemDecoration(decor, index);
    }

    @Override
    public void addKeyboardNavigationClusters(Collection<View> views, int direction) {
        super.addKeyboardNavigationClusters(views, direction);
    }

    @Override
    public void addOnAttachStateChangeListener(View.OnAttachStateChangeListener listener) {
        super.addOnAttachStateChangeListener(listener);
    }

    @Override
    public void addOnChildAttachStateChangeListener(@NonNull RecyclerView.OnChildAttachStateChangeListener listener) {
        super.addOnChildAttachStateChangeListener(listener);
    }

    @Override
    public void addOnItemTouchListener(@NonNull RecyclerView.OnItemTouchListener listener) {
        super.addOnItemTouchListener(listener);
    }

    @Override
    public void addOnLayoutChangeListener(View.OnLayoutChangeListener listener) {
        super.addOnLayoutChangeListener(listener);
    }

    @Override
    public void addOnScrollListener(@NonNull RecyclerView.OnScrollListener listener) {
        super.addOnScrollListener(listener);
    }

    public void addOnUnhandledKeyEventListener(View.OnUnhandledKeyEventListener listener) {
        super.addOnUnhandledKeyEventListener(listener);
    }

    @Override
    public boolean addStatesFromChildren() {
        return super.addStatesFromChildren();
    }

    @Override
    public void addTouchables(ArrayList<View> views) {
        super.addTouchables(views);
    }

    @Override
    public void addView(View child) {
        super.addView(child);
    }

    @Override
    public boolean addViewInLayout(View child, int index, ViewGroup.LayoutParams params) {
        return super.addViewInLayout(child, index, params);
    }

    @Override
    public ViewPropertyAnimator animate() {
        return super.animate();
    }

    @Override
    public void announceForAccessibility(CharSequence text) {
        super.announceForAccessibility(text);
    }

    @Override
    public void attachLayoutAnimationParameters(View child, ViewGroup.LayoutParams params, int index, int count) {
        super.attachLayoutAnimationParameters(child, params, index, count);
    }

    @Override
    public void attachViewToParent(View child, int index, ViewGroup.LayoutParams params) {
        super.attachViewToParent(child, index, params);
    }

    @Override
    public void autofill(AutofillValue value) {
        super.autofill(value);
    }

    @Override
    public boolean awakenScrollBars() {
        return super.awakenScrollBars();
    }

    @Override
    public void bringChildToFront(View child) {
        super.bringChildToFront(child);
    }

    @Override
    public void bringToFront() {
        super.bringToFront();
    }

    @Override
    public void buildDrawingCache() {
        super.buildDrawingCache();
    }

    @Override
    public void buildLayer() {
        super.buildLayer();
    }

    @Override
    public boolean callOnClick() {
        return super.callOnClick();
    }

    @Override
    public boolean canAnimate() {
        return super.canAnimate();
    }

    @Override
    public boolean canResolveLayoutDirection() {
        return super.canResolveLayoutDirection();
    }

    @Override
    public boolean canResolveTextAlignment() {
        return super.canResolveTextAlignment();
    }

    @Override
    public boolean canResolveTextDirection() {
        return super.canResolveTextDirection();
    }

    @Override
    public boolean canScrollHorizontally(int direction) {
        return super.canScrollHorizontally(direction);
    }

    @Override
    public boolean canScrollVertically(int direction) {
        return super.canScrollVertically(direction);
    }

    @Override
    public void cancelLongPress() {
        super.cancelLongPress();
    }

    @Override
    public boolean checkInputConnectionProxy(View view) {
        return super.checkInputConnectionProxy(view);
    }

    @Override
    public boolean checkLayoutParams(ViewGroup.LayoutParams p10) {
        return super.checkLayoutParams(p10);
    }

    @Override
    public void childDrawableStateChanged(View child) {
        super.childDrawableStateChanged(child);
    }

    @Override
    public void childHasTransientStateChanged(View child, boolean childHasTransientState) {
        super.childHasTransientStateChanged(child, childHasTransientState);
    }

    @Override
    public void cleanupLayoutState(View child) {
        super.cleanupLayoutState(child);
    }

    @Override
    public void clearAnimation() {
        super.clearAnimation();
    }

    @Override
    public void clearChildFocus(View child) {
        super.clearChildFocus(child);
    }

    @Override
    public void clearDisappearingChildren() {
        super.clearDisappearingChildren();
    }

    @Override
    public void clearFocus() {
        super.clearFocus();
    }

    @Override
    public void clearOnChildAttachStateChangeListeners() {
        super.clearOnChildAttachStateChangeListeners();
    }

    @Override
    public void clearOnScrollListeners() {
        super.clearOnScrollListeners();
    }

    @NonNull
    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    @Override
    public int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override
    public int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override
    public int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    @Override
    public void computeScroll() {
        super.computeScroll();
    }

    @Override
    public WindowInsets computeSystemWindowInsets(WindowInsets in2, Rect outLocalInsets) {
        return super.computeSystemWindowInsets(in2, outLocalInsets);
    }

    @Override
    public int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override
    public int computeVerticalScrollOffset() {
        return super.computeVerticalScrollOffset();
    }

    @Override
    public int computeVerticalScrollRange() {
        return super.computeVerticalScrollRange();
    }

    @Override
    public AccessibilityNodeInfo createAccessibilityNodeInfo() {
        return super.createAccessibilityNodeInfo();
    }

    @Override
    public void createContextMenu(ContextMenu menu) {
        super.createContextMenu(menu);
    }

    @Override
    public void debug(int depth) {
        super.debug(depth);
    }

    @Override
    public void destroyDrawingCache() {
        super.destroyDrawingCache();
    }

    @Override
    public void detachAllViewsFromParent() {
        super.detachAllViewsFromParent();
    }

    @Override
    public void detachViewFromParent(View child) {
        super.detachViewFromParent(child);
    }

    @Override
    public void detachViewsFromParent(int start, int count) {
        super.detachViewsFromParent(start, count);
    }

    @Override
    public WindowInsets dispatchApplyWindowInsets(WindowInsets insets) {
        return super.dispatchApplyWindowInsets(insets);
    }

    @Override
    public boolean dispatchCapturedPointerEvent(MotionEvent event) {
        return super.dispatchCapturedPointerEvent(event);
    }

    @Override
    public void dispatchConfigurationChanged(Configuration newConfig) {
        super.dispatchConfigurationChanged(newConfig);
    }

    @Override
    public void dispatchDisplayHint(int hint) {
        super.dispatchDisplayHint(hint);
    }

    @Override
    public boolean dispatchDragEvent(DragEvent event) {
        return super.dispatchDragEvent(event);
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
    }

    @Override
    public void dispatchDrawableHotspotChanged(float x10, float y10) {
        super.dispatchDrawableHotspotChanged(x10, y10);
    }

    @Override
    public void dispatchFinishTemporaryDetach() {
        super.dispatchFinishTemporaryDetach();
    }

    @Override
    public void dispatchFreezeSelfOnly(SparseArray<Parcelable> container) {
        super.dispatchFreezeSelfOnly(container);
    }

    @Override
    public boolean dispatchGenericFocusedEvent(MotionEvent event) {
        return super.dispatchGenericFocusedEvent(event);
    }

    @Override
    public boolean dispatchGenericMotionEvent(MotionEvent event) {
        return super.dispatchGenericMotionEvent(event);
    }

    @Override
    public boolean dispatchGenericPointerEvent(MotionEvent event) {
        return super.dispatchGenericPointerEvent(event);
    }

    @Override
    public boolean dispatchHoverEvent(MotionEvent event) {
        return super.dispatchHoverEvent(event);
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
        try {
            return super.dispatchKeyEvent(event);
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean dispatchKeyEventPreIme(KeyEvent event) {
        return super.dispatchKeyEventPreIme(event);
    }

    @Override
    public boolean dispatchKeyShortcutEvent(KeyEvent event) {
        return super.dispatchKeyShortcutEvent(event);
    }

    @Override
    public boolean dispatchNestedFling(float velocityX, float velocityY, boolean consumed) {
        return super.dispatchNestedFling(velocityX, velocityY, consumed);
    }

    @Override
    public boolean dispatchNestedPreFling(float velocityX, float velocityY) {
        return super.dispatchNestedPreFling(velocityX, velocityY);
    }

    @Override
    public boolean dispatchNestedPrePerformAccessibilityAction(int action, Bundle arguments) {
        return super.dispatchNestedPrePerformAccessibilityAction(action, arguments);
    }

    @Override
    public boolean dispatchNestedPreScroll(int dx, int dy, int[] consumed, int[] offsetInWindow) {
        return super.dispatchNestedPreScroll(dx, dy, consumed, offsetInWindow);
    }

    @Override
    public boolean dispatchNestedScroll(int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int[] offsetInWindow) {
        return super.dispatchNestedScroll(dxConsumed, dyConsumed, dxUnconsumed, dyUnconsumed, offsetInWindow);
    }

    @Override
    public void dispatchPointerCaptureChanged(boolean hasCapture) {
        super.dispatchPointerCaptureChanged(hasCapture);
    }

    @Override
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent event) {
        return super.dispatchPopulateAccessibilityEvent(event);
    }

    @Override
    public void dispatchProvideAutofillStructure(ViewStructure structure, int flags) {
        super.dispatchProvideAutofillStructure(structure, flags);
    }

    @Override
    public void dispatchProvideStructure(ViewStructure structure) {
        super.dispatchProvideStructure(structure);
    }

    @Override
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> container) {
        super.dispatchRestoreInstanceState(container);
    }

    @Override
    public void dispatchSaveInstanceState(SparseArray<Parcelable> container) {
        super.dispatchSaveInstanceState(container);
    }

    @Override
    public void dispatchSetActivated(boolean activated) {
        super.dispatchSetActivated(activated);
    }

    @Override
    public void dispatchSetPressed(boolean pressed) {
        super.dispatchSetPressed(pressed);
    }

    @Override
    public void dispatchSetSelected(boolean selected) {
        super.dispatchSetSelected(selected);
    }

    @Override
    public void dispatchStartTemporaryDetach() {
        super.dispatchStartTemporaryDetach();
    }

    @Override
    public void dispatchSystemUiVisibilityChanged(int visible) {
        super.dispatchSystemUiVisibilityChanged(visible);
    }

    @Override
    public void dispatchThawSelfOnly(SparseArray<Parcelable> container) {
        super.dispatchThawSelfOnly(container);
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent ev) {
        try {
            return super.dispatchTouchEvent(ev);
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean dispatchTrackballEvent(MotionEvent event) {
        return super.dispatchTrackballEvent(event);
    }

    @Override
    public boolean dispatchUnhandledMove(View focused, int direction) {
        return super.dispatchUnhandledMove(focused, direction);
    }

    @Override
    public void dispatchVisibilityChanged(View changedView, int visibility) {
        super.dispatchVisibilityChanged(changedView, visibility);
    }

    @Override
    public void dispatchWindowFocusChanged(boolean hasFocus) {
        super.dispatchWindowFocusChanged(hasFocus);
    }

    public void dispatchWindowInsetsAnimationEnd(@NonNull WindowInsetsAnimation animation) {
        super.dispatchWindowInsetsAnimationEnd(animation);
    }

    public void dispatchWindowInsetsAnimationPrepare(@NonNull WindowInsetsAnimation animation) {
        super.dispatchWindowInsetsAnimationPrepare(animation);
    }

    @NonNull
    public WindowInsets dispatchWindowInsetsAnimationProgress(@NonNull WindowInsets insets, @NonNull List<WindowInsetsAnimation> runningAnimations) {
        return super.dispatchWindowInsetsAnimationProgress(insets, runningAnimations);
    }

    @NonNull
    public WindowInsetsAnimation.Bounds dispatchWindowInsetsAnimationStart(@NonNull WindowInsetsAnimation animation, @NonNull WindowInsetsAnimation.Bounds bounds) {
        return super.dispatchWindowInsetsAnimationStart(animation, bounds);
    }

    @Override
    public void dispatchWindowSystemUiVisiblityChanged(int visible) {
        super.dispatchWindowSystemUiVisiblityChanged(visible);
    }

    @Override
    public void dispatchWindowVisibilityChanged(int visibility) {
        super.dispatchWindowVisibilityChanged(visibility);
    }

    @Override
    public void draw(Canvas c10) {
        super.draw(c10);
    }

    @Override
    public boolean drawChild(Canvas canvas, View child, long drawingTime) {
        try {
            return super.drawChild(canvas, child, drawingTime);
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    @Override
    public void drawableHotspotChanged(float x10, float y10) {
        super.drawableHotspotChanged(x10, y10);
    }

    @Override
    public void drawableStateChanged() {
        super.drawableStateChanged();
    }

    @Override
    public void endViewTransition(View view) {
        super.endViewTransition(view);
    }

    public boolean equals(@Nullable @org.jetbrains.annotations.Nullable Object obj) {
        return super.equals(obj);
    }

    public void finalize() throws Throwable {
        super.finalize();
    }

    @Override
    @Nullable
    @org.jetbrains.annotations.Nullable
    public View findChildViewUnder(float x10, float y10) {
        return super.findChildViewUnder(x10, y10);
    }

    @Override
    @Nullable
    @org.jetbrains.annotations.Nullable
    public View findContainingItemView(@NonNull View view) {
        return super.findContainingItemView(view);
    }

    @Override
    @Nullable
    @org.jetbrains.annotations.Nullable
    public RecyclerView.ViewHolder findContainingViewHolder(@NonNull View view) {
        return super.findContainingViewHolder(view);
    }

    @Override
    public View findFocus() {
        return super.findFocus();
    }

    @Override
    @Nullable
    @org.jetbrains.annotations.Nullable
    public RecyclerView.ViewHolder findViewHolderForAdapterPosition(int position) {
        return super.findViewHolderForAdapterPosition(position);
    }

    @Override
    public RecyclerView.ViewHolder findViewHolderForItemId(long id2) {
        return super.findViewHolderForItemId(id2);
    }

    @Override
    @Nullable
    @org.jetbrains.annotations.Nullable
    public RecyclerView.ViewHolder findViewHolderForLayoutPosition(int position) {
        return super.findViewHolderForLayoutPosition(position);
    }

    @Override
    @Nullable
    @org.jetbrains.annotations.Nullable
    public RecyclerView.ViewHolder findViewHolderForPosition(int position) {
        return super.findViewHolderForPosition(position);
    }

    @Override
    public void findViewsWithText(ArrayList<View> outViews, CharSequence text, int flags) {
        super.findViewsWithText(outViews, text, flags);
    }

    @Override
    public boolean fitSystemWindows(Rect insets) {
        return super.fitSystemWindows(insets);
    }

    @Override
    public boolean fling(int velocityX, int velocityY) {
        return super.fling(velocityX, velocityY);
    }

    @Override
    public View focusSearch(View focused, int direction) {
        try {
            return super.focusSearch(focused, direction);
        } catch (Exception e10) {
            e10.printStackTrace();
            return focused;
        }
    }

    @Override
    public void focusableViewAvailable(View v10) {
        super.focusableViewAvailable(v10);
    }

    @Override
    public void forceHasOverlappingRendering(boolean hasOverlappingRendering) {
        super.forceHasOverlappingRendering(hasOverlappingRendering);
    }

    @Override
    public void forceLayout() {
        super.forceLayout();
    }

    @Override
    public boolean gatherTransparentRegion(Region region) {
        return super.gatherTransparentRegion(region);
    }

    @Override
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return super.generateDefaultLayoutParams();
    }

    @Override
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attrs) {
        return super.generateLayoutParams(attrs);
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        return super.getAccessibilityClassName();
    }

    public View.AccessibilityDelegate getAccessibilityDelegate() {
        return super.getAccessibilityDelegate();
    }

    @Override
    public int getAccessibilityLiveRegion() {
        return super.getAccessibilityLiveRegion();
    }

    @Override
    public AccessibilityNodeProvider getAccessibilityNodeProvider() {
        return super.getAccessibilityNodeProvider();
    }

    @Nullable
    @org.jetbrains.annotations.Nullable
    public CharSequence getAccessibilityPaneTitle() {
        return super.getAccessibilityPaneTitle();
    }

    @Override
    public int getAccessibilityTraversalAfter() {
        return super.getAccessibilityTraversalAfter();
    }

    @Override
    public int getAccessibilityTraversalBefore() {
        return super.getAccessibilityTraversalBefore();
    }

    @Override
    @Nullable
    @org.jetbrains.annotations.Nullable
    public RecyclerView.Adapter getAdapter() {
        return super.getAdapter();
    }

    @Override
    public float getAlpha() {
        return super.getAlpha();
    }

    @Override
    public Animation getAnimation() {
        return super.getAnimation();
    }

    @Nullable
    @org.jetbrains.annotations.Nullable
    public Matrix getAnimationMatrix() {
        return super.getAnimationMatrix();
    }

    @Override
    public IBinder getApplicationWindowToken() {
        return super.getApplicationWindowToken();
    }

    @NonNull
    public int[] getAttributeResolutionStack(int attribute) {
        return super.getAttributeResolutionStack(attribute);
    }

    @NonNull
    public Map<Integer, Integer> getAttributeSourceResourceMap() {
        return super.getAttributeSourceResourceMap();
    }

    @Override
    @Nullable
    @org.jetbrains.annotations.Nullable
    public String[] getAutofillHints() {
        return super.getAutofillHints();
    }

    @Override
    public int getAutofillType() {
        return super.getAutofillType();
    }

    @Override
    @Nullable
    @org.jetbrains.annotations.Nullable
    public AutofillValue getAutofillValue() {
        return super.getAutofillValue();
    }

    @Override
    public Drawable getBackground() {
        return super.getBackground();
    }

    @Nullable
    @org.jetbrains.annotations.Nullable
    public BlendMode getBackgroundTintBlendMode() {
        return super.getBackgroundTintBlendMode();
    }

    @Override
    @Nullable
    @org.jetbrains.annotations.Nullable
    public ColorStateList getBackgroundTintList() {
        return super.getBackgroundTintList();
    }

    @Override
    @Nullable
    @org.jetbrains.annotations.Nullable
    public PorterDuff.Mode getBackgroundTintMode() {
        return super.getBackgroundTintMode();
    }

    @Override
    public int getBaseline() {
        return super.getBaseline();
    }

    @Override
    public float getBottomFadingEdgeStrength() {
        return super.getBottomFadingEdgeStrength();
    }

    @Override
    public int getBottomPaddingOffset() {
        return super.getBottomPaddingOffset();
    }

    @Override
    public float getCameraDistance() {
        return super.getCameraDistance();
    }

    @Override
    public int getChildAdapterPosition(@NonNull View child) {
        return super.getChildAdapterPosition(child);
    }

    @Override
    public View getChildAt(int index) {
        return super.getChildAt(index);
    }

    @Override
    public int getChildCount() {
        return super.getChildCount();
    }

    @Override
    public int getChildDrawingOrder(int childCount, int i10) {
        return super.getChildDrawingOrder(childCount, i10);
    }

    @Override
    public long getChildItemId(@NonNull View child) {
        return super.getChildItemId(child);
    }

    @Override
    public int getChildLayoutPosition(@NonNull View child) {
        return super.getChildLayoutPosition(child);
    }

    @Override
    public int getChildPosition(@NonNull View child) {
        return super.getChildPosition(child);
    }

    @Override
    public boolean getChildStaticTransformation(View child, Transformation t10) {
        return super.getChildStaticTransformation(child, t10);
    }

    @Override
    public RecyclerView.ViewHolder getChildViewHolder(@NonNull View child) {
        return super.getChildViewHolder(child);
    }

    @Override
    public boolean getChildVisibleRect(View child, Rect r10, Point offset) {
        return super.getChildVisibleRect(child, r10, offset);
    }

    @Override
    public Rect getClipBounds() {
        return super.getClipBounds();
    }

    @Override
    public boolean getClipChildren() {
        return super.getClipChildren();
    }

    @Override
    public boolean getClipToPadding() {
        return super.getClipToPadding();
    }

    @Override
    @Nullable
    @org.jetbrains.annotations.Nullable
    public RecyclerViewAccessibilityDelegate getCompatAccessibilityDelegate() {
        return super.getCompatAccessibilityDelegate();
    }

    @Override
    public ContextMenu.ContextMenuInfo getContextMenuInfo() {
        return super.getContextMenuInfo();
    }

    @Override
    public void getDecoratedBoundsWithMargins(@NonNull View view, @NonNull Rect outBounds) {
        super.getDecoratedBoundsWithMargins(view, outBounds);
    }

    @Override
    public int getDescendantFocusability() {
        return super.getDescendantFocusability();
    }

    @Override
    public Display getDisplay() {
        return super.getDisplay();
    }

    @Override
    public Bitmap getDrawingCache() {
        return super.getDrawingCache();
    }

    @Override
    public int getDrawingCacheBackgroundColor() {
        return super.getDrawingCacheBackgroundColor();
    }

    @Override
    public int getDrawingCacheQuality() {
        return super.getDrawingCacheQuality();
    }

    @Override
    public void getDrawingRect(Rect outRect) {
        super.getDrawingRect(outRect);
    }

    @Override
    public long getDrawingTime() {
        return super.getDrawingTime();
    }

    @Override
    @NonNull
    public RecyclerView.EdgeEffectFactory getEdgeEffectFactory() {
        return super.getEdgeEffectFactory();
    }

    @Override
    public float getElevation() {
        return super.getElevation();
    }

    public int getExplicitStyle() {
        return super.getExplicitStyle();
    }

    @Override
    public boolean getFilterTouchesWhenObscured() {
        return super.getFilterTouchesWhenObscured();
    }

    @Override
    public boolean getFitsSystemWindows() {
        return super.getFitsSystemWindows();
    }

    @Override
    public int getFocusable() {
        return super.getFocusable();
    }

    @Override
    public ArrayList<View> getFocusables(int direction) {
        return super.getFocusables(direction);
    }

    @Override
    public View getFocusedChild() {
        return super.getFocusedChild();
    }

    @Override
    public void getFocusedRect(Rect r10) {
        super.getFocusedRect(r10);
    }

    @Override
    public Drawable getForeground() {
        return super.getForeground();
    }

    @Override
    public int getForegroundGravity() {
        return super.getForegroundGravity();
    }

    @Nullable
    @org.jetbrains.annotations.Nullable
    public BlendMode getForegroundTintBlendMode() {
        return super.getForegroundTintBlendMode();
    }

    @Override
    @Nullable
    @org.jetbrains.annotations.Nullable
    public ColorStateList getForegroundTintList() {
        return super.getForegroundTintList();
    }

    @Override
    @Nullable
    @org.jetbrains.annotations.Nullable
    public PorterDuff.Mode getForegroundTintMode() {
        return super.getForegroundTintMode();
    }

    @Override
    public boolean getGlobalVisibleRect(Rect r10, Point globalOffset) {
        return super.getGlobalVisibleRect(r10, globalOffset);
    }

    @Override
    public Handler getHandler() {
        return super.getHandler();
    }

    @Override
    public void getHitRect(Rect outRect) {
        super.getHitRect(outRect);
    }

    @Override
    public int getHorizontalFadingEdgeLength() {
        return super.getHorizontalFadingEdgeLength();
    }

    @Override
    public int getHorizontalScrollbarHeight() {
        return super.getHorizontalScrollbarHeight();
    }

    @Nullable
    @org.jetbrains.annotations.Nullable
    public Drawable getHorizontalScrollbarThumbDrawable() {
        return super.getHorizontalScrollbarThumbDrawable();
    }

    @Nullable
    @org.jetbrains.annotations.Nullable
    public Drawable getHorizontalScrollbarTrackDrawable() {
        return super.getHorizontalScrollbarTrackDrawable();
    }

    @Override
    public int getId() {
        return super.getId();
    }

    @Override
    public int getImportantForAccessibility() {
        return super.getImportantForAccessibility();
    }

    @Override
    public int getImportantForAutofill() {
        return super.getImportantForAutofill();
    }

    public int getImportantForContentCapture() {
        return super.getImportantForContentCapture();
    }

    @Override
    @Nullable
    @org.jetbrains.annotations.Nullable
    public RecyclerView.ItemAnimator getItemAnimator() {
        return super.getItemAnimator();
    }

    @Override
    @NonNull
    public RecyclerView.ItemDecoration getItemDecorationAt(int index) {
        return super.getItemDecorationAt(index);
    }

    @Override
    public int getItemDecorationCount() {
        return super.getItemDecorationCount();
    }

    @Override
    public boolean getKeepScreenOn() {
        return super.getKeepScreenOn();
    }

    @Override
    public KeyEvent.DispatcherState getKeyDispatcherState() {
        return super.getKeyDispatcherState();
    }

    @Override
    public int getLabelFor() {
        return super.getLabelFor();
    }

    @Override
    public int getLayerType() {
        return super.getLayerType();
    }

    @Override
    public LayoutAnimationController getLayoutAnimation() {
        return super.getLayoutAnimation();
    }

    @Override
    public Animation.AnimationListener getLayoutAnimationListener() {
        return super.getLayoutAnimationListener();
    }

    @Override
    public int getLayoutDirection() {
        return super.getLayoutDirection();
    }

    @Override
    @Nullable
    @org.jetbrains.annotations.Nullable
    public RecyclerView.LayoutManager getLayoutManager() {
        return super.getLayoutManager();
    }

    @Override
    public int getLayoutMode() {
        return super.getLayoutMode();
    }

    @Override
    public ViewGroup.LayoutParams getLayoutParams() {
        return super.getLayoutParams();
    }

    @Override
    public LayoutTransition getLayoutTransition() {
        return super.getLayoutTransition();
    }

    @Override
    public float getLeftFadingEdgeStrength() {
        return super.getLeftFadingEdgeStrength();
    }

    @Override
    public int getLeftPaddingOffset() {
        return super.getLeftPaddingOffset();
    }

    public void getLocationInSurface(@NonNull int[] location) {
        super.getLocationInSurface(location);
    }

    @Override
    public void getLocationInWindow(int[] outLocation) {
        super.getLocationInWindow(outLocation);
    }

    @Override
    public void getLocationOnScreen(int[] outLocation) {
        super.getLocationOnScreen(outLocation);
    }

    @Override
    public Matrix getMatrix() {
        return super.getMatrix();
    }

    @Override
    public int getMaxFlingVelocity() {
        return super.getMaxFlingVelocity();
    }

    @Override
    public int getMinFlingVelocity() {
        return super.getMinFlingVelocity();
    }

    @Override
    public int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override
    public int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override
    public int getNestedScrollAxes() {
        return super.getNestedScrollAxes();
    }

    @Override
    public int getNextClusterForwardId() {
        return super.getNextClusterForwardId();
    }

    @Override
    public int getNextFocusDownId() {
        return super.getNextFocusDownId();
    }

    @Override
    public int getNextFocusForwardId() {
        return super.getNextFocusForwardId();
    }

    @Override
    public int getNextFocusLeftId() {
        return super.getNextFocusLeftId();
    }

    @Override
    public int getNextFocusRightId() {
        return super.getNextFocusRightId();
    }

    @Override
    public int getNextFocusUpId() {
        return super.getNextFocusUpId();
    }

    @Override
    @Nullable
    @org.jetbrains.annotations.Nullable
    public RecyclerView.OnFlingListener getOnFlingListener() {
        return super.getOnFlingListener();
    }

    @Override
    public View.OnFocusChangeListener getOnFocusChangeListener() {
        return super.getOnFocusChangeListener();
    }

    public int getOutlineAmbientShadowColor() {
        return super.getOutlineAmbientShadowColor();
    }

    @Override
    public ViewOutlineProvider getOutlineProvider() {
        return super.getOutlineProvider();
    }

    public int getOutlineSpotShadowColor() {
        return super.getOutlineSpotShadowColor();
    }

    @Override
    public int getOverScrollMode() {
        return super.getOverScrollMode();
    }

    @Override
    public int getPaddingBottom() {
        return super.getPaddingBottom();
    }

    @Override
    public int getPaddingEnd() {
        return super.getPaddingEnd();
    }

    @Override
    public int getPaddingLeft() {
        return super.getPaddingLeft();
    }

    @Override
    public int getPaddingRight() {
        return super.getPaddingRight();
    }

    @Override
    public int getPaddingStart() {
        return super.getPaddingStart();
    }

    @Override
    public int getPaddingTop() {
        return super.getPaddingTop();
    }

    @Override
    public ViewParent getParentForAccessibility() {
        return super.getParentForAccessibility();
    }

    @Override
    public int getPersistentDrawingCache() {
        return super.getPersistentDrawingCache();
    }

    @Override
    public float getPivotX() {
        return super.getPivotX();
    }

    @Override
    public float getPivotY() {
        return super.getPivotY();
    }

    @Override
    public PointerIcon getPointerIcon() {
        return super.getPointerIcon();
    }

    @Override
    public boolean getPreserveFocusAfterLayout() {
        return super.getPreserveFocusAfterLayout();
    }

    @Override
    @NonNull
    public RecyclerView.RecycledViewPool getRecycledViewPool() {
        return super.getRecycledViewPool();
    }

    @Override
    public Resources getResources() {
        return super.getResources();
    }

    @Override
    public float getRightFadingEdgeStrength() {
        return super.getRightFadingEdgeStrength();
    }

    @Override
    public int getRightPaddingOffset() {
        return super.getRightPaddingOffset();
    }

    @Override
    public View getRootView() {
        return super.getRootView();
    }

    @Override
    public WindowInsets getRootWindowInsets() {
        return super.getRootWindowInsets();
    }

    @Override
    public float getRotation() {
        return super.getRotation();
    }

    @Override
    public float getRotationX() {
        return super.getRotationX();
    }

    @Override
    public float getRotationY() {
        return super.getRotationY();
    }

    @Override
    public float getScaleX() {
        return super.getScaleX();
    }

    @Override
    public float getScaleY() {
        return super.getScaleY();
    }

    @Override
    public int getScrollBarDefaultDelayBeforeFade() {
        return super.getScrollBarDefaultDelayBeforeFade();
    }

    @Override
    public int getScrollBarFadeDuration() {
        return super.getScrollBarFadeDuration();
    }

    @Override
    public int getScrollBarSize() {
        return super.getScrollBarSize();
    }

    @Override
    public int getScrollBarStyle() {
        return super.getScrollBarStyle();
    }

    @Override
    public int getScrollIndicators() {
        return super.getScrollIndicators();
    }

    @Override
    public int getScrollState() {
        return super.getScrollState();
    }

    @Override
    public int getSolidColor() {
        return super.getSolidColor();
    }

    public int getSourceLayoutResId() {
        return super.getSourceLayoutResId();
    }

    @Override
    public StateListAnimator getStateListAnimator() {
        return super.getStateListAnimator();
    }

    @Override
    public int getSuggestedMinimumHeight() {
        return super.getSuggestedMinimumHeight();
    }

    @Override
    public int getSuggestedMinimumWidth() {
        return super.getSuggestedMinimumWidth();
    }

    @NonNull
    public List<Rect> getSystemGestureExclusionRects() {
        return super.getSystemGestureExclusionRects();
    }

    @Override
    public int getSystemUiVisibility() {
        return super.getSystemUiVisibility();
    }

    @Override
    public Object getTag() {
        return super.getTag();
    }

    @Override
    public int getTextAlignment() {
        return super.getTextAlignment();
    }

    @Override
    public int getTextDirection() {
        return super.getTextDirection();
    }

    @Override
    @Nullable
    @org.jetbrains.annotations.Nullable
    public CharSequence getTooltipText() {
        return super.getTooltipText();
    }

    @Override
    public float getTopFadingEdgeStrength() {
        return super.getTopFadingEdgeStrength();
    }

    @Override
    public int getTopPaddingOffset() {
        return super.getTopPaddingOffset();
    }

    @Override
    public TouchDelegate getTouchDelegate() {
        return super.getTouchDelegate();
    }

    @Override
    public ArrayList<View> getTouchables() {
        return super.getTouchables();
    }

    @Override
    public boolean getTouchscreenBlocksFocus() {
        return super.getTouchscreenBlocksFocus();
    }

    public float getTransitionAlpha() {
        return super.getTransitionAlpha();
    }

    @Override
    public String getTransitionName() {
        return super.getTransitionName();
    }

    @Override
    public float getTranslationX() {
        return super.getTranslationX();
    }

    @Override
    public float getTranslationY() {
        return super.getTranslationY();
    }

    @Override
    public float getTranslationZ() {
        return super.getTranslationZ();
    }

    public long getUniqueDrawingId() {
        return super.getUniqueDrawingId();
    }

    @Override
    public int getVerticalFadingEdgeLength() {
        return super.getVerticalFadingEdgeLength();
    }

    @Override
    public int getVerticalScrollbarPosition() {
        return super.getVerticalScrollbarPosition();
    }

    @Nullable
    @org.jetbrains.annotations.Nullable
    public Drawable getVerticalScrollbarThumbDrawable() {
        return super.getVerticalScrollbarThumbDrawable();
    }

    @Nullable
    @org.jetbrains.annotations.Nullable
    public Drawable getVerticalScrollbarTrackDrawable() {
        return super.getVerticalScrollbarTrackDrawable();
    }

    @Override
    public int getVerticalScrollbarWidth() {
        return super.getVerticalScrollbarWidth();
    }

    @Override
    public ViewTreeObserver getViewTreeObserver() {
        return super.getViewTreeObserver();
    }

    @Override
    public int getVisibility() {
        return super.getVisibility();
    }

    @Override
    public int getWindowAttachCount() {
        return super.getWindowAttachCount();
    }

    @Override
    public WindowId getWindowId() {
        return super.getWindowId();
    }

    @Nullable
    @org.jetbrains.annotations.Nullable
    public WindowInsetsController getWindowInsetsController() {
        return super.getWindowInsetsController();
    }

    @Override
    public int getWindowSystemUiVisibility() {
        return super.getWindowSystemUiVisibility();
    }

    @Override
    public IBinder getWindowToken() {
        return super.getWindowToken();
    }

    @Override
    public int getWindowVisibility() {
        return super.getWindowVisibility();
    }

    @Override
    public void getWindowVisibleDisplayFrame(Rect outRect) {
        super.getWindowVisibleDisplayFrame(outRect);
    }

    @Override
    public float getX() {
        return super.getX();
    }

    @Override
    public float getY() {
        return super.getY();
    }

    @Override
    public float getZ() {
        return super.getZ();
    }

    @Override
    public boolean hasExplicitFocusable() {
        return super.hasExplicitFocusable();
    }

    @Override
    public boolean hasFixedSize() {
        return super.hasFixedSize();
    }

    @Override
    public boolean hasFocus() {
        return super.hasFocus();
    }

    @Override
    public boolean hasFocusable() {
        return super.hasFocusable();
    }

    @Override
    public boolean hasNestedScrollingParent() {
        return super.hasNestedScrollingParent();
    }

    @Override
    public boolean hasOnClickListeners() {
        return super.hasOnClickListeners();
    }

    public boolean hasOnLongClickListeners() {
        return super.hasOnLongClickListeners();
    }

    @Override
    public boolean hasOverlappingRendering() {
        return super.hasOverlappingRendering();
    }

    @Override
    public boolean hasPendingAdapterUpdates() {
        return super.hasPendingAdapterUpdates();
    }

    @Override
    public boolean hasPointerCapture() {
        return super.hasPointerCapture();
    }

    @Override
    public boolean hasTransientState() {
        return super.hasTransientState();
    }

    @Override
    public boolean hasWindowFocus() {
        return super.hasWindowFocus();
    }

    public int hashCode() {
        return super.hashCode();
    }

    @Override
    public int indexOfChild(View child) {
        return super.indexOfChild(child);
    }

    @Override
    public void invalidate(Rect dirty) {
        super.invalidate(dirty);
    }

    @Override
    public ViewParent invalidateChildInParent(int[] location, Rect dirty) {
        return super.invalidateChildInParent(location, dirty);
    }

    @Override
    public void invalidateDrawable(@NonNull Drawable drawable) {
        super.invalidateDrawable(drawable);
    }

    @Override
    public void invalidateItemDecorations() {
        super.invalidateItemDecorations();
    }

    @Override
    public void invalidateOutline() {
        super.invalidateOutline();
    }

    @Override
    public boolean isAccessibilityFocused() {
        return super.isAccessibilityFocused();
    }

    public boolean isAccessibilityHeading() {
        return super.isAccessibilityHeading();
    }

    @Override
    public boolean isActivated() {
        return super.isActivated();
    }

    @Override
    public boolean isAlwaysDrawnWithCacheEnabled() {
        return super.isAlwaysDrawnWithCacheEnabled();
    }

    @Override
    public boolean isAnimating() {
        return super.isAnimating();
    }

    @Override
    public boolean isAnimationCacheEnabled() {
        return super.isAnimationCacheEnabled();
    }

    @Override
    public boolean isAttachedToWindow() {
        return super.isAttachedToWindow();
    }

    @Override
    public boolean isChildrenDrawingOrderEnabled() {
        return super.isChildrenDrawingOrderEnabled();
    }

    @Override
    public boolean isChildrenDrawnWithCacheEnabled() {
        return super.isChildrenDrawnWithCacheEnabled();
    }

    @Override
    public boolean isClickable() {
        return super.isClickable();
    }

    @Override
    public boolean isComputingLayout() {
        return super.isComputingLayout();
    }

    @Override
    public boolean isContextClickable() {
        return super.isContextClickable();
    }

    @Override
    public boolean isDirty() {
        return super.isDirty();
    }

    @Override
    public boolean isDrawingCacheEnabled() {
        return super.isDrawingCacheEnabled();
    }

    @Override
    public boolean isDuplicateParentStateEnabled() {
        return super.isDuplicateParentStateEnabled();
    }

    @Override
    public boolean isEnabled() {
        return super.isEnabled();
    }

    @Override
    public boolean isFocused() {
        return super.isFocused();
    }

    public boolean isForceDarkAllowed() {
        return super.isForceDarkAllowed();
    }

    @Override
    public boolean isHapticFeedbackEnabled() {
        return super.isHapticFeedbackEnabled();
    }

    @Override
    public boolean isHardwareAccelerated() {
        return super.isHardwareAccelerated();
    }

    @Override
    public boolean isHorizontalFadingEdgeEnabled() {
        return super.isHorizontalFadingEdgeEnabled();
    }

    @Override
    public boolean isHorizontalScrollBarEnabled() {
        return super.isHorizontalScrollBarEnabled();
    }

    @Override
    public boolean isHovered() {
        return super.isHovered();
    }

    @Override
    public boolean isImportantForAccessibility() {
        return super.isImportantForAccessibility();
    }

    @Override
    public boolean isInEditMode() {
        return super.isInEditMode();
    }

    @Override
    public boolean isInLayout() {
        return super.isInLayout();
    }

    @Override
    public boolean isInTouchMode() {
        return super.isInTouchMode();
    }

    @Override
    public boolean isLaidOut() {
        return super.isLaidOut();
    }

    @Override
    public boolean isLayoutDirectionResolved() {
        return super.isLayoutDirectionResolved();
    }

    @Override
    public boolean isLayoutFrozen() {
        return super.isLayoutFrozen();
    }

    @Override
    public boolean isLayoutRequested() {
        return super.isLayoutRequested();
    }

    @Override
    public boolean isLongClickable() {
        return super.isLongClickable();
    }

    @Override
    public boolean isMotionEventSplittingEnabled() {
        return super.isMotionEventSplittingEnabled();
    }

    @Override
    public boolean isNestedScrollingEnabled() {
        return super.isNestedScrollingEnabled();
    }

    @Override
    public boolean isOpaque() {
        return super.isOpaque();
    }

    @Override
    public boolean isPaddingOffsetRequired() {
        return super.isPaddingOffsetRequired();
    }

    @Override
    public boolean isPaddingRelative() {
        return super.isPaddingRelative();
    }

    public boolean isPivotSet() {
        return super.isPivotSet();
    }

    @Override
    public boolean isPressed() {
        return super.isPressed();
    }

    @Override
    public boolean isSaveEnabled() {
        return super.isSaveEnabled();
    }

    @Override
    public boolean isSaveFromParentEnabled() {
        return super.isSaveFromParentEnabled();
    }

    public boolean isScreenReaderFocusable() {
        return super.isScreenReaderFocusable();
    }

    @Override
    public boolean isScrollContainer() {
        return super.isScrollContainer();
    }

    @Override
    public boolean isScrollbarFadingEnabled() {
        return super.isScrollbarFadingEnabled();
    }

    @Override
    public boolean isSelected() {
        return super.isSelected();
    }

    @Override
    public boolean isShown() {
        return super.isShown();
    }

    @Override
    public boolean isSoundEffectsEnabled() {
        return super.isSoundEffectsEnabled();
    }

    @Override
    public boolean isTextAlignmentResolved() {
        return super.isTextAlignmentResolved();
    }

    @Override
    public boolean isTextDirectionResolved() {
        return super.isTextDirectionResolved();
    }

    @Override
    public boolean isTransitionGroup() {
        return super.isTransitionGroup();
    }

    @Override
    public boolean isVerticalFadingEdgeEnabled() {
        return super.isVerticalFadingEdgeEnabled();
    }

    @Override
    public boolean isVerticalScrollBarEnabled() {
        return super.isVerticalScrollBarEnabled();
    }

    public boolean isVisibleToUserForAutofill(int virtualId) {
        return super.isVisibleToUserForAutofill(virtualId);
    }

    @Override
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
    }

    @Override
    public View keyboardNavigationClusterSearch(View currentCluster, int direction) {
        return super.keyboardNavigationClusterSearch(currentCluster, direction);
    }

    @Override
    public void measureChild(View child, int parentWidthMeasureSpec, int parentHeightMeasureSpec) {
        super.measureChild(child, parentWidthMeasureSpec, parentHeightMeasureSpec);
    }

    @Override
    public void measureChildWithMargins(View child, int parentWidthMeasureSpec, int widthUsed, int parentHeightMeasureSpec, int heightUsed) {
        super.measureChildWithMargins(child, parentWidthMeasureSpec, widthUsed, parentHeightMeasureSpec, heightUsed);
    }

    @Override
    public void measureChildren(int widthMeasureSpec, int heightMeasureSpec) {
        super.measureChildren(widthMeasureSpec, heightMeasureSpec);
    }

    @Override
    public void notifySubtreeAccessibilityStateChanged(View child, View source, int changeType) {
        super.notifySubtreeAccessibilityStateChanged(child, source, changeType);
    }

    @Override
    public void offsetChildrenHorizontal(int dx) {
        super.offsetChildrenHorizontal(dx);
    }

    @Override
    public void offsetChildrenVertical(int dy) {
        super.offsetChildrenVertical(dy);
    }

    @Override
    public void offsetLeftAndRight(int offset) {
        super.offsetLeftAndRight(offset);
    }

    @Override
    public void offsetTopAndBottom(int offset) {
        super.offsetTopAndBottom(offset);
    }

    @Override
    public void onAnimationEnd() {
        super.onAnimationEnd();
    }

    @Override
    public void onAnimationStart() {
        super.onAnimationStart();
    }

    @Override
    public WindowInsets onApplyWindowInsets(WindowInsets insets) {
        return super.onApplyWindowInsets(insets);
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override
    public void onCancelPendingInputEvents() {
        super.onCancelPendingInputEvents();
    }

    @Override
    public boolean onCapturedPointerEvent(MotionEvent event) {
        return super.onCapturedPointerEvent(event);
    }

    @Override
    public boolean onCheckIsTextEditor() {
        return super.onCheckIsTextEditor();
    }

    @Override
    public void onChildAttachedToWindow(@NonNull View child) {
        super.onChildAttachedToWindow(child);
    }

    @Override
    public void onChildDetachedFromWindow(@NonNull View child) {
        super.onChildDetachedFromWindow(child);
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
    }

    @Override
    public void onCreateContextMenu(ContextMenu menu) {
        super.onCreateContextMenu(menu);
    }

    @Override
    public int[] onCreateDrawableState(int extraSpace) {
        return super.onCreateDrawableState(extraSpace);
    }

    @Override
    public InputConnection onCreateInputConnection(EditorInfo outAttrs) {
        return super.onCreateInputConnection(outAttrs);
    }

    @Override
    public void onDescendantInvalidated(@NonNull View child, @NonNull View target) {
        super.onDescendantInvalidated(child, target);
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override
    public void onDisplayHint(int hint) {
        super.onDisplayHint(hint);
    }

    @Override
    public boolean onDragEvent(DragEvent event) {
        return super.onDragEvent(event);
    }

    @Override
    public void onDraw(Canvas c10) {
        super.onDraw(c10);
    }

    @Override
    public void onDrawForeground(Canvas canvas) {
        super.onDrawForeground(canvas);
    }

    @Override
    public boolean onFilterTouchEventForSecurity(MotionEvent event) {
        return super.onFilterTouchEventForSecurity(event);
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
    }

    @Override
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
    }

    @Override
    public void onFocusChanged(boolean gainFocus, int direction, @Nullable @org.jetbrains.annotations.Nullable Rect previouslyFocusedRect) {
        super.onFocusChanged(gainFocus, direction, previouslyFocusedRect);
    }

    @Override
    public boolean onGenericMotionEvent(MotionEvent event) {
        return super.onGenericMotionEvent(event);
    }

    @Override
    public void onHoverChanged(boolean hovered) {
        super.onHoverChanged(hovered);
    }

    @Override
    public boolean onHoverEvent(MotionEvent event) {
        return super.onHoverEvent(event);
    }

    @Override
    public void onInitializeAccessibilityEvent(AccessibilityEvent event) {
        super.onInitializeAccessibilityEvent(event);
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo info) {
        super.onInitializeAccessibilityNodeInfo(info);
    }

    @Override
    public boolean onInterceptHoverEvent(MotionEvent event) {
        return super.onInterceptHoverEvent(event);
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent e10) {
        return super.onInterceptTouchEvent(e10);
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        return super.onKeyDown(keyCode, event);
    }

    @Override
    public boolean onKeyLongPress(int keyCode, KeyEvent event) {
        return super.onKeyLongPress(keyCode, event);
    }

    @Override
    public boolean onKeyMultiple(int keyCode, int repeatCount, KeyEvent event) {
        return super.onKeyMultiple(keyCode, repeatCount, event);
    }

    @Override
    public boolean onKeyPreIme(int keyCode, KeyEvent event) {
        return super.onKeyPreIme(keyCode, event);
    }

    @Override
    public boolean onKeyShortcut(int keyCode, KeyEvent event) {
        return super.onKeyShortcut(keyCode, event);
    }

    @Override
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        return super.onKeyUp(keyCode, event);
    }

    @Override
    public void onLayout(boolean changed, int l10, int t10, int r10, int b10) {
        try {
            super.onLayout(changed, l10, t10, r10, b10);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public void onMeasure(int widthSpec, int heightSpec) {
        try {
            super.onMeasure(widthSpec, heightSpec);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public boolean onNestedFling(View target, float velocityX, float velocityY, boolean consumed) {
        return super.onNestedFling(target, velocityX, velocityY, consumed);
    }

    @Override
    public boolean onNestedPreFling(View target, float velocityX, float velocityY) {
        return super.onNestedPreFling(target, velocityX, velocityY);
    }

    @Override
    public boolean onNestedPrePerformAccessibilityAction(View target, int action, Bundle args) {
        return super.onNestedPrePerformAccessibilityAction(target, action, args);
    }

    @Override
    public void onNestedPreScroll(View target, int dx, int dy, int[] consumed) {
        super.onNestedPreScroll(target, dx, dy, consumed);
    }

    @Override
    public void onNestedScroll(View target, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed) {
        super.onNestedScroll(target, dxConsumed, dyConsumed, dxUnconsumed, dyUnconsumed);
    }

    @Override
    public void onNestedScrollAccepted(View child, View target, int axes) {
        super.onNestedScrollAccepted(child, target, axes);
    }

    @Override
    public void onOverScrolled(int scrollX, int scrollY, boolean clampedX, boolean clampedY) {
        super.onOverScrolled(scrollX, scrollY, clampedX, clampedY);
    }

    @Override
    public void onPointerCaptureChange(boolean hasCapture) {
        super.onPointerCaptureChange(hasCapture);
    }

    @Override
    public void onPopulateAccessibilityEvent(AccessibilityEvent event) {
        super.onPopulateAccessibilityEvent(event);
    }

    @Override
    public void onProvideAutofillStructure(ViewStructure structure, int flags) {
        super.onProvideAutofillStructure(structure, flags);
    }

    @Override
    public void onProvideAutofillVirtualStructure(ViewStructure structure, int flags) {
        super.onProvideAutofillVirtualStructure(structure, flags);
    }

    public void onProvideContentCaptureStructure(@NonNull ViewStructure structure, int flags) {
        super.onProvideContentCaptureStructure(structure, flags);
    }

    @Override
    public void onProvideStructure(ViewStructure structure) {
        super.onProvideStructure(structure);
    }

    @Override
    public void onProvideVirtualStructure(ViewStructure structure) {
        super.onProvideVirtualStructure(structure);
    }

    @Override
    public boolean onRequestFocusInDescendants(int direction, Rect previouslyFocusedRect) {
        return super.onRequestFocusInDescendants(direction, previouslyFocusedRect);
    }

    @Override
    public boolean onRequestSendAccessibilityEvent(View child, AccessibilityEvent event) {
        return super.onRequestSendAccessibilityEvent(child, event);
    }

    @Override
    public PointerIcon onResolvePointerIcon(MotionEvent event, int pointerIndex) {
        return super.onResolvePointerIcon(event, pointerIndex);
    }

    @Override
    public void onRestoreInstanceState(Parcelable state) {
        super.onRestoreInstanceState(state);
    }

    @Override
    public void onRtlPropertiesChanged(int layoutDirection) {
        super.onRtlPropertiesChanged(layoutDirection);
    }

    @Override
    public Parcelable onSaveInstanceState() {
        return super.onSaveInstanceState();
    }

    @Override
    public void onScreenStateChanged(int screenState) {
        super.onScreenStateChanged(screenState);
    }

    @Override
    public void onScrollChanged(int l10, int t10, int oldl, int oldt) {
        super.onScrollChanged(l10, t10, oldl, oldt);
    }

    @Override
    public void onScrollStateChanged(int state) {
        super.onScrollStateChanged(state);
    }

    @Override
    public void onScrolled(int dx, int dy) {
        super.onScrolled(dx, dy);
    }

    @Override
    public boolean onSetAlpha(int alpha) {
        return super.onSetAlpha(alpha);
    }

    @Override
    public void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged(w10, h10, oldw, oldh);
    }

    @Override
    public boolean onStartNestedScroll(View child, View target, int nestedScrollAxes) {
        return super.onStartNestedScroll(child, target, nestedScrollAxes);
    }

    @Override
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
    }

    @Override
    public void onStopNestedScroll(View child) {
        super.onStopNestedScroll(child);
    }

    @Override
    public boolean onTouchEvent(MotionEvent e10) {
        return super.onTouchEvent(e10);
    }

    @Override
    public boolean onTrackballEvent(MotionEvent event) {
        return super.onTrackballEvent(event);
    }

    @Override
    public void onViewAdded(View child) {
        super.onViewAdded(child);
    }

    @Override
    public void onViewRemoved(View child) {
        super.onViewRemoved(child);
    }

    @Override
    public void onVisibilityAggregated(boolean isVisible) {
        super.onVisibilityAggregated(isVisible);
    }

    @Override
    public void onVisibilityChanged(@NonNull View changedView, int visibility) {
        super.onVisibilityChanged(changedView, visibility);
    }

    @Override
    public void onWindowFocusChanged(boolean hasWindowFocus) {
        super.onWindowFocusChanged(hasWindowFocus);
    }

    @Override
    public void onWindowSystemUiVisibilityChanged(int visible) {
        super.onWindowSystemUiVisibilityChanged(visible);
    }

    @Override
    public void onWindowVisibilityChanged(int visibility) {
        super.onWindowVisibilityChanged(visibility);
    }

    @Override
    public boolean overScrollBy(int deltaX, int deltaY, int scrollX, int scrollY, int scrollRangeX, int scrollRangeY, int maxOverScrollX, int maxOverScrollY, boolean isTouchEvent) {
        return super.overScrollBy(deltaX, deltaY, scrollX, scrollY, scrollRangeX, scrollRangeY, maxOverScrollX, maxOverScrollY, isTouchEvent);
    }

    @Override
    public boolean performAccessibilityAction(int action, Bundle arguments) {
        return super.performAccessibilityAction(action, arguments);
    }

    @Override
    public boolean performClick() {
        return super.performClick();
    }

    @Override
    public boolean performContextClick(float x10, float y10) {
        return super.performContextClick(x10, y10);
    }

    @Override
    public boolean performHapticFeedback(int feedbackConstant) {
        return super.performHapticFeedback(feedbackConstant);
    }

    @Override
    public boolean performLongClick() {
        return super.performLongClick();
    }

    @Override
    public void playSoundEffect(int soundConstant) {
        super.playSoundEffect(soundConstant);
    }

    @Override
    public boolean post(Runnable action) {
        return super.post(action);
    }

    @Override
    public boolean postDelayed(Runnable action, long delayMillis) {
        return super.postDelayed(action, delayMillis);
    }

    @Override
    public void postInvalidate() {
        super.postInvalidate();
    }

    @Override
    public void postInvalidateDelayed(long delayMilliseconds) {
        super.postInvalidateDelayed(delayMilliseconds);
    }

    @Override
    public void postInvalidateOnAnimation() {
        super.postInvalidateOnAnimation();
    }

    @Override
    public void postOnAnimation(Runnable action) {
        super.postOnAnimation(action);
    }

    @Override
    public void postOnAnimationDelayed(Runnable action, long delayMillis) {
        super.postOnAnimationDelayed(action, delayMillis);
    }

    @Override
    public void recomputeViewAttributes(View child) {
        super.recomputeViewAttributes(child);
    }

    @Override
    public void refreshDrawableState() {
        super.refreshDrawableState();
    }

    @Override
    public void releasePointerCapture() {
        super.releasePointerCapture();
    }

    @Override
    public void removeAllViews() {
        super.removeAllViews();
    }

    @Override
    public void removeAllViewsInLayout() {
        super.removeAllViewsInLayout();
    }

    @Override
    public boolean removeCallbacks(Runnable action) {
        return super.removeCallbacks(action);
    }

    @Override
    public void removeDetachedView(View child, boolean animate) {
        super.removeDetachedView(child, animate);
    }

    @Override
    public void removeItemDecoration(@NonNull RecyclerView.ItemDecoration decor) {
        super.removeItemDecoration(decor);
    }

    @Override
    public void removeItemDecorationAt(int index) {
        super.removeItemDecorationAt(index);
    }

    @Override
    public void removeOnAttachStateChangeListener(View.OnAttachStateChangeListener listener) {
        super.removeOnAttachStateChangeListener(listener);
    }

    @Override
    public void removeOnChildAttachStateChangeListener(@NonNull RecyclerView.OnChildAttachStateChangeListener listener) {
        super.removeOnChildAttachStateChangeListener(listener);
    }

    @Override
    public void removeOnItemTouchListener(@NonNull RecyclerView.OnItemTouchListener listener) {
        super.removeOnItemTouchListener(listener);
    }

    @Override
    public void removeOnLayoutChangeListener(View.OnLayoutChangeListener listener) {
        super.removeOnLayoutChangeListener(listener);
    }

    @Override
    public void removeOnScrollListener(@NonNull RecyclerView.OnScrollListener listener) {
        super.removeOnScrollListener(listener);
    }

    public void removeOnUnhandledKeyEventListener(View.OnUnhandledKeyEventListener listener) {
        super.removeOnUnhandledKeyEventListener(listener);
    }

    @Override
    public void removeView(View view) {
        super.removeView(view);
    }

    @Override
    public void removeViewAt(int index) {
        super.removeViewAt(index);
    }

    @Override
    public void removeViewInLayout(View view) {
        super.removeViewInLayout(view);
    }

    @Override
    public void removeViews(int start, int count) {
        super.removeViews(start, count);
    }

    @Override
    public void removeViewsInLayout(int start, int count) {
        super.removeViewsInLayout(start, count);
    }

    @Override
    public void requestApplyInsets() {
        super.requestApplyInsets();
    }

    @Override
    public void requestChildFocus(View child, View focused) {
        super.requestChildFocus(child, focused);
    }

    @Override
    public boolean requestChildRectangleOnScreen(View child, Rect rect, boolean immediate) {
        return super.requestChildRectangleOnScreen(child, rect, immediate);
    }

    @Override
    public void requestDisallowInterceptTouchEvent(boolean disallowIntercept) {
        super.requestDisallowInterceptTouchEvent(disallowIntercept);
    }

    @Override
    public void requestFitSystemWindows() {
        super.requestFitSystemWindows();
    }

    @Override
    public boolean requestFocus(int direction, Rect previouslyFocusedRect) {
        return super.requestFocus(direction, previouslyFocusedRect);
    }

    @Override
    public void requestLayout() {
        super.requestLayout();
    }

    @Override
    public void requestPointerCapture() {
        super.requestPointerCapture();
    }

    @Override
    public boolean requestRectangleOnScreen(Rect rectangle) {
        return super.requestRectangleOnScreen(rectangle);
    }

    @Override
    public boolean requestSendAccessibilityEvent(View child, AccessibilityEvent event) {
        return super.requestSendAccessibilityEvent(child, event);
    }

    @Override
    public void requestTransparentRegion(View child) {
        super.requestTransparentRegion(child);
    }

    public void resetPivot() {
        super.resetPivot();
    }

    @Override
    public boolean restoreDefaultFocus() {
        return super.restoreDefaultFocus();
    }

    @Override
    public void restoreHierarchyState(SparseArray<Parcelable> container) {
        super.restoreHierarchyState(container);
    }

    @Override
    public void saveHierarchyState(SparseArray<Parcelable> container) {
        super.saveHierarchyState(container);
    }

    @Override
    public void scheduleDrawable(@NonNull Drawable who, @NonNull Runnable what, long when) {
        super.scheduleDrawable(who, what, when);
    }

    @Override
    public void scheduleLayoutAnimation() {
        super.scheduleLayoutAnimation();
    }

    @Override
    public void scrollBy(int x10, int y10) {
        super.scrollBy(x10, y10);
    }

    @Override
    public void scrollTo(int x10, int y10) {
        super.scrollTo(x10, y10);
    }

    @Override
    public void scrollToPosition(int position) {
        super.scrollToPosition(position);
    }

    @Override
    public void sendAccessibilityEvent(int eventType) {
        super.sendAccessibilityEvent(eventType);
    }

    @Override
    public void sendAccessibilityEventUnchecked(AccessibilityEvent event) {
        super.sendAccessibilityEventUnchecked(event);
    }

    @Override
    public void setAccessibilityDelegate(@Nullable @org.jetbrains.annotations.Nullable View.AccessibilityDelegate delegate) {
        super.setAccessibilityDelegate(delegate);
    }

    @Override
    public void setAccessibilityDelegateCompat(@Nullable @org.jetbrains.annotations.Nullable RecyclerViewAccessibilityDelegate accessibilityDelegate) {
        super.setAccessibilityDelegateCompat(accessibilityDelegate);
    }

    public void setAccessibilityHeading(boolean isHeading) {
        super.setAccessibilityHeading(isHeading);
    }

    @Override
    public void setAccessibilityLiveRegion(int mode) {
        super.setAccessibilityLiveRegion(mode);
    }

    public void setAccessibilityPaneTitle(@Nullable @org.jetbrains.annotations.Nullable CharSequence accessibilityPaneTitle) {
        super.setAccessibilityPaneTitle(accessibilityPaneTitle);
    }

    @Override
    public void setAccessibilityTraversalAfter(int afterId) {
        super.setAccessibilityTraversalAfter(afterId);
    }

    @Override
    public void setAccessibilityTraversalBefore(int beforeId) {
        super.setAccessibilityTraversalBefore(beforeId);
    }

    @Override
    public void setActivated(boolean activated) {
        super.setActivated(activated);
    }

    @Override
    public void setAdapter(@Nullable @org.jetbrains.annotations.Nullable RecyclerView.Adapter adapter) {
        super.setAdapter(adapter);
    }

    @Override
    public void setAddStatesFromChildren(boolean addsStates) {
        super.setAddStatesFromChildren(addsStates);
    }

    @Override
    public void setAlpha(float alpha) {
        super.setAlpha(alpha);
    }

    @Override
    public void setAlwaysDrawnWithCacheEnabled(boolean always) {
        super.setAlwaysDrawnWithCacheEnabled(always);
    }

    @Override
    public void setAnimation(Animation animation) {
        super.setAnimation(animation);
    }

    @Override
    public void setAnimationCacheEnabled(boolean enabled) {
        super.setAnimationCacheEnabled(enabled);
    }

    public void setAnimationMatrix(@Nullable @org.jetbrains.annotations.Nullable Matrix matrix) {
        super.setAnimationMatrix(matrix);
    }

    @Override
    public void setAutofillHints(@Nullable @org.jetbrains.annotations.Nullable String... autofillHints) {
        super.setAutofillHints(autofillHints);
    }

    public void setAutofillId(@Nullable @org.jetbrains.annotations.Nullable AutofillId id2) {
        super.setAutofillId(id2);
    }

    @Override
    public void setBackground(Drawable background) {
        super.setBackground(background);
    }

    @Override
    public void setBackgroundColor(int color) {
        super.setBackgroundColor(color);
    }

    @Override
    public void setBackgroundDrawable(Drawable background) {
        super.setBackgroundDrawable(background);
    }

    @Override
    public void setBackgroundResource(int resid) {
        super.setBackgroundResource(resid);
    }

    public void setBackgroundTintBlendMode(@Nullable @org.jetbrains.annotations.Nullable BlendMode blendMode) {
        super.setBackgroundTintBlendMode(blendMode);
    }

    @Override
    public void setBackgroundTintList(@Nullable @org.jetbrains.annotations.Nullable ColorStateList tint) {
        super.setBackgroundTintList(tint);
    }

    @Override
    public void setBackgroundTintMode(@Nullable @org.jetbrains.annotations.Nullable PorterDuff.Mode tintMode) {
        super.setBackgroundTintMode(tintMode);
    }

    @Override
    public void setCameraDistance(float distance) {
        super.setCameraDistance(distance);
    }

    @Override
    public void setChildDrawingOrderCallback(@Nullable @org.jetbrains.annotations.Nullable RecyclerView.ChildDrawingOrderCallback childDrawingOrderCallback) {
        super.setChildDrawingOrderCallback(childDrawingOrderCallback);
    }

    @Override
    public void setChildrenDrawingCacheEnabled(boolean enabled) {
        super.setChildrenDrawingCacheEnabled(enabled);
    }

    @Override
    public void setChildrenDrawingOrderEnabled(boolean enabled) {
        super.setChildrenDrawingOrderEnabled(enabled);
    }

    @Override
    public void setChildrenDrawnWithCacheEnabled(boolean enabled) {
        super.setChildrenDrawnWithCacheEnabled(enabled);
    }

    @Override
    public void setClickable(boolean clickable) {
        super.setClickable(clickable);
    }

    @Override
    public void setClipBounds(Rect clipBounds) {
        super.setClipBounds(clipBounds);
    }

    @Override
    public void setClipChildren(boolean clipChildren) {
        super.setClipChildren(clipChildren);
    }

    @Override
    public void setClipToOutline(boolean clipToOutline) {
        super.setClipToOutline(clipToOutline);
    }

    @Override
    public void setClipToPadding(boolean clipToPadding) {
        super.setClipToPadding(clipToPadding);
    }

    public void setContentCaptureSession(@Nullable @org.jetbrains.annotations.Nullable ContentCaptureSession contentCaptureSession) {
        super.setContentCaptureSession(contentCaptureSession);
    }

    @Override
    public void setContentDescription(CharSequence contentDescription) {
        super.setContentDescription(contentDescription);
    }

    @Override
    public void setContextClickable(boolean contextClickable) {
        super.setContextClickable(contextClickable);
    }

    @Override
    public void setDefaultFocusHighlightEnabled(boolean defaultFocusHighlightEnabled) {
        super.setDefaultFocusHighlightEnabled(defaultFocusHighlightEnabled);
    }

    @Override
    public void setDescendantFocusability(int focusability) {
        super.setDescendantFocusability(focusability);
    }

    @Override
    public void setDrawingCacheBackgroundColor(int color) {
        super.setDrawingCacheBackgroundColor(color);
    }

    @Override
    public void setDrawingCacheEnabled(boolean enabled) {
        super.setDrawingCacheEnabled(enabled);
    }

    @Override
    public void setDrawingCacheQuality(int quality) {
        super.setDrawingCacheQuality(quality);
    }

    @Override
    public void setDuplicateParentStateEnabled(boolean enabled) {
        super.setDuplicateParentStateEnabled(enabled);
    }

    @Override
    public void setEdgeEffectFactory(@NonNull RecyclerView.EdgeEffectFactory edgeEffectFactory) {
        super.setEdgeEffectFactory(edgeEffectFactory);
    }

    @Override
    public void setElevation(float elevation) {
        super.setElevation(elevation);
    }

    @Override
    public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
    }

    @Override
    public void setFadingEdgeLength(int length) {
        super.setFadingEdgeLength(length);
    }

    @Override
    public void setFilterTouchesWhenObscured(boolean enabled) {
        super.setFilterTouchesWhenObscured(enabled);
    }

    @Override
    public void setFitsSystemWindows(boolean fitSystemWindows) {
        super.setFitsSystemWindows(fitSystemWindows);
    }

    @Override
    public void setFocusable(boolean focusable) {
        super.setFocusable(focusable);
    }

    @Override
    public void setFocusableInTouchMode(boolean focusableInTouchMode) {
        super.setFocusableInTouchMode(focusableInTouchMode);
    }

    @Override
    public void setFocusedByDefault(boolean isFocusedByDefault) {
        super.setFocusedByDefault(isFocusedByDefault);
    }

    public void setForceDarkAllowed(boolean allow) {
        super.setForceDarkAllowed(allow);
    }

    @Override
    public void setForeground(Drawable foreground) {
        super.setForeground(foreground);
    }

    @Override
    public void setForegroundGravity(int gravity) {
        super.setForegroundGravity(gravity);
    }

    public void setForegroundTintBlendMode(@Nullable @org.jetbrains.annotations.Nullable BlendMode blendMode) {
        super.setForegroundTintBlendMode(blendMode);
    }

    @Override
    public void setForegroundTintList(@Nullable @org.jetbrains.annotations.Nullable ColorStateList tint) {
        super.setForegroundTintList(tint);
    }

    @Override
    public void setForegroundTintMode(@Nullable @org.jetbrains.annotations.Nullable PorterDuff.Mode tintMode) {
        super.setForegroundTintMode(tintMode);
    }

    @Override
    public void setHapticFeedbackEnabled(boolean hapticFeedbackEnabled) {
        super.setHapticFeedbackEnabled(hapticFeedbackEnabled);
    }

    @Override
    public void setHasFixedSize(boolean hasFixedSize) {
        super.setHasFixedSize(hasFixedSize);
    }

    @Override
    public void setHasTransientState(boolean hasTransientState) {
        super.setHasTransientState(hasTransientState);
    }

    @Override
    public void setHorizontalFadingEdgeEnabled(boolean horizontalFadingEdgeEnabled) {
        super.setHorizontalFadingEdgeEnabled(horizontalFadingEdgeEnabled);
    }

    @Override
    public void setHorizontalScrollBarEnabled(boolean horizontalScrollBarEnabled) {
        super.setHorizontalScrollBarEnabled(horizontalScrollBarEnabled);
    }

    public void setHorizontalScrollbarThumbDrawable(@Nullable @org.jetbrains.annotations.Nullable Drawable drawable) {
        super.setHorizontalScrollbarThumbDrawable(drawable);
    }

    public void setHorizontalScrollbarTrackDrawable(@Nullable @org.jetbrains.annotations.Nullable Drawable drawable) {
        super.setHorizontalScrollbarTrackDrawable(drawable);
    }

    @Override
    public void setHovered(boolean hovered) {
        super.setHovered(hovered);
    }

    @Override
    public void setId(int id2) {
        super.setId(id2);
    }

    @Override
    public void setImportantForAccessibility(int mode) {
        super.setImportantForAccessibility(mode);
    }

    @Override
    public void setImportantForAutofill(int mode) {
        super.setImportantForAutofill(mode);
    }

    public void setImportantForContentCapture(int mode) {
        super.setImportantForContentCapture(mode);
    }

    @Override
    public void setItemAnimator(@Nullable @org.jetbrains.annotations.Nullable RecyclerView.ItemAnimator animator) {
        super.setItemAnimator(animator);
    }

    @Override
    public void setItemViewCacheSize(int size) {
        super.setItemViewCacheSize(size);
    }

    @Override
    public void setKeepScreenOn(boolean keepScreenOn) {
        super.setKeepScreenOn(keepScreenOn);
    }

    @Override
    public void setKeyboardNavigationCluster(boolean isCluster) {
        super.setKeyboardNavigationCluster(isCluster);
    }

    @Override
    public void setLabelFor(int id2) {
        super.setLabelFor(id2);
    }

    @Override
    public void setLayerPaint(@Nullable @org.jetbrains.annotations.Nullable Paint paint) {
        super.setLayerPaint(paint);
    }

    @Override
    public void setLayerType(int layerType, @Nullable @org.jetbrains.annotations.Nullable Paint paint) {
        super.setLayerType(layerType, paint);
    }

    @Override
    public void setLayoutAnimation(LayoutAnimationController controller) {
        super.setLayoutAnimation(controller);
    }

    @Override
    public void setLayoutAnimationListener(Animation.AnimationListener animationListener) {
        super.setLayoutAnimationListener(animationListener);
    }

    @Override
    public void setLayoutDirection(int layoutDirection) {
        super.setLayoutDirection(layoutDirection);
    }

    @Override
    public void setLayoutFrozen(boolean frozen) {
        super.setLayoutFrozen(frozen);
    }

    @Override
    public void setLayoutManager(@Nullable @org.jetbrains.annotations.Nullable RecyclerView.LayoutManager layout) {
        try {
            super.setLayoutManager(layout);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public void setLayoutMode(int layoutMode) {
        super.setLayoutMode(layoutMode);
    }

    @Override
    public void setLayoutParams(ViewGroup.LayoutParams params) {
        super.setLayoutParams(params);
    }

    @Override
    public void setLayoutTransition(LayoutTransition transition) {
        super.setLayoutTransition(transition);
    }

    @Override
    public void setLongClickable(boolean longClickable) {
        super.setLongClickable(longClickable);
    }

    @Override
    public void setMinimumHeight(int minHeight) {
        super.setMinimumHeight(minHeight);
    }

    @Override
    public void setMinimumWidth(int minWidth) {
        super.setMinimumWidth(minWidth);
    }

    @Override
    public void setMotionEventSplittingEnabled(boolean split) {
        super.setMotionEventSplittingEnabled(split);
    }

    @Override
    public void setNestedScrollingEnabled(boolean enabled) {
        super.setNestedScrollingEnabled(enabled);
    }

    @Override
    public void setNextClusterForwardId(int nextClusterForwardId) {
        super.setNextClusterForwardId(nextClusterForwardId);
    }

    @Override
    public void setNextFocusDownId(int nextFocusDownId) {
        super.setNextFocusDownId(nextFocusDownId);
    }

    @Override
    public void setNextFocusForwardId(int nextFocusForwardId) {
        super.setNextFocusForwardId(nextFocusForwardId);
    }

    @Override
    public void setNextFocusLeftId(int nextFocusLeftId) {
        super.setNextFocusLeftId(nextFocusLeftId);
    }

    @Override
    public void setNextFocusRightId(int nextFocusRightId) {
        super.setNextFocusRightId(nextFocusRightId);
    }

    @Override
    public void setNextFocusUpId(int nextFocusUpId) {
        super.setNextFocusUpId(nextFocusUpId);
    }

    @Override
    public void setOnApplyWindowInsetsListener(View.OnApplyWindowInsetsListener listener) {
        super.setOnApplyWindowInsetsListener(listener);
    }

    @Override
    public void setOnCapturedPointerListener(View.OnCapturedPointerListener l10) {
        super.setOnCapturedPointerListener(l10);
    }

    @Override
    public void setOnClickListener(@Nullable @org.jetbrains.annotations.Nullable View.OnClickListener l10) {
        super.setOnClickListener(l10);
    }

    @Override
    public void setOnContextClickListener(@Nullable @org.jetbrains.annotations.Nullable View.OnContextClickListener l10) {
        super.setOnContextClickListener(l10);
    }

    @Override
    public void setOnCreateContextMenuListener(View.OnCreateContextMenuListener l10) {
        super.setOnCreateContextMenuListener(l10);
    }

    @Override
    public void setOnDragListener(View.OnDragListener l10) {
        super.setOnDragListener(l10);
    }

    @Override
    public void setOnFlingListener(@Nullable @org.jetbrains.annotations.Nullable RecyclerView.OnFlingListener onFlingListener) {
        super.setOnFlingListener(onFlingListener);
    }

    @Override
    public void setOnFocusChangeListener(View.OnFocusChangeListener l10) {
        super.setOnFocusChangeListener(l10);
    }

    @Override
    public void setOnGenericMotionListener(View.OnGenericMotionListener l10) {
        super.setOnGenericMotionListener(l10);
    }

    @Override
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener listener) {
        super.setOnHierarchyChangeListener(listener);
    }

    @Override
    public void setOnHoverListener(View.OnHoverListener l10) {
        super.setOnHoverListener(l10);
    }

    @Override
    public void setOnKeyListener(View.OnKeyListener l10) {
        super.setOnKeyListener(l10);
    }

    @Override
    public void setOnLongClickListener(@Nullable @org.jetbrains.annotations.Nullable View.OnLongClickListener l10) {
        super.setOnLongClickListener(l10);
    }

    @Override
    public void setOnScrollChangeListener(View.OnScrollChangeListener l10) {
        super.setOnScrollChangeListener(l10);
    }

    @Override
    public void setOnScrollListener(@Nullable @org.jetbrains.annotations.Nullable RecyclerView.OnScrollListener listener) {
        super.setOnScrollListener(listener);
    }

    @Override
    public void setOnSystemUiVisibilityChangeListener(View.OnSystemUiVisibilityChangeListener l10) {
        super.setOnSystemUiVisibilityChangeListener(l10);
    }

    @Override
    public void setOnTouchListener(View.OnTouchListener l10) {
        super.setOnTouchListener(l10);
    }

    public void setOutlineAmbientShadowColor(int color) {
        super.setOutlineAmbientShadowColor(color);
    }

    @Override
    public void setOutlineProvider(ViewOutlineProvider provider) {
        super.setOutlineProvider(provider);
    }

    public void setOutlineSpotShadowColor(int color) {
        super.setOutlineSpotShadowColor(color);
    }

    @Override
    public void setOverScrollMode(int overScrollMode) {
        super.setOverScrollMode(overScrollMode);
    }

    @Override
    public void setPadding(int left, int top, int right, int bottom) {
        super.setPadding(left, top, right, bottom);
    }

    @Override
    public void setPaddingRelative(int start, int top, int end, int bottom) {
        super.setPaddingRelative(start, top, end, bottom);
    }

    @Override
    public void setPersistentDrawingCache(int drawingCacheToKeep) {
        super.setPersistentDrawingCache(drawingCacheToKeep);
    }

    @Override
    public void setPivotX(float pivotX) {
        super.setPivotX(pivotX);
    }

    @Override
    public void setPivotY(float pivotY) {
        super.setPivotY(pivotY);
    }

    @Override
    public void setPointerIcon(PointerIcon pointerIcon) {
        super.setPointerIcon(pointerIcon);
    }

    @Override
    public void setPreserveFocusAfterLayout(boolean preserveFocusAfterLayout) {
        super.setPreserveFocusAfterLayout(preserveFocusAfterLayout);
    }

    @Override
    public void setPressed(boolean pressed) {
        super.setPressed(pressed);
    }

    @Override
    public void setRecycledViewPool(@Nullable @org.jetbrains.annotations.Nullable RecyclerView.RecycledViewPool pool) {
        super.setRecycledViewPool(pool);
    }

    @Override
    public void setRecyclerListener(@Nullable @org.jetbrains.annotations.Nullable RecyclerView.RecyclerListener listener) {
        super.setRecyclerListener(listener);
    }

    @Override
    public void setRotation(float rotation) {
        super.setRotation(rotation);
    }

    @Override
    public void setRotationX(float rotationX) {
        super.setRotationX(rotationX);
    }

    @Override
    public void setRotationY(float rotationY) {
        super.setRotationY(rotationY);
    }

    @Override
    public void setSaveEnabled(boolean enabled) {
        super.setSaveEnabled(enabled);
    }

    @Override
    public void setSaveFromParentEnabled(boolean enabled) {
        super.setSaveFromParentEnabled(enabled);
    }

    @Override
    public void setScaleX(float scaleX) {
        super.setScaleX(scaleX);
    }

    @Override
    public void setScaleY(float scaleY) {
        super.setScaleY(scaleY);
    }

    public void setScreenReaderFocusable(boolean screenReaderFocusable) {
        super.setScreenReaderFocusable(screenReaderFocusable);
    }

    @Override
    public void setScrollBarDefaultDelayBeforeFade(int scrollBarDefaultDelayBeforeFade) {
        super.setScrollBarDefaultDelayBeforeFade(scrollBarDefaultDelayBeforeFade);
    }

    @Override
    public void setScrollBarFadeDuration(int scrollBarFadeDuration) {
        super.setScrollBarFadeDuration(scrollBarFadeDuration);
    }

    @Override
    public void setScrollBarSize(int scrollBarSize) {
        super.setScrollBarSize(scrollBarSize);
    }

    @Override
    public void setScrollBarStyle(int style) {
        super.setScrollBarStyle(style);
    }

    @Override
    public void setScrollContainer(boolean isScrollContainer) {
        super.setScrollContainer(isScrollContainer);
    }

    @Override
    public void setScrollIndicators(int indicators) {
        super.setScrollIndicators(indicators);
    }

    @Override
    public void setScrollX(int value) {
        super.setScrollX(value);
    }

    @Override
    public void setScrollY(int value) {
        super.setScrollY(value);
    }

    @Override
    public void setScrollbarFadingEnabled(boolean fadeScrollbars) {
        super.setScrollbarFadingEnabled(fadeScrollbars);
    }

    @Override
    public void setScrollingTouchSlop(int slopConstant) {
        super.setScrollingTouchSlop(slopConstant);
    }

    @Override
    public void setSelected(boolean selected) {
        super.setSelected(selected);
    }

    @Override
    public void setSoundEffectsEnabled(boolean soundEffectsEnabled) {
        super.setSoundEffectsEnabled(soundEffectsEnabled);
    }

    public void setStateDescription(@Nullable @org.jetbrains.annotations.Nullable CharSequence stateDescription) {
        super.setStateDescription(stateDescription);
    }

    @Override
    public void setStateListAnimator(StateListAnimator stateListAnimator) {
        super.setStateListAnimator(stateListAnimator);
    }

    @Override
    public void setStaticTransformationsEnabled(boolean enabled) {
        super.setStaticTransformationsEnabled(enabled);
    }

    public void setSystemGestureExclusionRects(@NonNull List<Rect> rects) {
        super.setSystemGestureExclusionRects(rects);
    }

    @Override
    public void setSystemUiVisibility(int visibility) {
        super.setSystemUiVisibility(visibility);
    }

    @Override
    public void setTag(Object tag) {
        super.setTag(tag);
    }

    @Override
    public void setTextAlignment(int textAlignment) {
        super.setTextAlignment(textAlignment);
    }

    @Override
    public void setTextDirection(int textDirection) {
        super.setTextDirection(textDirection);
    }

    @Override
    public void setTooltipText(@Nullable @org.jetbrains.annotations.Nullable CharSequence tooltipText) {
        super.setTooltipText(tooltipText);
    }

    @Override
    public void setTouchDelegate(TouchDelegate delegate) {
        super.setTouchDelegate(delegate);
    }

    @Override
    public void setTouchscreenBlocksFocus(boolean touchscreenBlocksFocus) {
        super.setTouchscreenBlocksFocus(touchscreenBlocksFocus);
    }

    public void setTransitionAlpha(float alpha) {
        super.setTransitionAlpha(alpha);
    }

    @Override
    public void setTransitionGroup(boolean isTransitionGroup) {
        super.setTransitionGroup(isTransitionGroup);
    }

    public void setTransitionVisibility(int visibility) {
        super.setTransitionVisibility(visibility);
    }

    @Override
    public void setTranslationX(float translationX) {
        super.setTranslationX(translationX);
    }

    @Override
    public void setTranslationY(float translationY) {
        super.setTranslationY(translationY);
    }

    @Override
    public void setTranslationZ(float translationZ) {
        super.setTranslationZ(translationZ);
    }

    @Override
    public void setVerticalFadingEdgeEnabled(boolean verticalFadingEdgeEnabled) {
        super.setVerticalFadingEdgeEnabled(verticalFadingEdgeEnabled);
    }

    @Override
    public void setVerticalScrollBarEnabled(boolean verticalScrollBarEnabled) {
        super.setVerticalScrollBarEnabled(verticalScrollBarEnabled);
    }

    @Override
    public void setVerticalScrollbarPosition(int position) {
        super.setVerticalScrollbarPosition(position);
    }

    public void setVerticalScrollbarThumbDrawable(@Nullable @org.jetbrains.annotations.Nullable Drawable drawable) {
        super.setVerticalScrollbarThumbDrawable(drawable);
    }

    public void setVerticalScrollbarTrackDrawable(@Nullable @org.jetbrains.annotations.Nullable Drawable drawable) {
        super.setVerticalScrollbarTrackDrawable(drawable);
    }

    @Override
    public void setViewCacheExtension(@Nullable @org.jetbrains.annotations.Nullable RecyclerView.ViewCacheExtension extension) {
        super.setViewCacheExtension(extension);
    }

    @Override
    public void setVisibility(int visibility) {
        super.setVisibility(visibility);
    }

    @Override
    public void setWillNotCacheDrawing(boolean willNotCacheDrawing) {
        super.setWillNotCacheDrawing(willNotCacheDrawing);
    }

    @Override
    public void setWillNotDraw(boolean willNotDraw) {
        super.setWillNotDraw(willNotDraw);
    }

    public void setWindowInsetsAnimationCallback(@Nullable @org.jetbrains.annotations.Nullable WindowInsetsAnimation$Callback callback) {
        super.setWindowInsetsAnimationCallback(callback);
    }

    @Override
    public void setX(float x10) {
        super.setX(x10);
    }

    @Override
    public void setY(float y10) {
        super.setY(y10);
    }

    @Override
    public void setZ(float z10) {
        super.setZ(z10);
    }

    @Override
    public boolean shouldDelayChildPressedState() {
        return super.shouldDelayChildPressedState();
    }

    @Override
    public boolean showContextMenu() {
        return super.showContextMenu();
    }

    @Override
    public boolean showContextMenuForChild(View originalView) {
        return super.showContextMenuForChild(originalView);
    }

    @Override
    public void smoothScrollBy(int dx, int dy) {
        super.smoothScrollBy(dx, dy);
    }

    @Override
    public void smoothScrollToPosition(int position) {
        super.smoothScrollToPosition(position);
    }

    @Override
    public ActionMode startActionMode(ActionMode.Callback callback) {
        return super.startActionMode(callback);
    }

    @Override
    public ActionMode startActionModeForChild(View originalView, ActionMode.Callback callback) {
        return super.startActionModeForChild(originalView, callback);
    }

    @Override
    public void startAnimation(Animation animation) {
        super.startAnimation(animation);
    }

    @Override
    public void startLayoutAnimation() {
        super.startLayoutAnimation();
    }

    @Override
    public boolean startNestedScroll(int axes) {
        return super.startNestedScroll(axes);
    }

    @Override
    public void startViewTransition(View view) {
        super.startViewTransition(view);
    }

    @Override
    public void stopNestedScroll() {
        super.stopNestedScroll();
    }

    @Override
    public void stopScroll() {
        super.stopScroll();
    }

    @Override
    public void swapAdapter(@Nullable @org.jetbrains.annotations.Nullable RecyclerView.Adapter adapter, boolean removeAndRecycleExistingViews) {
        super.swapAdapter(adapter, removeAndRecycleExistingViews);
    }

    @Override
    public String toString() {
        return super.toString();
    }

    public void transformMatrixToGlobal(@NonNull Matrix matrix) {
        super.transformMatrixToGlobal(matrix);
    }

    public void transformMatrixToLocal(@NonNull Matrix matrix) {
        super.transformMatrixToLocal(matrix);
    }

    @Override
    public void unscheduleDrawable(@NonNull Drawable who, @NonNull Runnable what) {
        super.unscheduleDrawable(who, what);
    }

    @Override
    public void updateViewLayout(View view, ViewGroup.LayoutParams params) {
        super.updateViewLayout(view, params);
    }

    @Override
    public boolean verifyDrawable(@NonNull Drawable who) {
        return super.verifyDrawable(who);
    }

    @Override
    public boolean willNotCacheDrawing() {
        return super.willNotCacheDrawing();
    }

    @Override
    public boolean willNotDraw() {
        return super.willNotDraw();
    }

    public ExceptionSafeRecyclerView(@NonNull Context context, @Nullable @org.jetbrains.annotations.Nullable AttributeSet attrs) {
        super(context, attrs);
    }

    @Override
    public void addFocusables(ArrayList<View> views, int direction) {
        super.addFocusables(views, direction);
    }

    @Override
    public void addItemDecoration(@NonNull RecyclerView.ItemDecoration decor) {
        super.addItemDecoration(decor);
    }

    @Override
    public void addView(View child, int index) {
        super.addView(child, index);
    }

    @Override
    public boolean addViewInLayout(View child, int index, ViewGroup.LayoutParams params, boolean preventRequestLayout) {
        return super.addViewInLayout(child, index, params, preventRequestLayout);
    }

    @Override
    public void autofill(@NonNull SparseArray<AutofillValue> values) {
        super.autofill(values);
    }

    @Override
    public boolean awakenScrollBars(int startDelay) {
        return super.awakenScrollBars(startDelay);
    }

    @Override
    public void buildDrawingCache(boolean autoScale) {
        super.buildDrawingCache(autoScale);
    }

    @Override
    public void detachViewFromParent(int index) {
        super.detachViewFromParent(index);
    }

    @Override
    public boolean dispatchNestedPreScroll(int dx, int dy, int[] consumed, int[] offsetInWindow, int type) {
        return super.dispatchNestedPreScroll(dx, dy, consumed, offsetInWindow, type);
    }

    @Override
    public boolean dispatchNestedScroll(int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int[] offsetInWindow, int type) {
        return super.dispatchNestedScroll(dxConsumed, dyConsumed, dxUnconsumed, dyUnconsumed, offsetInWindow, type);
    }

    @Override
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams p10) {
        return super.generateLayoutParams(p10);
    }

    @Override
    public boolean getClipBounds(Rect outRect) {
        return super.getClipBounds(outRect);
    }

    @Override
    public Bitmap getDrawingCache(boolean autoScale) {
        return super.getDrawingCache(autoScale);
    }

    @Override
    public ViewGroupOverlay getOverlay() {
        return super.getOverlay();
    }

    @Override
    public Object getTag(int key) {
        return super.getTag(key);
    }

    @Override
    public boolean hasNestedScrollingParent(int type) {
        return super.hasNestedScrollingParent(type);
    }

    @Override
    public void invalidate(int l10, int t10, int r10, int b10) {
        super.invalidate(l10, t10, r10, b10);
    }

    @Override
    public boolean performContextClick() {
        return super.performContextClick();
    }

    @Override
    public boolean performHapticFeedback(int feedbackConstant, int flags) {
        return super.performHapticFeedback(feedbackConstant, flags);
    }

    @Override
    public boolean performLongClick(float x10, float y10) {
        return super.performLongClick(x10, y10);
    }

    @Override
    public void postInvalidate(int left, int top, int right, int bottom) {
        super.postInvalidate(left, top, right, bottom);
    }

    @Override
    public void postInvalidateDelayed(long delayMilliseconds, int left, int top, int right, int bottom) {
        super.postInvalidateDelayed(delayMilliseconds, left, top, right, bottom);
    }

    @Override
    public void postInvalidateOnAnimation(int left, int top, int right, int bottom) {
        super.postInvalidateOnAnimation(left, top, right, bottom);
    }

    @Override
    public boolean requestRectangleOnScreen(Rect rectangle, boolean immediate) {
        return super.requestRectangleOnScreen(rectangle, immediate);
    }

    @Override
    public void setFocusable(int focusable) {
        super.setFocusable(focusable);
    }

    @Override
    public void setScrollIndicators(int indicators, int mask) {
        super.setScrollIndicators(indicators, mask);
    }

    @Override
    public void setTag(int key, Object tag) {
        super.setTag(key, tag);
    }

    @Override
    public boolean showContextMenu(float x10, float y10) {
        return super.showContextMenu(x10, y10);
    }

    @Override
    public boolean showContextMenuForChild(View originalView, float x10, float y10) {
        return super.showContextMenuForChild(originalView, x10, y10);
    }

    @Override
    public void smoothScrollBy(int dx, int dy, @Nullable @org.jetbrains.annotations.Nullable Interpolator interpolator) {
        super.smoothScrollBy(dx, dy, interpolator);
    }

    @Override
    public ActionMode startActionMode(ActionMode.Callback callback, int type) {
        return super.startActionMode(callback, type);
    }

    @Override
    public ActionMode startActionModeForChild(View originalView, ActionMode.Callback callback, int type) {
        return super.startActionModeForChild(originalView, callback, type);
    }

    @Override
    public boolean startNestedScroll(int axes, int type) {
        return super.startNestedScroll(axes, type);
    }

    @Override
    public void stopNestedScroll(int type) {
        super.stopNestedScroll(type);
    }

    @Override
    public void unscheduleDrawable(Drawable who) {
        super.unscheduleDrawable(who);
    }

    public ExceptionSafeRecyclerView(@NonNull Context context, @Nullable @org.jetbrains.annotations.Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    @Override
    public void addView(View child, int width, int height) {
        super.addView(child, width, height);
    }

    @Override
    public boolean awakenScrollBars(int startDelay, boolean invalidate) {
        return super.awakenScrollBars(startDelay, invalidate);
    }

    @Override
    public View focusSearch(int direction) {
        return super.focusSearch(direction);
    }

    @Override
    public void invalidate() {
        super.invalidate();
    }

    @Override
    public void smoothScrollBy(int dx, int dy, @Nullable @org.jetbrains.annotations.Nullable Interpolator interpolator, int duration) {
        super.smoothScrollBy(dx, dy, interpolator, duration);
    }

    @Override
    public void addView(View child, ViewGroup.LayoutParams params) {
        super.addView(child, params);
    }

    @Override
    public void addView(View child, int index, ViewGroup.LayoutParams params) {
        super.addView(child, index, params);
    }
}
