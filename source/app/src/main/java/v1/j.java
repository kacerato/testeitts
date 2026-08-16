package V1;

import V1.c;
import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;

public abstract class j<S extends c> {

    public S f26526a;

    public i f26527b;

    public j(S s10) {
        this.f26526a = s10;
    }

    public abstract void a(@NonNull Canvas canvas, @FloatRange(from = 0.0d, to = 1.0d) float f10);

    public abstract void b(@NonNull Canvas canvas, @NonNull Paint paint, @FloatRange(from = 0.0d, to = 1.0d) float f10, @FloatRange(from = 0.0d, to = 1.0d) float f11, @ColorInt int i10);

    public abstract void c(@NonNull Canvas canvas, @NonNull Paint paint);

    public abstract int d();

    public abstract int e();

    public void f(@NonNull i iVar) {
        this.f26527b = iVar;
    }

    public void g(@NonNull Canvas canvas, @FloatRange(from = 0.0d, to = 1.0d) float f10) {
        this.f26526a.e();
        a(canvas, f10);
    }
}
