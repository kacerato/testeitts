package android.view;

import android.animation.StateListAnimator;
import android.content.ClipData;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Property;
import android.util.SparseArray;
import android.view.ActionMode;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityEventSource;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.animation.Animation;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.ArrayList;
import java.util.Collection;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/View.class
 */
public class View implements Drawable.Callback, KeyEvent.Callback, AccessibilityEventSource {
    public static final int ACCESSIBILITY_LIVE_REGION_ASSERTIVE = 2;
    public static final int ACCESSIBILITY_LIVE_REGION_NONE = 0;
    public static final int ACCESSIBILITY_LIVE_REGION_POLITE = 1;
    public static final int AUTOFILL_FLAG_INCLUDE_NOT_IMPORTANT_VIEWS = 1;
    public static final String AUTOFILL_HINT_CREDIT_CARD_EXPIRATION_DATE = "creditCardExpirationDate";
    public static final String AUTOFILL_HINT_CREDIT_CARD_EXPIRATION_DAY = "creditCardExpirationDay";
    public static final String AUTOFILL_HINT_CREDIT_CARD_EXPIRATION_MONTH = "creditCardExpirationMonth";
    public static final String AUTOFILL_HINT_CREDIT_CARD_EXPIRATION_YEAR = "creditCardExpirationYear";
    public static final String AUTOFILL_HINT_CREDIT_CARD_NUMBER = "creditCardNumber";
    public static final String AUTOFILL_HINT_CREDIT_CARD_SECURITY_CODE = "creditCardSecurityCode";
    public static final String AUTOFILL_HINT_EMAIL_ADDRESS = "emailAddress";
    public static final String AUTOFILL_HINT_NAME = "name";
    public static final String AUTOFILL_HINT_PASSWORD = "password";
    public static final String AUTOFILL_HINT_PHONE = "phone";
    public static final String AUTOFILL_HINT_POSTAL_ADDRESS = "postalAddress";
    public static final String AUTOFILL_HINT_POSTAL_CODE = "postalCode";
    public static final String AUTOFILL_HINT_USERNAME = "username";
    public static final int AUTOFILL_TYPE_DATE = 4;
    public static final int AUTOFILL_TYPE_LIST = 3;
    public static final int AUTOFILL_TYPE_NONE = 0;
    public static final int AUTOFILL_TYPE_TEXT = 1;
    public static final int AUTOFILL_TYPE_TOGGLE = 2;
    public static final int DRAG_FLAG_GLOBAL = 256;
    public static final int DRAG_FLAG_GLOBAL_PERSISTABLE_URI_PERMISSION = 64;
    public static final int DRAG_FLAG_GLOBAL_PREFIX_URI_PERMISSION = 128;
    public static final int DRAG_FLAG_GLOBAL_URI_READ = 1;
    public static final int DRAG_FLAG_GLOBAL_URI_WRITE = 2;
    public static final int DRAG_FLAG_OPAQUE = 512;
    public static final int DRAWING_CACHE_QUALITY_AUTO = 0;
    public static final int DRAWING_CACHE_QUALITY_HIGH = 1048576;
    public static final int DRAWING_CACHE_QUALITY_LOW = 524288;
    public static final int FIND_VIEWS_WITH_CONTENT_DESCRIPTION = 2;
    public static final int FIND_VIEWS_WITH_TEXT = 1;
    public static final int FOCUSABLE = 1;
    public static final int FOCUSABLES_ALL = 0;
    public static final int FOCUSABLES_TOUCH_MODE = 1;
    public static final int FOCUSABLE_AUTO = 16;
    public static final int FOCUS_BACKWARD = 1;
    public static final int FOCUS_DOWN = 130;
    public static final int FOCUS_FORWARD = 2;
    public static final int FOCUS_LEFT = 17;
    public static final int FOCUS_RIGHT = 66;
    public static final int FOCUS_UP = 33;
    public static final int GONE = 8;
    public static final int HAPTIC_FEEDBACK_ENABLED = 268435456;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_AUTO = 0;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_NO = 2;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS = 4;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_YES = 1;
    public static final int IMPORTANT_FOR_AUTOFILL_AUTO = 0;
    public static final int IMPORTANT_FOR_AUTOFILL_NO = 2;
    public static final int IMPORTANT_FOR_AUTOFILL_NO_EXCLUDE_DESCENDANTS = 8;
    public static final int IMPORTANT_FOR_AUTOFILL_YES = 1;
    public static final int IMPORTANT_FOR_AUTOFILL_YES_EXCLUDE_DESCENDANTS = 4;
    public static final int INVISIBLE = 4;
    public static final int KEEP_SCREEN_ON = 67108864;
    public static final int LAYER_TYPE_HARDWARE = 2;
    public static final int LAYER_TYPE_NONE = 0;
    public static final int LAYER_TYPE_SOFTWARE = 1;
    public static final int LAYOUT_DIRECTION_INHERIT = 2;
    public static final int LAYOUT_DIRECTION_LOCALE = 3;
    public static final int LAYOUT_DIRECTION_LTR = 0;
    public static final int LAYOUT_DIRECTION_RTL = 1;
    public static final int MEASURED_HEIGHT_STATE_SHIFT = 16;
    public static final int MEASURED_SIZE_MASK = 16777215;
    public static final int MEASURED_STATE_MASK = -16777216;
    public static final int MEASURED_STATE_TOO_SMALL = 16777216;
    public static final int NOT_FOCUSABLE = 0;
    public static final int NO_ID = -1;
    public static final int OVER_SCROLL_ALWAYS = 0;
    public static final int OVER_SCROLL_IF_CONTENT_SCROLLS = 1;
    public static final int OVER_SCROLL_NEVER = 2;
    public static final int SCREEN_STATE_OFF = 0;
    public static final int SCREEN_STATE_ON = 1;
    public static final int SCROLLBARS_INSIDE_INSET = 16777216;
    public static final int SCROLLBARS_INSIDE_OVERLAY = 0;
    public static final int SCROLLBARS_OUTSIDE_INSET = 50331648;
    public static final int SCROLLBARS_OUTSIDE_OVERLAY = 33554432;
    public static final int SCROLLBAR_POSITION_DEFAULT = 0;
    public static final int SCROLLBAR_POSITION_LEFT = 1;
    public static final int SCROLLBAR_POSITION_RIGHT = 2;
    public static final int SCROLL_AXIS_HORIZONTAL = 1;
    public static final int SCROLL_AXIS_NONE = 0;
    public static final int SCROLL_AXIS_VERTICAL = 2;
    public static final int SCROLL_INDICATOR_BOTTOM = 2;
    public static final int SCROLL_INDICATOR_END = 32;
    public static final int SCROLL_INDICATOR_LEFT = 4;
    public static final int SCROLL_INDICATOR_RIGHT = 8;
    public static final int SCROLL_INDICATOR_START = 16;
    public static final int SCROLL_INDICATOR_TOP = 1;
    public static final int SOUND_EFFECTS_ENABLED = 134217728;

    @Deprecated
    public static final int STATUS_BAR_HIDDEN = 1;

