package com.jme3.bullet.debug;

import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.bullet.objects.PhysicsBody;
import com.jme3.math.Vector3f;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Geometry;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.debug.Arrow;
import java.util.logging.Logger;

class GravityVectorDebugControl extends AbstractPhysicsDebugControl {
    static final Logger logger = Logger.getLogger(GravityVectorDebugControl.class.getName());
    private final PhysicsBody body;
    private final Vector3f center;
    private final Vector3f extent;
    private final Geometry geom;

    public GravityVectorDebugControl(BulletDebugAppState bulletDebugAppState, PhysicsCollisionObject physicsCollisionObject) {
        super(bulletDebugAppState);
        PhysicsBody physicsBody = (PhysicsBody) physicsCollisionObject;
        this.body = physicsBody;
        Vector3f gravity = physicsBody.getGravity(null);
        this.extent = gravity;
        Geometry geometry = new Geometry("gravity of " + ((Object) physicsBody), new Arrow(gravity));
        this.geom = geometry;
        Vector3f physicsLocation = physicsBody.getPhysicsLocation(null);
        this.center = physicsLocation;
        geometry.setLocalTranslation(physicsLocation);
        geometry.setMaterial(bulletDebugAppState.getGravityVectorMaterial());
        geometry.setShadowMode(RenderQueue.ShadowMode.Off);
    }

    @Override
    public void controlUpdate(float f10) {
        this.body.getPhysicsLocation(this.center);
        this.geom.setLocalTranslation(this.center);
        Arrow arrow = (Arrow) this.geom.getMesh();
        this.body.getGravity(this.extent);
        arrow.setArrowExtent(this.extent);
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
