package com.itsmagic.engine.Activities.Editor.Utils.MaskView;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.appcompat.content.res.AppCompatResources;
import t3.b;

public class MaskableFrameLayout extends FrameLayout {

    public static final String f72035g = "MaskableFrameLayout";

    public static final int f72036h = 0;

    public static final int f72037i = 1;

    public static final int f72038j = 2;

    public static final int f72039k = 3;

    public static final int f72040l = 4;

    public static final int f72041m = 5;

    public static final int f72042n = 6;

    public static final int f72043o = 7;

    public static final int f72044p = 8;

    public static final int f72045q = 9;

    public static final int f72046r = 10;

    public static final int f72047s = 11;

    public static final int f72048t = 12;

    public static final int f72049u = 13;

    public static final int f72050v = 14;

    public static final int f72051w = 15;

    public static final int f72052x = 16;

    public static final int f72053y = 17;

    public Handler f72054b;

    public Drawable f72055c;

    public Bitmap f72056d;

    public Paint f72057e;

    public PorterDuffXfermode f72058f;

    public class a implements ViewTreeObserver.OnGlobalLayoutListener {

        public final ViewTreeObserver f72059b;

        public a(final ViewTreeObserver val$treeObserver) {
            this.f72059b = val$treeObserver;
        }

        @Override
        public void onGlobalLayout() {
            ViewTreeObserver viewTreeObserver = this.f72059b;
            if (!viewTreeObserver.isAlive()) {
                viewTreeObserver = MaskableFrameLayout.this.getViewTreeObserver();
            }
            if (viewTreeObserver != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            } else {
                MaskableFrameLayout.this.j("GlobalLayoutListener not removed as ViewTreeObserver is not valid");
            }
            MaskableFrameLayout maskableFrameLayout = MaskableFrameLayout.this;
            maskableFrameLayout.n(maskableFrameLayout.k(maskableFrameLayout.f72055c));
        }
    }

    public MaskableFrameLayout(Context context) {
        super(context);
        this.f72055c = null;
        this.f72056d = null;
        this.f72057e = null;
        this.f72058f = null;
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        Paint paint;
        try {
            Bitmap bitmap = this.f72056d;
            if (bitmap == null || bitmap.isRecycled()) {
                super.dispatchDraw(canvas);
            } else {
                super.dispatchDraw(canvas);
                if (this.f72056d == null || (paint = this.f72057e) == null) {
                    j("Mask or paint is null ...");
                } else {
                    paint.setXfermode(this.f72058f);
                    canvas.drawBitmap(this.f72056d, 0.0f, 0.0f, this.f72057e);
                    this.f72057e.setXfermode(null);
                }
            }
        } catch (Error e10) {
            e = e10;
            e.printStackTrace();
        } catch (Exception e11) {
            e = e11;
            e.printStackTrace();
        }
    }

