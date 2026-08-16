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
import com.jme3.bullet.joints.HingeJoint;
import com.jme3.bullet.objects.PhysicsRigidBody;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;

public class HingeConstraint extends BaseConstraint implements Serializable {

    public static final String f74539H1 = "HingeConstraint";

    public static final Class f74540L1 = HingeConstraint.class;

    public Component f74541F1;

    public float f74542q1;

    public GizmoObject f74543v1;

    public GizmoObject f74544y1;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return HingeConstraint.f74540L1;
        }

        @Override
        public String c() {
            return HingeConstraint.f74539H1;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.PHYSICS);
        }

        @Override
        public String f() {
            return Lang.l(Lang.T.HINGE_CONSTRAINT);
        }
    }

    static {
        C13201a.b(new a());
    }

    public HingeConstraint() {
        super(f74539H1);
        this.f74542q1 = 0.07f;
    }

    @Override
    public Constraint createConstraint(PhysicsRigidBody rbA, PhysicsRigidBody rbB, Vector3 pivotInA, Vector3 pivotInB, Vector3 axisInA, Vector3 axisInB) {
        HingeJoint hingeJoint = new HingeJoint(rbA, rbB, pivotInA.toVector3f(), pivotInB.toVector3f(), axisInA.toVector3f(), axisInB.toVector3f());
        hingeJoint.setLimit(1.0f, -1.0f);
        return hingeJoint;
    }

    @Override
    public String getDisplayableTitle() {
        return Lang.l(Lang.T.HINGE_CONSTRAINT);
    }

    @Override
    public String getTitle() {
        return f74539H1;
    }

    @Override
    public Component.e getType() {
        return Component.e.HingeConstraint;
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (gameObject.b1() || !(getTargetConstraintPivotComp() == null || getTargetConstraintPivotComp().f79250n == null || !getTargetConstraintPivotComp().f79250n.b1())) {
            if (this.f74543v1 == null) {
                GizmoObject gizmoObject = new GizmoObject(Vertex.loadPrimitive(3));
                this.f74543v1 = gizmoObject;
                float f10 = this.f74542q1;
                gizmoObject.setScale(f10 * 1.0f, 0.25f * f10, f10 * 1.0f);
                this.f74543v1.setColor(new Color(255, 103, 33));
                this.f74543v1.setScaleBasedCamera(true);
                this.f74543v1.setEnableLight(true);
                this.f74543v1.setLightIntensity(1.0f);
            }
            Quaternion quaternion = this.f74543v1.getRotation().instance;
            quaternion.U(getGlobalPivotADirection());
            quaternion.i0(Quaternion.n(90.0f, 0.0f, 0.0f));
            this.f74543v1.setRotation(quaternion.N0());
            this.f74543v1.setPosition(getGlobalPivotAPosition().toJAVARuntime());
            Gizmo.drawEngine(this.f74543v1);
            if (this.f74544y1 == null) {
                GizmoObject gizmoObject2 = new GizmoObject(Vertex.loadPrimitive(3));
                this.f74544y1 = gizmoObject2;
                float f11 = this.f74542q1;
                gizmoObject2.setScale(f11 * 0.3f, 2.0f * f11, f11 * 0.3f);
                this.f74544y1.setColor(new Color(97, 110, 255));
                this.f74544y1.setScaleBasedCamera(true);
                this.f74544y1.setEnableLight(true);
                this.f74544y1.setLightIntensity(1.0f);
            }
            Quaternion quaternion2 = this.f74544y1.getRotation().instance;
            quaternion2.U(getGlobalPivotADirection());
            quaternion2.i0(Quaternion.n(90.0f, 0.0f, 0.0f));
            this.f74544y1.setRotation(quaternion2.N0());
            this.f74544y1.setPosition(getGlobalPivotAPosition().toJAVARuntime());
            Gizmo.drawEngine(this.f74544y1);
        }
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f74541F1 = run;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f74541F1;
        if (component != null) {
            return component;
        }
        JAVARuntime.HingeConstraint hingeConstraint = new JAVARuntime.HingeConstraint(this);
        this.f74541F1 = hingeConstraint;
        return hingeConstraint;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        HingeConstraint hingeConstraint = new HingeConstraint();
        hingeConstraint.copyFrom(this);
        return hingeConstraint;
    }
}
