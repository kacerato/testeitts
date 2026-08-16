package com.jme3.bullet.debug;

import com.jme3.bullet.joints.Constraint;
import com.jme3.bullet.joints.JointEnd;
import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Geometry;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.debug.Arrow;
import java.util.logging.Logger;

class ConstraintDebugControl extends AbstractPhysicsDebugControl {
    static final boolean $assertionsDisabled = false;
    private final Constraint constraint;
    private final Geometry geomA;
    private final Geometry geomB;
    public static final Logger logger = Logger.getLogger(ConstraintDebugControl.class.getName());
    private static final Vector3f translateIdentity = new Vector3f(0.0f, 0.0f, 0.0f);
    private static final Transform tmpTransform = new Transform();

    public ConstraintDebugControl(BulletDebugAppState bulletDebugAppState, Constraint constraint) {
        super(bulletDebugAppState);
        this.constraint = constraint;
        Geometry geometry = new Geometry(constraint.toString());
        this.geomA = geometry;
        Vector3f vector3f = translateIdentity;
        geometry.setMesh(new Arrow(vector3f));
        geometry.setMaterial(bulletDebugAppState.getJointMaterial(JointEnd.A));
        RenderQueue.ShadowMode shadowMode = RenderQueue.ShadowMode.Off;
        geometry.setShadowMode(shadowMode);
        Geometry geometry2 = new Geometry(constraint.toString());
        this.geomB = geometry2;
        geometry2.setMesh(new Arrow(vector3f));
        geometry2.setMaterial(bulletDebugAppState.getJointMaterial(JointEnd.B));
        geometry2.setShadowMode(shadowMode);
    }

    @Override
    public void controlUpdate(float f10) {
        if (!this.constraint.isEnabled()) {
            Geometry geometry = this.geomA;
            Spatial.CullHint cullHint = Spatial.CullHint.Always;
            geometry.setCullHint(cullHint);
            this.geomB.setCullHint(cullHint);
            return;
        }
        Transform transform = tmpTransform;
        Vector3f translation = transform.getTranslation();
        Quaternion rotation = transform.getRotation();
        PhysicsRigidBody bodyA = this.constraint.getBodyA();
        if (bodyA == null) {
            this.geomA.setCullHint(Spatial.CullHint.Always);
        } else {
            bodyA.getPhysicsLocation(translation);
            bodyA.getPhysicsRotation(rotation);
            this.geomA.setLocalTransform(transform);
            this.geomA.setCullHint(Spatial.CullHint.Never);
            Arrow arrow = (Arrow) this.geomA.getMesh();
            this.constraint.getPivotA(translation);
            arrow.setArrowExtent(translation);
        }
        PhysicsRigidBody bodyB = this.constraint.getBodyB();
        if (bodyB == null) {
            this.geomB.setCullHint(Spatial.CullHint.Always);
            return;
        }
        bodyB.getPhysicsLocation(translation);
        bodyB.getPhysicsRotation(rotation);
        this.geomB.setLocalTransform(transform);
        this.geomB.setCullHint(Spatial.CullHint.Never);
        Arrow arrow2 = (Arrow) this.geomB.getMesh();
        this.constraint.getPivotB(translation);
        arrow2.setArrowExtent(translation);
    }

    @Override
    public void setSpatial(Spatial spatial) {
        Spatial spatial2;
        if (spatial instanceof Node) {
            Node node = (Node) spatial;
            node.attachChild(this.geomA);
            node.attachChild(this.geomB);
        } else if (spatial == null && (spatial2 = this.spatial) != null) {
            Node node2 = (Node) spatial2;
            node2.detachChild(this.geomA);
            node2.detachChild(this.geomB);
        }
        super.setSpatial(spatial);
    }
}