    @Deprecated
    public static final int STATUS_BAR_VISIBLE = 0;
    public static final int SYSTEM_UI_FLAG_FULLSCREEN = 4;
    public static final int SYSTEM_UI_FLAG_HIDE_NAVIGATION = 2;
    public static final int SYSTEM_UI_FLAG_IMMERSIVE = 2048;
    public static final int SYSTEM_UI_FLAG_IMMERSIVE_STICKY = 4096;
    public static final int SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN = 1024;
    public static final int SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION = 512;
    public static final int SYSTEM_UI_FLAG_LAYOUT_STABLE = 256;
    public static final int SYSTEM_UI_FLAG_LIGHT_NAVIGATION_BAR = 16;
    public static final int SYSTEM_UI_FLAG_LIGHT_STATUS_BAR = 8192;
    public static final int SYSTEM_UI_FLAG_LOW_PROFILE = 1;
    public static final int SYSTEM_UI_FLAG_VISIBLE = 0;
    public static final int SYSTEM_UI_LAYOUT_FLAGS = 1536;
    public static final int TEXT_ALIGNMENT_CENTER = 4;
    public static final int TEXT_ALIGNMENT_GRAVITY = 1;
    public static final int TEXT_ALIGNMENT_INHERIT = 0;
    public static final int TEXT_ALIGNMENT_TEXT_END = 3;
    public static final int TEXT_ALIGNMENT_TEXT_START = 2;
    public static final int TEXT_ALIGNMENT_VIEW_END = 6;
    public static final int TEXT_ALIGNMENT_VIEW_START = 5;
    public static final int TEXT_DIRECTION_ANY_RTL = 2;
    public static final int TEXT_DIRECTION_FIRST_STRONG = 1;
    public static final int TEXT_DIRECTION_FIRST_STRONG_LTR = 6;
    public static final int TEXT_DIRECTION_FIRST_STRONG_RTL = 7;
    public static final int TEXT_DIRECTION_INHERIT = 0;
    public static final int TEXT_DIRECTION_LOCALE = 5;
    public static final int TEXT_DIRECTION_LTR = 3;
    public static final int TEXT_DIRECTION_RTL = 4;
    protected static final String VIEW_LOG_TAG = "View";
    public static final int VISIBLE = 0;
    protected static final int[] EMPTY_STATE_SET = null;
    protected static final int[] ENABLED_FOCUSED_SELECTED_STATE_SET = null;
    protected static final int[] ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET = null;
    protected static final int[] ENABLED_FOCUSED_STATE_SET = null;
    protected static final int[] ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET = null;
    protected static final int[] ENABLED_SELECTED_STATE_SET = null;
    protected static final int[] ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET = null;
    protected static final int[] ENABLED_STATE_SET = null;
    protected static final int[] ENABLED_WINDOW_FOCUSED_STATE_SET = null;
    protected static final int[] FOCUSED_SELECTED_STATE_SET = null;
    protected static final int[] FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET = null;
    protected static final int[] FOCUSED_STATE_SET = null;
    protected static final int[] FOCUSED_WINDOW_FOCUSED_STATE_SET = null;
    protected static final int[] PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET = null;
    protected static final int[] PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET = null;
    protected static final int[] PRESSED_ENABLED_FOCUSED_STATE_SET = null;
    protected static final int[] PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET = null;
    protected static final int[] PRESSED_ENABLED_SELECTED_STATE_SET = null;
    protected static final int[] PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET = null;
    protected static final int[] PRESSED_ENABLED_STATE_SET = null;
    protected static final int[] PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET = null;
    protected static final int[] PRESSED_FOCUSED_SELECTED_STATE_SET = null;
    protected static final int[] PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET = null;
    protected static final int[] PRESSED_FOCUSED_STATE_SET = null;
    protected static final int[] PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET = null;
    protected static final int[] PRESSED_SELECTED_STATE_SET = null;
    protected static final int[] PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET = null;
    protected static final int[] PRESSED_STATE_SET = null;
    protected static final int[] PRESSED_WINDOW_FOCUSED_STATE_SET = null;
    protected static final int[] SELECTED_STATE_SET = null;
    protected static final int[] SELECTED_WINDOW_FOCUSED_STATE_SET = null;
    protected static final int[] WINDOW_FOCUSED_STATE_SET = null;
    public static final Property<View, Float> ALPHA = null;
    public static final Property<View, Float> ROTATION = null;
    public static final Property<View, Float> ROTATION_X = null;
    public static final Property<View, Float> ROTATION_Y = null;
    public static final Property<View, Float> SCALE_X = null;
    public static final Property<View, Float> SCALE_Y = null;
    public static final Property<View, Float> TRANSLATION_X = null;
    public static final Property<View, Float> TRANSLATION_Y = null;
    public static final Property<View, Float> TRANSLATION_Z = null;

    public static final Property<View, Float> f32502X = null;

    public static final Property<View, Float> f32503Y = null;

    public static final Property<View, Float> f32504Z = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/View$OnApplyWindowInsetsListener.class
 */
    public interface OnApplyWindowInsetsListener {
        WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/View$OnAttachStateChangeListener.class
 */
    public interface OnAttachStateChangeListener {
        void onViewAttachedToWindow(View view);

        void onViewDetachedFromWindow(View view);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/View$OnCapturedPointerListener.class
 */
    public interface OnCapturedPointerListener {
        boolean onCapturedPointer(View view, MotionEvent motionEvent);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/View$OnClickListener.class
 */
    public interface OnClickListener {
        void onClick(View view);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/View$OnContextClickListener.class
 */
    public interface OnContextClickListener {
        boolean onContextClick(View view);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/View$OnCreateContextMenuListener.class
 */
    public interface OnCreateContextMenuListener {
        void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/View$OnDragListener.class
 */
    public interface OnDragListener {
        boolean onDrag(View view, DragEvent dragEvent);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/View$OnFocusChangeListener.class
 */
    public interface OnFocusChangeListener {
        void onFocusChange(View view, boolean z10);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/View$OnGenericMotionListener.class
 */
    public interface OnGenericMotionListener {
        boolean onGenericMotion(View view, MotionEvent motionEvent);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/View$OnHoverListener.class
 */
    public interface OnHoverListener {
        boolean onHover(View view, MotionEvent motionEvent);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/View$OnKeyListener.class
 */
    public interface OnKeyListener {
        boolean onKey(View view, int i10, KeyEvent keyEvent);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/View$OnLayoutChangeListener.class
 */
    public interface OnLayoutChangeListener {
        void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/View$OnLongClickListener.class
 */
    public interface OnLongClickListener {
        boolean onLongClick(View view);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/View$OnScrollChangeListener.class
 */
    public interface OnScrollChangeListener {
        void onScrollChange(View view, int i10, int i11, int i12, int i13);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/View$OnSystemUiVisibilityChangeListener.class
 */
    public interface OnSystemUiVisibilityChangeListener {
        void onSystemUiVisibilityChange(int i10);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/View$OnTouchListener.class
 */
    public interface OnTouchListener {
        boolean onTouch(View view, MotionEvent motionEvent);
    }

    public interface OnUnhandledKeyEventListener {
        boolean onUnhandledKeyEvent(View view, KeyEvent keyEvent);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/View$DragShadowBuilder.class
 */
    public static class DragShadowBuilder {
        public DragShadowBuilder(View view) {
            throw new RuntimeException("Stub!");
        }

        public DragShadowBuilder() {
            throw new RuntimeException("Stub!");
        }

        public final View getView() {
            throw new RuntimeException("Stub!");
        }

        public void onProvideShadowMetrics(Point outShadowSize, Point outShadowTouchPoint) {
            throw new RuntimeException("Stub!");
        }

        public void onDrawShadow(Canvas canvas) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/View$MeasureSpec.class
 */
    public static class MeasureSpec {
        public static final int AT_MOST = Integer.MIN_VALUE;
        public static final int EXACTLY = 1073741824;
        public static final int UNSPECIFIED = 0;

        public MeasureSpec() {
            throw new RuntimeException("Stub!");
        }

        public static int makeMeasureSpec(int size, int mode) {
            throw new RuntimeException("Stub!");
        }

        public static int getMode(int measureSpec) {
            throw new RuntimeException("Stub!");
        }

        public static int getSize(int measureSpec) {
            throw new RuntimeException("Stub!");
        }

        public static String toString(int measureSpec) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/View$BaseSavedState.class
 */
    public static class BaseSavedState extends AbsSavedState {
        public static final Parcelable.Creator<BaseSavedState> CREATOR = null;

        public BaseSavedState(Parcel source) {
            super((Parcel) null, (ClassLoader) null);
            throw new RuntimeException("Stub!");
        }

        public BaseSavedState(Parcel source, ClassLoader loader) {
            super((Parcel) null, (ClassLoader) null);
            throw new RuntimeException("Stub!");
        }

        public BaseSavedState(Parcelable superState) {
            super((Parcel) null, (ClassLoader) null);
            throw new RuntimeException("Stub!");
        }

        @Override
        public void writeToParcel(Parcel out, int flags) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/View$AccessibilityDelegate.class
 */
    public static class AccessibilityDelegate {
        public AccessibilityDelegate() {
            throw new RuntimeException("Stub!");
        }

        public void sendAccessibilityEvent(View host, int eventType) {
            throw new RuntimeException("Stub!");
        }

        public boolean performAccessibilityAction(View host, int action, Bundle args) {
            throw new RuntimeException("Stub!");
        }

        public void sendAccessibilityEventUnchecked(View host, AccessibilityEvent event) {
            throw new RuntimeException("Stub!");
        }

        public boolean dispatchPopulateAccessibilityEvent(View host, AccessibilityEvent event) {
            throw new RuntimeException("Stub!");
        }

        public void onPopulateAccessibilityEvent(View host, AccessibilityEvent event) {
            throw new RuntimeException("Stub!");
        }

        public void onInitializeAccessibilityEvent(View host, AccessibilityEvent event) {
            throw new RuntimeException("Stub!");
        }

        public void onInitializeAccessibilityNodeInfo(View host, AccessibilityNodeInfo info) {
            throw new RuntimeException("Stub!");
        }

        public void addExtraDataToAccessibilityNodeInfo(View host, AccessibilityNodeInfo info, String extraDataKey, Bundle arguments) {
            throw new RuntimeException("Stub!");
        }

        public boolean onRequestSendAccessibilityEvent(ViewGroup host, View child, AccessibilityEvent event) {
            throw new RuntimeException("Stub!");
        }

        public AccessibilityNodeProvider getAccessibilityNodeProvider(View host) {
            throw new RuntimeException("Stub!");
        }
    }

    public View(Context context) {
        throw new RuntimeException("Stub!");
    }

    public View(Context context, AttributeSet attrs) {
        throw new RuntimeException("Stub!");
    }

