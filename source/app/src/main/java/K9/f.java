package K9;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.text.DecimalFormat;
import t3.b;

public class f extends View {

    public Paint f11067b;

    public Paint f11068c;

    public SteppedArrayList<c> f11069d;

    public SteppedArrayList<Float> f11070e;

    public float f11071f;

    public float f11072g;

    public float f11073h;

    public Bitmap f11074i;

    public Canvas f11075j;

    public int f11076k;

    public f(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f11071f = 0.0f;
        this.f11072g = 0.0f;
        this.f11076k = 40;
        this.f11076k = context.getTheme().obtainStyledAttributes(attrs, b.s.qx, 0, 0).getInteger(0, 40);
        this.f11069d = new SteppedArrayList<>();
        this.f11070e = new SteppedArrayList<>();
    }

    public final Bitmap a() {
        float f10 = this.f11072g;
        float f11 = this.f11071f;
        if (f10 >= f11 * 2.0f) {
            this.f11073h = f11;
        } else {
            this.f11073h = f10 / 2.0f;
        }
        Bitmap createBitmap = Bitmap.createBitmap((int) f11, ((int) f10) / 2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        this.f11075j.translate(this.f11073h / 25.0f, 0.0f);
        canvas.drawColor(-1);
        this.f11067b.setAntiAlias(true);
        this.f11067b.setStyle(Paint.Style.FILL);
        this.f11067b.setStrokeWidth(this.f11073h / 100.0f);
        this.f11067b.setTextSize(this.f11076k);
        for (int i10 = 0; i10 < this.f11069d.size(); i10++) {
            this.f11067b.setColor(this.f11069d.get(i10).a());
            float f12 = this.f11073h;
            float f13 = i10;
            canvas.drawCircle(f12 / 25.0f, (f12 / 10.0f) + ((f12 / 10.0f) * f13), f12 / 25.0f, this.f11067b);
            this.f11067b.setColor(-16777216);
            String str = this.f11069d.get(i10).c() + " : " + ((Object) this.f11070e.get(i10)) + " : " + this.f11069d.get(i10).b() + "% ";
            float f14 = this.f11073h;
            canvas.drawText(str, f14 / 10.0f, (f14 / 8.0f) + (f13 * (f14 / 10.0f)), this.f11067b);
        }
        return createBitmap;
    }

    public final Bitmap b() {
        float f10 = this.f11072g;
        float f11 = this.f11071f;
        if (f10 >= f11 * 2.0f) {
            this.f11073h = f11;
        } else {
            this.f11073h = f10 / 2.0f;
        }
        Bitmap createBitmap = Bitmap.createBitmap((int) f11, ((int) f10) / 2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawColor(-1);
        canvas.translate(canvas.getWidth() / 2, canvas.getHeight() / 2);
        RectF rectF = new RectF();
        float f12 = this.f11073h;
        rectF.set(((-28.0f) * f12) / 75.0f, (-f12) / 3.0f, (22.0f * f12) / 75.0f, f12 / 3.0f);
        float f13 = 0.0f;
        for (int i10 = 0; i10 < this.f11069d.size(); i10++) {
            this.f11067b.setColor(this.f11069d.get(i10).a());
            float b10 = (this.f11069d.get(i10).b() * 360.0f) / 100.0f;
            canvas.drawArc(rectF, f13, b10, true, this.f11067b);
            f13 += b10;
        }
        return createBitmap;
    }

    public Bitmap getBitmap() {
        return this.f11074i;
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f11071f == 0.0f && this.f11072g == 0.0f) {
            this.f11071f = getMeasuredWidth();
            this.f11072g = getMeasuredHeight();
            Log.d("TAG: width = ", "" + this.f11071f);
            Log.d("TAG: height = ", "" + this.f11072g);
            if (-1 != getLayoutParams().width && -2 != getLayoutParams().width) {
                this.f11071f /= 2.0f;
            }
            if (-1 != getLayoutParams().height && -2 != getLayoutParams().height) {
                this.f11072g /= 2.0f;
            }
        }
        Paint paint = new Paint();
        this.f11067b = paint;
        paint.setDither(true);
        this.f11067b.setAntiAlias(true);
        this.f11067b.setStyle(Paint.Style.FILL);
        this.f11067b.setStrokeWidth(10.0f);
        this.f11067b.setTextSize(60.0f);
        this.f11068c = new Paint(4);
        this.f11074i = Bitmap.createBitmap((int) this.f11071f, (int) this.f11072g, Bitmap.Config.ARGB_8888);
        Canvas canvas2 = new Canvas(this.f11074i);
        this.f11075j = canvas2;
        canvas2.drawColor(-1);
        Bitmap b10 = b();
        Bitmap a10 = a();
        this.f11075j.drawBitmap(b10, 0.0f, 0.0f, this.f11068c);
        this.f11075j.drawBitmap(a10, 0.0f, this.f11072g / 2.0f, this.f11068c);
        canvas.drawBitmap(this.f11074i, 0.0f, 0.0f, this.f11068c);
    }

    @Override
    public void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged((int) this.f11071f, (int) this.f11072g, oldw, oldh);
        invalidate();
    }

    public void setLabelTextSize(int LABEL_SIZE) {
        this.f11076k = LABEL_SIZE;
    }

    public void setPoints(SteppedArrayList<c> pointList) {
        float f10 = 0.0f;
        for (int i10 = 0; i10 < pointList.size(); i10++) {
            f10 += pointList.get(i10).b();
        }
        for (int i11 = 0; i11 < pointList.size(); i11++) {
            this.f11069d.add(new c(pointList.get(i11).c(), Float.valueOf(new DecimalFormat("#0.00").format((pointList.get(i11).b() / f10) * 100.0f)).floatValue(), pointList.get(i11).a()));
            this.f11070e.add(Float.valueOf(pointList.get(i11).b()));
        }
        invalidate();
    }

    public f(Context context, float width, float height) {
        super(context);
        this.f11076k = 40;
        this.f11071f = width;
        this.f11072g = height;
        this.f11069d = new SteppedArrayList<>();
    }
}
