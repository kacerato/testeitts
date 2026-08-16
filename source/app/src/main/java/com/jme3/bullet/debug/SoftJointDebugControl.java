package com.jme3.bullet.debug;

import com.jme3.bullet.joints.JointEnd;
import com.jme3.bullet.joints.SoftPhysicsJoint;
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

class SoftJointDebugControl extends AbstractPhysicsDebugControl {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(SoftJointDebugControl.class.getName());
    private final Geometry endsGeometry;
    private final SoftPhysicsJoint joint;

    public SoftJointDebugControl(BulletDebugAppState bulletDebugAppState, SoftPhysicsJoint softPhysicsJoint) {
        super(bulletDebugAppState);
        this.joint = softPhysicsJoint;
        this.endsGeometry = createEndsGeometry();
    }

    private Geometry createEndsGeometry() {
        Mesh mesh = new Mesh();
        mesh.setBuffer(VertexBuffer.Type.Position, 3, BufferUtils.createFloatBuffer(6));
        mesh.setMode(Mesh.Mode.Lines);
        mesh.setStreamed();
        Geometry geometry = new Geometry(this.joint.toString(), mesh);
        geometry.setShadowMode(RenderQueue.ShadowMode.Off);
        geometry.setMaterial(((SoftDebugAppState) this.debugAppState).getAnchorMaterial());
        return geometry;
    }

    @Override
    public void controlUpdate(float f10) {
        Mesh mesh = this.endsGeometry.getMesh();
        VertexBuffer.Type type = VertexBuffer.Type.Position;
        FloatBuffer floatBuffer = mesh.getFloatBuffer(type);
        Vector3f clusterCenter = this.joint.getSoftBodyA().clusterCenter(this.joint.clusterIndexA(), null);
        floatBuffer.put(0, clusterCenter.f81611x);
        floatBuffer.put(1, clusterCenter.f81612y);
        floatBuffer.put(2, clusterCenter.f81613z);
        Vector3f vector3f = new Vector3f();
        if (this.joint.isSoftSoft()) {
            this.joint.getSoftBodyB().clusterCenter(this.joint.clusterIndexB(), vector3f);
        } else {
            this.joint.getBody(JointEnd.B).getPhysicsLocation(vector3f);
        }
        floatBuffer.put(3, vector3f.f81611x);
        floatBuffer.put(4, vector3f.f81612y);
        floatBuffer.put(5, vector3f.f81613z);
        mesh.getBuffer(type).setUpdateNeeded();
        mesh.updateBound();
    }

    @Override
    public void setSpatial(Spatial spatial) {
        Spatial spatial2;
        if (spatial instanceof Node) {
            ((Node) spatial).attachChild(this.endsGeometry);
        } else if (spatial == null && (spatial2 = this.spatial) != null) {
            ((Node) spatial2).detachChild(this.endsGeometry);
        }
        super.setSpatial(spatial);
    }
}
