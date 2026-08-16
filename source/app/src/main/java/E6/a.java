package E6;

import android.graphics.Canvas;
import android.graphics.Point;
import android.view.View;

public class a extends View.DragShadowBuilder {

    public View f5695a;

    public Canvas f5696b;

    public int f5697c;

    public int f5698d;

    public a(View view) {
        super(view);
        this.f5695a = view;
    }

    public void a() {
        onDrawShadow(this.f5696b);
    }

    @Override
    public void onDrawShadow(Canvas canvas) {
        this.f5696b = canvas;
        this.f5695a.draw(canvas);
    }

    @Override
    public void onProvideShadowMetrics(Point outShadowSize, Point outShadowTouchPoint) {
        super.onProvideShadowMetrics(outShadowSize, outShadowTouchPoint);
        this.f5697c = this.f5695a.getWidth();
        this.f5698d = this.f5695a.getHeight();
    }
}
