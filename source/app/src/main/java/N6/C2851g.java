package N6;

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
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphBranchConnection;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNodeConnection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class C2851g extends View {

    public final Paint f15588b;

    public final Path f15589c;

    public CornerPathEffect f15590d;

    public float f15591e;

    public float f15592f;

    public ShaderGraphData f15593g;

    public Map<String, p> f15594h;

    public w f15595i;

    public float f15596j;

    public float f15597k;

    public boolean f15598l;

    public C2851g(Context context) {
        super(context);
        this.f15588b = new Paint(1);
        this.f15589c = new Path();
        this.f15591e = 1.0f;
        this.f15592f = -1.0f;
        this.f15594h = new HashMap();
        d();
    }

    public void a() {
        this.f15595i = null;
        this.f15598l = false;
        invalidate();
    }

    public final void b(Canvas canvas, float sx, float sy, float tx, float ty) {
        float f10 = tx - sx;
        float abs = Math.abs(f10);
        float abs2 = Math.abs(ty - sy);
        float max = Math.max(1.0E-4f, this.f15591e);
        if (abs2 + abs < 6.0f * max) {
            canvas.drawLine(sx, sy, tx, ty, this.f15588b);
            return;
        }
        float k02 = Nc.b.k0(12.0f) * max;
        float E10 = Nc.b.E(k02, Nc.b.k0(24.0f) * max, Nc.b.k0(140.0f) * max);
        float k03 = Nc.b.k0(24.0f) * max;
        if (abs < (2.0f * E10) + k03) {
            E10 = Math.max(k02, (abs - k03) * 0.5f);
        }
        if (E10 <= 1.0f) {
            canvas.drawLine(sx, sy, tx, ty, this.f15588b);
            return;
        }
        float f11 = (f10 < 0.0f ? -1.0f : 1.0f) * E10;
        this.f15589c.reset();
        this.f15589c.moveTo(sx, sy);
        this.f15589c.lineTo(sx + f11, sy);
        this.f15589c.lineTo(tx - f11, ty);
        this.f15589c.lineTo(tx, ty);
        this.f15588b.setPathEffect(this.f15590d);
        canvas.drawPath(this.f15589c, this.f15588b);
        this.f15588b.setPathEffect(null);
    }

    public final PointF c(w socket) {
        if (socket == null) {
            return null;
        }
        socket.getLocationOnScreen(new int[2]);
        getLocationOnScreen(new int[2]);
        return new PointF((r1[0] - r0[0]) + (socket.getWidth() * 0.5f), (r1[1] - r0[1]) + (socket.getHeight() * 0.5f));
    }

    public final void d() {
        this.f15588b.setStyle(Paint.Style.STROKE);
        this.f15588b.setStrokeWidth(4.0f);
        this.f15588b.setStrokeCap(Paint.Cap.SQUARE);
        this.f15588b.setStrokeJoin(Paint.Join.MITER);
        this.f15588b.setColor(com.itsmagic.engine.Engines.Graphics.ShaderGraph.i.b());
        h();
    }

    public void e() {
        this.f15588b.setColor(com.itsmagic.engine.Engines.Graphics.ShaderGraph.i.b());
        invalidate();
    }

    public void f(ShaderGraphData graphData, Map<String, p> nodeViewMap) {
        this.f15593g = graphData;
        if (nodeViewMap == null) {
            nodeViewMap = new HashMap<>();
        }
        this.f15594h = nodeViewMap;
        invalidate();
    }

    public void g(w from, float x10, float y10) {
        this.f15595i = from;
        this.f15596j = x10;
        this.f15597k = y10;
        this.f15598l = from != null;
        invalidate();
    }

    public final void h() {
        float k02 = Nc.b.k0(10.0f) * Math.max(1.0E-4f, this.f15591e);
        if (Math.abs(k02 - this.f15592f) >= 0.01f || this.f15590d == null) {
            this.f15592f = k02;
            this.f15590d = new CornerPathEffect(this.f15592f);
        }
    }

    public void i() {
        if (this.f15598l) {
            invalidate();
        }
    }

    @Override
    public void onDraw(Canvas canvas) {
        w wVar;
        PointF c10;
        super.onDraw(canvas);
        ShaderGraphData shaderGraphData = this.f15593g;
        if (shaderGraphData == null) {
            return;
        }
        List<ShaderGraphNodeConnection> list = shaderGraphData.connections;
        if (list != null) {
            for (ShaderGraphNodeConnection shaderGraphNodeConnection : list) {
                p pVar = this.f15594h.get(shaderGraphNodeConnection.fromNodeId);
                p pVar2 = this.f15594h.get(shaderGraphNodeConnection.toNodeId);
                if (pVar != null && pVar2 != null) {
                    w K10 = pVar.K(shaderGraphNodeConnection.fromSlot);
                    w J10 = pVar2.J(shaderGraphNodeConnection.toSlot);
                    if (K10 != null && J10 != null) {
                        PointF c11 = c(K10);
                        PointF c12 = c(J10);
                        if (c11 != null && c12 != null) {
                            this.f15588b.setShader(new LinearGradient(c11.f32425x, c11.f32426y, c12.f32425x, c12.f32426y, com.itsmagic.engine.Engines.Graphics.ShaderGraph.i.a(K10.getType()), com.itsmagic.engine.Engines.Graphics.ShaderGraph.i.a(J10.getType()), Shader.TileMode.CLAMP));
                            b(canvas, c11.f32425x, c11.f32426y, c12.f32425x, c12.f32426y);
                            this.f15588b.setShader(null);
                        }
                    }
                }
            }
        }
        List<ShaderGraphBranchConnection> list2 = this.f15593g.branchConnections;
        if (list2 != null) {
            for (ShaderGraphBranchConnection shaderGraphBranchConnection : list2) {
                if (shaderGraphBranchConnection != null) {
                    p pVar3 = this.f15594h.get(shaderGraphBranchConnection.fromNodeId);
                    p pVar4 = this.f15594h.get(shaderGraphBranchConnection.toNodeId);
                    if (pVar3 != null && pVar4 != null) {
                        w K11 = pVar3.K(shaderGraphBranchConnection.fromSlot);
                        w branchSocket = pVar4.getBranchSocket();
                        if (K11 != null && branchSocket != null) {
                            PointF c13 = c(K11);
                            PointF c14 = c(branchSocket);
                            if (c13 != null && c14 != null) {
                                this.f15588b.setShader(new LinearGradient(c13.f32425x, c13.f32426y, c14.f32425x, c14.f32426y, com.itsmagic.engine.Engines.Graphics.ShaderGraph.i.a(K11.getType()), com.itsmagic.engine.Engines.Graphics.ShaderGraph.i.a(branchSocket.getType()), Shader.TileMode.CLAMP));
                                b(canvas, c13.f32425x, c13.f32426y, c14.f32425x, c14.f32426y);
                                this.f15588b.setShader(null);
                            }
                        }
                    }
                }
            }
        }
        if (!this.f15598l || (wVar = this.f15595i) == null || (c10 = c(wVar)) == null) {
            return;
        }
        this.f15588b.setColor(com.itsmagic.engine.Engines.Graphics.ShaderGraph.i.a(this.f15595i.getType()));
        b(canvas, c10.f32425x, c10.f32426y, this.f15596j, this.f15597k);
    }

    public void setGraphScale(float graphScale) {
        float max = Math.max(1.0E-4f, graphScale);
        if (this.f15591e == max) {
            return;
        }
        this.f15591e = max;
        h();
        invalidate();
    }

    public C2851g(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f15588b = new Paint(1);
        this.f15589c = new Path();
        this.f15591e = 1.0f;
        this.f15592f = -1.0f;
        this.f15594h = new HashMap();
        d();
    }
}
