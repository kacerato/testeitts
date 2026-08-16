package com.itsmagic.engine.Engines.Engine.ComponentsV2.Route;

import JAVARuntime.Color;
import JAVARuntime.GizmoObject;
import JAVARuntime.GizmoPath;
import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.LinkedList;
import java.util.List;
import ub.p;
import yb.C16165b;

public class Route extends Component {

    public static final String f76352J = "Route";

    public static final Class f76353K = Route.class;

    public static final ThreadLocal<Vector3> f76354L;

    public final List<GizmoObject> f76355E;

    public Vertex f76356F;

    public p f76357G;

    public final GizmoPath f76358H;

    public JAVARuntime.Component f76359I;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return Route.f76353K;
        }

        @Override
        public String c() {
            return Route.f76352J;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.SCENARIO);
        }

        @Override
        public String f() {
            return Lang.l(Lang.T.ROUTE);
        }
    }

    public class b extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    static {
        C13201a.b(new a());
        f76354L = new b();
    }

    public Route() {
        super(f76352J);
        this.f76355E = new SteppedArrayList();
        this.f76356F = null;
        this.f76357G = null;
        GizmoPath gizmoPath = new GizmoPath();
        this.f76358H = gizmoPath;
        gizmoPath.setColor(new Color("#33CCFF"));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Route buildDefault(GameObject gameObject) {
        Route route = new Route();
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(new Vector3(0.0f, 0.0f, 0.0f));
        steppedArrayList.add(new Vector3(0.0f, 0.0f, 2.0f));
        for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
            GameObject gameObject2 = new GameObject("Point", new Transform());
            com.itsmagic.engine.Engines.Engine.World.b.f(gameObject2, gameObject);
            gameObject2.transform.p3((Vector3) steppedArrayList.get(i10));
        }
        return route;
    }

    private void drawGizmo(GameObject gameObject) {
        int i10;
        if (this.f76356F == null) {
            this.f76356F = W7.b.f27306f.f2458a.f4945h.c();
        }
        if (this.f76357G == null) {
            D8.b bVar = W7.b.f27306f.f2458a.f4945h;
            this.f76357G = C16165b.v(bVar.f4960d, bVar.f4961e);
        }
        int D10 = gameObject.D();
        while (this.f76355E.size() < D10) {
            GizmoObject gizmoObject = new GizmoObject(this.f76356F.x2());
            gizmoObject.setTexture(this.f76357G.p0());
            gizmoObject.setScaleBasedCamera(true);
            gizmoObject.setScale(0.08f);
            this.f76355E.add(gizmoObject);
        }
        while (true) {
            if (this.f76355E.size() <= D10) {
                break;
            } else {
                this.f76355E.remove(0);
            }
        }
        this.f76358H.clear();
        Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
        Vector3 vector32 = null;
        for (i10 = 0; i10 < D10; i10++) {
            GizmoObject gizmoObject2 = this.f76355E.get(i10);
            gameObject.C(i10).transform.u0(vector3);
            gizmoObject2.setPosition(vector3.toJAVARuntime());
            Ub.a.a(gizmoObject2);
            if (vector32 == null) {
                vector32 = new Vector3();
                vector32.set(vector3);
            } else {
                this.f76358H.addLine(vector32.toJAVARuntime(), vector3.toJAVARuntime());
                vector32.set(vector3);
            }
        }
        JP.release(vector3);
        Ub.a.a(this.f76358H);
    }

    @Override
    public String getDisplayableTitle() {
        return Lang.l(Lang.T.ROUTE);
    }

    @Override
    public int getIconResource() {
        return R.drawable.location_pin;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_terrain;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        return new LinkedList();
    }

    @Override
    public String getTitle() {
        return f76352J;
    }

    @Override
    public Component.e getType() {
        return Component.e.Route;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    public Vector3 pointAt(int x10) {
        GameObject C10;
        GameObject gameObject = this.f79250n;
        if (gameObject == null || (C10 = gameObject.C(x10)) == null) {
            return null;
        }
        Vector3 vector3 = f76354L.get();
        C10.J0().u0(vector3);
        return vector3;
    }

    public int pointCount() {
        GameObject gameObject = this.f79250n;
        if (gameObject == null) {
            return 0;
        }
        return gameObject.D();
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        drawGizmo(gameObject);
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f76359I = run;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f76359I;
        if (component != null) {
            return component;
        }
        JAVARuntime.Route route = new JAVARuntime.Route(this);
        this.f76359I = route;
        return route;
    }

    @Override
    public Component mo1248clone() {
        return new Route();
    }
}
