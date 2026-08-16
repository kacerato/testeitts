package org.jaredrummler.colorpicker;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ComposeShader;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import t3.b;

public class ColorPickerView extends View {

    public static final int f102704I = -9539986;

    public static final int f102705J = -4342339;

    public static final int f102706K = 16;

    public static final int f102707L = 16;

    public static final int f102708M = 6;

    public static final int f102709N = 5;

    public static final int f102710O = 4;

    public static final int f102711P = 2;

    public static final int f102712Q = 0;

    public int f102713A;

    public Rect f102714B;

    public Rect f102715C;

    public Rect f102716D;

    public Rect f102717E;

    public Point f102718F;

    public cn.a f102719G;

    public c f102720H;

    public int f102721b;

    public int f102722c;

    public int f102723d;

    public int f102724e;

    public int f102725f;

    public int f102726g;

    public Paint f102727h;

    public Paint f102728i;

    public Paint f102729j;

    public Paint f102730k;

    public Paint f102731l;

    public Paint f102732m;

    public Shader f102733n;

    public Shader f102734o;

    public Shader f102735p;

    public b f102736q;

    public b f102737r;

    public int f102738s;

    public float f102739t;

    public float f102740u;

    public float f102741v;

    public boolean f102742w;

    public String f102743x;

    public int f102744y;

    public int f102745z;

    public class b {

        public Canvas f102746a;

        public Bitmap f102747b;

        public float f102748c;

        public b() {
        }
    }

    public interface c {
        void a(int newColor);
    }

    public ColorPickerView(Context context) {
        this(context, null);
    }

    private int getPreferredHeight() {
        int a10 = cn.c.a(getContext(), 200.0f);
        return this.f102742w ? a10 + this.f102723d + this.f102722c : a10;
    }

    private int getPreferredWidth() {
        return cn.c.a(getContext(), 200.0f) + this.f102721b + this.f102723d;
    }

    public final Point a(int alpha) {
        Rect rect = this.f102717E;
        float width = rect.width();
        Point point = new Point();
        point.f32423x = (int) ((width - ((alpha * width) / 255.0f)) + rect.left);
        point.f32424y = rect.top;
        return point;
    }

    public final void b(Context c10) {
        TypedArray obtainStyledAttributes = c10.obtainStyledAttributes(new TypedValue().data, new int[]{R.attr.textColorSecondary});
        if (this.f102745z == -9539986) {
            this.f102745z = obtainStyledAttributes.getColor(0, f102704I);
        }
        if (this.f102744y == -4342339) {
            this.f102744y = obtainStyledAttributes.getColor(0, f102705J);
        }
        obtainStyledAttributes.recycle();
    }

    public final void c(Canvas canvas) {
        Rect rect;
        cn.a aVar;
        if (!this.f102742w || (rect = this.f102717E) == null || (aVar = this.f102719G) == null) {
            return;
        }
        aVar.draw(canvas);
        float[] fArr = {this.f102739t, this.f102740u, this.f102741v};
        int HSVToColor = Color.HSVToColor(fArr);
        int HSVToColor2 = Color.HSVToColor(0, fArr);
        float f10 = rect.left;
        int i10 = rect.top;
        LinearGradient linearGradient = new LinearGradient(f10, i10, rect.right, i10, HSVToColor, HSVToColor2, Shader.TileMode.CLAMP);
        this.f102735p = linearGradient;
        this.f102729j.setShader(linearGradient);
        canvas.drawRect(rect, this.f102729j);
        String str = this.f102743x;
        if (str != null && !str.equals("")) {
            canvas.drawText(this.f102743x, rect.centerX(), rect.centerY() + cn.c.a(getContext(), 4.0f), this.f102730k);
        }
        Point a10 = a(this.f102738s);
        RectF rectF = new RectF();
        int i11 = a10.f32423x;
        int i12 = this.f102726g;
        rectF.left = i11 - (i12 / 2);
        rectF.right = i11 + (i12 / 2);
        int i13 = rect.top;
        int i14 = this.f102725f;
        rectF.top = i13 - i14;
        rectF.bottom = rect.bottom + i14;
        canvas.drawRoundRect(rectF, 2.0f, 2.0f, this.f102731l);
    }

