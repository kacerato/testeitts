package com.itsmagic.engine.Engines.Engine.Curve.graphkit;

import K9.d;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import t3.b;

public class EditGraphView extends View {

    public int f77912A;

    public int f77913B;

    public d f77914C;

    public boolean f77915D;

    public boolean f77916E;

    public int f77917F;

    public float f77918G;

    public float f77919H;

    public final List<PointF> f77920b;

    public final List<PointF> f77921c;

    public final Context f77922d;

    public float f77923e;

    public float f77924f;

    public int f77925g;

    public boolean f77926h;

    public final List<PointF> f77927i;

    public final List<PointF> f77928j;

    public final List<PointF> f77929k;

    public PointF f77930l;

    public Bitmap f77931m;

    public Canvas f77932n;

    public final Path f77933o;

    public final Paint f77934p;

    public final Paint f77935q;

    public final Paint f77936r;

    public final Paint f77937s;

    public final Paint f77938t;

    public int f77939u;

    public int f77940v;

    public int f77941w;

    public PointF f77942x;

    public PointF f77943y;

    public int f77944z;

    public class a implements Comparator<PointF> {
        public a() {
        }

        @Override
        public int compare(PointF o12, PointF o22) {
            return Float.compare(o12.f32425x, o22.f32425x);
        }
    }

    public EditGraphView(Context c10, AttributeSet attrs) {
        super(c10, attrs);
        this.f77925g = 0;
        this.f77926h = false;
        this.f77927i = new SteppedArrayList();
        this.f77939u = 12;
        this.f77940v = 20;
        this.f77941w = 20;
        this.f77944z = -1;
        this.f77912A = 50;
        this.f77913B = 100;
        this.f77915D = true;
        this.f77916E = false;
        this.f77917F = 200;
        this.f77922d = c10;
        this.f77933o = new Path();
        this.f77934p = new Paint(4);
        Paint paint = new Paint();
        this.f77935q = paint;
        paint.setAntiAlias(true);
        paint.setDither(true);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeJoin(Paint.Join.ROUND);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeWidth(this.f77939u);
        Paint paint2 = new Paint(4);
        this.f77936r = paint2;
        paint2.setStrokeWidth(this.f77939u + 4);
        paint2.setStyle(Paint.Style.FILL);
        Paint paint3 = new Paint();
        this.f77937s = paint3;
        paint3.setDither(true);
        paint3.setAntiAlias(true);
        paint3.setColor(-3355444);
        paint3.setStrokeWidth(5.0f);
        Paint paint4 = new Paint();
        this.f77938t = paint4;
        paint4.setDither(true);
        paint4.setAntiAlias(true);
        paint4.setColor(-16777216);
        paint4.setStrokeWidth(5.0f);
        this.f77928j = new SteppedArrayList();
        this.f77929k = new SteppedArrayList();
        this.f77920b = new SteppedArrayList();
        this.f77921c = new SteppedArrayList();
        TypedArray obtainStyledAttributes = c10.getTheme().obtainStyledAttributes(attrs, b.s.f116852vj, 0, 0);
        int i10 = (int) obtainStyledAttributes.getFloat(1, 12.0f);
        this.f77939u = i10;
        setLineThickness(i10);
        int integer = obtainStyledAttributes.getInteger(2, 20);
        this.f77941w = integer;
        setTouchTolerance(integer);
    }

    public void a(float x10, float y10) {
        this.f77927i.add(new PointF(x10, y10));
    }

    public void b(PointF pointF) {
        this.f77927i.add(pointF);
    }

    public final void c() {
        PathMeasure pathMeasure = new PathMeasure(this.f77933o, false);
        float[] fArr = new float[2];
        float[] fArr2 = new float[2];
        this.f77920b.clear();
        this.f77921c.clear();
        int i10 = 0;
        while (true) {
            float f10 = i10;
            if (f10 > pathMeasure.getLength()) {
                return;
            }
            pathMeasure.getPosTan(f10, fArr, fArr2);
            this.f77920b.add(new PointF(fArr[0], fArr[1]));
            float f11 = fArr[0];
            float f12 = this.f77923e;
            int i11 = this.f77912A;
            this.f77921c.add(new PointF(f11 / (f12 - (i11 * 2.0f)), 1.0f - (fArr[1] / (this.f77924f - (i11 * 2.0f)))));
            i10++;
        }
    }

