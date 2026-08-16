package com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Roads;

import JAVARuntime.Color;
import JAVARuntime.Gizmo;
import JAVARuntime.GizmoObject;
import JAVARuntime.Random;
import JAVARuntime.Vertex;
import Nc.c;
import aa.C3593a;
import aa.C3595c;
import android.content.Context;
import android.opengl.Matrix;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Axis.MousePicker.MousePicker;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.EditorCamera;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.LinkedList;
import java.util.List;
import t6.e;
import t6.j;
import y9.InterfaceC16153a;

public class RoadPoint extends Component implements InterfaceC16153a {

    public static final String f76919L = "RoadPoint";

    public static final Class f76920M = RoadPoint.class;

    public float f76921E;

    public float f76922F;

    public ColorINT f76923G;

    public GizmoObject f76924H;

    public Road f76925I;

    public float f76926J;

    public JAVARuntime.Component f76927K;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return RoadPoint.f76920M;
        }

        @Override
        public String c() {
            return RoadPoint.f76919L;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.SCENARIO);
        }

        @Override
        public String f() {
            return Lang.l(Lang.T.ROAD_POINT);
        }
    }

    public class b implements MousePicker.l.b {

        public int f76928a;

        public b() {
        }

        @Override
        public boolean a(GizmoObject gizmoObject) {
            e S12 = j.J1() ? j.S1("RoadPoint - draw gizmo") : null;
            try {
                Gizmo.draw(gizmoObject);
                int i10 = this.f76928a + 1;
                this.f76928a = i10;
                if (i10 < 150) {
                    return true;
                }
                j.P1(S12);
                return false;
            } finally {
                j.P1(S12);
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public RoadPoint() {
        super(f76919L);
        this.f76921E = 0.05f;
        this.f76922F = 0.05f;
        this.f76923G = new ColorINT(235, 91, 52);
        this.f76926J = 0.0f;
    }

    @Override
    public Vector3 calculateRoadPointPosition() {
        Vector3 u02 = this.f79250n.transform.u0((Vector3) JP.acquire(Vector3.class));
        Component h02 = this.f79250n.h0(Component.e.Road);
        if (h02 != null) {
            h02.f79250n.transform.T1(u02, u02);
        }
        return u02;
    }

    @Override
    public String getDisplayableTitle() {
        return Lang.l(Lang.T.ROAD_POINT);
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
    public List<C5.b> getInspectorEntries(Context context) {
        return new LinkedList();
    }

    @Override
    public String getTitle() {
        return f76919L;
    }

    @Override
    public Component.e getType() {
        return Component.e.RoadPoint;
    }

    @Override
    public int iconPriority() {
        return 2;
    }

    @Override
    public boolean isConnected() {
        return false;
    }

    @Override
    public void mousePick(C3595c ray, MousePicker.k listener) {
        GizmoObject gizmoObject;
        GameObject gameObject = this.f79250n;
        Transform transform = gameObject.transform;
        MousePicker.g b10 = listener.b();
        MousePicker.h config = listener.getConfig();
        EditorCamera camera = listener.getCamera();
        Vector3 vector3 = b10.f71441a;
        Vector3 vector32 = b10.f71442b;
        float[] fArr = b10.f71443c;
        Vertex vertex = b10.f71444d;
        boolean z10 = config.f71445a;
        if (listener.getCamera().isPointVisible(transform.u0((Vector3) JP.acquire(Vector3.class)))) {
            transform.u0(vector3);
            vector32.set(this.f76922F * camera.f79250n.transform.C1(vector3));
            Matrix.setIdentityM(fArr, 0);
            Matrix.translateM(fArr, 0, vector3.getX(), vector3.getY(), vector3.getZ());
            c.q(fArr, vector32);
            if (z10) {
                gizmoObject = new GizmoObject(vertex.x2());
                gizmoObject.setPosition(vector3.toJAVARuntime().copy());
                gizmoObject.setScale(vector32.toJAVARuntime().copy());
                gizmoObject.setColor(new Color(Random.range(0.0f, 0.9f), 0.0f, Random.range(0.0f, 0.1f)));
            } else {
                gizmoObject = null;
            }
            C3593a I22 = vertex.I2(fArr, ray, Vertex.RayMode.FirstHit, true);
            if (I22 != null) {
                I22.setGameObject(gameObject);
                listener.c(new MousePicker.j(I22, gizmoObject, this));
            }
            if (z10) {
                MousePicker.l lVar = new MousePicker.l(gizmoObject, new b());
                listener.a(lVar);
                K8.a.J(lVar);
            }
        }
    }

    @Override
    public void setFirst(boolean first) {
    }

    @Override
    public void setLast(boolean last) {
    }

    @Override
    public void setRoad(Road road) {
        this.f76925I = road;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f76927K = run;
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f76927K;
        if (component != null) {
            return component;
        }
        JAVARuntime.RoadPoint roadPoint = new JAVARuntime.RoadPoint(this);
        this.f76927K = roadPoint;
        return roadPoint;
    }

    @Override
    public Component mo1248clone() {
        return new RoadPoint();
    }
}