    public final void d(Canvas canvas) {
        Rect rect = this.f102716D;
        if (this.f102737r == null) {
            if (rect.width() <= 0 || rect.height() <= 0) {
                return;
            }
            b bVar = new b();
            this.f102737r = bVar;
            bVar.f102747b = Bitmap.createBitmap(rect.width(), rect.height(), Bitmap.Config.ARGB_8888);
            this.f102737r.f102746a = new Canvas(this.f102737r.f102747b);
            int height = (int) (rect.height() + 0.5f);
            int[] iArr = new int[height];
            float f10 = 360.0f;
            for (int i10 = 0; i10 < height; i10++) {
                iArr[i10] = Color.HSVToColor(new float[]{f10, 1.0f, 1.0f});
                f10 -= 360.0f / height;
            }
            Paint paint = new Paint();
            paint.setStrokeWidth(0.0f);
            for (int i11 = 0; i11 < height; i11++) {
                paint.setColor(iArr[i11]);
                float f11 = i11;
                this.f102737r.f102746a.drawLine(0.0f, f11, r10.f102747b.getWidth(), f11, paint);
            }
        }
        canvas.drawBitmap(this.f102737r.f102747b, (Rect) null, rect, (Paint) null);
        Point f12 = f(this.f102739t);
        RectF rectF = new RectF();
        int i12 = rect.left;
        int i13 = this.f102725f;
        rectF.left = i12 - i13;
        rectF.right = rect.right + i13;
        int i14 = f12.f32424y;
        int i15 = this.f102726g;
        rectF.top = i14 - (i15 / 2);
        rectF.bottom = i14 + (i15 / 2);
        canvas.drawRoundRect(rectF, 2.0f, 2.0f, this.f102731l);
    }

    public final void e(Canvas canvas) {
        Rect rect = this.f102715C;
        if (this.f102733n == null) {
            int i10 = rect.left;
            this.f102733n = new LinearGradient(i10, rect.top, i10, rect.bottom, -1, -16777216, Shader.TileMode.CLAMP);
        }
        b bVar = this.f102736q;
        if (bVar == null || bVar.f102748c != this.f102739t) {
            if (bVar == null) {
                this.f102736q = new b();
            }
            if (this.f102736q.f102747b == null) {
                if (rect.width() <= 0 || rect.height() <= 0) {
                    return;
                } else {
                    this.f102736q.f102747b = Bitmap.createBitmap(rect.width(), rect.height(), Bitmap.Config.ARGB_8888);
                }
            }
            b bVar2 = this.f102736q;
            if (bVar2.f102746a == null) {
                bVar2.f102746a = new Canvas(this.f102736q.f102747b);
            }
            int HSVToColor = Color.HSVToColor(new float[]{this.f102739t, 1.0f, 1.0f});
            float f10 = rect.left;
            int i11 = rect.top;
            this.f102734o = new LinearGradient(f10, i11, rect.right, i11, -1, HSVToColor, Shader.TileMode.CLAMP);
            this.f102727h.setShader(new ComposeShader(this.f102733n, this.f102734o, PorterDuff.Mode.MULTIPLY));
            this.f102736q.f102746a.drawRect(0.0f, 0.0f, r1.f102747b.getWidth(), this.f102736q.f102747b.getHeight(), this.f102727h);
            this.f102736q.f102748c = this.f102739t;
        }
        canvas.drawBitmap(this.f102736q.f102747b, (Rect) null, rect, (Paint) null);
        Point m10 = m(this.f102740u, this.f102741v);
        this.f102728i.setColor(-16777216);
        canvas.drawCircle(m10.f32423x, m10.f32424y, this.f102724e - cn.c.a(getContext(), 1.0f), this.f102728i);
        this.f102728i.setColor(-2236963);
        canvas.drawCircle(m10.f32423x, m10.f32424y, this.f102724e, this.f102728i);
    }

