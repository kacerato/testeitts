package Q4;

import JAVARuntime.GUIUtils;
import JAVARuntime.Gizmo;
import JAVARuntime.GizmoObject;
import JAVARuntime.Vertex;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Pool.BasePool;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import java.util.HashMap;
import tc.h;
import ub.p;

public abstract class a extends P4.b {

    public BasePool f21902b;

    public final HashMap<Panel3DView, h> f21903c;

    public final Vector2 f21904d;

    public GizmoObject f21905e;

    public final ColorINT f21906f;

    public final ColorINT f21907g;

    public a(BasePool objectPool, P4.a axisTopBarListener) {
        super(axisTopBarListener);
        this.f21903c = new HashMap<>();
        this.f21904d = new Vector2();
        this.f21905e = null;
        this.f21906f = new ColorINT(59, 199, 255);
        this.f21907g = new ColorINT(255, 72, 59);
        this.f21902b = objectPool;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0052, code lost:
    
        if (r5.q() != false) goto L26;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void c(Panel3DView editor3DViewer, o4.b engineUpdateData) {
        if (!this.f21902b.renderBrushes() || this.f21902b.f74614q3 == BasePool.J.None) {
            return;
        }
        h hVar = this.f21903c.get(editor3DViewer);
        h hVar2 = null;
        if (hVar != null && hVar.q() && !editor3DViewer.s0(hVar)) {
            hVar = null;
        }
        if (hVar == null) {
            hVar = editor3DViewer.y(GUIUtils.TouchFilter.Down, true);
        }
        if (hVar != null && editor3DViewer.w(GUIUtils.TouchFilter.Pressed, 1) != null) {
            hVar = null;
        }
        if (hVar != null) {
            editor3DViewer.a0(hVar, this.f21904d);
            h(this.f21904d, editor3DViewer);
            if (!hVar.t()) {
            }
            this.f21903c.put(editor3DViewer, hVar2);
            i();
        }
        hVar2 = hVar;
        this.f21903c.put(editor3DViewer, hVar2);
        i();
    }

    @Override
    public boolean d() {
        return this.f21902b.f74614q3 != BasePool.J.None;
    }

    @Override
    public boolean f() {
        return true;
    }

    public abstract void h(Vector2 touchPos, Panel3DView editor3DViewer);

    public final void i() {
        p pVar;
        if (this.f21905e == null) {
            GizmoObject gizmoObject = new GizmoObject();
            this.f21905e = gizmoObject;
            gizmoObject.setVertex(Vertex.loadPrimitive(6));
            this.f21905e.setEnableTransparency(true);
            this.f21905e.setDrawInFront(true);
        }
        this.f21905e.setPosition(this.f21902b.f74618v3.toJAVARuntime());
        this.f21905e.setScale(this.f21902b.brushSize);
        O8.a aVar = this.f21902b.f74565F3;
        if (aVar != null && (pVar = aVar.f16544a) != null) {
            this.f21905e.setTexture(pVar.p0());
        }
        BasePool.J j10 = this.f21902b.f74614q3;
        if (j10 == BasePool.J.Add) {
            ColorINT clone = this.f21906f.clone();
            clone.H(new ColorINT(this.f21902b.brushIntensity * 0.7f, 1.0f, 1.0f, 1.0f));
            this.f21905e.setColor(clone.e0());
        } else if (j10 == BasePool.J.Remove) {
            ColorINT clone2 = this.f21907g.clone();
            clone2.H(new ColorINT(this.f21902b.brushIntensity * 0.7f, 1.0f, 1.0f, 1.0f));
            this.f21905e.setColor(clone2.e0());
        }
        Gizmo.drawEngine(this.f21905e);
    }
}