    public View(Context context, AttributeSet attrs, int defStyleAttr) {
        throw new RuntimeException("Stub!");
    }

    public View(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public int getVerticalFadingEdgeLength() {
        throw new RuntimeException("Stub!");
    }

    public void setFadingEdgeLength(int length) {
        throw new RuntimeException("Stub!");
    }

    public int getHorizontalFadingEdgeLength() {
        throw new RuntimeException("Stub!");
    }

    public int getVerticalScrollbarWidth() {
        throw new RuntimeException("Stub!");
    }

    public int getHorizontalScrollbarHeight() {
        throw new RuntimeException("Stub!");
    }

    public void setVerticalScrollbarPosition(int position) {
        throw new RuntimeException("Stub!");
    }

    public int getVerticalScrollbarPosition() {
        throw new RuntimeException("Stub!");
    }

    public void setScrollIndicators(int indicators) {
        throw new RuntimeException("Stub!");
    }

    public void setScrollIndicators(int indicators, int mask) {
        throw new RuntimeException("Stub!");
    }

    public int getScrollIndicators() {
        throw new RuntimeException("Stub!");
    }

    public void setOnScrollChangeListener(OnScrollChangeListener l10) {
        throw new RuntimeException("Stub!");
    }

    public void setOnFocusChangeListener(OnFocusChangeListener l10) {
        throw new RuntimeException("Stub!");
    }

    public void addOnLayoutChangeListener(OnLayoutChangeListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void removeOnLayoutChangeListener(OnLayoutChangeListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void addOnAttachStateChangeListener(OnAttachStateChangeListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void removeOnAttachStateChangeListener(OnAttachStateChangeListener listener) {
        throw new RuntimeException("Stub!");
    }

    public OnFocusChangeListener getOnFocusChangeListener() {
        throw new RuntimeException("Stub!");
    }

    public void setOnClickListener(OnClickListener l10) {
        throw new RuntimeException("Stub!");
    }

    public boolean hasOnClickListeners() {
        throw new RuntimeException("Stub!");
    }

    public void setOnLongClickListener(OnLongClickListener l10) {
        throw new RuntimeException("Stub!");
    }

    public void setOnContextClickListener(OnContextClickListener l10) {
        throw new RuntimeException("Stub!");
    }

    public void setOnCreateContextMenuListener(OnCreateContextMenuListener l10) {
        throw new RuntimeException("Stub!");
    }

    public boolean performClick() {
        throw new RuntimeException("Stub!");
    }

    public boolean callOnClick() {
        throw new RuntimeException("Stub!");
    }

    public boolean performLongClick() {
        throw new RuntimeException("Stub!");
    }

    public boolean performLongClick(float x10, float y10) {
        throw new RuntimeException("Stub!");
    }

    public boolean performContextClick(float x10, float y10) {
        throw new RuntimeException("Stub!");
    }

    public boolean performContextClick() {
        throw new RuntimeException("Stub!");
    }

    public boolean showContextMenu() {
        throw new RuntimeException("Stub!");
    }

    public boolean showContextMenu(float x10, float y10) {
        throw new RuntimeException("Stub!");
    }

    public ActionMode startActionMode(ActionMode.Callback callback) {
        throw new RuntimeException("Stub!");
    }

    public ActionMode startActionMode(ActionMode.Callback callback, int type) {
        throw new RuntimeException("Stub!");
    }

    public void setOnKeyListener(OnKeyListener l10) {
        throw new RuntimeException("Stub!");
    }

    public void setOnTouchListener(OnTouchListener l10) {
        throw new RuntimeException("Stub!");
    }

    public void setOnGenericMotionListener(OnGenericMotionListener l10) {
        throw new RuntimeException("Stub!");
    }

    public void setOnHoverListener(OnHoverListener l10) {
        throw new RuntimeException("Stub!");
    }

    public void setOnDragListener(OnDragListener l10) {
        throw new RuntimeException("Stub!");
    }

    public final void setRevealOnFocusHint(boolean revealOnFocus) {
        throw new RuntimeException("Stub!");
    }

    public final boolean getRevealOnFocusHint() {
        throw new RuntimeException("Stub!");
    }

    public boolean requestRectangleOnScreen(Rect rectangle) {
        throw new RuntimeException("Stub!");
    }

    public boolean requestRectangleOnScreen(Rect rectangle, boolean immediate) {
        throw new RuntimeException("Stub!");
    }

    public void clearFocus() {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "focus")
    public boolean hasFocus() {
        throw new RuntimeException("Stub!");
    }

    public boolean hasFocusable() {
        throw new RuntimeException("Stub!");
    }

    public boolean hasExplicitFocusable() {
        throw new RuntimeException("Stub!");
    }

    public void onFocusChanged(boolean gainFocus, int direction, Rect previouslyFocusedRect) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void sendAccessibilityEvent(int eventType) {
        throw new RuntimeException("Stub!");
    }

    public void announceForAccessibility(CharSequence text) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void sendAccessibilityEventUnchecked(AccessibilityEvent event) {
        throw new RuntimeException("Stub!");
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent event) {
        throw new RuntimeException("Stub!");
    }

    public void onPopulateAccessibilityEvent(AccessibilityEvent event) {
        throw new RuntimeException("Stub!");
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent event) {
        throw new RuntimeException("Stub!");
    }

    public AccessibilityNodeInfo createAccessibilityNodeInfo() {
        throw new RuntimeException("Stub!");
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo info) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getAccessibilityClassName() {
        throw new RuntimeException("Stub!");
    }

    public void onProvideStructure(ViewStructure structure) {
        throw new RuntimeException("Stub!");
    }

    public void onProvideAutofillStructure(ViewStructure structure, int flags) {
        throw new RuntimeException("Stub!");
    }

    public void onProvideVirtualStructure(ViewStructure structure) {
        throw new RuntimeException("Stub!");
    }

    public void onProvideAutofillVirtualStructure(ViewStructure structure, int flags) {
        throw new RuntimeException("Stub!");
    }

    public void autofill(AutofillValue value) {
        throw new RuntimeException("Stub!");
    }

    public void autofill(SparseArray<AutofillValue> values) {
        throw new RuntimeException("Stub!");
    }

    public final AutofillId getAutofillId() {
        throw new RuntimeException("Stub!");
    }

    public int getAutofillType() {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty
    public String[] getAutofillHints() {
        throw new RuntimeException("Stub!");
    }

    public AutofillValue getAutofillValue() {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(mapping = {@ViewDebug.IntToString(from = 0, to = "auto"), @ViewDebug.IntToString(from = 1, to = "yes"), @ViewDebug.IntToString(from = 2, to = "no"), @ViewDebug.IntToString(from = 4, to = "yesExcludeDescendants"), @ViewDebug.IntToString(from = 8, to = "noExcludeDescendants")})
    public int getImportantForAutofill() {
        throw new RuntimeException("Stub!");
    }

    public void setImportantForAutofill(int mode) {
        throw new RuntimeException("Stub!");
    }

    public final boolean isImportantForAutofill() {
        throw new RuntimeException("Stub!");
    }

    public void dispatchProvideStructure(ViewStructure structure) {
        throw new RuntimeException("Stub!");
    }

    public void dispatchProvideAutofillStructure(ViewStructure structure, int flags) {
        throw new RuntimeException("Stub!");
    }

    public void addExtraDataToAccessibilityNodeInfo(AccessibilityNodeInfo info, String extraDataKey, Bundle arguments) {
        throw new RuntimeException("Stub!");
    }

    public void setAccessibilityDelegate(AccessibilityDelegate delegate) {
        throw new RuntimeException("Stub!");
    }

    public AccessibilityNodeProvider getAccessibilityNodeProvider() {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = Context.ACCESSIBILITY_SERVICE)
    public CharSequence getContentDescription() {
        throw new RuntimeException("Stub!");
    }

    public void setContentDescription(CharSequence contentDescription) {
        throw new RuntimeException("Stub!");
    }

    public void setAccessibilityTraversalBefore(int beforeId) {
        throw new RuntimeException("Stub!");
    }

    public int getAccessibilityTraversalBefore() {
        throw new RuntimeException("Stub!");
    }

    public void setAccessibilityTraversalAfter(int afterId) {
        throw new RuntimeException("Stub!");
    }

    public int getAccessibilityTraversalAfter() {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = Context.ACCESSIBILITY_SERVICE)
    public int getLabelFor() {
        throw new RuntimeException("Stub!");
    }

    public void setLabelFor(int id2) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "focus")
    public boolean isFocused() {
        throw new RuntimeException("Stub!");
    }

    public View findFocus() {
        throw new RuntimeException("Stub!");
    }

    public boolean isScrollContainer() {
        throw new RuntimeException("Stub!");
    }

    public void setScrollContainer(boolean isScrollContainer) {
        throw new RuntimeException("Stub!");
    }

    public int getDrawingCacheQuality() {
        throw new RuntimeException("Stub!");
    }

    public void setDrawingCacheQuality(int quality) {
        throw new RuntimeException("Stub!");
    }

    public boolean getKeepScreenOn() {
        throw new RuntimeException("Stub!");
    }

    public void setKeepScreenOn(boolean keepScreenOn) {
        throw new RuntimeException("Stub!");
    }

    public int getNextFocusLeftId() {
        throw new RuntimeException("Stub!");
    }

    public void setNextFocusLeftId(int nextFocusLeftId) {
        throw new RuntimeException("Stub!");
    }

    public int getNextFocusRightId() {
        throw new RuntimeException("Stub!");
    }

    public void setNextFocusRightId(int nextFocusRightId) {
        throw new RuntimeException("Stub!");
    }

    public int getNextFocusUpId() {
        throw new RuntimeException("Stub!");
    }

    public void setNextFocusUpId(int nextFocusUpId) {
        throw new RuntimeException("Stub!");
    }

    public int getNextFocusDownId() {
        throw new RuntimeException("Stub!");
    }

    public void setNextFocusDownId(int nextFocusDownId) {
        throw new RuntimeException("Stub!");
    }

    public int getNextFocusForwardId() {
        throw new RuntimeException("Stub!");
    }

    public void setNextFocusForwardId(int nextFocusForwardId) {
        throw new RuntimeException("Stub!");
    }

    public int getNextClusterForwardId() {
        throw new RuntimeException("Stub!");
    }

    public void setNextClusterForwardId(int nextClusterForwardId) {
        throw new RuntimeException("Stub!");
    }

    public boolean isShown() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public boolean fitSystemWindows(Rect insets) {
        throw new RuntimeException("Stub!");
    }

    public WindowInsets onApplyWindowInsets(WindowInsets insets) {
        throw new RuntimeException("Stub!");
    }

    public void setOnApplyWindowInsetsListener(OnApplyWindowInsetsListener listener) {
        throw new RuntimeException("Stub!");
    }

    public WindowInsets dispatchApplyWindowInsets(WindowInsets insets) {
        throw new RuntimeException("Stub!");
    }

    public WindowInsets getRootWindowInsets() {
        throw new RuntimeException("Stub!");
    }

    public WindowInsets computeSystemWindowInsets(WindowInsets in2, Rect outLocalInsets) {
        throw new RuntimeException("Stub!");
    }

    public void setFitsSystemWindows(boolean fitSystemWindows) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty
    public boolean getFitsSystemWindows() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void requestFitSystemWindows() {
        throw new RuntimeException("Stub!");
    }

    public void requestApplyInsets() {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(mapping = {@ViewDebug.IntToString(from = 0, to = "VISIBLE"), @ViewDebug.IntToString(from = 4, to = "INVISIBLE"), @ViewDebug.IntToString(from = 8, to = "GONE")})
    public int getVisibility() {
        throw new RuntimeException("Stub!");
    }

    public void setVisibility(int visibility) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty
    public boolean isEnabled() {
        throw new RuntimeException("Stub!");
    }

    public void setEnabled(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    public void setFocusable(boolean focusable) {
        throw new RuntimeException("Stub!");
    }

    public void setFocusable(int focusable) {
        throw new RuntimeException("Stub!");
    }

    public void setFocusableInTouchMode(boolean focusableInTouchMode) {
        throw new RuntimeException("Stub!");
    }

    public void setAutofillHints(String... autofillHints) {
        throw new RuntimeException("Stub!");
    }

    public void setSoundEffectsEnabled(boolean soundEffectsEnabled) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty
    public boolean isSoundEffectsEnabled() {
        throw new RuntimeException("Stub!");
    }

    public void setHapticFeedbackEnabled(boolean hapticFeedbackEnabled) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty
    public boolean isHapticFeedbackEnabled() {
        throw new RuntimeException("Stub!");
    }

    public void setLayoutDirection(int layoutDirection) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "layout", mapping = {@ViewDebug.IntToString(from = 0, to = "RESOLVED_DIRECTION_LTR"), @ViewDebug.IntToString(from = 1, to = "RESOLVED_DIRECTION_RTL")})
    public int getLayoutDirection() {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "layout")
    public boolean hasTransientState() {
        throw new RuntimeException("Stub!");
    }

    public void setHasTransientState(boolean hasTransientState) {
        throw new RuntimeException("Stub!");
    }

    public boolean isAttachedToWindow() {
        throw new RuntimeException("Stub!");
    }

    public boolean isLaidOut() {
        throw new RuntimeException("Stub!");
    }

    public void setWillNotDraw(boolean willNotDraw) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public boolean willNotDraw() {
        throw new RuntimeException("Stub!");
    }

    public void setWillNotCacheDrawing(boolean willNotCacheDrawing) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public boolean willNotCacheDrawing() {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty
    public boolean isClickable() {
        throw new RuntimeException("Stub!");
    }

    public void setClickable(boolean clickable) {
        throw new RuntimeException("Stub!");
    }

    public boolean isLongClickable() {
        throw new RuntimeException("Stub!");
    }

    public void setLongClickable(boolean longClickable) {
        throw new RuntimeException("Stub!");
    }

    public boolean isContextClickable() {
        throw new RuntimeException("Stub!");
    }

    public void setContextClickable(boolean contextClickable) {
        throw new RuntimeException("Stub!");
    }

    public void setPressed(boolean pressed) {
        throw new RuntimeException("Stub!");
    }

    public void dispatchSetPressed(boolean pressed) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty
    public boolean isPressed() {
        throw new RuntimeException("Stub!");
    }

    public boolean isSaveEnabled() {
        throw new RuntimeException("Stub!");
    }

    public void setSaveEnabled(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty
    public boolean getFilterTouchesWhenObscured() {
        throw new RuntimeException("Stub!");
    }

    public void setFilterTouchesWhenObscured(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    public boolean isSaveFromParentEnabled() {
        throw new RuntimeException("Stub!");
    }

    public void setSaveFromParentEnabled(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "focus")
    public final boolean isFocusable() {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(mapping = {@ViewDebug.IntToString(from = 0, to = "NOT_FOCUSABLE"), @ViewDebug.IntToString(from = 1, to = "FOCUSABLE"), @ViewDebug.IntToString(from = 16, to = "FOCUSABLE_AUTO")}, category = "focus")
    public int getFocusable() {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "focus")
    public final boolean isFocusableInTouchMode() {
        throw new RuntimeException("Stub!");
    }

    public View focusSearch(int direction) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "focus")
    public final boolean isKeyboardNavigationCluster() {
        throw new RuntimeException("Stub!");
    }

    public void setKeyboardNavigationCluster(boolean isCluster) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "focus")
    public final boolean isFocusedByDefault() {
        throw new RuntimeException("Stub!");
    }

    public void setFocusedByDefault(boolean isFocusedByDefault) {
        throw new RuntimeException("Stub!");
    }

    public View keyboardNavigationClusterSearch(View currentCluster, int direction) {
        throw new RuntimeException("Stub!");
    }

    public boolean dispatchUnhandledMove(View focused, int direction) {
        throw new RuntimeException("Stub!");
    }

    public void setDefaultFocusHighlightEnabled(boolean defaultFocusHighlightEnabled) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "focus")
    public final boolean getDefaultFocusHighlightEnabled() {
        throw new RuntimeException("Stub!");
    }

    public ArrayList<View> getFocusables(int direction) {
        throw new RuntimeException("Stub!");
    }

    public void addFocusables(ArrayList<View> views, int direction) {
        throw new RuntimeException("Stub!");
    }

    public void addFocusables(ArrayList<View> views, int direction, int focusableMode) {
        throw new RuntimeException("Stub!");
    }

    public void addKeyboardNavigationClusters(Collection<View> views, int direction) {
        throw new RuntimeException("Stub!");
    }

    public void findViewsWithText(ArrayList<View> outViews, CharSequence searched, int flags) {
        throw new RuntimeException("Stub!");
    }

    public ArrayList<View> getTouchables() {
        throw new RuntimeException("Stub!");
    }

    public void addTouchables(ArrayList<View> views) {
        throw new RuntimeException("Stub!");
    }

    public boolean isAccessibilityFocused() {
        throw new RuntimeException("Stub!");
    }

    public final boolean requestFocus() {
        throw new RuntimeException("Stub!");
    }

    public boolean restoreDefaultFocus() {
        throw new RuntimeException("Stub!");
    }

    public final boolean requestFocus(int direction) {
        throw new RuntimeException("Stub!");
    }

    public boolean requestFocus(int direction, Rect previouslyFocusedRect) {
        throw new RuntimeException("Stub!");
    }

    public final boolean requestFocusFromTouch() {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = Context.ACCESSIBILITY_SERVICE, mapping = {@ViewDebug.IntToString(from = 0, to = "auto"), @ViewDebug.IntToString(from = 1, to = "yes"), @ViewDebug.IntToString(from = 2, to = "no"), @ViewDebug.IntToString(from = 4, to = "noHideDescendants")})
    public int getImportantForAccessibility() {
        throw new RuntimeException("Stub!");
    }

    public void setAccessibilityLiveRegion(int mode) {
        throw new RuntimeException("Stub!");
    }

    public int getAccessibilityLiveRegion() {
        throw new RuntimeException("Stub!");
    }

    public void setImportantForAccessibility(int mode) {
        throw new RuntimeException("Stub!");
    }

    public boolean isImportantForAccessibility() {
        throw new RuntimeException("Stub!");
    }

    public ViewParent getParentForAccessibility() {
        throw new RuntimeException("Stub!");
    }

    public void addChildrenForAccessibility(ArrayList<View> outChildren) {
        throw new RuntimeException("Stub!");
    }

    public boolean dispatchNestedPrePerformAccessibilityAction(int action, Bundle arguments) {
        throw new RuntimeException("Stub!");
    }

    public boolean performAccessibilityAction(int action, Bundle arguments) {
        throw new RuntimeException("Stub!");
    }

    public final boolean isTemporarilyDetached() {
        throw new RuntimeException("Stub!");
    }

    public void dispatchStartTemporaryDetach() {
        throw new RuntimeException("Stub!");
    }

    public void onStartTemporaryDetach() {
        throw new RuntimeException("Stub!");
    }

    public void dispatchFinishTemporaryDetach() {
        throw new RuntimeException("Stub!");
    }

    public void onFinishTemporaryDetach() {
        throw new RuntimeException("Stub!");
    }

    public KeyEvent.DispatcherState getKeyDispatcherState() {
        throw new RuntimeException("Stub!");
    }

    public boolean dispatchKeyEventPreIme(KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    public boolean dispatchKeyEvent(KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    public boolean dispatchKeyShortcutEvent(KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    public boolean dispatchTouchEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    public boolean onFilterTouchEventForSecurity(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    public boolean dispatchTrackballEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    public boolean dispatchCapturedPointerEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    public boolean dispatchGenericMotionEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    public boolean dispatchHoverEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    public boolean dispatchGenericPointerEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    public boolean dispatchGenericFocusedEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    public void dispatchWindowFocusChanged(boolean hasFocus) {
        throw new RuntimeException("Stub!");
    }

    public void onWindowFocusChanged(boolean hasWindowFocus) {
        throw new RuntimeException("Stub!");
    }

    public boolean hasWindowFocus() {
        throw new RuntimeException("Stub!");
    }

    public void dispatchVisibilityChanged(View changedView, int visibility) {
        throw new RuntimeException("Stub!");
    }

    public void onVisibilityChanged(View changedView, int visibility) {
        throw new RuntimeException("Stub!");
    }

    public void dispatchDisplayHint(int hint) {
        throw new RuntimeException("Stub!");
    }

    public void onDisplayHint(int hint) {
        throw new RuntimeException("Stub!");
    }

    public void dispatchWindowVisibilityChanged(int visibility) {
        throw new RuntimeException("Stub!");
    }

    public void onWindowVisibilityChanged(int visibility) {
        throw new RuntimeException("Stub!");
    }

    public void onVisibilityAggregated(boolean isVisible) {
        throw new RuntimeException("Stub!");
    }

    public int getWindowVisibility() {
        throw new RuntimeException("Stub!");
    }

    public void getWindowVisibleDisplayFrame(Rect outRect) {
        throw new RuntimeException("Stub!");
    }

    public void dispatchConfigurationChanged(Configuration newConfig) {
        throw new RuntimeException("Stub!");
    }

    public void onConfigurationChanged(Configuration newConfig) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty
    public boolean isInTouchMode() {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.CapturedViewProperty
    public final Context getContext() {
        throw new RuntimeException("Stub!");
    }

    public boolean onKeyPreIme(int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyLongPress(int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyMultiple(int keyCode, int repeatCount, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    public boolean onKeyShortcut(int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    public boolean onCheckIsTextEditor() {
        throw new RuntimeException("Stub!");
    }

    public InputConnection onCreateInputConnection(EditorInfo outAttrs) {
        throw new RuntimeException("Stub!");
    }

    public boolean checkInputConnectionProxy(View view) {
        throw new RuntimeException("Stub!");
    }

    public void createContextMenu(ContextMenu menu) {
        throw new RuntimeException("Stub!");
    }

    public ContextMenu.ContextMenuInfo getContextMenuInfo() {
        throw new RuntimeException("Stub!");
    }

    public void onCreateContextMenu(ContextMenu menu) {
        throw new RuntimeException("Stub!");
    }

    public boolean onTrackballEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    public boolean onGenericMotionEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    public boolean onHoverEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty
    public boolean isHovered() {
        throw new RuntimeException("Stub!");
    }

    public void setHovered(boolean hovered) {
        throw new RuntimeException("Stub!");
    }

    public void onHoverChanged(boolean hovered) {
        throw new RuntimeException("Stub!");
    }

    public boolean onTouchEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    public void cancelLongPress() {
        throw new RuntimeException("Stub!");
    }

    public void setTouchDelegate(TouchDelegate delegate) {
        throw new RuntimeException("Stub!");
    }

    public TouchDelegate getTouchDelegate() {
        throw new RuntimeException("Stub!");
    }

    public final void requestUnbufferedDispatch(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    public void bringToFront() {
        throw new RuntimeException("Stub!");
    }

    public void onScrollChanged(int l10, int t10, int oldl, int oldt) {
        throw new RuntimeException("Stub!");
    }

    public void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        throw new RuntimeException("Stub!");
    }

    public void dispatchDraw(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    public final ViewParent getParent() {
        throw new RuntimeException("Stub!");
    }

    public void setScrollX(int value) {
        throw new RuntimeException("Stub!");
    }

    public void setScrollY(int value) {
        throw new RuntimeException("Stub!");
    }

    public final int getScrollX() {
        throw new RuntimeException("Stub!");
    }

    public final int getScrollY() {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "layout")
    public final int getWidth() {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "layout")
    public final int getHeight() {
        throw new RuntimeException("Stub!");
    }

    public void getDrawingRect(Rect outRect) {
        throw new RuntimeException("Stub!");
    }

    public final int getMeasuredWidth() {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "measurement", flagMapping = {@ViewDebug.FlagToString(mask = -16777216, equals = 16777216, name = "MEASURED_STATE_TOO_SMALL")})
    public final int getMeasuredWidthAndState() {
        throw new RuntimeException("Stub!");
    }

    public final int getMeasuredHeight() {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "measurement", flagMapping = {@ViewDebug.FlagToString(mask = -16777216, equals = 16777216, name = "MEASURED_STATE_TOO_SMALL")})
    public final int getMeasuredHeightAndState() {
        throw new RuntimeException("Stub!");
    }

    public final int getMeasuredState() {
        throw new RuntimeException("Stub!");
    }

    public Matrix getMatrix() {
        throw new RuntimeException("Stub!");
    }

    public float getCameraDistance() {
        throw new RuntimeException("Stub!");
    }

    public void setCameraDistance(float distance) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getRotation() {
        throw new RuntimeException("Stub!");
    }

    public void setRotation(float rotation) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getRotationY() {
        throw new RuntimeException("Stub!");
    }

    public void setRotationY(float rotationY) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getRotationX() {
        throw new RuntimeException("Stub!");
    }

    public void setRotationX(float rotationX) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getScaleX() {
        throw new RuntimeException("Stub!");
    }

    public void setScaleX(float scaleX) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getScaleY() {
        throw new RuntimeException("Stub!");
    }

    public void setScaleY(float scaleY) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getPivotX() {
        throw new RuntimeException("Stub!");
    }

    public void setPivotX(float pivotX) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getPivotY() {
        throw new RuntimeException("Stub!");
    }

    public void setPivotY(float pivotY) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getAlpha() {
        throw new RuntimeException("Stub!");
    }

    public void forceHasOverlappingRendering(boolean hasOverlappingRendering) {
        throw new RuntimeException("Stub!");
    }

    public final boolean getHasOverlappingRendering() {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public boolean hasOverlappingRendering() {
        throw new RuntimeException("Stub!");
    }

    public void setAlpha(float alpha) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.CapturedViewProperty
    public final int getTop() {
        throw new RuntimeException("Stub!");
    }

    public final void setTop(int top) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.CapturedViewProperty
    public final int getBottom() {
        throw new RuntimeException("Stub!");
    }

    public boolean isDirty() {
        throw new RuntimeException("Stub!");
    }

    public final void setBottom(int bottom) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.CapturedViewProperty
    public final int getLeft() {
        throw new RuntimeException("Stub!");
    }

    public final void setLeft(int left) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.CapturedViewProperty
    public final int getRight() {
        throw new RuntimeException("Stub!");
    }

    public final void setRight(int right) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getX() {
        throw new RuntimeException("Stub!");
    }

    public void setX(float x10) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getY() {
        throw new RuntimeException("Stub!");
    }

    public void setY(float y10) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getZ() {
        throw new RuntimeException("Stub!");
    }

    public void setZ(float z10) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getElevation() {
        throw new RuntimeException("Stub!");
    }

    public void setElevation(float elevation) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getTranslationX() {
        throw new RuntimeException("Stub!");
    }

    public void setTranslationX(float translationX) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getTranslationY() {
        throw new RuntimeException("Stub!");
    }

    public void setTranslationY(float translationY) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public float getTranslationZ() {
        throw new RuntimeException("Stub!");
    }

    public void setTranslationZ(float translationZ) {
        throw new RuntimeException("Stub!");
    }

    public StateListAnimator getStateListAnimator() {
        throw new RuntimeException("Stub!");
    }

    public void setStateListAnimator(StateListAnimator stateListAnimator) {
        throw new RuntimeException("Stub!");
    }

    public final boolean getClipToOutline() {
        throw new RuntimeException("Stub!");
    }

    public void setClipToOutline(boolean clipToOutline) {
        throw new RuntimeException("Stub!");
    }

    public void setOutlineProvider(ViewOutlineProvider provider) {
        throw new RuntimeException("Stub!");
    }

    public ViewOutlineProvider getOutlineProvider() {
        throw new RuntimeException("Stub!");
    }

    public void invalidateOutline() {
        throw new RuntimeException("Stub!");
    }

    public void getHitRect(Rect outRect) {
        throw new RuntimeException("Stub!");
    }

    public void getFocusedRect(Rect r10) {
        throw new RuntimeException("Stub!");
    }

    public boolean getGlobalVisibleRect(Rect r10, Point globalOffset) {
        throw new RuntimeException("Stub!");
    }

    public final boolean getGlobalVisibleRect(Rect r10) {
        throw new RuntimeException("Stub!");
    }

    public final boolean getLocalVisibleRect(Rect r10) {
        throw new RuntimeException("Stub!");
    }

    public void offsetTopAndBottom(int offset) {
        throw new RuntimeException("Stub!");
    }

    public void offsetLeftAndRight(int offset) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(deepExport = true, prefix = "layout_")
    public ViewGroup.LayoutParams getLayoutParams() {
        throw new RuntimeException("Stub!");
    }

    public void setLayoutParams(ViewGroup.LayoutParams params) {
        throw new RuntimeException("Stub!");
    }

    public void scrollTo(int x10, int y10) {
        throw new RuntimeException("Stub!");
    }

    public void scrollBy(int x10, int y10) {
        throw new RuntimeException("Stub!");
    }

    public boolean awakenScrollBars() {
        throw new RuntimeException("Stub!");
    }

    public boolean awakenScrollBars(int startDelay) {
        throw new RuntimeException("Stub!");
    }

    public boolean awakenScrollBars(int startDelay, boolean invalidate) {
        throw new RuntimeException("Stub!");
    }

    public void invalidate(Rect dirty) {
        throw new RuntimeException("Stub!");
    }

    public void invalidate(int l10, int t10, int r10, int b10) {
        throw new RuntimeException("Stub!");
    }

    public void invalidate() {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public boolean isOpaque() {
        throw new RuntimeException("Stub!");
    }

    public Handler getHandler() {
        throw new RuntimeException("Stub!");
    }

    public boolean post(Runnable action) {
        throw new RuntimeException("Stub!");
    }

    public boolean postDelayed(Runnable action, long delayMillis) {
        throw new RuntimeException("Stub!");
    }

    public void postOnAnimation(Runnable action) {
        throw new RuntimeException("Stub!");
    }

    public void postOnAnimationDelayed(Runnable action, long delayMillis) {
        throw new RuntimeException("Stub!");
    }

    public boolean removeCallbacks(Runnable action) {
        throw new RuntimeException("Stub!");
    }

    public void postInvalidate() {
        throw new RuntimeException("Stub!");
    }

    public void postInvalidate(int left, int top, int right, int bottom) {
        throw new RuntimeException("Stub!");
    }

    public void postInvalidateDelayed(long delayMilliseconds) {
        throw new RuntimeException("Stub!");
    }

    public void postInvalidateDelayed(long delayMilliseconds, int left, int top, int right, int bottom) {
        throw new RuntimeException("Stub!");
    }

    public void postInvalidateOnAnimation() {
        throw new RuntimeException("Stub!");
    }

    public void postInvalidateOnAnimation(int left, int top, int right, int bottom) {
        throw new RuntimeException("Stub!");
    }

    public void computeScroll() {
        throw new RuntimeException("Stub!");
    }

    public boolean isHorizontalFadingEdgeEnabled() {
        throw new RuntimeException("Stub!");
    }

    public void setHorizontalFadingEdgeEnabled(boolean horizontalFadingEdgeEnabled) {
        throw new RuntimeException("Stub!");
    }

    public boolean isVerticalFadingEdgeEnabled() {
        throw new RuntimeException("Stub!");
    }

    public void setVerticalFadingEdgeEnabled(boolean verticalFadingEdgeEnabled) {
        throw new RuntimeException("Stub!");
    }

    public float getTopFadingEdgeStrength() {
        throw new RuntimeException("Stub!");
    }

    public float getBottomFadingEdgeStrength() {
        throw new RuntimeException("Stub!");
    }

    public float getLeftFadingEdgeStrength() {
        throw new RuntimeException("Stub!");
    }

    public float getRightFadingEdgeStrength() {
        throw new RuntimeException("Stub!");
    }

    public boolean isHorizontalScrollBarEnabled() {
        throw new RuntimeException("Stub!");
    }

    public void setHorizontalScrollBarEnabled(boolean horizontalScrollBarEnabled) {
        throw new RuntimeException("Stub!");
    }

    public boolean isVerticalScrollBarEnabled() {
        throw new RuntimeException("Stub!");
    }

    public void setVerticalScrollBarEnabled(boolean verticalScrollBarEnabled) {
        throw new RuntimeException("Stub!");
    }

    public void setScrollbarFadingEnabled(boolean fadeScrollbars) {
        throw new RuntimeException("Stub!");
    }

    public boolean isScrollbarFadingEnabled() {
        throw new RuntimeException("Stub!");
    }

    public int getScrollBarDefaultDelayBeforeFade() {
        throw new RuntimeException("Stub!");
    }

    public void setScrollBarDefaultDelayBeforeFade(int scrollBarDefaultDelayBeforeFade) {
        throw new RuntimeException("Stub!");
    }

    public int getScrollBarFadeDuration() {
        throw new RuntimeException("Stub!");
    }

    public void setScrollBarFadeDuration(int scrollBarFadeDuration) {
        throw new RuntimeException("Stub!");
    }

    public int getScrollBarSize() {
        throw new RuntimeException("Stub!");
    }

    public void setScrollBarSize(int scrollBarSize) {
        throw new RuntimeException("Stub!");
    }

    public void setScrollBarStyle(int style) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(mapping = {@ViewDebug.IntToString(from = 0, to = "INSIDE_OVERLAY"), @ViewDebug.IntToString(from = 16777216, to = "INSIDE_INSET"), @ViewDebug.IntToString(from = 33554432, to = "OUTSIDE_OVERLAY"), @ViewDebug.IntToString(from = SCROLLBARS_OUTSIDE_INSET, to = "OUTSIDE_INSET")})
    public int getScrollBarStyle() {
        throw new RuntimeException("Stub!");
    }

    public int computeHorizontalScrollRange() {
        throw new RuntimeException("Stub!");
    }

    public int computeHorizontalScrollOffset() {
        throw new RuntimeException("Stub!");
    }

    public int computeHorizontalScrollExtent() {
        throw new RuntimeException("Stub!");
    }

    protected int computeVerticalScrollRange() {
        throw new RuntimeException("Stub!");
    }

    public int computeVerticalScrollOffset() {
        throw new RuntimeException("Stub!");
    }

    public int computeVerticalScrollExtent() {
        throw new RuntimeException("Stub!");
    }

    public boolean canScrollHorizontally(int direction) {
        throw new RuntimeException("Stub!");
    }

    public boolean canScrollVertically(int direction) {
        throw new RuntimeException("Stub!");
    }

    protected final void onDrawScrollBars(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    public void onDraw(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    public void onAttachedToWindow() {
        throw new RuntimeException("Stub!");
    }

    public void onScreenStateChanged(int screenState) {
        throw new RuntimeException("Stub!");
    }

    public void onRtlPropertiesChanged(int layoutDirection) {
        throw new RuntimeException("Stub!");
    }

    public boolean canResolveLayoutDirection() {
        throw new RuntimeException("Stub!");
    }

    public boolean isLayoutDirectionResolved() {
        throw new RuntimeException("Stub!");
    }

    public void onDetachedFromWindow() {
        throw new RuntimeException("Stub!");
    }

    public int getWindowAttachCount() {
        throw new RuntimeException("Stub!");
    }

    public IBinder getWindowToken() {
        throw new RuntimeException("Stub!");
    }

    public WindowId getWindowId() {
        throw new RuntimeException("Stub!");
    }

    public IBinder getApplicationWindowToken() {
        throw new RuntimeException("Stub!");
    }

    public Display getDisplay() {
        throw new RuntimeException("Stub!");
    }

    public final void cancelPendingInputEvents() {
        throw new RuntimeException("Stub!");
    }

    public void onCancelPendingInputEvents() {
        throw new RuntimeException("Stub!");
    }

    public void saveHierarchyState(SparseArray<Parcelable> container) {
        throw new RuntimeException("Stub!");
    }

    protected void dispatchSaveInstanceState(SparseArray<Parcelable> container) {
        throw new RuntimeException("Stub!");
    }

    public Parcelable onSaveInstanceState() {
        throw new RuntimeException("Stub!");
    }

    public void restoreHierarchyState(SparseArray<Parcelable> container) {
        throw new RuntimeException("Stub!");
    }

    public void dispatchRestoreInstanceState(SparseArray<Parcelable> container) {
        throw new RuntimeException("Stub!");
    }

    public void onRestoreInstanceState(Parcelable state) {
        throw new RuntimeException("Stub!");
    }

    public long getDrawingTime() {
        throw new RuntimeException("Stub!");
    }

    public void setDuplicateParentStateEnabled(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    public boolean isDuplicateParentStateEnabled() {
        throw new RuntimeException("Stub!");
    }

    public void setLayerType(int layerType, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void setLayerPaint(Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public int getLayerType() {
        throw new RuntimeException("Stub!");
    }

    public void buildLayer() {
        throw new RuntimeException("Stub!");
    }

    public void setDrawingCacheEnabled(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public boolean isDrawingCacheEnabled() {
        throw new RuntimeException("Stub!");
    }

    public Bitmap getDrawingCache() {
        throw new RuntimeException("Stub!");
    }

    public Bitmap getDrawingCache(boolean autoScale) {
        throw new RuntimeException("Stub!");
    }

    public void destroyDrawingCache() {
        throw new RuntimeException("Stub!");
    }

    public void setDrawingCacheBackgroundColor(int color) {
        throw new RuntimeException("Stub!");
    }

    public int getDrawingCacheBackgroundColor() {
        throw new RuntimeException("Stub!");
    }

    public void buildDrawingCache() {
        throw new RuntimeException("Stub!");
    }

    public void buildDrawingCache(boolean autoScale) {
        throw new RuntimeException("Stub!");
    }

    public boolean isInEditMode() {
        throw new RuntimeException("Stub!");
    }

    public boolean isPaddingOffsetRequired() {
        throw new RuntimeException("Stub!");
    }

    public int getLeftPaddingOffset() {
        throw new RuntimeException("Stub!");
    }

    public int getRightPaddingOffset() {
        throw new RuntimeException("Stub!");
    }

    public int getTopPaddingOffset() {
        throw new RuntimeException("Stub!");
    }

    public int getBottomPaddingOffset() {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public boolean isHardwareAccelerated() {
        throw new RuntimeException("Stub!");
    }

    public void setClipBounds(Rect clipBounds) {
        throw new RuntimeException("Stub!");
    }

    public Rect getClipBounds() {
        throw new RuntimeException("Stub!");
    }

    public boolean getClipBounds(Rect outRect) {
        throw new RuntimeException("Stub!");
    }

    public void draw(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    public ViewOverlay getOverlay() {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public int getSolidColor() {
        throw new RuntimeException("Stub!");
    }

    public boolean isLayoutRequested() {
        throw new RuntimeException("Stub!");
    }

    public void layout(int l10, int t10, int r10, int b10) {
        throw new RuntimeException("Stub!");
    }

    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        throw new RuntimeException("Stub!");
    }

    public void onFinishInflate() {
        throw new RuntimeException("Stub!");
    }

    public Resources getResources() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void invalidateDrawable(Drawable drawable) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void scheduleDrawable(Drawable who, Runnable what, long when) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void unscheduleDrawable(Drawable who, Runnable what) {
        throw new RuntimeException("Stub!");
    }

    public void unscheduleDrawable(Drawable who) {
        throw new RuntimeException("Stub!");
    }

    public boolean verifyDrawable(Drawable who) {
        throw new RuntimeException("Stub!");
    }

    public void drawableStateChanged() {
        throw new RuntimeException("Stub!");
    }

    public void drawableHotspotChanged(float x10, float y10) {
        throw new RuntimeException("Stub!");
    }

    public void dispatchDrawableHotspotChanged(float x10, float y10) {
        throw new RuntimeException("Stub!");
    }

    public void refreshDrawableState() {
        throw new RuntimeException("Stub!");
    }

    public final int[] getDrawableState() {
        throw new RuntimeException("Stub!");
    }

    public int[] onCreateDrawableState(int extraSpace) {
        throw new RuntimeException("Stub!");
    }

    public static int[] mergeDrawableStates(int[] baseState, int[] additionalState) {
        throw new RuntimeException("Stub!");
    }

    public void jumpDrawablesToCurrentState() {
        throw new RuntimeException("Stub!");
    }

    public void setBackgroundColor(int color) {
        throw new RuntimeException("Stub!");
    }

    public void setBackgroundResource(int resid) {
        throw new RuntimeException("Stub!");
    }

    public void setBackground(Drawable background) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void setBackgroundDrawable(Drawable background) {
        throw new RuntimeException("Stub!");
    }

    public Drawable getBackground() {
        throw new RuntimeException("Stub!");
    }

    public void setBackgroundTintList(ColorStateList tint) {
        throw new RuntimeException("Stub!");
    }

    public ColorStateList getBackgroundTintList() {
        throw new RuntimeException("Stub!");
    }

    public void setBackgroundTintMode(PorterDuff.Mode tintMode) {
        throw new RuntimeException("Stub!");
    }

    public PorterDuff.Mode getBackgroundTintMode() {
        throw new RuntimeException("Stub!");
    }

    public Drawable getForeground() {
        throw new RuntimeException("Stub!");
    }

    public void setForeground(Drawable foreground) {
        throw new RuntimeException("Stub!");
    }

    public int getForegroundGravity() {
        throw new RuntimeException("Stub!");
    }

    public void setForegroundGravity(int gravity) {
        throw new RuntimeException("Stub!");
    }

    public void setForegroundTintList(ColorStateList tint) {
        throw new RuntimeException("Stub!");
    }

    public ColorStateList getForegroundTintList() {
        throw new RuntimeException("Stub!");
    }

    public void setForegroundTintMode(PorterDuff.Mode tintMode) {
        throw new RuntimeException("Stub!");
    }

    public PorterDuff.Mode getForegroundTintMode() {
        throw new RuntimeException("Stub!");
    }

    public void onDrawForeground(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    public void setPadding(int left, int top, int right, int bottom) {
        throw new RuntimeException("Stub!");
    }

    public void setPaddingRelative(int start, int top, int end, int bottom) {
        throw new RuntimeException("Stub!");
    }

    public int getPaddingTop() {
        throw new RuntimeException("Stub!");
    }

    public int getPaddingBottom() {
        throw new RuntimeException("Stub!");
    }

    public int getPaddingLeft() {
        throw new RuntimeException("Stub!");
    }

    public int getPaddingStart() {
        throw new RuntimeException("Stub!");
    }

    public int getPaddingRight() {
        throw new RuntimeException("Stub!");
    }

    public int getPaddingEnd() {
        throw new RuntimeException("Stub!");
    }

    public boolean isPaddingRelative() {
        throw new RuntimeException("Stub!");
    }

    public void setSelected(boolean selected) {
        throw new RuntimeException("Stub!");
    }

    public void dispatchSetSelected(boolean selected) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty
    public boolean isSelected() {
        throw new RuntimeException("Stub!");
    }

    public void setActivated(boolean activated) {
        throw new RuntimeException("Stub!");
    }

    public void dispatchSetActivated(boolean activated) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty
    public boolean isActivated() {
        throw new RuntimeException("Stub!");
    }

    public ViewTreeObserver getViewTreeObserver() {
        throw new RuntimeException("Stub!");
    }

    public View getRootView() {
        throw new RuntimeException("Stub!");
    }

    public void getLocationOnScreen(int[] outLocation) {
        throw new RuntimeException("Stub!");
    }

    public void getLocationInWindow(int[] outLocation) {
        throw new RuntimeException("Stub!");
    }

    public final <T extends View> T findViewById(int id2) {
        throw new RuntimeException("Stub!");
    }

    public final <T extends View> T findViewWithTag(Object tag) {
        throw new RuntimeException("Stub!");
    }

    public void setId(int id2) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.CapturedViewProperty
    public int getId() {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty
    public Object getTag() {
        throw new RuntimeException("Stub!");
    }

    public void setTag(Object tag) {
        throw new RuntimeException("Stub!");
    }

    public Object getTag(int key) {
        throw new RuntimeException("Stub!");
    }

    public void setTag(int key, Object tag) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "layout")
    public int getBaseline() {
        throw new RuntimeException("Stub!");
    }

    public boolean isInLayout() {
        throw new RuntimeException("Stub!");
    }

    public void requestLayout() {
        throw new RuntimeException("Stub!");
    }

    public void forceLayout() {
        throw new RuntimeException("Stub!");
    }

    public final void measure(int widthMeasureSpec, int heightMeasureSpec) {
        throw new RuntimeException("Stub!");
    }

    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        throw new RuntimeException("Stub!");
    }

    public final void setMeasuredDimension(int measuredWidth, int measuredHeight) {
        throw new RuntimeException("Stub!");
    }

    public static int combineMeasuredStates(int curState, int newState) {
        throw new RuntimeException("Stub!");
    }

    public static int resolveSize(int size, int measureSpec) {
        throw new RuntimeException("Stub!");
    }

    public static int resolveSizeAndState(int size, int measureSpec, int childMeasuredState) {
        throw new RuntimeException("Stub!");
    }

    public static int getDefaultSize(int size, int measureSpec) {
        throw new RuntimeException("Stub!");
    }

    public int getSuggestedMinimumHeight() {
        throw new RuntimeException("Stub!");
    }

    public int getSuggestedMinimumWidth() {
        throw new RuntimeException("Stub!");
    }

    public int getMinimumHeight() {
        throw new RuntimeException("Stub!");
    }

    public void setMinimumHeight(int minHeight) {
        throw new RuntimeException("Stub!");
    }

    public int getMinimumWidth() {
        throw new RuntimeException("Stub!");
    }

    public void setMinimumWidth(int minWidth) {
        throw new RuntimeException("Stub!");
    }

    public Animation getAnimation() {
        throw new RuntimeException("Stub!");
    }

    public void startAnimation(Animation animation) {
        throw new RuntimeException("Stub!");
    }

    public void clearAnimation() {
        throw new RuntimeException("Stub!");
    }

    public void setAnimation(Animation animation) {
        throw new RuntimeException("Stub!");
    }

    public void onAnimationStart() {
        throw new RuntimeException("Stub!");
    }

    public void onAnimationEnd() {
        throw new RuntimeException("Stub!");
    }

    public boolean onSetAlpha(int alpha) {
        throw new RuntimeException("Stub!");
    }

    public void playSoundEffect(int soundConstant) {
        throw new RuntimeException("Stub!");
    }

    public boolean performHapticFeedback(int feedbackConstant) {
        throw new RuntimeException("Stub!");
    }

    public boolean performHapticFeedback(int feedbackConstant, int flags) {
        throw new RuntimeException("Stub!");
    }

    public void setSystemUiVisibility(int visibility) {
        throw new RuntimeException("Stub!");
    }

    public int getSystemUiVisibility() {
        throw new RuntimeException("Stub!");
    }

    public int getWindowSystemUiVisibility() {
        throw new RuntimeException("Stub!");
    }

    public void onWindowSystemUiVisibilityChanged(int visible) {
        throw new RuntimeException("Stub!");
    }

    public void dispatchWindowSystemUiVisiblityChanged(int visible) {
        throw new RuntimeException("Stub!");
    }

    public void setOnSystemUiVisibilityChangeListener(OnSystemUiVisibilityChangeListener l10) {
        throw new RuntimeException("Stub!");
    }

    public void dispatchSystemUiVisibilityChanged(int visibility) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public final boolean startDrag(ClipData data, DragShadowBuilder shadowBuilder, Object myLocalState, int flags) {
        throw new RuntimeException("Stub!");
    }

    public final boolean startDragAndDrop(ClipData data, DragShadowBuilder shadowBuilder, Object myLocalState, int flags) {
        throw new RuntimeException("Stub!");
    }

    public final void cancelDragAndDrop() {
        throw new RuntimeException("Stub!");
    }

    public final void updateDragShadow(DragShadowBuilder shadowBuilder) {
        throw new RuntimeException("Stub!");
    }

    public boolean onDragEvent(DragEvent event) {
        throw new RuntimeException("Stub!");
    }

    public boolean dispatchDragEvent(DragEvent event) {
        throw new RuntimeException("Stub!");
    }

    public static View inflate(Context context, int resource, ViewGroup root) {
        throw new RuntimeException("Stub!");
    }

    public boolean overScrollBy(int deltaX, int deltaY, int scrollX, int scrollY, int scrollRangeX, int scrollRangeY, int maxOverScrollX, int maxOverScrollY, boolean isTouchEvent) {
        throw new RuntimeException("Stub!");
    }

    public void onOverScrolled(int scrollX, int scrollY, boolean clampedX, boolean clampedY) {
        throw new RuntimeException("Stub!");
    }

    public int getOverScrollMode() {
        throw new RuntimeException("Stub!");
    }

    public void setOverScrollMode(int overScrollMode) {
        throw new RuntimeException("Stub!");
    }

    public void setNestedScrollingEnabled(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    public boolean isNestedScrollingEnabled() {
        throw new RuntimeException("Stub!");
    }

    public boolean startNestedScroll(int axes) {
        throw new RuntimeException("Stub!");
    }

    public void stopNestedScroll() {
        throw new RuntimeException("Stub!");
    }

    public boolean hasNestedScrollingParent() {
        throw new RuntimeException("Stub!");
    }

    public boolean dispatchNestedScroll(int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int[] offsetInWindow) {
        throw new RuntimeException("Stub!");
    }

    public boolean dispatchNestedPreScroll(int dx, int dy, int[] consumed, int[] offsetInWindow) {
        throw new RuntimeException("Stub!");
    }

    public boolean dispatchNestedFling(float velocityX, float velocityY, boolean consumed) {
        throw new RuntimeException("Stub!");
    }

    public boolean dispatchNestedPreFling(float velocityX, float velocityY) {
        throw new RuntimeException("Stub!");
    }

    public void setTextDirection(int textDirection) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "text", mapping = {@ViewDebug.IntToString(from = 0, to = "INHERIT"), @ViewDebug.IntToString(from = 1, to = "FIRST_STRONG"), @ViewDebug.IntToString(from = 2, to = "ANY_RTL"), @ViewDebug.IntToString(from = 3, to = StaticLayoutBuilderCompat.f64603s), @ViewDebug.IntToString(from = 4, to = StaticLayoutBuilderCompat.f64604t), @ViewDebug.IntToString(from = 5, to = "LOCALE"), @ViewDebug.IntToString(from = 6, to = "FIRST_STRONG_LTR"), @ViewDebug.IntToString(from = 7, to = "FIRST_STRONG_RTL")})
    public int getTextDirection() {
        throw new RuntimeException("Stub!");
    }

    public boolean canResolveTextDirection() {
        throw new RuntimeException("Stub!");
    }

    public boolean isTextDirectionResolved() {
        throw new RuntimeException("Stub!");
    }

    public void setTextAlignment(int textAlignment) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "text", mapping = {@ViewDebug.IntToString(from = 0, to = "INHERIT"), @ViewDebug.IntToString(from = 1, to = "GRAVITY"), @ViewDebug.IntToString(from = 2, to = "TEXT_START"), @ViewDebug.IntToString(from = 3, to = "TEXT_END"), @ViewDebug.IntToString(from = 4, to = "CENTER"), @ViewDebug.IntToString(from = 5, to = "VIEW_START"), @ViewDebug.IntToString(from = 6, to = "VIEW_END")})
    public int getTextAlignment() {
        throw new RuntimeException("Stub!");
    }

    public boolean canResolveTextAlignment() {
        throw new RuntimeException("Stub!");
    }

    public boolean isTextAlignmentResolved() {
        throw new RuntimeException("Stub!");
    }

    public static int generateViewId() {
        throw new RuntimeException("Stub!");
    }

    public PointerIcon onResolvePointerIcon(MotionEvent event, int pointerIndex) {
        throw new RuntimeException("Stub!");
    }

    public void setPointerIcon(PointerIcon pointerIcon) {
        throw new RuntimeException("Stub!");
    }

    public PointerIcon getPointerIcon() {
        throw new RuntimeException("Stub!");
    }

    public boolean hasPointerCapture() {
        throw new RuntimeException("Stub!");
    }

    public void requestPointerCapture() {
        throw new RuntimeException("Stub!");
    }

    public void releasePointerCapture() {
        throw new RuntimeException("Stub!");
    }

    public void onPointerCaptureChange(boolean hasCapture) {
        throw new RuntimeException("Stub!");
    }

    public void dispatchPointerCaptureChanged(boolean hasCapture) {
        throw new RuntimeException("Stub!");
    }

    public boolean onCapturedPointerEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    public void setOnCapturedPointerListener(OnCapturedPointerListener l10) {
        throw new RuntimeException("Stub!");
    }

    public ViewPropertyAnimator animate() {
        throw new RuntimeException("Stub!");
    }

    public final void setTransitionName(String transitionName) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty
    public String getTransitionName() {
        throw new RuntimeException("Stub!");
    }

    public void setTooltipText(CharSequence tooltipText) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getTooltipText() {
        throw new RuntimeException("Stub!");
    }
}
