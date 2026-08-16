package com.jme3.scene.debug.custom;

import com.jme3.anim.Armature;
import com.jme3.anim.Joint;
import com.jme3.collision.Collidable;
import com.jme3.collision.CollisionResult;
import com.jme3.collision.CollisionResults;
import com.jme3.math.ColorRGBA;
import com.jme3.math.MathUtils;
import com.jme3.math.Ray;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.Node;
import com.jme3.scene.VertexBuffer;
import com.jme3.scene.shape.Line;
import java.nio.FloatBuffer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class ArmatureNode extends Node {
    public static final float PIXEL_BOX = 10.0f;
    private final Armature armature;
    private Camera camera;
    private static final ColorRGBA selectedColor = ColorRGBA.Orange;
    private static final ColorRGBA selectedColorJoint = ColorRGBA.Yellow;
    private static final ColorRGBA outlineColor = ColorRGBA.LightGray;
    private static final ColorRGBA baseColor = new ColorRGBA(0.05f, 0.05f, 0.05f, 1.0f);
    private final Map<Joint, Geometry[]> jointToGeoms = new HashMap();
    private final Map<Geometry, Joint> geomToJoint = new HashMap();
    private Joint selectedJoint = null;
    private final Vector3f tempVec3f = new Vector3f();
    private final Vector2f tempVec2f = new Vector2f();

    public ArmatureNode(Armature armature, Node node, Node node2, Node node3, List<Joint> list) {
        this.armature = armature;
        Geometry geometry = new Geometry("Armature Origin", new JointShape());
        setColor(geometry, ColorRGBA.Green);
        attach(node, true, geometry);
        for (Joint joint : armature.getRoots()) {
            createSkeletonGeoms(joint, node, node2, node3, list);
        }
        updateModelBound();
    }

    private void attach(Node node, boolean z10, Geometry geometry) {
        if (z10) {
            node.attachChild(geometry);
        } else {
            ((Node) node.getChild(0)).attachChild(geometry);
        }
    }

    private void resetSelection() {
        Joint joint = this.selectedJoint;
        if (joint == null) {
            return;
        }
        Geometry[] geometryArr = this.jointToGeoms.get(joint);
        setColor(geometryArr[0], ColorRGBA.White);
        Geometry geometry = geometryArr[1];
        if (geometry != null) {
            setColor(geometry, geometryArr[2] == null ? outlineColor : baseColor);
        }
        Geometry geometry2 = geometryArr[2];
        if (geometry2 != null) {
            setColor(geometry2, outlineColor);
        }
        this.selectedJoint = null;
    }

    private void setColor(Geometry geometry, ColorRGBA colorRGBA) {
        int vertexCount = geometry.getMesh().getVertexCount() * 4;
        float[] fArr = new float[vertexCount];
        for (int i10 = 0; i10 < vertexCount; i10 += 4) {
            fArr[i10] = colorRGBA.f81598r;
            fArr[i10 + 1] = colorRGBA.f81597g;
            fArr[i10 + 2] = colorRGBA.f81596b;
            fArr[i10 + 3] = colorRGBA.f81595a;
        }
        Mesh mesh = geometry.getMesh();
        VertexBuffer.Type type = VertexBuffer.Type.Color;
        VertexBuffer buffer = mesh.getBuffer(type);
        if (buffer == null) {
            geometry.getMesh().setBuffer(type, 4, fArr);
            return;
        }
        FloatBuffer floatBuffer = (FloatBuffer) buffer.getData();
        floatBuffer.rewind();
        floatBuffer.put(fArr);
        buffer.updateData(floatBuffer);
    }

    private void updateBoneMesh(Geometry geometry, Vector3f vector3f, Vector3f[] vector3fArr) {
        if (geometry.getMesh() instanceof ArmatureInterJointsWire) {
            ((ArmatureInterJointsWire) geometry.getMesh()).updatePoints(vector3f, vector3fArr);
        } else if (geometry.getMesh() instanceof Line) {
            ((Line) geometry.getMesh()).updatePoints(vector3f, vector3fArr[0]);
        }
        geometry.updateModelBound();
    }

    @Override
    public int collideWith(Collidable collidable, CollisionResults collisionResults) {
        Camera camera;
        if (!(collidable instanceof Ray) || (camera = this.camera) == null) {
            return 0;
        }
        Ray ray = (Ray) collidable;
        camera.getScreenCoordinates(ray.getOrigin(), this.tempVec3f);
        Vector2f vector2f = this.tempVec2f;
        Vector3f vector3f = this.tempVec3f;
        vector2f.f81609x = vector3f.f81611x;
        vector2f.f81610y = vector3f.f81612y;
        int pick = pick(vector2f, collisionResults);
        if (pick > 0) {
            return pick;
        }
        for (Geometry geometry : this.geomToJoint.o()) {
            if (!(geometry.getMesh() instanceof JointShape)) {
                Vector3f vector3f2 = (Vector3f) geometry.getUserData("start");
                for (Vector3f vector3f3 : (Vector3f[]) geometry.getUserData("end")) {
                    float raySegmentShortestDistance = MathUtils.raySegmentShortestDistance(ray, vector3f2, vector3f3, this.camera);
                    if (raySegmentShortestDistance > 0.0f && raySegmentShortestDistance < 10.0f) {
                        CollisionResult collisionResult = new CollisionResult();
                        collisionResult.setGeometry(geometry);
                        collisionResults.addCollision(collisionResult);
                        pick++;
                    }
                }
            }
        }
        return pick;
    }

    public final void createSkeletonGeoms(Joint joint, Node node, Node node2, Node node3, List<Joint> list) {
        List<Joint> list2;
        Vector3f[] vector3fArr;
        Mesh armatureInterJointsWire;
        Mesh armatureInterJointsWire2;
        Node node4;
        Node node5;
        Geometry geometry;
        Geometry geometry2;
        Vector3f m1292clone = joint.getModelTransform().getTranslation().m1292clone();
        if (joint.getChildren().isEmpty()) {
            list2 = list;
            vector3fArr = null;
        } else {
            int size = joint.getChildren().size();
            vector3fArr = new Vector3f[size];
            for (int i10 = 0; i10 < size; i10++) {
                vector3fArr[i10] = joint.getChildren().get(i10).getModelTransform().getTranslation().m1292clone();
            }
            list2 = list;
        }
        boolean contains = list2.contains(joint);
        Geometry geometry3 = new Geometry(joint.getName() + "Joint", new JointShape());
        geometry3.setLocalTranslation(m1292clone);
        attach(node, contains, geometry3);
        if (vector3fArr == null) {
            this.geomToJoint.put(geometry3, joint);
            geometry2 = null;
            geometry = null;
        } else {
            if (vector3fArr.length == 1) {
                armatureInterJointsWire = new Line(m1292clone, vector3fArr[0]);
                node5 = node3;
                armatureInterJointsWire2 = new Line(m1292clone, vector3fArr[0]);
                node4 = node2;
            } else {
                armatureInterJointsWire = new ArmatureInterJointsWire(m1292clone, vector3fArr);
                armatureInterJointsWire2 = new ArmatureInterJointsWire(m1292clone, vector3fArr);
                node4 = (Node) node2.getChild(1);
                node5 = null;
            }
            Geometry geometry4 = new Geometry(joint.getName() + "Bone", armatureInterJointsWire);
            setColor(geometry4, node5 == null ? outlineColor : baseColor);
            this.geomToJoint.put(geometry4, joint);
            geometry4.setUserData("start", getWorldTransform().transformVector(m1292clone, m1292clone));
            for (Vector3f vector3f : vector3fArr) {
                getWorldTransform().transformVector(vector3f, vector3f);
            }
            geometry4.setUserData("end", vector3fArr);
            geometry4.setQueueBucket(RenderQueue.Bucket.Transparent);
            attach(node4, contains, geometry4);
            if (node5 != null) {
                Geometry geometry5 = new Geometry(joint.getName() + "BoneOutline", armatureInterJointsWire2);
                setColor(geometry5, outlineColor);
                attach(node5, contains, geometry5);
                geometry2 = geometry5;
                geometry = geometry4;
            } else {
                geometry = geometry4;
                geometry2 = null;
            }
        }
        this.jointToGeoms.put(joint, new Geometry[]{geometry3, geometry, geometry2});
        Iterator<Joint> it = joint.getChildren().iterator();
        while (it.hasNext()) {
            createSkeletonGeoms(it.next(), node, node2, node3, list);
        }
    }

    public Joint getSelectedJoint() {
        return this.selectedJoint;
    }

    public int pick(Vector2f vector2f, CollisionResults collisionResults) {
        int i10 = 0;
        if (this.camera == null) {
            return 0;
        }
        for (Geometry geometry : this.geomToJoint.o()) {
            if (geometry.getMesh() instanceof JointShape) {
                this.camera.getScreenCoordinates(geometry.getWorldTranslation(), this.tempVec3f);
                float f10 = vector2f.f81609x;
                Vector3f vector3f = this.tempVec3f;
                float f11 = vector3f.f81611x;
                if (f10 <= f11 + 10.0f && f10 >= f11 - 10.0f) {
                    float f12 = vector2f.f81610y;
                    float f13 = vector3f.f81612y;
                    if (f12 <= f13 + 10.0f && f12 >= f13 - 10.0f) {
                        CollisionResult collisionResult = new CollisionResult();
                        collisionResult.setGeometry(geometry);
                        collisionResults.addCollision(collisionResult);
                        i10++;
                    }
                }
            }
        }
        return i10;
    }

    public Joint select(Geometry geometry) {
        if (geometry == null) {
            resetSelection();
            return null;
        }
        Joint joint = this.geomToJoint.get(geometry);
        if (joint == null || this.selectedJoint == joint) {
            return null;
        }
        resetSelection();
        this.selectedJoint = joint;
        Geometry[] geometryArr = this.jointToGeoms.get(joint);
        setColor(geometryArr[0], selectedColorJoint);
        Geometry geometry2 = geometryArr[1];
        if (geometry2 != null) {
            setColor(geometry2, selectedColor);
        }
        Geometry geometry3 = geometryArr[2];
        if (geometry3 != null) {
            setColor(geometry3, baseColor);
        }
        return joint;
    }

    public void setCamera(Camera camera) {
        this.camera = camera;
    }

    public void setHeadColor(Joint joint, ColorRGBA colorRGBA) {
        setColor(this.jointToGeoms.get(joint)[0], colorRGBA);
    }

    public void setLineColor(ColorRGBA colorRGBA) {
        Iterator<Geometry[]> it = this.jointToGeoms.values().iterator();
        while (it.hasNext()) {
            Geometry geometry = it.next()[1];
            if (geometry != null) {
                setColor(geometry, colorRGBA);
            }
        }
    }

    public void updateGeometry() {
        this.armature.update();
        for (Joint joint : this.armature.getRoots()) {
            updateSkeletonGeoms(joint);
        }
    }

    public final void updateSkeletonGeoms(Joint joint) {
        Geometry[] geometryArr = this.jointToGeoms.get(joint);
        if (geometryArr != null) {
            geometryArr[0].setLocalTranslation(joint.getModelTransform().getTranslation());
            Geometry geometry = geometryArr[1];
            if (geometry != null) {
                Vector3f vector3f = (Vector3f) geometry.getUserData("start");
                Vector3f[] vector3fArr = (Vector3f[]) geometry.getUserData("end");
                vector3f.set(joint.getModelTransform().getTranslation());
                if (vector3fArr != null) {
                    for (int i10 = 0; i10 < joint.getChildren().size(); i10++) {
                        vector3fArr[i10].set(joint.getChildren().get(i10).getModelTransform().getTranslation());
                    }
                    updateBoneMesh(geometry, vector3f, vector3fArr);
                    Geometry geometry2 = geometryArr[2];
                    if (geometry2 != null) {
                        updateBoneMesh(geometry2, vector3f, vector3fArr);
                    }
                    geometry.setUserData("start", getWorldTransform().transformVector(vector3f, vector3f));
                    for (Vector3f vector3f2 : vector3fArr) {
                        getWorldTransform().transformVector(vector3f2, vector3f2);
                    }
                    geometry.setUserData("end", vector3fArr);
                }
            }
        }
        Iterator<Joint> it = joint.getChildren().iterator();
        while (it.hasNext()) {
            updateSkeletonGeoms(it.next());
        }
    }

    public void setHeadColor(ColorRGBA colorRGBA) {
        Iterator<Geometry[]> it = this.jointToGeoms.values().iterator();
        while (it.hasNext()) {
            setColor(it.next()[0], colorRGBA);
        }
    }
}
