package org.blacksquircle.ui.editorkit.widget;

import Cf.a;
import Cf.c;
import Lf.k;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.TypedArrayKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import nf.I;
import nf.K;
import org.blacksquircle.ui.editorkit.widget.TextScroller;
import org.blacksquircle.ui.editorkit.widget.internal.ScrollableEditText;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import t3.b;

public final class TextScroller extends View implements ScrollableEditText.OnScrollChangedListener {
    private static final int ALPHA_MAX = 225;
    private static final int ALPHA_MIN = 0;
    private static final int ALPHA_STEP = 25;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long EXITING_DELAY = 17;
    private static final long TIME_EXITING = 2000;

    @NotNull
    private final I draggingBitmap$delegate;

    @NotNull
    private final Runnable hideCallback;

    @NotNull
    private final Handler hideHandler;

    @NotNull
    private final I normalBitmap$delegate;

    @Nullable
    private ScrollableEditText scrollableEditText;

    @NotNull
    private State state;
    private float textScrollMax;
    private float textScrollY;

    @NotNull
    private final Drawable thumbDragging;
    private final int thumbHeight;

    @NotNull
    private final Drawable thumbNormal;

    @NotNull
    private final Paint thumbPaint;
    private float thumbTop;

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class State {
        private static final a $ENTRIES;
        private static final State[] $VALUES;
        public static final State HIDDEN = new State("HIDDEN", 0);
        public static final State VISIBLE = new State("VISIBLE", 1);
        public static final State DRAGGING = new State("DRAGGING", 2);
        public static final State EXITING = new State("EXITING", 3);

        private static final State[] $values() {
            return new State[]{HIDDEN, VISIBLE, DRAGGING, EXITING};
        }

        static {
            State[] $values = $values();
            $VALUES = $values;
            $ENTRIES = c.c($values);
        }

        private State(String str, int i10) {
        }

        @NotNull
        public static a<State> getEntries() {
            return $ENTRIES;
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) $VALUES.clone();
        }
    }

    public static final class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[State.values().length];
            try {
                iArr[State.HIDDEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[State.VISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[State.DRAGGING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[State.EXITING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @k
    public TextScroller(@NotNull Context context) {
        this(context, null, 0, 6, null);
        M.p(context, "context");
    }

    public static final Bitmap draggingBitmap_delegate$lambda$0(TextScroller textScroller) {
        Bitmap createBitmap = Bitmap.createBitmap(textScroller.getWidth(), textScroller.thumbHeight, Bitmap.Config.ARGB_8888);
        M.o(createBitmap, "createBitmap(...)");
        textScroller.thumbDragging.setBounds(new Rect(0, 0, textScroller.getWidth(), textScroller.thumbHeight));
        textScroller.thumbDragging.draw(new Canvas(createBitmap));
        return createBitmap;
    }

    private final Bitmap getDraggingBitmap() {
        return (Bitmap) this.draggingBitmap$delegate.getValue();
    }

    private final void getMeasurements() {
        Layout layout;
        ScrollableEditText scrollableEditText = this.scrollableEditText;
        if (scrollableEditText == null) {
            return;
        }
        this.textScrollMax = (scrollableEditText == null || (layout = scrollableEditText.getLayout()) == null) ? 0.0f : layout.getHeight();
        this.textScrollY = this.scrollableEditText != null ? r0.getScrollY() : 0.0f;
        this.thumbTop = getThumbTop();
    }

    private final Bitmap getNormalBitmap() {
        return (Bitmap) this.normalBitmap$delegate.getValue();
    }

    private final float getThumbTop() {
        ScrollableEditText scrollableEditText = this.scrollableEditText;
        if (scrollableEditText == null) {
            return 0.0f;
        }
        float height = (getHeight() - this.thumbHeight) * (this.textScrollY / ((this.textScrollMax - (this.scrollableEditText != null ? r3.getHeight() : 0)) + (scrollableEditText != null ? scrollableEditText.getLineHeight() : 0)));
        float f10 = Float.isNaN(height) ? 0.0f : height;
        return f10 > ((float) (getHeight() - this.thumbHeight)) ? getHeight() - this.thumbHeight : f10;
    }

    public static final void hideCallback$lambda$0(TextScroller textScroller) {
        textScroller.setState(State.EXITING);
    }

    private final boolean isPointInThumb(float f10, float f11) {
        if (f10 >= 0.0f && f10 <= getWidth()) {
            float f12 = this.thumbTop;
            if (f11 >= f12 && f11 <= f12 + this.thumbHeight) {
                return true;
            }
        }
        return false;
    }

    private final boolean isShowScrollerJustified() {
        float f10 = this.textScrollMax;
        ScrollableEditText scrollableEditText = this.scrollableEditText;
        return ((double) (f10 / ((float) (scrollableEditText != null ? scrollableEditText.getHeight() : 0)))) >= 1.5d;
    }

    public static final Bitmap normalBitmap_delegate$lambda$0(TextScroller textScroller) {
        Bitmap createBitmap = Bitmap.createBitmap(textScroller.getWidth(), textScroller.thumbHeight, Bitmap.Config.ARGB_8888);
        M.o(createBitmap, "createBitmap(...)");
        textScroller.thumbNormal.setBounds(new Rect(0, 0, textScroller.getWidth(), textScroller.thumbHeight));
        textScroller.thumbNormal.draw(new Canvas(createBitmap));
        return createBitmap;
    }

    private final void scrollView() {
        if (this.scrollableEditText == null) {
            return;
        }
        float height = this.thumbTop / (getHeight() - this.thumbHeight);
        ScrollableEditText scrollableEditText = this.scrollableEditText;
        M.m(scrollableEditText);
        int lineHeight = scrollableEditText.getLineHeight();
        ScrollableEditText scrollableEditText2 = this.scrollableEditText;
        M.m(scrollableEditText2);
        int height2 = scrollableEditText2.getHeight();
        ScrollableEditText scrollableEditText3 = this.scrollableEditText;
        if (scrollableEditText3 != null) {
            M.m(scrollableEditText3);
            scrollableEditText3.scrollTo(scrollableEditText3.getScrollX(), (int) ((this.textScrollMax * height) - (height * (height2 - lineHeight))));
        }
    }

    public final void attachTo(@NotNull ScrollableEditText scrollableEditText) {
        M.p(scrollableEditText, "scrollableEditText");
        this.scrollableEditText = scrollableEditText;
        if (scrollableEditText != null) {
            scrollableEditText.addOnScrollChangedListener(this);
        }
    }

    public final void detach() {
        ScrollableEditText scrollableEditText = this.scrollableEditText;
        if (scrollableEditText != null) {
            scrollableEditText.removeOnScrollChangedListener(this);
        }
        this.scrollableEditText = null;
    }

    @NotNull
    public final State getState() {
        return this.state;
    }

    @Override
    public void onDraw(@NotNull Canvas canvas) {
        M.p(canvas, "canvas");
        super.onDraw(canvas);
        int i10 = WhenMappings.$EnumSwitchMapping$0[this.state.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                this.thumbPaint.setAlpha(225);
                canvas.drawBitmap(getNormalBitmap(), 0.0f, this.thumbTop, this.thumbPaint);
                return;
            }
            if (i10 == 3) {
                this.thumbPaint.setAlpha(225);
                canvas.drawBitmap(getDraggingBitmap(), 0.0f, this.thumbTop, this.thumbPaint);
            } else {
                if (i10 != 4) {
                    throw new NoWhenBranchMatchedException();
                }
                if (this.thumbPaint.getAlpha() <= 25) {
                    this.thumbPaint.setAlpha(0);
                    setState(State.HIDDEN);
                } else {
                    Paint paint = this.thumbPaint;
                    paint.setAlpha(paint.getAlpha() - 25);
                    canvas.drawBitmap(getNormalBitmap(), 0.0f, this.thumbTop, this.thumbPaint);
                    getHandler().postDelayed(this.hideCallback, EXITING_DELAY);
                }
            }
        }
    }

    @Override
    public void onScrollChanged(int i10, int i11, int i12, int i13) {
        if (this.state != State.DRAGGING) {
            getMeasurements();
            setState(State.VISIBLE);
            this.hideHandler.postDelayed(this.hideCallback, 2000L);
        }
    }

    @Override
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        M.p(event, "event");
        if (this.scrollableEditText != null && this.state != State.HIDDEN) {
            getMeasurements();
            int action = event.getAction();
            if (action != 0) {
                if (action == 1) {
                    setState(State.VISIBLE);
                    setPressed(false);
                    this.hideHandler.postDelayed(this.hideCallback, 2000L);
                } else if (action == 2 && this.state == State.DRAGGING) {
                    setPressed(true);
                    ScrollableEditText scrollableEditText = this.scrollableEditText;
                    if (scrollableEditText != null) {
                        scrollableEditText.abortFling();
                    }
                    int y10 = (int) event.getY();
                    int i10 = this.thumbHeight;
                    int i11 = y10 - (i10 / 2);
                    this.thumbTop = i11 >= 0 ? i10 + i11 > getHeight() ? getHeight() - this.thumbHeight : i11 : 0;
                    scrollView();
                    invalidate();
                    return true;
                }
            } else if (isPointInThumb(event.getX(), event.getY())) {
                ScrollableEditText scrollableEditText2 = this.scrollableEditText;
                if (scrollableEditText2 != null) {
                    scrollableEditText2.abortFling();
                }
                setState(State.DRAGGING);
                setPressed(true);
                return true;
            }
        }
        return false;
    }

    public final void setState(@NotNull State value) {
        M.p(value, "value");
        int i10 = WhenMappings.$EnumSwitchMapping$0[value.ordinal()];
        if (i10 == 1) {
            this.hideHandler.removeCallbacks(this.hideCallback);
            this.state = value;
            invalidate();
            return;
        }
        if (i10 == 2) {
            if (isShowScrollerJustified()) {
                this.hideHandler.removeCallbacks(this.hideCallback);
                this.state = value;
                invalidate();
                return;
            }
            return;
        }
        if (i10 == 3) {
            this.hideHandler.removeCallbacks(this.hideCallback);
            this.state = value;
            invalidate();
        } else {
            if (i10 != 4) {
                throw new NoWhenBranchMatchedException();
            }
            this.hideHandler.removeCallbacks(this.hideCallback);
            this.state = value;
            invalidate();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @k
    public TextScroller(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        M.p(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @k
    public TextScroller(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Drawable drawable;
        Drawable drawable2;
        M.p(context, "context");
        this.state = State.HIDDEN;
        this.normalBitmap$delegate = K.a(new Mf.a() {
            @Override
            public final Object invoke() {
                Bitmap normalBitmap_delegate$lambda$0;
                normalBitmap_delegate$lambda$0 = TextScroller.normalBitmap_delegate$lambda$0(TextScroller.this);
                return normalBitmap_delegate$lambda$0;
            }
        });
        this.draggingBitmap$delegate = K.a(new Mf.a() {
            @Override
            public final Object invoke() {
                Bitmap draggingBitmap_delegate$lambda$0;
                draggingBitmap_delegate$lambda$0 = TextScroller.draggingBitmap_delegate$lambda$0(TextScroller.this);
                return draggingBitmap_delegate$lambda$0;
            }
        });
        this.hideHandler = new Handler(Looper.getMainLooper());
        this.hideCallback = new Runnable() {
            @Override
            public final void run() {
                TextScroller.hideCallback$lambda$0(TextScroller.this);
            }
        };
        Paint paint = new Paint();
        this.thumbPaint = paint;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, b.s.JG, 0, 0);
        M.o(obtainStyledAttributes, "obtainStyledAttributes(...)");
        boolean hasValue = obtainStyledAttributes.hasValue(1);
        boolean hasValue2 = obtainStyledAttributes.hasValue(0);
        boolean hasValue3 = obtainStyledAttributes.hasValue(2);
        if (hasValue) {
            drawable = TypedArrayKt.getDrawableOrThrow(obtainStyledAttributes, 1);
        } else {
            drawable = ContextCompat.getDrawable(context, b.g.f112116H4);
            M.m(drawable);
        }
        this.thumbNormal = drawable;
        if (hasValue2) {
            drawable2 = TypedArrayKt.getDrawableOrThrow(obtainStyledAttributes, 0);
        } else {
            drawable2 = ContextCompat.getDrawable(context, b.g.f112128I4);
            M.m(drawable2);
        }
        this.thumbDragging = drawable2;
        if (hasValue3) {
            int colorOrThrow = TypedArrayKt.getColorOrThrow(obtainStyledAttributes, 2);
            drawable.setTint(colorOrThrow);
            drawable2.setTint(colorOrThrow);
        }
        this.thumbHeight = drawable.getIntrinsicHeight();
        paint.setAntiAlias(true);
        paint.setDither(false);
        paint.setAlpha(225);
        obtainStyledAttributes.recycle();
    }

    public TextScroller(Context context, AttributeSet attributeSet, int i10, int i11, C14026x c14026x) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}
