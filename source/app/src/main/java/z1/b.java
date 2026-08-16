package Z1;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class b {

    public static final int f30718i = 68;

    public static final int f30719j = 20;

    public static final int f30720k = 0;

    public static final int[] f30721l = new int[3];

    public static final float[] f30722m = {0.0f, 0.5f, 1.0f};

    public static final int[] f30723n = new int[4];

    public static final float[] f30724o = {0.0f, 0.0f, 0.5f, 1.0f};

    @NonNull
    public final Paint f30725a;

    @NonNull
    public final Paint f30726b;

    @NonNull
    public final Paint f30727c;

    public int f30728d;

    public int f30729e;

    public int f30730f;

    public final Path f30731g;

    public Paint f30732h;

    public b() {
        this(-16777216);
    }

    public void a(@NonNull Canvas canvas, @Nullable Matrix matrix, @NonNull RectF rectF, int i10, float f10, float f11) {
        boolean z10 = f11 < 0.0f;
        Path path = this.f30731g;
        if (z10) {
            int[] iArr = f30723n;
            iArr[0] = 0;
            iArr[1] = this.f30730f;
            iArr[2] = this.f30729e;
            iArr[3] = this.f30728d;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f10, f11);
            path.close();
            float f12 = -i10;
            rectF.inset(f12, f12);
            int[] iArr2 = f30723n;
            iArr2[0] = 0;
            iArr2[1] = this.f30728d;
            iArr2[2] = this.f30729e;
            iArr2[3] = this.f30730f;
        }
        float width = rectF.width() / 2.0f;
        if (width <= 0.0f) {
            return;
        }
        float f13 = 1.0f - (i10 / width);
        float[] fArr = f30724o;
        fArr[1] = f13;
        fArr[2] = ((1.0f - f13) / 2.0f) + f13;
        this.f30726b.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), width, f30723n, fArr, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.scale(1.0f, rectF.height() / rectF.width());
        if (!z10) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawPath(path, this.f30732h);
        }
        canvas.drawArc(rectF, f10, f11, true, this.f30726b);
        canvas.restore();
    }

    public void b(@NonNull Canvas canvas, @Nullable Matrix matrix, @NonNull RectF rectF, int i10) {
        rectF.bottom += i10;
        rectF.offset(0.0f, -i10);
        int[] iArr = f30721l;
        iArr[0] = this.f30730f;
        iArr[1] = this.f30729e;
        iArr[2] = this.f30728d;
        Paint paint = this.f30727c;
        float f10 = rectF.left;
        paint.setShader(new LinearGradient(f10, rectF.top, f10, rectF.bottom, iArr, f30722m, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.drawRect(rectF, this.f30727c);
        canvas.restore();
    }

    @NonNull
    public Paint c() {
        return this.f30725a;
    }

    public void d(int i10) {
        this.f30728d = ColorUtils.setAlphaComponent(i10, 68);
        this.f30729e = ColorUtils.setAlphaComponent(i10, 20);
        this.f30730f = ColorUtils.setAlphaComponent(i10, 0);
        this.f30725a.setColor(this.f30728d);
    }

    public b(int i10) {
        this.f30731g = new Path();
        this.f30732h = new Paint();
        this.f30725a = new Paint();
        d(i10);
        this.f30732h.setColor(0);
        Paint paint = new Paint(4);
        this.f30726b = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f30727c = new Paint(paint);
    }
}
