package com.jme3.anim;

import com.jme3.anim.util.HasLocalTransform;
import com.jme3.anim.util.JointModelTransform;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.material.MatParamOverride;
import com.jme3.math.Matrix4f;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.shader.VarType;
import com.jme3.util.SafeArrayList;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Joint implements Savable, JmeCloneable, HasLocalTransform {
    private Node attachedNode;

    private int f81543id;
    private JointModelTransform jointModelTransform;
    private String name;
    private Joint parent;
    private Geometry targetGeometry;
    private SafeArrayList<Joint> children = new SafeArrayList<>(Joint.class);
    private Transform localTransform = new Transform();
    private Transform initialTransform = new Transform();
    private Matrix4f inverseModelBindMatrix = new Matrix4f();

    public Joint() {
    }

    private void updateAttachNode() {
        Geometry geometry;
        Node node = this.attachedNode;
        if (node == null) {
            return;
        }
        Node parent = node.getParent();
        if (parent == null || (geometry = this.targetGeometry) == null || (geometry.getParent() == parent && this.targetGeometry.getLocalTransform().isIdentity())) {
            this.attachedNode.setLocalTransform(getModelTransform());
            return;
        }
        Transform m1289clone = getModelTransform().m1289clone();
        for (Spatial spatial = this.targetGeometry; spatial != parent && spatial != null; spatial = spatial.getParent()) {
            m1289clone.combineWithParent(spatial.getLocalTransform());
        }
        this.attachedNode.setLocalTransform(m1289clone);
    }

    public void addChild(Joint joint) {
        this.children.add(joint);
        joint.parent = this;
    }

    public void applyBindPose() {
        this.jointModelTransform.applyBindPose(this.localTransform, this.inverseModelBindMatrix, this.parent);
        updateModelTransforms();
        for (Joint joint : this.children.getArray()) {
            joint.applyBindPose();
        }
    }

    public void applyInitialPose() {
        setLocalTransform(this.initialTransform);
        updateModelTransforms();
        for (Joint joint : this.children.getArray()) {
            joint.applyInitialPose();
        }
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.children = (SafeArrayList) cloner.clone(this.children);
        this.parent = (Joint) cloner.clone(this.parent);
        this.attachedNode = (Node) cloner.clone(this.attachedNode);
        this.targetGeometry = (Geometry) cloner.clone(this.targetGeometry);
        this.localTransform = (Transform) cloner.clone(this.localTransform);
        this.initialTransform = (Transform) cloner.clone(this.initialTransform);
        this.inverseModelBindMatrix = (Matrix4f) cloner.clone(this.inverseModelBindMatrix);
    }

    public Node getAttachmentsNode(int i10, SafeArrayList<Geometry> safeArrayList) {
        this.targetGeometry = null;
        Iterator<Geometry> it = safeArrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Geometry next = it.next();
            Mesh mesh = next.getMesh();
            if (mesh != null && mesh.isAnimatedByJoint(i10)) {
                this.targetGeometry = next;
                break;
            }
        }
        if (this.attachedNode == null) {
            Node node = new Node(this.name + "_attachnode");
            this.attachedNode = node;
            node.setUserData("AttachedBone", this);
            this.attachedNode.addMatParamOverride(new MatParamOverride(VarType.Int, "NumberOfBones", null));
        }
        return this.attachedNode;
    }

    public List<Joint> getChildren() {
        return this.children;
    }

    public int getId() {
        return this.f81543id;
    }

    public Transform getInitialTransform() {
        return this.initialTransform;
    }

    public Matrix4f getInverseModelBindMatrix() {
        return this.inverseModelBindMatrix;
    }

    public JointModelTransform getJointModelTransform() {
        return this.jointModelTransform;
    }

    public Quaternion getLocalRotation() {
        return this.localTransform.getRotation();
    }

    public Vector3f getLocalScale() {
        return this.localTransform.getScale();
    }

    @Override
    public Transform getLocalTransform() {
        return this.localTransform;
    }

    public Vector3f getLocalTranslation() {
        return this.localTransform.getTranslation();
    }

    public Transform getModelTransform() {
        return this.jointModelTransform.getModelTransform();
    }

    public String getName() {
        return this.name;
    }

    public void getOffsetTransform(Matrix4f matrix4f) {
        this.jointModelTransform.getOffsetTransform(matrix4f, this.inverseModelBindMatrix);
    }

    public Joint getParent() {
        return this.parent;
    }

    @Override
    public Object jmeClone() {
        try {
            return (Joint) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.name = capsule.readString("name", null);
        this.attachedNode = (Node) capsule.readSavable("attachedNode", null);
        this.targetGeometry = (Geometry) capsule.readSavable("targetGeometry", null);
        this.initialTransform = (Transform) capsule.readSavable("initialTransform", new Transform());
        this.inverseModelBindMatrix = (Matrix4f) capsule.readSavable("inverseModelBindMatrix", this.inverseModelBindMatrix);
        ArrayList readSavableArrayList = capsule.readSavableArrayList("children", null);
        for (int size = readSavableArrayList.size() - 1; size >= 0; size--) {
            addChild((Joint) readSavableArrayList.get(size));
        }
    }

    public void saveBindPose() {
        getModelTransform().toTransformMatrix(this.inverseModelBindMatrix);
        this.inverseModelBindMatrix.invertLocal();
    }

    public void saveInitialPose() {
        this.initialTransform.set(this.localTransform);
    }

    public void setId(int i10) {
        this.f81543id = i10;
    }

    public void setInverseModelBindMatrix(Matrix4f matrix4f) {
        this.inverseModelBindMatrix = matrix4f;
    }

    public void setJointModelTransform(JointModelTransform jointModelTransform) {
        this.jointModelTransform = jointModelTransform;
    }

    public void setLocalRotation(Quaternion quaternion) {
        this.localTransform.setRotation(quaternion);
    }

    public void setLocalScale(Vector3f vector3f) {
        this.localTransform.setScale(vector3f);
    }

    @Override
    public void setLocalTransform(Transform transform) {
        this.localTransform.set(transform);
    }

    public void setLocalTranslation(Vector3f vector3f) {
        this.localTransform.setTranslation(vector3f);
    }

    public void setName(String str) {
        this.name = str;
    }

    public final void update() {
        updateModelTransforms();
        for (Joint joint : this.children.getArray()) {
            joint.update();
        }
    }

    public final void updateModelTransforms() {
        this.jointModelTransform.updateModelTransform(this.localTransform, this.parent);
        updateAttachNode();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.name, "name", (String) null);
        capsule.write(this.attachedNode, "attachedNode", (Savable) null);
        capsule.write(this.targetGeometry, "targetGeometry", (Savable) null);
        capsule.write(this.initialTransform, "initialTransform", new Transform());
        capsule.write(this.inverseModelBindMatrix, "inverseModelBindMatrix", new Matrix4f());
        capsule.writeSavableArrayList(new ArrayList(this.children), "children", null);
    }

    public Joint(String str) {
        this.name = str;
    }
}
