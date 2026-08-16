package com.jme3.bullet.debug;

import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.math.Vector3f;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Geometry;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.debug.Arrow;
import java.util.logging.Logger;

class VelocityVectorDebugControl extends AbstractPhysicsDebugControl {
    static final Logger logger = Logger.getLogger(VelocityVectorDebugControl.class.getName());
    private static final Vector3f tmpExtent = new Vector3f();
    private final Geometry geom;
    private final PhysicsRigidBody rigidBody;
    private final Vector3f tmpCenter;

    public VelocityVectorDebugControl(BulletDebugAppState bulletDebugAppState, PhysicsCollisionObject physicsCollisionObject) {
        super(bulletDebugAppState);
        Vector3f vector3f = new Vector3f();
        this.tmpCenter = vector3f;
        PhysicsRigidBody physicsRigidBody = (PhysicsRigidBody) physicsCollisionObject;
        this.rigidBody = physicsRigidBody;
        Vector3f vector3f2 = tmpExtent;
        physicsRigidBody.getLinearVelocity(vector3f2);
        Geometry geometry = new Geometry("velocity of " + ((Object) physicsRigidBody), new Arrow(vector3f2));
        this.geom = geometry;
        physicsRigidBody.getPhysicsLocation(vector3f);
        geometry.setLocalTranslation(vector3f);
        geometry.setMaterial(bulletDebugAppState.getVelocityVectorMaterial());
        geometry.setShadowMode(RenderQueue.ShadowMode.Off);
    }

    @Override
    public void controlUpdate(float f10) {
        this.rigidBody.getPhysicsLocation(this.tmpCenter);
        this.geom.setLocalTranslation(this.tmpCenter);
        Arrow arrow = (Arrow) this.geom.getMesh();
        PhysicsRigidBody physicsRigidBody = this.rigidBody;
        Vector3f vector3f = tmpExtent;
        physicsRigidBody.getLinearVelocity(vector3f);
        arrow.setArrowExtent(vector3f);
    }

    @Override
    public void setSpatial(Spatial spatial) {
        Spatial spatial2;
        if (spatial instanceof Node) {
            ((Node) spatial).attachChild(this.geom);
        } else if (spatial == null && (spatial2 = this.spatial) != null) {
            ((Node) spatial2).detachChild(this.geom);
        }
        super.setSpatial(spatial);
    }
}