    public void d() {
        this.f77927i.clear();
    }

    public final void e() {
        this.f77932n.drawColor(this.f77944z);
        this.f77932n.drawLine(0.0f, 0.0f, 0.0f, this.f77924f - (this.f77912A * 2.0f), this.f77938t);
        Canvas canvas = this.f77932n;
        float f10 = this.f77924f;
        int i10 = this.f77912A;
        canvas.drawLine(0.0f, f10 - (i10 * 2.0f), this.f77923e, f10 - (i10 * 2.0f), this.f77938t);
        int i11 = 0;
        while (true) {
            float f11 = this.f77923e;
            int i12 = this.f77912A;
            if (i11 >= ((int) (f11 - (i12 * 2.0f))) / this.f77913B) {
                break;
            }
            i11++;
            this.f77932n.drawLine(r4 * i11, 0.0f, r4 * i11, this.f77924f - (i12 * 2.0f), this.f77937s);
        }
        int i13 = 0;
        while (true) {
            float f12 = this.f77924f;
            int i14 = this.f77912A;
            if (i13 >= ((int) (f12 - (i14 * 2.0f))) / this.f77913B) {
                break;
            }
            i13++;
            this.f77932n.drawLine(0.0f, (f12 - (i14 * 2.0f)) - (r5 * i13), this.f77923e, (f12 - (i14 * 2.0f)) - (r5 * i13), this.f77937s);
        }
        this.f77932n.drawPath(this.f77933o, this.f77935q);
        for (int i15 = 0; i15 < this.f77927i.size(); i15++) {
            PointF pointF = this.f77927i.get(i15);
            this.f77932n.drawCircle(pointF.f32425x, (this.f77924f - pointF.f32426y) - (this.f77912A * 2.0f), this.f77940v, this.f77936r);
        }
    }

