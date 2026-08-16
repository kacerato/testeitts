package g2;

import a2.C3567j;
import a2.C3572o;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class C13287b extends C3567j {

    @NonNull
    public final Paint f88032E;

    @NonNull
    public final RectF f88033F;

    public int f88034G;

    public C13287b() {
        this(null);
    }

    public boolean O0() {
        return !this.f88033F.isEmpty();
    }

    public final void P0(@NonNull Canvas canvas) {
        if (W0(getCallback())) {
            return;
        }
        canvas.restoreToCount(this.f88034G);
    }

    public final void Q0(@NonNull Canvas canvas) {
        Drawable.Callback callback = getCallback();
        if (!W0(callback)) {
            S0(canvas);
            return;
        }
        View view = (View) callback;
        if (view.getLayerType() != 2) {
            view.setLayerType(2, null);
        }
    }

    public void R0() {
        T0(0.0f, 0.0f, 0.0f, 0.0f);
    }

    public final void S0(@NonNull Canvas canvas) {
        this.f88034G = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null);
    }

    public void T0(float f10, float f11, float f12, float f13) {
        RectF rectF = this.f88033F;
        if (f10 == rectF.left && f11 == rectF.top && f12 == rectF.right && f13 == rectF.bottom) {
            return;
        }
        rectF.set(f10, f11, f12, f13);
        invalidateSelf();
    }

    public void U0(@NonNull RectF rectF) {
        T0(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    public final void V0() {
        this.f88032E.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f88032E.setColor(-1);
        this.f88032E.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    public final boolean W0(Drawable.Callback callback) {
        return callback instanceof View;
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        Q0(canvas);
        super.draw(canvas);
        canvas.drawRect(this.f88033F, this.f88032E);
        P0(canvas);
    }

    public C13287b(@Nullable C3572o c3572o) {
        super(c3572o == null ? new C3572o() : c3572o);
        this.f88032E = new Paint(1);
        V0();
        this.f88033F = new RectF();
    }
}
