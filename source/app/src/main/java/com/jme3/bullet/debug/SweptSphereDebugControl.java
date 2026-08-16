package com.jme3.bullet.debug;

import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import java.util.logging.Logger;
import jf.h;
import jme3utilities.debug.i;

class SweptSphereDebugControl extends AbstractPhysicsDebugControl {
    public static final Logger logger = Logger.getLogger(SweptSphereDebugControl.class.getName());
    private final Vector3f center;
    private final Geometry geom;
    private final PhysicsCollisionObject pco;

    public SweptSphereDebugControl(BulletDebugAppState bulletDebugAppState, PhysicsCollisionObject physicsCollisionObject) {
        super(bulletDebugAppState);
        this.pco = physicsCollisionObject;
        Geometry geometry = new Geometry("swept sphere of " + ((Object) physicsCollisionObject), updateMesh(null));
        this.geom = geometry;
        geometry.setLocalScale(physicsCollisionObject.getCcdSweptSphereRadius());
        Vector3f physicsLocation = physicsCollisionObject.getPhysicsLocation(null);
        this.center = physicsLocation;
        geometry.setLocalTranslation(physicsLocation);
        geometry.setMaterial(bulletDebugAppState.getSweptSphereMaterial());
        geometry.setShadowMode(RenderQueue.ShadowMode.Off);
    }

    private Mesh updateMesh(Mesh mesh) {
        i iVar = this.debugAppState.getConfiguration().getCamera() == null ? i.Icosphere : i.LoopMesh;
        return !iVar.b(mesh) ? iVar.c(1.0f, false, false) : mesh;
    }

    @Override
    public void controlUpdate(float f10) {
        Mesh mesh = this.geom.getMesh();
        Mesh updateMesh = updateMesh(mesh);
        if (mesh != updateMesh) {
            this.geom.setMesh(updateMesh);
        }
        this.geom.setLocalScale(this.pco.getCcdSweptSphereRadius());
        this.pco.getPhysicsLocation(this.center);
        this.geom.setLocalTranslation(this.center);
        Camera camera = this.debugAppState.getConfiguration().getCamera();
        if (camera != null) {
            Vector3f subtract = camera.getLocation().subtract(this.center);
            Vector3f vector3f = new Vector3f();
            Vector3f vector3f2 = new Vector3f();
            h.u(subtract, vector3f, vector3f2);
            Quaternion quaternion = new Quaternion();
            quaternion.fromAxes(vector3f2, subtract, vector3f);
            this.geom.setLocalRotation(quaternion);
        }
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
