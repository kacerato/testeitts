package com.jme3.bullet.debug;

import com.jme3.bounding.BoundingBox;
import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.math.Vector3f;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Geometry;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.debug.WireBox;
import java.util.logging.Logger;

class BoundingBoxDebugControl extends AbstractPhysicsDebugControl {
    public static final Logger logger = Logger.getLogger(BoundingBoxDebugControl.class.getName());
    private final BoundingBox bbox;
    private final Vector3f center;
    private final Geometry geom;
    private final PhysicsCollisionObject pco;

    public BoundingBoxDebugControl(BulletDebugAppState bulletDebugAppState, PhysicsCollisionObject physicsCollisionObject) {
        super(bulletDebugAppState);
        this.pco = physicsCollisionObject;
        BoundingBox boundingBox = physicsCollisionObject.boundingBox(null);
        this.bbox = boundingBox;
        Geometry geometry = new Geometry("bounding box of " + ((Object) physicsCollisionObject), new WireBox(boundingBox.getXExtent(), boundingBox.getYExtent(), boundingBox.getZExtent()));
        this.geom = geometry;
        Vector3f center = boundingBox.getCenter();
        this.center = center;
        geometry.setLocalTranslation(center);
        geometry.setMaterial(bulletDebugAppState.getBoundingBoxMaterial());
        geometry.setShadowMode(RenderQueue.ShadowMode.Off);
    }

    @Override
    public void controlUpdate(float f10) {
        WireBox wireBox = (WireBox) this.geom.getMesh();
        this.pco.boundingBox(this.bbox);
        wireBox.updatePositions(this.bbox.getXExtent(), this.bbox.getYExtent(), this.bbox.getZExtent());
        this.bbox.getCenter(this.center);
        this.geom.setLocalTranslation(this.center);
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
