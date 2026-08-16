package K9;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import t3.b;

public class a extends View {

    public int f11015b;

    public int f11016c;

    public SteppedArrayList<c> f11017d;

    public boolean f11018e;

    public boolean f11019f;

    public int f11020g;

    public int f11021h;

    public int f11022i;

    public Bitmap f11023j;

    public Paint f11024k;

    public Canvas f11025l;

    public float f11026m;

    public int f11027n;

    public int f11028o;

    public float f11029p;

    public int f11030q;

    public int f11031r;

    public int f11032s;

    public a(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f11015b = -16777216;
        this.f11016c = 6;
        this.f11018e = false;
        this.f11019f = false;
        this.f11020g = 0;
        this.f11021h = 0;
        this.f11022i = 0;
        this.f11027n = 0;
        this.f11028o = 50;
        this.f11029p = 1.0f;
        this.f11030q = 10;
        this.f11031r = 10;
        this.f11032s = 20;
        this.f11017d = new SteppedArrayList<>();
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attrs, b.s.f116887x4, 0, 0);
        this.f11032s = obtainStyledAttributes.getInteger(1, 20);
        this.f11031r = obtainStyledAttributes.getInteger(0, 10);
    }

    private float getMaxY() {
        float b10 = this.f11017d.get(0).b();
        for (int i10 = 0; i10 < this.f11017d.size(); i10++) {
            if (this.f11017d.get(i10).b() > b10) {
                b10 = this.f11017d.get(i10).b();
            }
        }
        return b10;
    }

    public final void a() {
        this.f11024k.setStrokeWidth(this.f11016c);
        this.f11024k.setStrokeCap(Paint.Cap.ROUND);
        this.f11025l.drawLine(0.0f, 0.0f, 0.0f, -(this.f11021h - this.f11028o), this.f11024k);
        this.f11025l.drawLine(0.0f, 0.0f, this.f11022i - this.f11028o, 0.0f, this.f11024k);
    }

    public void b() {
        this.f11029p = this.f11026m / ((this.f11021h - this.f11028o) - this.f11030q);
        int i10 = 0;
        for (int i11 = 0; i11 < this.f11020g; i11++) {
            Log.d("TAG--", i11 + "");
            Log.d("TAG", i10 + "");
            Rect rect = new Rect(this.f11031r + i10, (int) (this.f11017d.get(i11).b() / this.f11029p), (this.f11027n + i10) - this.f11031r, 0);
            Paint paint = new Paint();
            paint.setColor(this.f11017d.get(i11).a());
            paint.setStyle(Paint.Style.FILL);
            this.f11025l.drawRect(rect, paint);
            i10 += this.f11027n;
        }
    }

    public void c() {
        this.f11025l.drawColor(-1);
        this.f11027n = Math.round((this.f11022i - this.f11028o) / this.f11020g);
        this.f11025l.scale(1.0f, -1.0f);
        b();
        this.f11025l.scale(1.0f, -1.0f);
        d();
        a();
    }

    public final void d() {
        this.f11024k.setTextSize(this.f11032s);
        int i10 = this.f11027n;
        for (int i11 = 0; i11 < this.f11020g; i11++) {
            this.f11024k.getTextBounds(this.f11017d.get(i11).c(), 0, this.f11017d.get(i11).c().length(), new Rect());
            this.f11025l.drawText(this.f11017d.get(i11).c(), (i10 - (r3.width() / 2)) - (this.f11027n / 2), this.f11024k.ascent() * (-2.0f), this.f11024k);
            i10 += this.f11027n;
        }
        float pow = (float) (e(this.f11026m) > 1 ? Math.pow(10.0d, r0 - 1) : Math.pow(10.0d, 0.0d));
        float f10 = pow / this.f11029p;
        while (f10 < this.f11021h) {
            this.f11024k.setStrokeWidth(this.f11016c / 2);
            this.f11024k.setColor(this.f11015b);
            float f11 = -f10;
            this.f11025l.drawLine(-5.0f, f11, 5.0f, f11, this.f11024k);
            String str = Math.round(this.f11029p * f10) + "";
            this.f11024k.getTextBounds(str, 0, str.length(), new Rect());
            this.f11025l.drawText(str, (-r4.width()) - 15, -((this.f11024k.ascent() / 2.0f) + f10), this.f11024k);
            f10 += pow / this.f11029p;
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
        return this.f11023j;
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f11021h == 0 && this.f11022i == 0) {
            this.f11022i = getMeasuredWidth();
            this.f11021h = getMeasuredHeight();
            Log.d("vH = ", this.f11021h + "");
            Log.d("vW = ", this.f11022i + "");
            if (-1 != getLayoutParams().width && -2 != getLayoutParams().width) {
                this.f11022i /= 2;
            }
            if (-1 != getLayoutParams().height && -2 != getLayoutParams().height) {
                this.f11021h /= 2;
            }
        }
        if (this.f11018e && !this.f11019f) {
            Paint paint = new Paint();
            this.f11024k = paint;
            paint.setAntiAlias(true);
            this.f11024k.setDither(true);
            this.f11024k.setColor(this.f11015b);
            this.f11023j = Bitmap.createBitmap(this.f11022i, this.f11021h, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(this.f11023j);
            this.f11025l = canvas2;
            canvas2.translate(0.0f, this.f11021h);
            String f10 = Float.toString(getMaxY());
            this.f11024k.setTextSize(this.f11032s);
            Rect rect = new Rect();
            this.f11024k.getTextBounds(f10, 0, f10.length(), rect);
            this.f11028o = rect.width() + 10;
            Log.d("TAG", this.f11028o + "");
            Canvas canvas3 = this.f11025l;
            int i10 = this.f11028o;
            canvas3.translate((float) i10, (float) (-i10));
            c();
            this.f11019f = true;
        }
        canvas.drawBitmap(this.f11023j, 0.0f, 0.0f, new Paint(4));
    }

    public void setLabelTextSize(int size) {
        this.f11032s = size;
    }

    public void setPoints(SteppedArrayList<c> pointList) {
        this.f11017d = pointList;
        this.f11018e = true;
        this.f11020g = pointList.size();
        this.f11026m = getMaxY();
        invalidate();
    }

    public void setSpace(int s10) {
        this.f11031r = s10;
    }

    public a(Context context, int vW, int vH) {
        super(context);
        this.f11015b = -16777216;
        this.f11016c = 6;
        this.f11018e = false;
        this.f11019f = false;
        this.f11020g = 0;
        this.f11021h = 0;
        this.f11022i = 0;
        this.f11027n = 0;
        this.f11028o = 50;
        this.f11029p = 1.0f;
        this.f11030q = 10;
        this.f11031r = 10;
        this.f11032s = 20;
        this.f11017d = new SteppedArrayList<>();
        this.f11021h = vH;
        this.f11022i = vW;
    }
}
