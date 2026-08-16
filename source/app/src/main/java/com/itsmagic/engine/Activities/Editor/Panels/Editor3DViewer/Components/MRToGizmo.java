package com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components;

import Ic.C2633l;
import JAVARuntime.GizmoObject;
import Ub.a;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import yb.C16165b;

public class MRToGizmo extends Component {

    public String f71573E;

    public final ColorINT f71574F;

    public final boolean f71575G;

    public final String f71576H;

    public GizmoObject f71577I;

    public MRToGizmo(String meshFile, boolean meshFileFromAssets, boolean drawInFront, ColorINT colorINT, String texture) {
        super(null);
        this.f71573E = meshFile;
        this.f71574F = colorINT;
        this.f71575G = drawInFront;
        this.f71576H = texture;
        if (meshFile == null || !meshFileFromAssets || meshFile.startsWith("@@ASSET@@")) {
            return;
        }
        this.f71573E = "@@ASSET@@" + meshFile;
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (this.f71577I == null) {
            GizmoObject gizmoObject = new GizmoObject();
            this.f71577I = gizmoObject;
            gizmoObject.setDrawInFront(this.f71575G);
            this.f71577I.setEnableTransparency(true);
            this.f71577I.setColor(this.f71574F.e0());
            if (C2633l.b(this.f71573E, ".obj")) {
                this.f71577I.setVertex(Vertex.B1(this.f71573E, null).x2());
            } else {
                this.f71577I.setVertex(Vertex.A1(this.f71573E).x2());
            }
            String str = this.f71576H;
            if (str != null) {
                this.f71577I.setTexture(C16165b.i(str).p0());
            }
        }
        Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
        Quaternion quaternion = (Quaternion) JP.acquire(Quaternion.class);
        this.f71577I.setPosition(gameObject.transform.u0(vector3).toJAVARuntime());
        this.f71577I.setRotation(gameObject.transform.C0(quaternion).N0());
        this.f71577I.setScale(gameObject.transform.K0(vector3).toJAVARuntime());
        JP.release(vector3);
        JP.release(quaternion);
        a.a(this.f71577I);
    }
}
