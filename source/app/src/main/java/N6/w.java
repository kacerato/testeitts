package N6;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;

public class w extends View {

    public final Paint f15764b;

    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.C f15765c;

    public boolean f15766d;

    public int f15767e;

    public p f15768f;

    public boolean f15769g;

    public float f15770h;

    public w(Context context) {
        super(context);
        this.f15764b = new Paint(1);
        this.f15765c = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        this.f15770h = 1.0f;
        c();
    }

    public void a(p nodeView, boolean input, int slotIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C type) {
        this.f15768f = nodeView;
        this.f15766d = input;
        this.f15767e = slotIndex;
        this.f15769g = false;
        setType(type);
    }

    public void b(p nodeView) {
        this.f15768f = nodeView;
        this.f15766d = true;
        this.f15767e = -1;
        this.f15769g = true;
        setType(com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.BRANCH);
    }

    public final void c() {
        this.f15764b.setStyle(Paint.Style.FILL);
        setClickable(true);
    }

    public boolean d() {
        return this.f15769g;
    }

    public boolean e() {
        return this.f15766d;
    }

    public void f() {
        this.f15764b.setColor(com.itsmagic.engine.Engines.Graphics.ShaderGraph.i.a(this.f15765c));
        invalidate();
    }

    public p getNodeView() {
        return this.f15768f;
    }

    public int getSlotIndex() {
        return this.f15767e;
    }

    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.C getType() {
        return this.f15765c;
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float k02 = Nc.b.k0(10.0f) * this.f15770h * 0.5f;
        float min = Math.min(getWidth(), getHeight()) * 0.5f;
        if (k02 > min) {
            k02 = min;
        }
        canvas.drawCircle(getWidth() * 0.5f, getHeight() * 0.5f, k02, this.f15764b);
    }

    public void setType(com.itsmagic.engine.Engines.Graphics.ShaderGraph.C type) {
        if (type == null) {
            type = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        }
        this.f15765c = type;
        this.f15764b.setColor(com.itsmagic.engine.Engines.Graphics.ShaderGraph.i.a(type));
        invalidate();
    }

    public void setVisualScale(float scale) {
        if (scale <= 0.0f) {
            scale = 1.0f;
        }
        if (this.f15770h != scale) {
            this.f15770h = scale;
            invalidate();
        }
    }

    public w(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f15764b = new Paint(1);
        this.f15765c = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        this.f15770h = 1.0f;
        c();
    }
}
