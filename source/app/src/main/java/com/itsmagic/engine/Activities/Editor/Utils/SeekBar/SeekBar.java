package com.itsmagic.engine.Activities.Editor.Utils.SeekBar;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Utils.SeekBar.SeekBar;
import java.util.Locale;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class SeekBar extends FrameLayout {

    public final Rect f72063A;

    public boolean f72064B;

    public float f72065b;

    public float f72066c;

    public float f72067d;

    public String f72068e;

    public float f72069f;

    public float f72070g;

    public float f72071h;

    public float f72072i;

    public final Paint f72073j;

    public final Paint f72074k;

    public final Paint f72075l;

    public final RectF f72076m;

    public final RectF f72077n;

    public final Path f72078o;

    public final Path f72079p;

    public final float[] f72080q;

    public final float[] f72081r;

    public a f72082s;

    public float f72083t;

    public float f72084u;

    public boolean f72085v;

    public final int f72086w;

    public EditText f72087x;

    public boolean f72088y;

    public boolean f72089z;

    public interface a {
        void a(float value, boolean fromUser);
    }

    public SeekBar(Context ctx) {
        super(ctx);
        this.f72065b = 0.0f;
        this.f72066c = 1.0f;
        this.f72067d = 0.5f;
        this.f72068e = "%.2f";
        this.f72069f = 0.0f;
        this.f72070g = 0.0f;
        this.f72071h = 0.0f;
        this.f72072i = 0.0f;
        this.f72073j = new Paint(1);
        this.f72074k = new Paint(1);
        this.f72075l = new Paint(1);
        this.f72076m = new RectF();
        this.f72077n = new RectF();
        this.f72078o = new Path();
        this.f72079p = new Path();
        this.f72080q = new float[8];
        this.f72081r = new float[8];
        this.f72088y = false;
        this.f72089z = false;
        this.f72063A = new Rect();
        this.f72064B = false;
        this.f72086w = ViewConfiguration.get(ctx).getScaledTouchSlop();
        i(ctx);
    }

    public static float e(float v10, float lo, float hi2) {
        return Math.max(lo, Math.min(hi2, v10));
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent ev) {
        if (this.f72088y && ev.getAction() == 0) {
            this.f72087x.getHitRect(this.f72063A);
            if (!this.f72063A.contains((int) ev.getX(), (int) ev.getY())) {
                g(true);
                return true;
            }
        }
        return super.dispatchTouchEvent(ev);
    }

    public final void f() {
        this.f72088y = true;
        setFocusable(false);
        setFocusableInTouchMode(false);
        this.f72087x.setText(String.format(Locale.US, this.f72068e, Float.valueOf(this.f72067d)));
        this.f72087x.setFocusable(true);
        this.f72087x.setFocusableInTouchMode(true);
        this.f72087x.setVisibility(0);
        this.f72087x.measure(View.MeasureSpec.makeMeasureSpec((getWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((getHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
        this.f72087x.layout(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom());
        this.f72087x.bringToFront();
        post(new Runnable() {
            @Override
            public final void run() {
                SeekBar.this.j();
            }
        });
        invalidate();
    }

    public final void g(boolean apply) {
        if (this.f72088y) {
            if (apply) {
                String trim = this.f72087x.getText().toString().trim();
                if (!TextUtils.isEmpty(trim)) {
                    try {
                        q(e(Float.parseFloat(trim.replace(IIndexConstants.PARAMETER_SEPARATOR, '.')), this.f72065b, this.f72066c), true);
                    } catch (NumberFormatException unused) {
                    }
                }
            }
            this.f72089z = false;
            this.f72088y = false;
            this.f72087x.setFocusable(false);
            this.f72087x.setFocusableInTouchMode(false);
            this.f72087x.setVisibility(8);
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService(Context.INPUT_METHOD_SERVICE);
            if (inputMethodManager != null) {
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            }
            setFocusable(false);
            setFocusableInTouchMode(false);
            invalidate();
        }
    }

    public float getValue() {
        return this.f72067d;
    }

    public final float h(float v10) {
        float f10 = this.f72066c;
        float f11 = this.f72065b;
        if (f10 == f11) {
            return 0.0f;
        }
        return e((v10 - f11) / (f10 - f11), 0.0f, 1.0f);
    }

    public final void i(Context ctx) {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(false);
        setFocusableInTouchMode(false);
        setClipToPadding(false);
        setClipToOutline(false);
        float f10 = getResources().getDisplayMetrics().density;
        Paint paint = this.f72073j;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        this.f72073j.setColor(-11183777);
        this.f72074k.setStyle(style);
        this.f72074k.setColor(-12877066);
        this.f72075l.setTextAlign(Paint.Align.CENTER);
        this.f72075l.setTextSize(f10 * 12.0f);
        this.f72075l.setColor(-1);
        EditText editText = new EditText(ctx);
        this.f72087x = editText;
        editText.setSingleLine(true);
        this.f72087x.setImeOptions(6);
        this.f72087x.setInputType(12290);
        this.f72087x.setBackground(null);
        this.f72087x.setGravity(17);
        this.f72087x.setHighlightColor(Theme.i(Theme.T.PRIMARY_DARK));
        this.f72087x.setTextColor(Theme.i(Theme.T.HIGH_TEXT_COLOR));
        this.f72087x.setHintTextColor(-2130706433);
        this.f72087x.setVisibility(8);
        this.f72087x.setPadding(0, 0, 0, 0);
        this.f72087x.setTextSize(2, 14.0f);
        this.f72087x.setIncludeFontPadding(false);
        this.f72087x.setHorizontallyScrolling(false);
        this.f72087x.setMaxLines(1);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 119;
        addView(this.f72087x, layoutParams);
        this.f72087x.setOnEditorActionListener(new TextView.OnEditorActionListener() {
            @Override
            public final boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
                boolean k10;
                k10 = SeekBar.this.k(textView, i10, keyEvent);
                return k10;
            }
        });
        this.f72087x.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public final void onFocusChange(View view, boolean z10) {
                SeekBar.this.l(view, z10);
            }
        });
        setClickable(true);
    }

    public final void j() {
        this.f72087x.requestFocus();
        EditText editText = this.f72087x;
        editText.setSelection(0, editText.getText().length());
        InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService(Context.INPUT_METHOD_SERVICE);
        if (inputMethodManager != null) {
            inputMethodManager.showSoftInput(this.f72087x, 1);
        }
        this.f72089z = true;
    }

    public final boolean k(TextView textView, int i10, KeyEvent keyEvent) {
        if (i10 != 6) {
            return false;
        }
        g(true);
        return true;
    }

    public final void l(View view, boolean z10) {
        if (!z10 && this.f72088y && this.f72089z) {
            g(true);
        }
    }

    public final void m() {
        EditText editText = this.f72087x;
        editText.setSelection(editText.getText().length());
    }

    public void n(float topLeft, float topRight, float bottomRight, float bottomLeft) {
        this.f72069f = Math.max(0.0f, topLeft);
        this.f72070g = Math.max(0.0f, topRight);
        this.f72071h = Math.max(0.0f, bottomRight);
        this.f72072i = Math.max(0.0f, bottomLeft);
        invalidate();
    }

    public void o(float tlDp, float trDp, float brDp, float blDp) {
        float f10 = getResources().getDisplayMetrics().density;
        n(tlDp * f10, trDp * f10, brDp * f10, blDp * f10);
    }

    @Override
    public void onDraw(Canvas c10) {
        super.onDraw(c10);
        if (!this.f72088y) {
            float paddingLeft = getPaddingLeft();
            float width = getWidth() - getPaddingRight();
            float paddingTop = getPaddingTop();
            float height = getHeight() - getPaddingBottom();
            if (width <= paddingLeft || height <= paddingTop) {
                return;
            }
            this.f72076m.set(paddingLeft, paddingTop, width, height);
            this.f72077n.set(paddingLeft, paddingTop, (h(this.f72067d) * (width - paddingLeft)) + paddingLeft, height);
            float width2 = this.f72076m.width() / 2.0f;
            float height2 = this.f72076m.height() / 2.0f;
            float min = Math.min(this.f72069f, width2);
            float min2 = Math.min(this.f72069f, height2);
            float min3 = Math.min(this.f72070g, width2);
            float min4 = Math.min(this.f72070g, height2);
            float min5 = Math.min(this.f72071h, width2);
            float min6 = Math.min(this.f72071h, height2);
            float min7 = Math.min(this.f72072i, width2);
            float min8 = Math.min(this.f72072i, height2);
            float[] fArr = this.f72080q;
            fArr[0] = min;
            fArr[1] = min2;
            fArr[2] = min3;
            fArr[3] = min4;
            fArr[4] = min5;
            fArr[5] = min6;
            fArr[6] = min7;
            fArr[7] = min8;
            float width3 = this.f72077n.width() / 2.0f;
            float height3 = this.f72077n.height() / 2.0f;
            float min9 = Math.min(this.f72069f, width3);
            float min10 = Math.min(this.f72069f, height3);
            float min11 = Math.min(this.f72070g, width3);
            float min12 = Math.min(this.f72070g, height3);
            float min13 = Math.min(this.f72071h, width3);
            float min14 = Math.min(this.f72071h, height3);
            float min15 = Math.min(this.f72072i, width3);
            float min16 = Math.min(this.f72072i, height3);
            float[] fArr2 = this.f72081r;
            fArr2[0] = min9;
            fArr2[1] = min10;
            fArr2[2] = min11;
            fArr2[3] = min12;
            fArr2[4] = min13;
            fArr2[5] = min14;
            fArr2[6] = min15;
            fArr2[7] = min16;
            this.f72078o.reset();
            Path path = this.f72078o;
            RectF rectF = this.f72076m;
            float[] fArr3 = this.f72080q;
            Path.Direction direction = Path.Direction.CW;
            path.addRoundRect(rectF, fArr3, direction);
            c10.drawPath(this.f72078o, this.f72073j);
            this.f72079p.reset();
            if (this.f72077n.width() > 0.5f) {
                this.f72079p.addRoundRect(this.f72077n, this.f72081r, direction);
                c10.drawPath(this.f72079p, this.f72074k);
            }
            if (!this.f72088y) {
                String format = String.format(Locale.US, this.f72068e, Float.valueOf(this.f72067d));
                Paint.FontMetrics fontMetrics = this.f72075l.getFontMetrics();
                c10.drawText(format, (paddingLeft + width) / 2.0f, ((paddingTop + height) / 2.0f) - ((fontMetrics.ascent + fontMetrics.descent) / 2.0f), this.f72075l);
            }
        }
        if (this.f72064B && this.f72087x.getVisibility() == 0) {
            Paint paint = new Paint();
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(2.0f);
            paint.setColor(-49023);
            Rect rect = new Rect();
            this.f72087x.getHitRect(rect);
            c10.drawRect(rect, paint);
        }
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        return this.f72088y || super.onInterceptTouchEvent(ev);
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        setMeasuredDimension(View.resolveSize(getSuggestedMinimumWidth(), widthMeasureSpec), View.resolveSize((int) (getResources().getDisplayMetrics().density * 24.0f), heightMeasureSpec));
    }

    @Override
    public void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged(w10, h10, oldw, oldh);
    }

    @Override
    public boolean onTouchEvent(MotionEvent e10) {
        if (this.f72088y) {
            return true;
        }
        int actionMasked = e10.getActionMasked();
        if (actionMasked == 0) {
            getParent().requestDisallowInterceptTouchEvent(true);
            this.f72083t = e10.getX();
            this.f72084u = e10.getY();
            this.f72085v = false;
            r(e10.getX());
            return true;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                if (!this.f72085v && (Math.abs(e10.getX() - this.f72083t) > this.f72086w || Math.abs(e10.getY() - this.f72084u) > this.f72086w)) {
                    this.f72085v = true;
                }
                r(e10.getX());
                return true;
            }
            if (actionMasked != 3) {
                return super.onTouchEvent(e10);
            }
        }
        if (this.f72085v) {
            a aVar = this.f72082s;
            if (aVar != null) {
                aVar.a(this.f72067d, true);
            }
        } else {
            f();
        }
        getParent().requestDisallowInterceptTouchEvent(false);
        return true;
    }

    public void p(float min, float max) {
        if (max == min) {
            max = 1.0f + min;
        }
        this.f72065b = Math.min(min, max);
        this.f72066c = Math.max(min, max);
        q(this.f72067d, false);
    }

    public void q(float v10, boolean fromUser) {
        float e10 = e(v10, this.f72065b, this.f72066c);
        if (e10 != this.f72067d) {
            this.f72067d = e10;
            invalidate();
            a aVar = this.f72082s;
            if (aVar != null) {
                aVar.a(this.f72067d, fromUser);
            }
        }
        if (this.f72088y) {
            this.f72087x.setText(String.format(Locale.US, this.f72068e, Float.valueOf(this.f72067d)));
            post(new Runnable() {
                @Override
                public final void run() {
                    SeekBar.this.m();
                }
            });
        }
    }

    public final void r(float x10) {
        float paddingLeft = getPaddingLeft();
        float width = getWidth() - getPaddingRight();
        if (width <= paddingLeft) {
            return;
        }
        float e10 = e((x10 - paddingLeft) / (width - paddingLeft), 0.0f, 1.0f);
        float f10 = this.f72065b;
        q(f10 + (e10 * (this.f72066c - f10)), true);
    }

    public void setDebugEditorBounds(boolean enabled) {
        this.f72064B = enabled;
        invalidate();
    }

    public void setFormat(String printfFormat) {
        if (TextUtils.isEmpty(printfFormat)) {
            printfFormat = "%.2f";
        }
        this.f72068e = printfFormat;
        invalidate();
    }

    public void setFormatStr(String fmt) {
        if (TextUtils.isEmpty(fmt)) {
            fmt = "%.2f";
        }
        this.f72068e = fmt;
        invalidate();
    }

    public void setOnValueChangeListener(@Nullable a l10) {
        this.f72082s = l10;
    }

    public void setRadiusBottomLeft(float r10) {
        this.f72072i = Math.max(0.0f, r10);
        invalidate();
    }

    public void setRadiusBottomRight(float r10) {
        this.f72071h = Math.max(0.0f, r10);
        invalidate();
    }

    public void setRadiusTopLeft(float r10) {
        this.f72069f = Math.max(0.0f, r10);
        invalidate();
    }

    public void setRadiusTopRight(float r10) {
        this.f72070g = Math.max(0.0f, r10);
        invalidate();
    }

    public void setValue(float v10) {
        q(v10, false);
    }

    public SeekBar(Context ctx, @Nullable AttributeSet attrs) {
        super(ctx, attrs);
        this.f72065b = 0.0f;
        this.f72066c = 1.0f;
        this.f72067d = 0.5f;
        this.f72068e = "%.2f";
        this.f72069f = 0.0f;
        this.f72070g = 0.0f;
        this.f72071h = 0.0f;
        this.f72072i = 0.0f;
        this.f72073j = new Paint(1);
        this.f72074k = new Paint(1);
        this.f72075l = new Paint(1);
        this.f72076m = new RectF();
        this.f72077n = new RectF();
        this.f72078o = new Path();
        this.f72079p = new Path();
        this.f72080q = new float[8];
        this.f72081r = new float[8];
        this.f72088y = false;
        this.f72089z = false;
        this.f72063A = new Rect();
        this.f72064B = false;
        this.f72086w = ViewConfiguration.get(ctx).getScaledTouchSlop();
        i(ctx);
    }

    public SeekBar(Context ctx, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(ctx, attrs, defStyleAttr);
        this.f72065b = 0.0f;
        this.f72066c = 1.0f;
        this.f72067d = 0.5f;
        this.f72068e = "%.2f";
        this.f72069f = 0.0f;
        this.f72070g = 0.0f;
        this.f72071h = 0.0f;
        this.f72072i = 0.0f;
        this.f72073j = new Paint(1);
        this.f72074k = new Paint(1);
        this.f72075l = new Paint(1);
        this.f72076m = new RectF();
        this.f72077n = new RectF();
        this.f72078o = new Path();
        this.f72079p = new Path();
        this.f72080q = new float[8];
        this.f72081r = new float[8];
        this.f72088y = false;
        this.f72089z = false;
        this.f72063A = new Rect();
        this.f72064B = false;
        this.f72086w = ViewConfiguration.get(ctx).getScaledTouchSlop();
        i(ctx);
    }
}
