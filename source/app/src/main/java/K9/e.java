package K9;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import t3.b;

public class e extends View {

    public int f11038A;

    public int f11039B;

    public int f11040C;

    public int f11041D;

    public boolean f11042b;

    public boolean f11043c;

    public Bitmap f11044d;

    public Paint f11045e;

    public Paint f11046f;

    public Canvas f11047g;

    public float f11048h;

    public boolean f11049i;

    public boolean f11050j;

    public SteppedArrayList<c> f11051k;

    public SteppedArrayList<c> f11052l;

    public float f11053m;

    public float f11054n;

    public float f11055o;

    public float f11056p;

    public float f11057q;

    public float f11058r;

    public float f11059s;

    public float f11060t;

    public float f11061u;

    public float f11062v;

    public float f11063w;

    public int f11064x;

    public int f11065y;

    public int f11066z;

    public e(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f11042b = false;
        this.f11043c = false;
        this.f11048h = 8.0f;
        this.f11049i = false;
        this.f11050j = false;
        this.f11053m = 0.0f;
        this.f11054n = 0.0f;
        this.f11057q = 0.0f;
        this.f11058r = 0.0f;
        this.f11059s = 0.0f;
        this.f11060t = 0.0f;
        this.f11061u = 0.0f;
        this.f11062v = 0.0f;
        this.f11065y = -3355444;
        this.f11066z = 50;
        this.f11038A = 50;
        this.f11039B = 50;
        this.f11040C = 20;
        this.f11041D = 50;
        this.f11064x = -16777216;
        this.f11055o = 0.0f;
        this.f11056p = 0.0f;
        Paint paint = new Paint();
        this.f11045e = paint;
        paint.setDither(true);
        this.f11045e.setAntiAlias(true);
        this.f11045e.setColor(-16777216);
        this.f11045e.setStrokeWidth(this.f11048h);
        this.f11045e.setStrokeJoin(Paint.Join.ROUND);
        this.f11045e.setStrokeCap(Paint.Cap.ROUND);
        this.f11045e.setTextSize(this.f11048h * 2.0f);
        this.f11046f = new Paint(4);
        this.f11051k = new SteppedArrayList<>();
        this.f11052l = new SteppedArrayList<>();
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attrs, b.s.Cq, 0, 0);
        this.f11049i = obtainStyledAttributes.getBoolean(5, false);
        this.f11050j = obtainStyledAttributes.getBoolean(6, false);
        this.f11064x = obtainStyledAttributes.getColor(0, -16777216);
        this.f11065y = obtainStyledAttributes.getColor(1, -3355444);
        Log.d("color", this.f11064x + "");
        this.f11048h = obtainStyledAttributes.getFloat(3, 8.0f);
        this.f11040C = obtainStyledAttributes.getInteger(2, 20);
        this.f11041D = obtainStyledAttributes.getInteger(4, 50);
    }

    private float getMaxX() {
        float f10 = this.f11051k.get(0).f11033a;
        for (int i10 = 0; i10 < this.f11051k.size(); i10++) {
            if (this.f11051k.get(i10).f11033a > f10) {
                f10 = this.f11051k.get(i10).f11033a;
            }
        }
        return f10;
    }

    private float getMaxY() {
        float f10 = this.f11051k.get(0).f11034b;
        for (int i10 = 0; i10 < this.f11051k.size(); i10++) {
            if (this.f11051k.get(i10).f11034b > f10) {
                f10 = this.f11051k.get(i10).f11034b;
            }
        }
        return f10;
    }

    public final void a() {
        this.f11045e.setStrokeWidth(this.f11048h / 2.0f);
        this.f11045e.setColor(-16777216);
        this.f11047g.drawLine(0.0f, 0.0f, 0.0f, -(this.f11056p - this.f11066z), this.f11045e);
        this.f11047g.drawLine(0.0f, 0.0f, this.f11055o - this.f11066z, 0.0f, this.f11045e);
    }

    public void b() {
        this.f11047g.drawColor(-1);
        a();
        d();
        this.f11047g.scale(1.0f, -1.0f);
        c();
        this.f11047g.scale(1.0f, -1.0f);
    }

    public final void c() {
        this.f11045e.setColor(this.f11064x);
        if (this.f11052l.size() > 1) {
            int i10 = 0;
            while (i10 < this.f11052l.size() - 1) {
                Canvas canvas = this.f11047g;
                float f10 = this.f11052l.get(i10).f11033a;
                float f11 = this.f11052l.get(i10).f11034b;
                i10++;
                canvas.drawLine(f10, f11, this.f11052l.get(i10).f11033a, this.f11052l.get(i10).f11034b, this.f11045e);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00c8 A[LOOP:0: B:20:0x00c0->B:22:0x00c8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0120 A[LOOP:1: B:28:0x0118->B:30:0x0120, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d() {
        int i10;
        double pow;
        float f10;
        float f11;
        int i11;
        float f12;
        int i12;
        this.f11045e.setTextSize(this.f11040C);
        float maxX = getMaxX();
        float maxY = getMaxY();
        int i13 = this.f11066z;
        int i14 = i13 - 10;
        this.f11039B = i14;
        this.f11038A = i14;
        float f13 = maxX / ((this.f11055o - i13) - i14);
        float f14 = maxY / ((this.f11056p - i13) - i14);
        int e10 = e(maxY);
        float pow2 = ((float) ((e10 <= 1 || ((double) maxY) > Math.pow(10.0d, (double) (e10 + (-1)))) ? e10 > 1 ? Math.pow(10.0d, e10 - 1) : Math.pow(10.0d, 0.0d) : Math.pow(10.0d, e10 - 2))) / f14;
        float f15 = this.f11056p;
        float f16 = f15 / pow2;
        int i15 = this.f11041D;
        float f17 = f16 > ((float) i15) ? ((f15 / pow2) * pow2) / i15 : pow2;
        int i16 = (e(maxX) > 1.0f ? 1 : (e(maxX) == 1.0f ? 0 : -1));
        if (i16 > 0) {
            i10 = i16;
            if (maxX <= Math.pow(10.0d, r11 - 1.0f)) {
                pow = Math.pow(10.0d, r11 - 2.0f);
                f10 = ((float) pow) / f13;
                float f18 = this.f11055o;
                f11 = f18 / f10;
                i11 = this.f11041D;
                if (f11 <= i11) {
                    f12 = ((f18 / f10) * f10) / i11;
                    f11 = i11;
                } else {
                    f12 = f10;
                }
                Math.min(pow2, f10);
                Math.min(f17, f12);
                float max = Math.max(f13, f14);
                for (i12 = 0; i12 < this.f11051k.size(); i12++) {
                    this.f11052l.add(new c(this.f11051k.get(i12).f11033a / f13, this.f11051k.get(i12).f11034b / f14));
                }
                String f19 = Float.toString(Math.round(max * this.f11055o));
                Rect rect = new Rect();
                this.f11045e.getTextBounds(f19, 0, f19.length(), rect);
                boolean z10 = (((float) rect.width()) * f11) + 5.0f <= this.f11055o;
                while (pow2 < this.f11056p) {
                    this.f11045e.setColor(this.f11065y);
                    this.f11045e.setStrokeWidth(this.f11048h / 2.0f);
                    float f20 = -pow2;
                    this.f11047g.drawLine(0.0f, f20, this.f11055o, f20, this.f11045e);
                    this.f11045e.setStrokeWidth(this.f11048h);
                    this.f11045e.setColor(-16777216);
                    this.f11047g.drawLine(-5.0f, f20, 5.0f, f20, this.f11045e);
                    String f21 = Float.toString(Math.round(f14 * pow2));
                    this.f11045e.getTextBounds(f21, 0, f21.length(), new Rect());
                    this.f11047g.drawText(f21, (-r8.width()) - 15, -((this.f11045e.ascent() / 2.0f) + pow2), this.f11045e);
                    pow2 += f17;
                }
                while (f10 < this.f11055o) {
                    this.f11045e.setTextSize(this.f11040C);
                    this.f11045e.setColor(this.f11065y);
                    this.f11045e.setStrokeWidth(this.f11048h / 2.0f);
                    float f22 = f10;
                    float f23 = f10;
                    this.f11047g.drawLine(f22, 0.0f, f23, -this.f11056p, this.f11045e);
                    this.f11045e.setStrokeWidth(this.f11048h);
                    this.f11045e.setColor(-16777216);
                    this.f11047g.drawLine(f22, -5.0f, f23, 5.0f, this.f11045e);
                    String f24 = Float.toString(Math.round(f13 * f10));
                    Rect rect2 = new Rect();
                    this.f11045e.getTextBounds(f24, 0, f24.length(), rect2);
                    if (z10) {
                        this.f11045e.setTextSize(this.f11040C - 10);
                        this.f11045e.getTextBounds(f24, 0, f24.length(), rect2);
                        this.f11047g.drawText(f24, f10 - (rect2.width() / 2), (this.f11045e.ascent() * (-2.0f)) + (this.f11045e.ascent() / 2.0f), this.f11045e);
                    } else {
                        this.f11045e.setTextSize(this.f11040C);
                        this.f11047g.drawText(f24, f10 - (rect2.width() / 2), (this.f11045e.ascent() * (-2.0f)) + (this.f11045e.ascent() / 2.0f), this.f11045e);
                    }
                    f10 += f12;
                }
            }
        } else {
            i10 = i16;
        }
        pow = i10 > 0 ? Math.pow(10.0d, r11 - 1.0f) : Math.pow(10.0d, 0.0d);
        f10 = ((float) pow) / f13;
        float f182 = this.f11055o;
        f11 = f182 / f10;
        i11 = this.f11041D;
        if (f11 <= i11) {
        }
        Math.min(pow2, f10);
        Math.min(f17, f12);
        float max2 = Math.max(f13, f14);
        while (i12 < this.f11051k.size()) {
        }
        String f192 = Float.toString(Math.round(max2 * this.f11055o));
        Rect rect3 = new Rect();
        this.f11045e.getTextBounds(f192, 0, f192.length(), rect3);
        if ((((float) rect3.width()) * f11) + 5.0f <= this.f11055o) {
        }
        while (pow2 < this.f11056p) {
        }
        while (f10 < this.f11055o) {
        }
    }

    public final int e(float n10) {
        int i10 = (int) n10;
        int i11 = 0;
        while (i10 != 0) {
            i10 /= 10;
            i11++;
        }
        return i11;
    }

    public Bitmap getBitmap() {
        return this.f11044d;
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f11054n == 0.0f && this.f11053m == 0.0f) {
            this.f11053m = getMeasuredWidth();
            this.f11054n = getMeasuredHeight();
            if (-1 != getLayoutParams().width && -2 != getLayoutParams().width) {
                this.f11053m /= 2.0f;
            }
            if (-1 != getLayoutParams().height && -2 != getLayoutParams().height) {
                this.f11054n /= 2.0f;
            }
            setScrollableX(this.f11049i);
            setScrollableY(this.f11050j);
            if (!this.f11049i) {
                this.f11055o = this.f11053m;
            }
            if (!this.f11050j) {
                this.f11056p = this.f11054n;
            }
            Log.d("vH = ", this.f11054n + "");
            Log.d("vW = ", this.f11053m + "");
        }
        if (this.f11042b && !this.f11043c) {
            this.f11044d = Bitmap.createBitmap((int) this.f11055o, (int) this.f11056p, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(this.f11044d);
            this.f11047g = canvas2;
            canvas2.translate(0.0f, this.f11056p);
            String f10 = Float.toString(getMaxY());
            this.f11045e.setTextSize(this.f11040C);
            Rect rect = new Rect();
            this.f11045e.getTextBounds(f10, 0, f10.length(), rect);
            this.f11066z = rect.width() + 20;
            Log.d("TAG", this.f11066z + "");
            Canvas canvas3 = this.f11047g;
            int i10 = this.f11066z;
            canvas3.translate((float) i10, (float) (-i10));
            b();
            this.f11062v = this.f11054n - this.f11056p;
            this.f11043c = true;
        }
        canvas.drawBitmap(Bitmap.createBitmap(this.f11044d, -((int) this.f11057q), -((int) this.f11062v), (int) this.f11053m, (int) this.f11054n), 0.0f, 0.0f, this.f11046f);
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        float x10 = event.getX();
        float y10 = event.getY();
        getLocationInWindow(new int[2]);
        boolean z10 = false;
        if (x10 < r3[0] + this.f11053m && y10 < r3[1] + this.f11054n) {
            z10 = true;
        }
        if (this.f11049i && z10) {
            float f10 = x10 - this.f11066z;
            int action = event.getAction();
            if (action == 0) {
                this.f11058r = f10;
                this.f11059s = this.f11057q;
            } else if (action == 2) {
                float f11 = this.f11058r - f10;
                this.f11063w = f11;
                float f12 = this.f11059s - f11;
                this.f11057q = f12;
                if (f12 > 0.0f) {
                    this.f11057q = 0.0f;
                }
                float f13 = this.f11057q;
                float f14 = this.f11055o;
                float f15 = this.f11053m;
                if (f13 < (-(f14 - f15))) {
                    this.f11057q = -(f14 - f15);
                }
            }
        }
        if (this.f11050j && z10) {
            float f16 = y10 - this.f11066z;
            int action2 = event.getAction();
            if (action2 == 0) {
                this.f11060t = f16;
                this.f11061u = this.f11062v;
            } else if (action2 == 2) {
                float f17 = this.f11060t - f16;
                this.f11063w = f17;
                float f18 = this.f11061u - f17;
                this.f11062v = f18;
                if (f18 > 0.0f) {
                    this.f11062v = 0.0f;
                }
                float f19 = this.f11062v;
                float f20 = this.f11056p;
                float f21 = this.f11054n;
                if (f19 < (-(f20 - f21))) {
                    this.f11062v = -(f20 - f21);
                }
            }
        }
        invalidate();
        return true;
    }

    public void setGraphColor(int color) {
        this.f11064x = color;
    }

    public void setGridColor(int c10) {
        this.f11065y = c10;
        invalidate();
    }

    public void setLabelTextSize(int size) {
        this.f11040C = size;
    }

    public void setMaxDivisions(int d10) {
        this.f11041D = d10;
    }

    public void setPoints(SteppedArrayList<c> pointList) {
        this.f11042b = true;
        this.f11051k = pointList;
    }

    public void setScrollableX(boolean scrollable) {
        this.f11049i = scrollable;
        if (scrollable) {
            float maxX = getMaxX();
            if (e(maxX) <= 1) {
                this.f11049i = !this.f11049i;
            } else {
                this.f11055o = Float.parseFloat(Float.toString(maxX).substring(0, 2)) * 100.0f;
            }
        }
    }

    public void setScrollableY(boolean scrollable) {
        this.f11050j = scrollable;
        if (scrollable) {
            float maxY = getMaxY();
            if (e(maxY) <= 1) {
                this.f11050j = !this.f11050j;
            } else {
                this.f11056p = Float.parseFloat(Float.toString(maxY).substring(0, 2)) * 100.0f;
            }
        }
    }

    public e(Context context, float vW, float vH) {
        super(context);
        this.f11042b = false;
        this.f11043c = false;
        this.f11048h = 8.0f;
        this.f11049i = false;
        this.f11050j = false;
        this.f11057q = 0.0f;
        this.f11058r = 0.0f;
        this.f11059s = 0.0f;
        this.f11060t = 0.0f;
        this.f11061u = 0.0f;
        this.f11062v = 0.0f;
        this.f11065y = -3355444;
        this.f11066z = 50;
        this.f11038A = 50;
        this.f11039B = 50;
        this.f11040C = 20;
        this.f11041D = 50;
        this.f11064x = -16777216;
        this.f11054n = vH;
        this.f11053m = vW;
        this.f11055o = vW;
        this.f11056p = vH;
        Paint paint = new Paint();
        this.f11045e = paint;
        paint.setDither(true);
        this.f11045e.setAntiAlias(true);
        this.f11045e.setColor(-16777216);
        this.f11045e.setStrokeWidth(this.f11048h);
        this.f11045e.setStrokeJoin(Paint.Join.ROUND);
        this.f11045e.setStrokeCap(Paint.Cap.ROUND);
        this.f11045e.setTextSize(this.f11048h * 2.0f);
        this.f11046f = new Paint(4);
        this.f11051k = new SteppedArrayList<>();
        this.f11052l = new SteppedArrayList<>();
    }
}
