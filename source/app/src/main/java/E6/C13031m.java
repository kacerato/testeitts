package e6;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeBranchConnection;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNodeConnection;
import ga.C13309e;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class C13031m extends View {

    public final Paint f85338b;

    public final Path f85339c;

    public CornerPathEffect f85340d;

    public float f85341e;

    public float f85342f;

    public NoCodeData f85343g;

    public Map<String, E> f85344h;

    public K f85345i;

    public float f85346j;

    public float f85347k;

    public boolean f85348l;

    public C13031m(Context context) {
        super(context);
        this.f85338b = new Paint(1);
        this.f85339c = new Path();
        this.f85341e = 1.0f;
        this.f85342f = -1.0f;
        this.f85344h = new HashMap();
        d();
    }

    public void a() {
        this.f85345i = null;
        this.f85348l = false;
        invalidate();
    }

    public final void b(Canvas canvas, float sx, float sy, float tx, float ty) {
        float f10 = tx - sx;
        float abs = Math.abs(f10);
        float abs2 = Math.abs(ty - sy);
        float max = Math.max(1.0E-4f, this.f85341e);
        if (abs2 + abs < 6.0f * max) {
            canvas.drawLine(sx, sy, tx, ty, this.f85338b);
            return;
        }
        float k02 = Nc.b.k0(12.0f) * max;
        float E10 = Nc.b.E(k02, Nc.b.k0(24.0f) * max, Nc.b.k0(140.0f) * max);
        float k03 = Nc.b.k0(24.0f) * max;
        if (abs < (2.0f * E10) + k03) {
            E10 = Math.max(k02, (abs - k03) * 0.5f);
        }
        if (E10 <= 1.0f) {
            canvas.drawLine(sx, sy, tx, ty, this.f85338b);
            return;
        }
        float f11 = (f10 < 0.0f ? -1.0f : 1.0f) * E10;
        this.f85339c.reset();
        this.f85339c.moveTo(sx, sy);
        this.f85339c.lineTo(sx + f11, sy);
        this.f85339c.lineTo(tx - f11, ty);
        this.f85339c.lineTo(tx, ty);
        this.f85338b.setPathEffect(this.f85340d);
        canvas.drawPath(this.f85339c, this.f85338b);
        this.f85338b.setPathEffect(null);
    }

    public final PointF c(K socket) {
        if (socket == null) {
            return null;
        }
        socket.getLocationOnScreen(new int[2]);
        getLocationOnScreen(new int[2]);
        return new PointF((r1[0] - r0[0]) + (socket.getWidth() * 0.5f), (r1[1] - r0[1]) + (socket.getHeight() * 0.5f));
    }

    public final void d() {
        this.f85338b.setStyle(Paint.Style.STROKE);
        this.f85338b.setStrokeWidth(4.0f);
        this.f85338b.setStrokeCap(Paint.Cap.SQUARE);
        this.f85338b.setStrokeJoin(Paint.Join.MITER);
        this.f85338b.setColor(C13309e.b());
        h();
    }

    public void e() {
        this.f85338b.setColor(C13309e.b());
        invalidate();
    }

    public void f(NoCodeData graphData, Map<String, E> nodeViewMap) {
        this.f85343g = graphData;
        if (nodeViewMap == null) {
            nodeViewMap = new HashMap<>();
        }
        this.f85344h = nodeViewMap;
        invalidate();
    }

    public void g(K from, float x10, float y10) {
        this.f85345i = from;
        this.f85346j = x10;
        this.f85347k = y10;
        this.f85348l = from != null;
        invalidate();
    }

    public final void h() {
        float k02 = Nc.b.k0(10.0f) * Math.max(1.0E-4f, this.f85341e);
        if (Math.abs(k02 - this.f85342f) >= 0.01f || this.f85340d == null) {
            this.f85342f = k02;
            this.f85340d = new CornerPathEffect(this.f85342f);
        }
    }

    public void i() {
        if (this.f85348l) {
            invalidate();
        }
    }

    @Override
    public void onDraw(Canvas canvas) {
        K k10;
        PointF c10;
        super.onDraw(canvas);
        NoCodeData noCodeData = this.f85343g;
        if (noCodeData == null) {
            return;
        }
        List<NoCodeNodeConnection> list = noCodeData.connections;
        if (list != null) {
            for (NoCodeNodeConnection noCodeNodeConnection : list) {
                E e10 = this.f85344h.get(noCodeNodeConnection.fromNodeId);
                E e11 = this.f85344h.get(noCodeNodeConnection.toNodeId);
                if (e10 != null && e11 != null) {
                    K i02 = e10.i0(noCodeNodeConnection.fromSlot);
                    K h02 = e11.h0(noCodeNodeConnection.toSlot);
                    if (i02 != null && h02 != null) {
                        PointF c11 = c(i02);
                        PointF c12 = c(h02);
                        if (c11 != null && c12 != null) {
                            this.f85338b.setShader(new LinearGradient(c11.f32425x, c11.f32426y, c12.f32425x, c12.f32426y, C13309e.a(i02.getType()), C13309e.a(h02.getType()), Shader.TileMode.CLAMP));
                            b(canvas, c11.f32425x, c11.f32426y, c12.f32425x, c12.f32426y);
                            this.f85338b.setShader(null);
                        }
                    }
                }
            }
        }
        List<NoCodeBranchConnection> list2 = this.f85343g.branchConnections;
        if (list2 != null) {
            for (NoCodeBranchConnection noCodeBranchConnection : list2) {
                if (noCodeBranchConnection != null) {
                    E e12 = this.f85344h.get(noCodeBranchConnection.fromNodeId);
                    E e13 = this.f85344h.get(noCodeBranchConnection.toNodeId);
                    if (e12 != null && e13 != null) {
                        int i10 = noCodeBranchConnection.fromSlot;
                        K branchOutputSocket = i10 == -1 ? e12.getBranchOutputSocket() : e12.i0(i10);
                        int i11 = noCodeBranchConnection.toSlot;
                        K branchInputSocket = i11 == -1 ? e13.getBranchInputSocket() : e13.h0(i11);
                        if (branchOutputSocket != null && branchInputSocket != null) {
                            PointF c13 = c(branchOutputSocket);
                            PointF c14 = c(branchInputSocket);
                            if (c13 != null && c14 != null) {
                                this.f85338b.setShader(new LinearGradient(c13.f32425x, c13.f32426y, c14.f32425x, c14.f32426y, C13309e.a(branchOutputSocket.getType()), C13309e.a(branchInputSocket.getType()), Shader.TileMode.CLAMP));
                                b(canvas, c13.f32425x, c13.f32426y, c14.f32425x, c14.f32426y);
                                this.f85338b.setShader(null);
                            }
                        }
                    }
                }
            }
        }
        if (!this.f85348l || (k10 = this.f85345i) == null || (c10 = c(k10)) == null) {
            return;
        }
        this.f85338b.setColor(C13309e.a(this.f85345i.getType()));
        b(canvas, c10.f32425x, c10.f32426y, this.f85346j, this.f85347k);
    }

    public void setGraphScale(float graphScale) {
        float max = Math.max(1.0E-4f, graphScale);
        if (this.f85341e == max) {
            return;
        }
        this.f85341e = max;
        h();
        invalidate();
    }

    public C13031m(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f85338b = new Paint(1);
        this.f85339c = new Path();
        this.f85341e = 1.0f;
        this.f85342f = -1.0f;
        this.f85344h = new HashMap();
        d();
    }
}
