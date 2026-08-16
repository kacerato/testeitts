package eightbitlab.com.blurview;

import Rd.b;
import Rd.d;
import Rd.f;
import Rd.g;
import Rd.p;
import Rd.q;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import eightbitlab.com.blurview.a;

public class BlurView extends FrameLayout {

    public static final String f85808d = "BlurView";

    public b f85809b;

    @ColorInt
    public int f85810c;

    public BlurView(Context context) {
        super(context);
        this.f85809b = new f();
        a(null, 0);
    }

    @NonNull
    @RequiresApi(api = 17)
    private Rd.a getBlurAlgorithm() {
        return Build.VERSION.SDK_INT >= 31 ? new p() : new q(getContext());
    }

    public final void a(AttributeSet attributeSet, int i10) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, a.b.f85812a, i10, 0);
        this.f85810c = obtainStyledAttributes.getColor(a.b.f85813b, 0);
        obtainStyledAttributes.recycle();
    }

    public d b(boolean z10) {
        return this.f85809b.e(z10);
    }

    public d c(boolean z10) {
        return this.f85809b.a(z10);
    }

    public d d(float f10) {
        return this.f85809b.c(f10);
    }

    @Override
    public void draw(Canvas canvas) {
        if (this.f85809b.draw(canvas)) {
            super.draw(canvas);
        }
    }

    public d e(@ColorInt int i10) {
        this.f85810c = i10;
        return this.f85809b.d(i10);
    }

    @RequiresApi(api = 17)
    public d f(@NonNull ViewGroup viewGroup) {
        return g(viewGroup, getBlurAlgorithm());
    }

    public d g(@NonNull ViewGroup viewGroup, Rd.a aVar) {
        this.f85809b.destroy();
        g gVar = new g(this, viewGroup, this.f85810c, aVar);
        this.f85809b = gVar;
        return gVar;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isHardwareAccelerated()) {
            this.f85809b.e(true);
        } else {
            Log.e(f85808d, "BlurView can't be used in not hardware-accelerated window!");
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f85809b.e(false);
    }

    @Override
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.f85809b.b();
    }

    public BlurView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f85809b = new f();
        a(attributeSet, 0);
    }

    public BlurView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f85809b = new f();
        a(attributeSet, i10);
    }
}