    public final void e(Context context, AttributeSet attrs) {
        this.f72054b = new Handler();
        setDrawingCacheEnabled(true);
        setLayerType(1, null);
        this.f72057e = f(false);
        Resources.Theme theme = context.getTheme();
        if (theme != null) {
            TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attrs, b.s.tr, 0, 0);
            try {
                h(i(obtainStyledAttributes));
                this.f72058f = g(obtainStyledAttributes.getInteger(2, 0));
                h(this.f72055c);
                if (obtainStyledAttributes.getBoolean(0, false)) {
                    this.f72057e = f(true);
                }
                obtainStyledAttributes.recycle();
            } catch (Throwable th2) {
                if (obtainStyledAttributes != null) {
                    obtainStyledAttributes.recycle();
                }
                throw th2;
            }
        } else {
            j("Couldn't load theme, mask in xml won't be loaded.");
        }
        l();
    }

    public final Paint f(boolean antiAliasing) {
        Paint paint = new Paint(1);
        paint.setAntiAlias(antiAliasing);
        paint.setXfermode(this.f72058f);
        return paint;
    }

    public final PorterDuffXfermode g(int index) {
        PorterDuff.Mode mode;
        switch (index) {
            case 0:
                mode = PorterDuff.Mode.ADD;
                break;
            case 1:
                mode = PorterDuff.Mode.CLEAR;
                break;
            case 2:
                mode = PorterDuff.Mode.DARKEN;
                break;
            case 3:
                mode = PorterDuff.Mode.DST;
                break;
            case 4:
                mode = PorterDuff.Mode.DST_ATOP;
                break;
            case 5:
                mode = PorterDuff.Mode.DST_IN;
                break;
            case 6:
                mode = PorterDuff.Mode.DST_OUT;
                break;
            case 7:
                mode = PorterDuff.Mode.DST_OVER;
                break;
            case 8:
                mode = PorterDuff.Mode.LIGHTEN;
                break;
            case 9:
                mode = PorterDuff.Mode.MULTIPLY;
                break;
            case 10:
                mode = PorterDuff.Mode.OVERLAY;
                break;
            case 11:
                mode = PorterDuff.Mode.SCREEN;
                break;
            case 12:
                mode = PorterDuff.Mode.SRC;
                break;
            case 13:
                mode = PorterDuff.Mode.SRC_ATOP;
                break;
            case 14:
                mode = PorterDuff.Mode.SRC_IN;
                break;
            case 15:
                mode = PorterDuff.Mode.SRC_OUT;
                break;
            case 16:
                mode = PorterDuff.Mode.SRC_OVER;
                break;
            case 17:
                mode = PorterDuff.Mode.XOR;
                break;
            default:
                mode = PorterDuff.Mode.DST_IN;
                break;
        }
        j("Mode is " + mode.toString());
        return new PorterDuffXfermode(mode);
    }

    public Drawable getDrawableMask() {
        return this.f72055c;
    }

    public final void h(Drawable input) {
        if (input == null) {
            j("Are you sure you don't want to provide a mask ?");
            return;
        }
        this.f72055c = input;
        if (input instanceof AnimationDrawable) {
            input.setCallback(this);
        }
    }

    public final Drawable i(TypedArray a10) {
        int resourceId = a10.getResourceId(1, -1);
        if (resourceId == -1) {
            return null;
        }
        return AppCompatResources.getDrawable(getContext(), resourceId);
    }

    @Override
    public void invalidateDrawable(Drawable dr) {
    }

    public final void j(String message) {
        Log.d(f72035g, message);
    }

    public final Bitmap k(Drawable drawable) {
        if (drawable == null) {
            j("No bitmap mask loaded, view will NOT be masked !");
            return null;
        }
        if (getMeasuredWidth() <= 0 || getMeasuredHeight() <= 0) {
            return null;
        }
        Bitmap createBitmap = Bitmap.createBitmap(getMeasuredWidth(), getMeasuredHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
        drawable.draw(canvas);
        return createBitmap;
    }

    public final void l() {
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver == null || !viewTreeObserver.isAlive()) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new a(viewTreeObserver));
    }

    public final void m(int width, int height) {
        if (width <= 0 || height <= 0) {
            j("Width and height must be higher than 0");
            return;
        }
        Drawable drawable = this.f72055c;
        if (drawable != null) {
            n(k(drawable));
        }
    }

    public final void n(Bitmap newMask) {
        if (newMask != null) {
            Bitmap bitmap = this.f72056d;
            if (bitmap != null && !bitmap.isRecycled()) {
                this.f72056d.recycle();
            }
            this.f72056d = newMask;
        }
    }

    @Override
    public void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged(w10, h10, oldw, oldh);
        m(w10, h10);
    }

    @Override
    public void scheduleDrawable(Drawable who, Runnable what, long when) {
        if (who == null || what == null) {
            return;
        }
        this.f72054b.postAtTime(what, when);
    }

    public void setMask(int drawableRes) {
        Resources resources = getResources();
        if (resources != null) {
            setMask(resources.getDrawable(drawableRes));
        } else {
            j("Unable to load resources, mask will not be loaded as drawable");
        }
    }

    public void setPorterDuffXferMode(PorterDuff.Mode mode) {
        this.f72058f = new PorterDuffXfermode(mode);
    }

    @Override
    public void unscheduleDrawable(Drawable who, Runnable what) {
        if (who == null || what == null) {
            return;
        }
        this.f72054b.removeCallbacks(what);
    }

    public void setMask(Drawable input) {
        h(input);
        n(k(this.f72055c));
        invalidate();
    }

    public MaskableFrameLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f72055c = null;
        this.f72056d = null;
        this.f72057e = null;
        this.f72058f = null;
        e(context, attrs);
    }

    public MaskableFrameLayout(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f72055c = null;
        this.f72056d = null;
        this.f72057e = null;
        this.f72058f = null;
        e(context, attrs);
    }
}
