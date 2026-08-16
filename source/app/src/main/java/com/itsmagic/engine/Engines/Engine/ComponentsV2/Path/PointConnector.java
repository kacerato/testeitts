package com.itsmagic.engine.Engines.Engine.ComponentsV2.Path;

import C5.b;
import JAVARuntime.GizmoObject;
import JAVARuntime.Vertex;
import R8.f;
import a8.C3589a;
import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine2.R;
import f9.InterfaceC13197a;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.LinkedList;
import java.util.List;

public class PointConnector extends Component {

    public static final String f74301K = "PointConnector";

    public static final Class f74302L = PointConnector.class;

    public float f74303E;

    public float f74304F;

    public ColorINT f74305G;

    public GizmoObject f74306H;

    public PathPoint f74307I;

    public JAVARuntime.Component f74308J;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return PointConnector.f74302L;
        }

        @Override
        public String c() {
            return PointConnector.f74301K;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.SCENARIO);
        }

        @Override
        public String f() {
            return PointConnector.f74301K;
        }
    }

    static {
        C13201a.b(new a());
    }

    public PointConnector() {
        super(f74301K);
        this.f74303E = 0.05f;
        this.f74304F = 0.8f;
        this.f74305G = new ColorINT(187, 242, 92);
    }

    @Override
    public String getDisplayableTitle() {
        return f74301K;
    }

    @Override
    public int getIconResource() {
        return R.drawable.road_point;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_terrain;
    }

    @Override
    public List<b> getInspectorEntries(Context context) {
        return new LinkedList();
    }

    @Override
    public String getTitle() {
        return f74301K;
    }

    @Override
    public int iconPriority() {
        return 3;
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        GameObject gameObject2;
        super.preUpdate(gameObject, isEditor);
        this.f74307I = null;
        int A10 = f.A();
        for (int i10 = 0; i10 < A10; i10++) {
            try {
                Component z10 = f.z(i10);
                if (z10 instanceof PathPoint) {
                    PathPoint pathPoint = (PathPoint) z10;
                    if (pathPoint.isConnectedTo(this)) {
                        this.f74307I = pathPoint;
                        break;
                    }
                    continue;
                } else {
                    continue;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        if (!gameObject.b1() && (gameObject.H0() == null || !gameObject.H0().a1())) {
            C3589a c3589a = W7.b.f27309i;
            GameObject gameObject3 = c3589a.f31909a.f31910a;
            if ((gameObject3 == null || gameObject3.d0(InterfaceC13197a.class) == null) && ((gameObject2 = c3589a.f31909a.f31910a) == null || gameObject2.c0(Component.e.MeshCurve) == null)) {
                return;
            }
        }
        if (this.f74306H == null) {
            GizmoObject gizmoObject = new GizmoObject(Vertex.loadPrimitive(1));
            this.f74306H = gizmoObject;
            gizmoObject.setScale(this.f74303E);
            this.f74306H.setScaleBasedCamera(true);
            this.f74306H.setDrawInFront(true);
            this.f74306H.setEnableLight(true);
            this.f74306H.setColor(this.f74305G.e0());
            this.f74306H.setVisibleDistance(75.0f);
            this.f74306H.setFadeOutRange(30.0f);
            this.f74306H.setEnableTransparency(true);
            this.f74306H.setAdditiveMode(true);
        }
        if (this.f74307I != null) {
            this.f74305G.X(255, 0, 0);
        } else {
            this.f74305G.X(187, 242, 92);
        }
        gameObject.transform.u0(this.f74306H.getPosition().instance);
        Ub.a.a(this.f74306H);
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f74308J = run;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f74308J;
        if (component != null) {
            return component;
        }
        JAVARuntime.PointConnector pointConnector = new JAVARuntime.PointConnector(this);
        this.f74308J = pointConnector;
        return pointConnector;
    }

    @Override
    public Component mo1248clone() {
        return new PointConnector();
    }
}