    public float f(float x10) {
        int size;
        int i10;
        try {
            size = this.f77921c.size();
            if (size <= 0) {
                try {
                    throw new Exception("no points yet!");
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            if (x10 < 0.0f || x10 > 1.0f) {
                try {
                    throw new Exception("x-value needs to be between 0 and 1");
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
            i10 = size - 1;
        } catch (Exception e12) {
            e12.printStackTrace();
        }
        if (x10 > this.f77921c.get(i10).f32425x) {
            int i11 = size - 2;
            float f10 = (this.f77921c.get(i10).f32426y - this.f77921c.get(i11).f32426y) / (this.f77921c.get(i10).f32425x - this.f77921c.get(i11).f32425x);
            return (f10 * x10) + (this.f77921c.get(i10).f32426y - (this.f77921c.get(i10).f32425x * f10));
        }
        if (x10 < this.f77921c.get(0).f32425x) {
            float f11 = (this.f77921c.get(0).f32426y - this.f77921c.get(1).f32426y) / (this.f77921c.get(0).f32425x - this.f77921c.get(1).f32425x);
            return (f11 * x10) + (this.f77921c.get(0).f32426y - (this.f77921c.get(0).f32425x * f11));
        }
        for (int i12 = 0; i12 < this.f77921c.size() - 1; i12++) {
            if (!Float.isInfinite(this.f77921c.get(i12).f32425x) && x10 > this.f77921c.get(i12).f32425x) {
                int i13 = i12 + 1;
                if (x10 < this.f77921c.get(i13).f32425x) {
                    return (this.f77921c.get(i12).f32426y + this.f77921c.get(i13).f32426y) / 2.0f;
                }
            }
        }
        return 0.0f;
    }

    public final boolean g(float startX, float endX, float startY, float endY) {
        float abs = Math.abs(startX - endX);
        float abs2 = Math.abs(startY - endY);
        int i10 = this.f77917F;
        return abs <= ((float) i10) && abs2 <= ((float) i10);
    }

    public List<PointF> getEditPoints() {
        return this.f77927i;
    }

    public List<PointF> getNormalizedPoints() {
        return this.f77921c;
    }

    public final boolean h(float x10, float y10) {
        for (int i10 = 0; i10 < this.f77920b.size(); i10++) {
            if (x10 > this.f77920b.get(i10).f32425x - this.f77941w && x10 < this.f77920b.get(i10).f32425x + this.f77941w && y10 > this.f77920b.get(i10).f32426y - this.f77941w && y10 < this.f77920b.get(i10).f32426y + this.f77941w) {
                return true;
            }
        }
        return false;
    }

    public PointF i(int idx) {
        return this.f77927i.get(idx);
    }

    public int j() {
        return this.f77927i.size();
    }

    public void k() {
        r();
        this.f77928j.clear();
        this.f77929k.clear();
        K9.b.a(this.f77927i, this.f77928j, this.f77929k);
        this.f77933o.reset();
        int i10 = 0;
        this.f77933o.moveTo(this.f77927i.get(0).f32425x, (this.f77924f - this.f77927i.get(0).f32426y) - (this.f77912A * 2.0f));
        while (i10 < this.f77928j.size()) {
            int i11 = i10 + 1;
            if (this.f77927i.size() > i11) {
                this.f77933o.cubicTo(this.f77928j.get(i10).f32425x, (this.f77924f - this.f77928j.get(i10).f32426y) - (this.f77912A * 2.0f), this.f77929k.get(i10).f32425x, (this.f77924f - this.f77929k.get(i10).f32426y) - (this.f77912A * 2.0f), this.f77927i.get(i11).f32425x, (this.f77924f - this.f77927i.get(i11).f32426y) - (this.f77912A * 2.0f));
            }
            i10 = i11;
        }
        e();
        this.f77926h = true;
    }

    public void l(PointF pointF) {
        this.f77927i.remove(pointF);
    }

    public void m() {
        if (this.f77927i.size() <= 4) {
            throw new MinimalRequiredException();
        }
        PointF pointF = this.f77930l;
        if (pointF == null) {
            throw new NoPointSelected();
        }
        this.f77927i.remove(pointF);
        r();
        this.f77928j.clear();
        this.f77929k.clear();
        K9.b.a(this.f77927i, this.f77928j, this.f77929k);
        this.f77933o.reset();
        int i10 = 0;
        this.f77933o.moveTo(this.f77927i.get(0).f32425x, (this.f77924f - this.f77927i.get(0).f32426y) - (this.f77912A * 2.0f));
        while (i10 < this.f77928j.size()) {
            int i11 = i10 + 1;
            if (this.f77927i.size() > i11) {
                this.f77933o.cubicTo(this.f77928j.get(i10).f32425x, (this.f77924f - this.f77928j.get(i10).f32426y) - (this.f77912A * 2.0f), this.f77929k.get(i10).f32425x, (this.f77924f - this.f77929k.get(i10).f32426y) - (this.f77912A * 2.0f), this.f77927i.get(i11).f32425x, (this.f77924f - this.f77927i.get(i11).f32426y) - (this.f77912A * 2.0f));
            }
            i10 = i11;
        }
        e();
        this.f77926h = true;
        Log.d("edit_pt: ", this.f77930l.toString());
        this.f77930l = null;
        d dVar = this.f77914C;
        if (dVar != null) {
            dVar.a();
        }
    }

    public void n() {
        e();
    }

    public void o() {
        this.f77924f = 0.0f;
        this.f77923e = 0.0f;
        this.f77925g = 0;
        invalidate();
        Log.d("TAG", "reset called");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0089 A[Catch: Exception -> 0x0020, TryCatch #0 {Exception -> 0x0020, blocks: (B:8:0x0010, B:10:0x0018, B:13:0x0075, B:15:0x0089, B:16:0x00ba, B:18:0x00c2, B:20:0x00cc, B:25:0x012a, B:29:0x0023, B:31:0x002c, B:32:0x0032, B:34:0x0056, B:35:0x006a, B:37:0x006e), top: B:7:0x0010 }] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onDraw(Canvas canvas) {
        float f10;
        int i10;
        int measuredHeight = getMeasuredHeight();
        int measuredWidth = getMeasuredWidth();
        if (measuredHeight <= 0 && measuredWidth <= 0) {
            super.onDraw(canvas);
            return;
        }
        try {
            f10 = measuredWidth;
            i10 = 0;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (this.f77923e == f10) {
            if (this.f77924f != measuredHeight) {
            }
            this.f77935q.setStrokeWidth(this.f77939u);
            canvas.drawBitmap(this.f77931m, 0.0f, 0.0f, this.f77934p);
            if (this.f77925g == 0) {
                this.f77933o.reset();
                this.f77933o.moveTo(this.f77927i.get(0).f32425x, (this.f77924f - this.f77927i.get(0).f32426y) - (this.f77912A * 2.0f));
                K9.b.a(this.f77927i, this.f77928j, this.f77929k);
                while (i10 < this.f77928j.size()) {
                    int i11 = i10 + 1;
                    if (this.f77927i.size() > i11) {
                        this.f77933o.cubicTo(this.f77928j.get(i10).f32425x, (this.f77924f - this.f77928j.get(i10).f32426y) - (this.f77912A * 2.0f), this.f77929k.get(i10).f32425x, (this.f77924f - this.f77929k.get(i10).f32426y) - (this.f77912A * 2.0f), this.f77927i.get(i11).f32425x, (this.f77924f - this.f77927i.get(i11).f32426y) - (this.f77912A * 2.0f));
                    }
                    i10 = i11;
                }
                e();
                this.f77925g = 1;
                c();
            }
            super.onDraw(canvas);
        }
        this.f77923e = f10;
        this.f77924f = measuredHeight;
        Bitmap bitmap = this.f77931m;
        if (bitmap != null) {
            bitmap.recycle();
            this.f77931m = null;
        }
        this.f77931m = Bitmap.createBitmap((int) this.f77923e, (int) this.f77924f, Bitmap.Config.ARGB_8888);
        Canvas canvas2 = new Canvas(this.f77931m);
        this.f77932n = canvas2;
        int i12 = this.f77912A;
        canvas2.translate(i12, i12);
        this.f77925g = 0;
        if (!this.f77916E) {
            this.f77928j.clear();
            this.f77929k.clear();
            this.f77920b.clear();
            this.f77921c.clear();
        }
        d dVar = this.f77914C;
        if (dVar != null) {
            dVar.c(this.f77923e, this.f77924f);
        }
        this.f77935q.setStrokeWidth(this.f77939u);
        canvas.drawBitmap(this.f77931m, 0.0f, 0.0f, this.f77934p);
        if (this.f77925g == 0) {
        }
        super.onDraw(canvas);
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        float x10 = event.getX();
        float y10 = event.getY();
        int i10 = this.f77912A;
        float f10 = x10 - i10;
        float f11 = y10 - i10;
        int action = event.getAction();
        if (action == 0) {
            if (this.f77914C != null) {
                this.f77918G = event.getX();
                this.f77919H = event.getY();
            }
            if (this.f77915D) {
                t(Nc.b.E(0.0f, f10, this.f77923e - (this.f77912A * 2.0f)), Nc.b.E(0.0f, f11, this.f77924f - (this.f77912A * 2.0f)));
                invalidate();
            }
        } else if (action == 1) {
            if (this.f77915D && this.f77930l != null) {
                u();
                invalidate();
                c();
                d dVar = this.f77914C;
                if (dVar != null) {
                    dVar.a();
                }
            }
            if (this.f77914C != null) {
                if (g(this.f77918G, event.getX(), this.f77919H, event.getY())) {
                    this.f77914C.b(this);
                }
            }
        } else if (action == 2 && this.f77915D && this.f77930l != null) {
            try {
                s(Nc.b.E(0.0f, f10, this.f77923e - (this.f77912A * 2.0f)), Nc.b.E(0.0f, f11, this.f77924f - (this.f77912A * 2.0f)));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            invalidate();
        }
        return true;
    }

    public float p() {
        return this.f77923e - (this.f77912A * 2.0f);
    }

    public float q() {
        return this.f77924f - (this.f77912A * 2.0f);
    }

    public final void r() {
        Collections.sort(this.f77927i, new a());
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void s(float xc2, float yc2) {
        int i10;
        if (this.f77930l != null) {
            if (this.f77926h) {
                r();
                this.f77928j.clear();
                this.f77929k.clear();
                K9.b.a(this.f77927i, this.f77928j, this.f77929k);
                this.f77933o.reset();
                PointF pointF = this.f77930l;
                float f10 = pointF.f32425x;
                if (f10 != 0.0f) {
                    float f11 = this.f77923e;
                    int i11 = this.f77912A;
                    if (f10 != ((int) (f11 - (i11 * 2.0f)))) {
                        pointF.f32425x = xc2;
                        pointF.f32426y = (this.f77924f - yc2) - (i11 * 2.0f);
                        i10 = 0;
                        this.f77933o.moveTo(this.f77927i.get(0).f32425x, (this.f77924f - this.f77927i.get(0).f32426y) - (this.f77912A * 2.0f));
                        while (i10 < this.f77928j.size()) {
                            int i12 = i10 + 1;
                            if (this.f77927i.size() > i12) {
                                this.f77933o.cubicTo(this.f77928j.get(i10).f32425x, (this.f77924f - this.f77928j.get(i10).f32426y) - (this.f77912A * 2.0f), this.f77929k.get(i10).f32425x, (this.f77924f - this.f77929k.get(i10).f32426y) - (this.f77912A * 2.0f), this.f77927i.get(i12).f32425x, (this.f77924f - this.f77927i.get(i12).f32426y) - (this.f77912A * 2.0f));
                            }
                            i10 = i12;
                        }
                    }
                }
                pointF.f32426y = (this.f77924f - yc2) - (this.f77912A * 2.0f);
                i10 = 0;
                this.f77933o.moveTo(this.f77927i.get(0).f32425x, (this.f77924f - this.f77927i.get(0).f32426y) - (this.f77912A * 2.0f));
                while (i10 < this.f77928j.size()) {
                }
            }
            e();
        }
    }

    public void setBackColor(int backgroundColor) {
        this.f77944z = backgroundColor;
    }

    public void setBorderColor(int color) {
        this.f77938t.setColor(color);
    }

    public void setDotColor(int color) {
        this.f77936r.setColor(color);
    }

    public void setDotThickness(int dotThickness) {
        this.f77940v = dotThickness;
    }

    public void setEditPoints(List<PointF> editPoints) {
        this.f77927i.clear();
        this.f77927i.addAll(editPoints);
    }

    public void setEditable(boolean editable) {
        this.f77915D = editable;
    }

    public void setGridColor(int color) {
        this.f77937s.setColor(color);
    }

    public void setGridSpacing(int gridSpacing) {
        this.f77913B = gridSpacing;
    }

    public void setInternalPadding(int internalPadding) {
        this.f77912A = internalPadding;
    }

    public void setLineColor(int color) {
        this.f77935q.setColor(color);
    }

    public void setLineThickness(int thickness) {
        this.f77939u = thickness;
    }

    public void setListener(d listener) {
        this.f77914C = listener;
    }

    public void setTouchTolerance(int t10) {
        this.f77941w = t10;
    }

    public final void t(float x10, float y10) {
        if (h(x10, y10)) {
            int i10 = 0;
            for (int i11 = 0; i11 < this.f77927i.size(); i11++) {
                PointF pointF = this.f77927i.get(i11);
                if (Math.sqrt(Math.pow(pointF.f32425x - x10, 2.0d) + Math.pow(pointF.f32426y - ((this.f77924f - y10) - (this.f77912A * 2.0f)), 2.0d)) <= this.f77941w) {
                    this.f77926h = true;
                    this.f77930l = pointF;
                    e();
                }
            }
            if (this.f77926h) {
                return;
            }
            PointF pointF2 = new PointF(x10, y10);
            this.f77930l = pointF2;
            this.f77927i.add(pointF2);
            r();
            this.f77928j.clear();
            this.f77929k.clear();
            K9.b.a(this.f77927i, this.f77928j, this.f77929k);
            this.f77933o.reset();
            this.f77933o.moveTo(this.f77927i.get(0).f32425x, (this.f77924f - this.f77927i.get(0).f32426y) - (this.f77912A * 2.0f));
            while (i10 < this.f77928j.size()) {
                int i12 = i10 + 1;
                if (this.f77927i.size() > i12) {
                    this.f77933o.cubicTo(this.f77928j.get(i10).f32425x, (this.f77924f - this.f77928j.get(i10).f32426y) - (this.f77912A * 2.0f), this.f77929k.get(i10).f32425x, (this.f77924f - this.f77929k.get(i10).f32426y) - (this.f77912A * 2.0f), this.f77927i.get(i12).f32425x, (this.f77924f - this.f77927i.get(i12).f32426y) - (this.f77912A * 2.0f));
                }
                i10 = i12;
            }
            e();
            this.f77926h = true;
            Log.d("edit_pt: ", this.f77930l.toString());
        }
    }

    public final void u() {
        if (this.f77926h) {
            c();
        }
        this.f77926h = false;
    }

    public void v() {
        if (this.f77927i.size() < 2) {
            throw new RuntimeException("Curve needs to have at least 2 points");
        }
        r();
        this.f77928j.clear();
        this.f77929k.clear();
        this.f77933o.reset();
        this.f77933o.moveTo(this.f77927i.get(0).f32425x, (this.f77924f - this.f77927i.get(0).f32426y) - (this.f77912A * 2.0f));
        K9.b.a(this.f77927i, this.f77928j, this.f77929k);
        int i10 = 0;
        while (i10 < this.f77928j.size()) {
            int i11 = i10 + 1;
            if (this.f77927i.size() > i11) {
                this.f77933o.cubicTo(this.f77928j.get(i10).f32425x, (this.f77924f - this.f77928j.get(i10).f32426y) - (this.f77912A * 2.0f), this.f77929k.get(i10).f32425x, (this.f77924f - this.f77929k.get(i10).f32426y) - (this.f77912A * 2.0f), this.f77927i.get(i11).f32425x, (this.f77924f - this.f77927i.get(i11).f32426y) - (this.f77912A * 2.0f));
            }
            i10 = i11;
        }
        c();
        this.f77925g = 0;
    }

    public EditGraphView(Context c10, float vgW, float vgH) {
        super(c10);
        this.f77925g = 0;
        this.f77926h = false;
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.f77927i = steppedArrayList;
        this.f77939u = 12;
        this.f77940v = 20;
        this.f77941w = 20;
        this.f77944z = -1;
        this.f77912A = 50;
        this.f77913B = 100;
        this.f77915D = true;
        this.f77916E = false;
        this.f77917F = 200;
        this.f77922d = c10;
        this.f77933o = new Path();
        this.f77934p = new Paint(4);
        Paint paint = new Paint();
        this.f77935q = paint;
        paint.setAntiAlias(true);
        paint.setDither(true);
        paint.setColor(-16777216);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeJoin(Paint.Join.ROUND);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeWidth(this.f77939u);
        Paint paint2 = new Paint(4);
        this.f77936r = paint2;
        paint2.setColor(-16777216);
        paint2.setStrokeWidth(this.f77939u + 4);
        paint2.setStyle(Paint.Style.FILL);
        this.f77923e = vgW;
        this.f77924f = vgH;
        this.f77942x = new PointF();
        PointF pointF = new PointF();
        this.f77943y = pointF;
        PointF pointF2 = this.f77942x;
        pointF2.f32425x = 0.0f;
        pointF2.f32426y = this.f77924f;
        float f10 = this.f77923e;
        int i10 = this.f77912A;
        pointF.f32425x = f10 - (i10 * 2.0f);
        pointF.f32426y = i10 * 2.0f;
        steppedArrayList.clear();
        steppedArrayList.add(this.f77942x);
        steppedArrayList.add(new PointF(this.f77923e / 3.0f, (this.f77924f * 2.0f) / 3.0f));
        steppedArrayList.add(new PointF((this.f77923e * 2.0f) / 3.0f, this.f77924f / 3.0f));
        steppedArrayList.add(this.f77943y);
        Paint paint3 = new Paint();
        this.f77937s = paint3;
        paint3.setDither(true);
        paint3.setAntiAlias(true);
        paint3.setColor(-3355444);
        paint3.setStrokeWidth(5.0f);
        Paint paint4 = new Paint();
        this.f77938t = paint4;
        paint4.setDither(true);
        paint4.setAntiAlias(true);
        paint4.setColor(-16777216);
        paint4.setStrokeWidth(5.0f);
        this.f77928j = new SteppedArrayList();
        this.f77929k = new SteppedArrayList();
        this.f77920b = new SteppedArrayList();
        this.f77921c = new SteppedArrayList();
        this.f77931m = Bitmap.createBitmap((int) this.f77923e, (int) this.f77924f, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(this.f77931m);
        this.f77932n = canvas;
        int i11 = this.f77912A;
        canvas.translate(i11, i11);
    }
}
