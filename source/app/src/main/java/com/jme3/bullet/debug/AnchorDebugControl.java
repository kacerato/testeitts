package com.jme3.bullet.debug;

import com.jme3.bullet.joints.Anchor;
import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import java.nio.FloatBuffer;
import java.util.logging.Logger;
import jf.f;
import p000if.C13702E;

class AnchorDebugControl extends AbstractPhysicsDebugControl {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(AnchorDebugControl.class.getName());
    private final Anchor anchor;
    private final Geometry anchorGeometry;

    public AnchorDebugControl(BulletDebugAppState bulletDebugAppState, Anchor anchor) {
        super(bulletDebugAppState);
        C13702E.t(anchor, "anchor");
        this.anchor = anchor;
        this.anchorGeometry = createAnchorGeometry();
    }

    private Geometry createAnchorGeometry() {
        Mesh mesh = new Mesh();
        mesh.setBuffer(VertexBuffer.Type.Position, 3, BufferUtils.createFloatBuffer(6));
        mesh.setMode(Mesh.Mode.Lines);
        mesh.setStreamed();
        Geometry geometry = new Geometry(this.anchor.toString(), mesh);
        geometry.setShadowMode(RenderQueue.ShadowMode.Off);
        geometry.setMaterial(((SoftDebugAppState) this.debugAppState).getAnchorMaterial());
        return geometry;
    }

    @Override
    public void controlUpdate(float f10) {
        Mesh mesh = this.anchorGeometry.getMesh();
        VertexBuffer.Type type = VertexBuffer.Type.Position;
        FloatBuffer floatBuffer = mesh.getFloatBuffer(type);
        Vector3f nodeLocation = this.anchor.getSoftBody().nodeLocation(this.anchor.nodeIndex(), null);
        floatBuffer.put(0, nodeLocation.f81611x);
        floatBuffer.put(1, nodeLocation.f81612y);
        floatBuffer.put(2, nodeLocation.f81613z);
        PhysicsRigidBody rigidBody = this.anchor.getRigidBody();
        Vector3f copyPivot = this.anchor.copyPivot(null);
        Transform transform = rigidBody.getTransform(null);
        transform.getScale().set(1.0f, 1.0f, 1.0f);
        Vector3f S10 = f.S(transform, copyPivot, null);
        floatBuffer.put(3, S10.f81611x);
        floatBuffer.put(4, S10.f81612y);
        floatBuffer.put(5, S10.f81613z);
        mesh.getBuffer(type).setUpdateNeeded();
        mesh.updateBound();
    }

    @Override
    public void setSpatial(Spatial spatial) {
        Spatial spatial2;
        if (spatial instanceof Node) {
            ((Node) spatial).attachChild(this.anchorGeometry);
        } else if (spatial == null && (spatial2 = this.spatial) != null) {
            ((Node) spatial2).detachChild(this.anchorGeometry);
        }
        super.setSpatial(spatial);
    }
}