    public final Point f(float hue) {
        Rect rect = this.f102716D;
        float height = rect.height();
        Point point = new Point();
        point.f32424y = (int) ((height - ((hue * height) / 360.0f)) + rect.top);
        point.f32423x = rect.left;
        return point;
    }

    public final void g(Context context, AttributeSet attrs) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, b.s.f115787E8);
        this.f102742w = obtainStyledAttributes.getBoolean(1, false);
        this.f102743x = obtainStyledAttributes.getString(0);
        this.f102744y = obtainStyledAttributes.getColor(3, f102705J);
        this.f102745z = obtainStyledAttributes.getColor(2, f102704I);
        obtainStyledAttributes.recycle();
        b(context);
        this.f102721b = cn.c.a(getContext(), 16.0f);
        this.f102722c = cn.c.a(getContext(), 16.0f);
        this.f102723d = cn.c.a(getContext(), 6.0f);
        this.f102724e = cn.c.a(getContext(), 5.0f);
        this.f102726g = cn.c.a(getContext(), 4.0f);
        this.f102725f = cn.c.a(getContext(), 2.0f);
        this.f102713A = getResources().getDimensionPixelSize(com.itsmagic.engine2.R.dimen.cpv_required_padding);
        h();
        setFocusable(true);
        setFocusableInTouchMode(true);
    }

    public String getAlphaSliderText() {
        return this.f102743x;
    }

    public int getBorderColor() {
        return this.f102745z;
    }

    public int getColor() {
        return Color.HSVToColor(this.f102738s, new float[]{this.f102739t, this.f102740u, this.f102741v});
    }

    @Override
    public int getPaddingBottom() {
        return Math.max(super.getPaddingBottom(), this.f102713A);
    }

    @Override
    public int getPaddingLeft() {
        return Math.max(super.getPaddingLeft(), this.f102713A);
    }

    @Override
    public int getPaddingRight() {
        return Math.max(super.getPaddingRight(), this.f102713A);
    }

    @Override
    public int getPaddingTop() {
        return Math.max(super.getPaddingTop(), this.f102713A);
    }

    public int getSliderTrackerColor() {
        return this.f102744y;
    }

    public final void h() {
        this.f102727h = new Paint();
        this.f102728i = new Paint();
        this.f102731l = new Paint();
        this.f102729j = new Paint();
        this.f102730k = new Paint();
        this.f102732m = new Paint();
        Paint paint = this.f102728i;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        this.f102728i.setStrokeWidth(cn.c.a(getContext(), 2.0f));
        this.f102728i.setAntiAlias(true);
        this.f102731l.setColor(this.f102744y);
        this.f102731l.setStyle(style);
        this.f102731l.setStrokeWidth(cn.c.a(getContext(), 2.0f));
        this.f102731l.setAntiAlias(true);
        this.f102730k.setColor(-14935012);
        this.f102730k.setTextSize(cn.c.a(getContext(), 14.0f));
        this.f102730k.setAntiAlias(true);
        this.f102730k.setTextAlign(Paint.Align.CENTER);
        this.f102730k.setFakeBoldText(true);
    }

    public final boolean i(MotionEvent event) {
        Point point = this.f102718F;
        if (point == null) {
            return false;
        }
        int i10 = point.f32423x;
        int i11 = point.f32424y;
        if (this.f102716D.contains(i10, i11)) {
            this.f102739t = k(event.getY());
        } else if (this.f102715C.contains(i10, i11)) {
            float[] l10 = l(event.getX(), event.getY());
            this.f102740u = l10[0];
            this.f102741v = l10[1];
        } else {
            Rect rect = this.f102717E;
            if (rect == null || !rect.contains(i10, i11)) {
                return false;
            }
            this.f102738s = j((int) event.getX());
        }
        return true;
    }

    public final int j(int x10) {
        Rect rect = this.f102717E;
        int width = rect.width();
        int i10 = rect.left;
        return 255 - (((x10 < i10 ? 0 : x10 > rect.right ? width : x10 - i10) * 255) / width);
    }

    public final float k(float y10) {
        Rect rect = this.f102716D;
        float height = rect.height();
        int i10 = rect.top;
        return 360.0f - (((y10 < ((float) i10) ? 0.0f : y10 > ((float) rect.bottom) ? height : y10 - i10) * 360.0f) / height);
    }

    public final float[] l(float x10, float y10) {
        Rect rect = this.f102715C;
        float width = rect.width();
        float height = rect.height();
        int i10 = rect.left;
        float f10 = x10 < ((float) i10) ? 0.0f : x10 > ((float) rect.right) ? width : x10 - i10;
        int i11 = rect.top;
        return new float[]{(1.0f / width) * f10, 1.0f - ((1.0f / height) * (y10 >= ((float) i11) ? y10 > ((float) rect.bottom) ? height : y10 - i11 : 0.0f))};
    }

    public final Point m(float sat, float val) {
        Rect rect = this.f102715C;
        float height = rect.height();
        float width = rect.width();
        Point point = new Point();
        point.f32423x = (int) ((sat * width) + rect.left);
        point.f32424y = (int) (((1.0f - val) * height) + rect.top);
        return point;
    }

    public void n(int color, boolean callback) {
        c cVar;
        int alpha = Color.alpha(color);
        float[] fArr = new float[3];
        Color.RGBToHSV(Color.red(color), Color.green(color), Color.blue(color), fArr);
        this.f102738s = alpha;
        float f10 = fArr[0];
        this.f102739t = f10;
        float f11 = fArr[1];
        this.f102740u = f11;
        float f12 = fArr[2];
        this.f102741v = f12;
        if (callback && (cVar = this.f102720H) != null) {
            cVar.a(Color.HSVToColor(alpha, new float[]{f10, f11, f12}));
        }
        invalidate();
    }

    public final void o() {
        if (this.f102742w) {
            Rect rect = this.f102714B;
            int i10 = rect.left;
            int i11 = rect.bottom;
            this.f102717E = new Rect(i10, i11 - this.f102722c, rect.right, i11);
            cn.a aVar = new cn.a(cn.c.a(getContext(), 4.0f));
            this.f102719G = aVar;
            aVar.setBounds(Math.round(this.f102717E.left), Math.round(this.f102717E.top), Math.round(this.f102717E.right), Math.round(this.f102717E.bottom));
        }
    }

    @Override
    public void onDraw(Canvas canvas) {
        if (this.f102714B.width() <= 0 || this.f102714B.height() <= 0) {
            return;
        }
        e(canvas);
        d(canvas);
        c(canvas);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0058, code lost:
    
        if (r0 != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0087, code lost:
    
        if (r1 > r6) goto L39;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int i10;
        int mode = View.MeasureSpec.getMode(widthMeasureSpec);
        int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
        int size = (View.MeasureSpec.getSize(widthMeasureSpec) - getPaddingLeft()) - getPaddingRight();
        int size2 = (View.MeasureSpec.getSize(heightMeasureSpec) - getPaddingBottom()) - getPaddingTop();
        if (mode != 1073741824 && mode2 != 1073741824) {
            int i11 = this.f102723d;
            int i12 = this.f102721b;
            i10 = size2 + i11 + i12;
            int i13 = (size - i11) - i12;
            if (this.f102742w) {
                int i14 = this.f102722c;
                i10 -= i11 + i14;
                i13 += i11 + i14;
            }
            boolean z10 = i10 <= size;
            boolean z11 = i13 <= size2;
            if (!z10 || !z11) {
                if (z11 || !z10) {
                    if (!z10) {
                    }
                }
                size = i10;
            }
            size2 = i13;
        } else if (mode == 1073741824 && mode2 != 1073741824) {
            int i15 = this.f102723d;
            int i16 = (size - i15) - this.f102721b;
            if (this.f102742w) {
                i16 += i15 + this.f102722c;
            }
            if (i16 <= size2) {
                size2 = i16;
            }
        } else if (mode2 == 1073741824 && mode != 1073741824) {
            int i17 = this.f102723d;
            i10 = size2 + i17 + this.f102721b;
            if (this.f102742w) {
                i10 -= i17 + this.f102722c;
            }
        }
        setMeasuredDimension(size + getPaddingLeft() + getPaddingRight(), size2 + getPaddingTop() + getPaddingBottom());
    }

    @Override
    public void onRestoreInstanceState(Parcelable state) {
        if (state instanceof Bundle) {
            Bundle bundle = (Bundle) state;
            this.f102738s = bundle.getInt("alpha");
            this.f102739t = bundle.getFloat("hue");
            this.f102740u = bundle.getFloat("sat");
            this.f102741v = bundle.getFloat("val");
            this.f102742w = bundle.getBoolean("show_alpha");
            this.f102743x = bundle.getString("alpha_text");
            state = bundle.getParcelable("instanceState");
        }
        super.onRestoreInstanceState(state);
    }

    @Override
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        bundle.putInt("alpha", this.f102738s);
        bundle.putFloat("hue", this.f102739t);
        bundle.putFloat("sat", this.f102740u);
        bundle.putFloat("val", this.f102741v);
        bundle.putBoolean("show_alpha", this.f102742w);
        bundle.putString("alpha_text", this.f102743x);
        return bundle;
    }

    @Override
    public void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged(w10, h10, oldw, oldh);
        Rect rect = new Rect();
        this.f102714B = rect;
        rect.left = getPaddingLeft();
        this.f102714B.right = w10 - getPaddingRight();
        this.f102714B.top = getPaddingTop();
        this.f102714B.bottom = h10 - getPaddingBottom();
        this.f102733n = null;
        this.f102734o = null;
        this.f102735p = null;
        this.f102736q = null;
        this.f102737r = null;
        q();
        p();
        o();
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        boolean i10;
        int action = event.getAction();
        if (action == 0) {
            this.f102718F = new Point((int) event.getX(), (int) event.getY());
            i10 = i(event);
        } else if (action != 1) {
            i10 = action != 2 ? false : i(event);
        } else {
            this.f102718F = null;
            i10 = i(event);
        }
        if (!i10) {
            return super.onTouchEvent(event);
        }
        c cVar = this.f102720H;
        if (cVar != null) {
            cVar.a(Color.HSVToColor(this.f102738s, new float[]{this.f102739t, this.f102740u, this.f102741v}));
        }
        invalidate();
        return true;
    }

    public final void p() {
        Rect rect = this.f102714B;
        int i10 = rect.right;
        this.f102716D = new Rect(i10 - this.f102721b, rect.top, i10, rect.bottom - (this.f102742w ? this.f102723d + this.f102722c : 0));
    }

    public final void q() {
        Rect rect = this.f102714B;
        int i10 = rect.left;
        int i11 = rect.top;
        int i12 = rect.bottom;
        int i13 = rect.right;
        int i14 = this.f102723d;
        int i15 = (i13 - i14) - this.f102721b;
        if (this.f102742w) {
            i12 -= this.f102722c + i14;
        }
        this.f102715C = new Rect(i10, i11, i15, i12);
    }

    public void setAlphaSliderText(int res) {
        setAlphaSliderText(getContext().getString(res));
    }

    public void setAlphaSliderVisible(boolean visible) {
        if (this.f102742w != visible) {
            this.f102742w = visible;
            this.f102733n = null;
            this.f102734o = null;
            this.f102735p = null;
            this.f102737r = null;
            this.f102736q = null;
            requestLayout();
        }
    }

    public void setBorderColor(int color) {
        this.f102745z = color;
        invalidate();
    }

    public void setColor(int color) {
        n(color, false);
    }

    public void setOnColorChangedListener(c listener) {
        this.f102720H = listener;
    }

    public void setSliderTrackerColor(int color) {
        this.f102744y = color;
        this.f102731l.setColor(color);
        invalidate();
    }

    public ColorPickerView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public ColorPickerView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f102738s = 255;
        this.f102739t = 360.0f;
        this.f102740u = 0.0f;
        this.f102741v = 0.0f;
        this.f102742w = false;
        this.f102743x = null;
        this.f102744y = f102705J;
        this.f102745z = f102704I;
        this.f102718F = null;
        g(context, attrs);
    }

    public void setAlphaSliderText(String text) {
        this.f102743x = text;
        invalidate();
    }
}
