package com.itsmagic.engine.Engines.Engine.ComponentsV2.PhysicsConstraint;

import JAVARuntime.Color;
import JAVARuntime.Component;
import JAVARuntime.Gizmo;
import JAVARuntime.GizmoObject;
import JAVARuntime.Vertex;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.jme3.bullet.joints.Constraint;
import com.jme3.bullet.joints.Point2PointJoint;
import com.jme3.bullet.objects.PhysicsRigidBody;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;

public class PointConstraint extends BaseConstraint implements Serializable {

    public static final String f74545H1 = "PointConstraint";

    public static final Class f74546L1 = PointConstraint.class;

    public Component f74547F1;

    public float f74548q1;

    public GizmoObject f74549v1;

    public GizmoObject f74550y1;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return PointConstraint.f74546L1;
        }

        @Override
        public String c() {
            return PointConstraint.f74545H1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.PHYSICS);
        }

        @Override
        public String f() {
            return Lang.l(Lang.T.POINT_CONSTRAINT);
        }
    }

    static {
        C13201a.b(new a());
    }

    public PointConstraint() {
        super(f74545H1);
        this.f74548q1 = 0.07f;
    }

    @Override
    public Constraint createConstraint(PhysicsRigidBody rbA, PhysicsRigidBody rbB, Vector3 pivotInA, Vector3 pivotInB, Vector3 axisInA, Vector3 axisInB) {
        return new Point2PointJoint(rbA, rbB, pivotInA.toVector3f(), pivotInB.toVector3f());
    }

    @Override
    public String getDisplayableTitle() {
        return Lang.l(Lang.T.POINT_CONSTRAINT);
    }

    @Override
    public String getTitle() {
        return f74545H1;
    }

    @Override
    public Component.e getType() {
        return Component.e.PointConstraint;
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (gameObject.b1() || !(getTargetConstraintPivotComp() == null || getTargetConstraintPivotComp().f79250n == null || !getTargetConstraintPivotComp().f79250n.b1())) {
            if (this.f74549v1 == null) {
                GizmoObject gizmoObject = new GizmoObject(Vertex.loadPrimitive(1));
                this.f74549v1 = gizmoObject;
                gizmoObject.setScale(this.f74548q1 * 1.0f);
                this.f74549v1.setColor(new Color(255, 103, 33));
                this.f74549v1.setScaleBasedCamera(true);
                this.f74549v1.setEnableLight(true);
                this.f74549v1.setLightIntensity(1.0f);
            }
            this.f74549v1.setPosition(getGlobalPivotAPosition().toJAVARuntime());
            Gizmo.drawEngine(this.f74549v1);
            if (isConnected()) {
                if (this.f74550y1 == null) {
                    GizmoObject gizmoObject2 = new GizmoObject(com.itsmagic.engine.Engines.Engine.Vertex.Vertex.B1("Editor/Gizmos/Constraints/half_sphere.obj", null).x2());
                    this.f74550y1 = gizmoObject2;
                    gizmoObject2.setScale(this.f74548q1 * 1.1f);
                    this.f74550y1.setColor(new Color(97, 110, 255));
                    this.f74550y1.setScaleBasedCamera(true);
                    this.f74550y1.setEnableLight(true);
                    this.f74550y1.setLightIntensity(1.0f);
                }
                Quaternion quaternion = this.f74550y1.getRotation().instance;
                quaternion.U(getGlobalPivotBDirection());
                quaternion.i0(Quaternion.n(0.0f, 0.0f, 0.0f));
                this.f74550y1.setRotation(quaternion.N0());
                this.f74550y1.setPosition(getGlobalPivotBPosition().toJAVARuntime());
                Gizmo.drawEngine(this.f74550y1);
            }
        }
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f74547F1 = run;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f74547F1;
        if (component != null) {
            return component;
        }
        JAVARuntime.PointConstraint pointConstraint = new JAVARuntime.PointConstraint(this);
        this.f74547F1 = pointConstraint;
        return pointConstraint;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        PointConstraint pointConstraint = new PointConstraint();
        pointConstraint.copyFrom(this);
        return pointConstraint;
    }
}
