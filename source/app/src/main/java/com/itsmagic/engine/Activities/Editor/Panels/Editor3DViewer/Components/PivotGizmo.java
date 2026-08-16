package com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components;

import JAVARuntime.Color;
import JAVARuntime.GizmoObject;
import Ub.a;
import W7.b;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import gb.C13317e;

public class PivotGizmo extends Component {

    public static final String f71578G = "PivotGizmo";

    public static final float f71579H = 0.025f;

    public Panel3DView f71580E;

    public GizmoObject f71581F;

    public PivotGizmo(Panel3DView editor3DViewer) {
        super(f71578G);
        this.f71580E = editor3DViewer;
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        try {
            GameObject gameObject2 = b.f27309i.f31909a.f31910a;
            if (!C13317e.J(gameObject2) || gameObject2.c1()) {
                return;
            }
            if (this.f71581F == null) {
                GizmoObject gizmoObject = new GizmoObject(Vertex.C1(Vertex.v.SPHERE_LOWPOLY).x2());
                this.f71581F = gizmoObject;
                gizmoObject.setColor(new Color(251, 255, 0));
                this.f71581F.setScale(0.025f);
                this.f71581F.setScaleBasedCamera(true);
                this.f71581F.setDrawInFront(true);
            }
            Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
            gameObject2.J0().u0(vector3);
            this.f71581F.setPosition(vector3.toJAVARuntime());
            JP.release(vector3);
            a.a(this.f71581F);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
