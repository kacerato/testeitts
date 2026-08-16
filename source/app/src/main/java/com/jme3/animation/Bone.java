package com.jme3.animation;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.material.MatParamOverride;
import com.jme3.math.Matrix3f;
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
import com.jme3.util.TempVars;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

@Deprecated
public final class Bone implements Savable, JmeCloneable {
    public static final int SAVABLE_VERSION = 2;
    private Node attachNode;
    private Vector3f bindPos;
    private Quaternion bindRot;
    private Vector3f bindScale;
    private ArrayList<Bone> children;
    private transient float currentWeightSum;
    private Vector3f localPos;
    private Quaternion localRot;
    private Vector3f localScale;
    private Vector3f modelBindInversePos;
    private Quaternion modelBindInverseRot;
    private Vector3f modelBindInverseScale;
    private Vector3f modelPos;
    private Quaternion modelRot;
    private Vector3f modelScale;
    private String name;
    private Bone parent;
    private Geometry targetGeometry;
    private Transform tmpTransform;
    private boolean userControl;

    public Bone(String str) {
        this.children = new ArrayList<>();
        this.userControl = false;
        this.targetGeometry = null;
        this.localPos = new Vector3f();
        this.localRot = new Quaternion();
        this.localScale = new Vector3f(1.0f, 1.0f, 1.0f);
        this.modelPos = new Vector3f();
        this.modelRot = new Quaternion();
        this.modelScale = new Vector3f();
        this.currentWeightSum = -1.0f;
        if (str != null) {
            this.name = str;
            this.bindPos = new Vector3f();
            this.bindRot = new Quaternion();
            this.bindScale = new Vector3f(1.0f, 1.0f, 1.0f);
            this.modelBindInversePos = new Vector3f();
            this.modelBindInverseRot = new Quaternion();
            this.modelBindInverseScale = new Vector3f();
            return;
        }
        throw new IllegalArgumentException("Name cannot be null");
    }

    private String toString(int i10) {
        StringBuilder sb2 = new StringBuilder();
        for (int i11 = 0; i11 < i10; i11++) {
            sb2.append('-');
        }
        sb2.append(this.name);
        sb2.append(" bone\n");
        Iterator<Bone> it = this.children.iterator();
        while (it.hasNext()) {
            sb2.append(it.next().toString(i10 + 1));
        }
        return sb2.toString();
    }

    private void updateAttachNode() {
        Geometry geometry;
        Node parent = this.attachNode.getParent();
        if (parent == null || (geometry = this.targetGeometry) == null || (geometry.getParent() == parent && this.targetGeometry.getLocalTransform().isIdentity())) {
            this.attachNode.setLocalTranslation(this.modelPos);
            this.attachNode.setLocalRotation(this.modelRot);
            this.attachNode.setLocalScale(this.modelScale);
        } else {
            if (this.targetGeometry.isIgnoreTransform()) {
                this.attachNode.setLocalTranslation(this.modelPos);
                this.attachNode.setLocalRotation(this.modelRot);
                this.attachNode.setLocalScale(this.modelScale);
                this.attachNode.getLocalTransform().combineWithParent(this.attachNode.getParent().getWorldTransform().invert());
                return;
            }
            Transform transform = new Transform(this.modelPos, this.modelRot, this.modelScale);
            for (Spatial spatial = this.targetGeometry; spatial != parent && spatial != null; spatial = spatial.getParent()) {
                transform.combineWithParent(spatial.getLocalTransform());
            }
            this.attachNode.setLocalTransform(transform);
        }
    }

    public void addChild(Bone bone) {
        this.children.add(bone);
        bone.parent = this;
    }

    public void blendAnimTransforms(Vector3f vector3f, Quaternion quaternion, Vector3f vector3f2, float f10) {
        if (this.userControl || f10 == 0.0f) {
            return;
        }
        float f11 = this.currentWeightSum;
        if (f11 == 1.0f) {
            return;
        }
        if (f11 == -1.0f || f11 == 0.0f) {
            this.localPos.set(this.bindPos).addLocal(vector3f);
            this.localRot.set(this.bindRot).multLocal(quaternion);
            if (vector3f2 != null) {
                this.localScale.set(this.bindScale).multLocal(vector3f2);
            }
            this.currentWeightSum = f10;
            return;
        }
        TempVars tempVars = TempVars.get();
        Vector3f vector3f3 = tempVars.vect1;
        Vector3f vector3f4 = tempVars.vect2;
        Quaternion quaternion2 = tempVars.quat1;
        vector3f3.set(this.bindPos).addLocal(vector3f);
        this.localPos.interpolateLocal(vector3f3, f10);
        quaternion2.set(this.bindRot).multLocal(quaternion);
        this.localRot.nlerp(quaternion2, f10);
        if (vector3f2 != null) {
            vector3f4.set(this.bindScale).multLocal(vector3f2);
            this.localScale.interpolateLocal(vector3f4, f10);
        }
        this.currentWeightSum = 1.0f;
        tempVars.release();
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.parent = (Bone) cloner.clone(this.parent);
        this.children = (ArrayList) cloner.clone(this.children);
        this.attachNode = (Node) cloner.clone(this.attachNode);
        this.targetGeometry = (Geometry) cloner.clone(this.targetGeometry);
        this.bindPos = (Vector3f) cloner.clone(this.bindPos);
        this.bindRot = (Quaternion) cloner.clone(this.bindRot);
        this.bindScale = (Vector3f) cloner.clone(this.bindScale);
        this.modelBindInversePos = (Vector3f) cloner.clone(this.modelBindInversePos);
        this.modelBindInverseRot = (Quaternion) cloner.clone(this.modelBindInverseRot);
        this.modelBindInverseScale = (Vector3f) cloner.clone(this.modelBindInverseScale);
        this.localPos = (Vector3f) cloner.clone(this.localPos);
        this.localRot = (Quaternion) cloner.clone(this.localRot);
        this.localScale = (Vector3f) cloner.clone(this.localScale);
        this.modelPos = (Vector3f) cloner.clone(this.modelPos);
        this.modelRot = (Quaternion) cloner.clone(this.modelRot);
        this.modelScale = (Vector3f) cloner.clone(this.modelScale);
        this.tmpTransform = (Transform) cloner.clone(this.tmpTransform);
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
            if (mesh != null && mesh.isAnimatedByBone(i10)) {
                this.targetGeometry = next;
                break;
            }
        }
        if (this.attachNode == null) {
            Node node = new Node(this.name + "_attachnode");
            this.attachNode = node;
            node.setUserData("AttachedBone", this);
            this.attachNode.addMatParamOverride(new MatParamOverride(VarType.Int, "NumberOfBones", null));
        }
        return this.attachNode;
    }

    public Transform getBindInverseTransform() {
        Transform transform = new Transform();
        transform.setTranslation(this.bindPos);
        transform.setRotation(this.bindRot);
        Vector3f vector3f = this.bindScale;
        if (vector3f != null) {
            transform.setScale(vector3f);
        }
        return transform.invert();
    }

    public Vector3f getBindPosition() {
        return this.bindPos;
    }

    public Quaternion getBindRotation() {
        return this.bindRot;
    }

    public Vector3f getBindScale() {
        return this.bindScale;
    }

    public ArrayList<Bone> getChildren() {
        return this.children;
    }

    public Transform getCombinedTransform(Vector3f vector3f, Quaternion quaternion) {
        if (this.tmpTransform == null) {
            this.tmpTransform = new Transform();
        }
        quaternion.mult(this.localPos, this.tmpTransform.getTranslation()).addLocal(vector3f);
        this.tmpTransform.setRotation(quaternion).getRotation().multLocal(this.localRot);
        return this.tmpTransform;
    }

    public Vector3f getLocalPosition() {
        return this.localPos;
    }

    public Quaternion getLocalRotation() {
        return this.localRot;
    }

    public Vector3f getLocalScale() {
        return this.localScale;
    }

    public Vector3f getModelBindInversePosition() {
        return this.modelBindInversePos;
    }

    public Quaternion getModelBindInverseRotation() {
        return this.modelBindInverseRot;
    }

    public Vector3f getModelBindInverseScale() {
        return this.modelBindInverseScale;
    }

    public Transform getModelBindInverseTransform() {
        Transform transform = new Transform();
        transform.setTranslation(this.modelBindInversePos);
        transform.setRotation(this.modelBindInverseRot);
        Vector3f vector3f = this.modelBindInverseScale;
        if (vector3f != null) {
            transform.setScale(vector3f);
        }
        return transform;
    }

    public Vector3f getModelSpacePosition() {
        return this.modelPos;
    }

    public Quaternion getModelSpaceRotation() {
        return this.modelRot;
    }

    public Vector3f getModelSpaceScale() {
        return this.modelScale;
    }

    public String getName() {
        return this.name;
    }

    public void getOffsetTransform(Matrix4f matrix4f, Quaternion quaternion, Vector3f vector3f, Vector3f vector3f2, Matrix3f matrix3f) {
        Vector3f mult = this.modelScale.mult(this.modelBindInverseScale, vector3f2);
        Quaternion mult2 = this.modelRot.mult(this.modelBindInverseRot, quaternion);
        matrix4f.setTransform(this.modelPos.add(mult2.mult(mult.mult(this.modelBindInversePos, vector3f), vector3f), vector3f), mult, mult2.toRotationMatrix(matrix3f));
    }

    public Bone getParent() {
        return this.parent;
    }

    @Deprecated
    public Vector3f getWorldBindInversePosition() {
        return this.modelBindInversePos;
    }

    @Deprecated
    public Quaternion getWorldBindInverseRotation() {
        return this.modelBindInverseRot;
    }

    @Deprecated
    public Vector3f getWorldBindInverseScale() {
        return this.modelBindInverseScale;
    }

    @Deprecated
    public Vector3f getWorldBindPosition() {
        return this.bindPos;
    }

    @Deprecated
    public Quaternion getWorldBindRotation() {
        return this.bindRot;
    }

    @Deprecated
    public Vector3f getWorldBindScale() {
        return this.bindScale;
    }

    public boolean hasUserControl() {
        return this.userControl;
    }

    @Override
    public Object jmeClone() {
        try {
            return (Bone) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.name = capsule.readString("name", null);
        if (capsule.getSavableVersion(Bone.class) < 2) {
            this.bindPos = (Vector3f) capsule.readSavable("initialPos", null);
            this.bindRot = (Quaternion) capsule.readSavable("initialRot", null);
            this.bindScale = (Vector3f) capsule.readSavable("initialScale", new Vector3f(1.0f, 1.0f, 1.0f));
        } else {
            this.bindPos = (Vector3f) capsule.readSavable("bindPos", null);
            this.bindRot = (Quaternion) capsule.readSavable("bindRot", null);
            this.bindScale = (Vector3f) capsule.readSavable("bindScale", new Vector3f(1.0f, 1.0f, 1.0f));
        }
        this.attachNode = (Node) capsule.readSavable("attachNode", null);
        this.targetGeometry = (Geometry) capsule.readSavable("targetGeometry", null);
        this.localPos.set(this.bindPos);
        this.localRot.set(this.bindRot);
        this.localScale.set(this.bindScale);
        ArrayList readSavableArrayList = capsule.readSavableArrayList("children", null);
        for (int size = readSavableArrayList.size() - 1; size >= 0; size--) {
            addChild((Bone) readSavableArrayList.get(size));
        }
    }

    public final void reset() {
        if (!this.userControl) {
            this.localPos.set(this.bindPos);
            this.localRot.set(this.bindRot);
            this.localScale.set(this.bindScale);
        }
        for (int size = this.children.size() - 1; size >= 0; size--) {
            this.children.get(size).reset();
        }
    }

    public void setAnimTransforms(Vector3f vector3f, Quaternion quaternion, Vector3f vector3f2) {
        if (this.userControl) {
            return;
        }
        this.localPos.set(this.bindPos).addLocal(vector3f);
        this.localRot.set(this.bindRot).multLocal(quaternion);
        if (vector3f2 != null) {
            this.localScale.set(this.bindScale).multLocal(vector3f2);
        }
    }

    public void setAttachmentsNode(Node node) {
        this.attachNode = node;
    }

    public void setBindTransforms(Vector3f vector3f, Quaternion quaternion, Vector3f vector3f2) {
        this.bindPos.set(vector3f);
        this.bindRot.set(quaternion);
        if (vector3f2 != null) {
            this.bindScale.set(vector3f2);
        }
        this.localPos.set(vector3f);
        this.localRot.set(quaternion);
        if (vector3f2 != null) {
            this.localScale.set(vector3f2);
        }
    }

    public void setBindingPose() {
        this.bindPos.set(this.localPos);
        this.bindRot.set(this.localRot);
        this.bindScale.set(this.localScale);
        if (this.modelBindInversePos == null) {
            this.modelBindInversePos = new Vector3f();
            this.modelBindInverseRot = new Quaternion();
            this.modelBindInverseScale = new Vector3f();
        }
        this.modelBindInversePos.set(this.modelPos);
        this.modelBindInversePos.negateLocal();
        this.modelBindInverseRot.set(this.modelRot);
        this.modelBindInverseRot.inverseLocal();
        this.modelBindInverseScale.set(Vector3f.UNIT_XYZ);
        this.modelBindInverseScale.divideLocal(this.modelScale);
        Iterator<Bone> it = this.children.iterator();
        while (it.hasNext()) {
            it.next().setBindingPose();
        }
    }

    public void setLocalRotation(Quaternion quaternion) {
        if (!this.userControl) {
            throw new IllegalStateException("User control must be on bone to allow user transforms");
        }
        this.localRot.set(quaternion);
    }

    public void setLocalScale(Vector3f vector3f) {
        if (!this.userControl) {
            throw new IllegalStateException("User control must be on bone to allow user transforms");
        }
        this.localScale.set(vector3f);
    }

    public void setLocalTranslation(Vector3f vector3f) {
        if (!this.userControl) {
            throw new IllegalStateException("User control must be on bone to allow user transforms");
        }
        this.localPos.set(vector3f);
    }

    public void setUserControl(boolean z10) {
        this.userControl = z10;
    }

    public void setUserTransforms(Vector3f vector3f, Quaternion quaternion, Vector3f vector3f2) {
        if (!this.userControl) {
            throw new IllegalStateException("You must call setUserControl(true) in order to setUserTransform to work");
        }
        this.localPos.set(this.bindPos);
        this.localRot.set(this.bindRot);
        this.localScale.set(this.bindScale);
        this.localPos.addLocal(vector3f);
        this.localRot.multLocal(quaternion);
        this.localScale.multLocal(vector3f2);
    }

    public void setUserTransformsInModelSpace(Vector3f vector3f, Quaternion quaternion) {
        if (!this.userControl) {
            throw new IllegalStateException("You must call setUserControl(true) in order to setUserTransformsInModelSpace to work");
        }
        this.modelPos.set(vector3f);
        this.modelRot.set(quaternion);
        Node node = this.attachNode;
        if (node != null) {
            node.setLocalTranslation(vector3f);
            this.attachNode.setLocalRotation(quaternion);
        }
    }

    public final void update() {
        updateModelTransforms();
        for (int size = this.children.size() - 1; size >= 0; size--) {
            this.children.get(size).update();
        }
    }

    public final void updateModelTransforms() {
        float f10 = this.currentWeightSum;
        if (f10 == 1.0f) {
            this.currentWeightSum = -1.0f;
        } else if (f10 != -1.0f) {
            if (f10 == 0.0f) {
                this.localRot.set(this.bindRot);
                this.localPos.set(this.bindPos);
                this.localScale.set(this.bindScale);
            } else {
                float f11 = 1.0f - f10;
                this.localRot.nlerp(this.bindRot, f11);
                this.localPos.interpolateLocal(this.bindPos, f11);
                this.localScale.interpolateLocal(this.bindScale, f11);
            }
            this.currentWeightSum = -1.0f;
        }
        Bone bone = this.parent;
        if (bone != null) {
            bone.modelRot.mult(this.localRot, this.modelRot);
            this.parent.modelScale.mult(this.localScale, this.modelScale);
            this.parent.modelRot.mult(this.localPos, this.modelPos);
            this.modelPos.multLocal(this.parent.modelScale);
            this.modelPos.addLocal(this.parent.modelPos);
        } else {
            this.modelRot.set(this.localRot);
            this.modelPos.set(this.localPos);
            this.modelScale.set(this.localScale);
        }
        if (this.attachNode != null) {
            updateAttachNode();
        }
    }

    @Deprecated
    public final void updateWorldVectors() {
        updateModelTransforms();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.name, "name", (String) null);
        capsule.write(this.attachNode, "attachNode", (Savable) null);
        capsule.write(this.targetGeometry, "targetGeometry", (Savable) null);
        capsule.write(this.bindPos, "bindPos", (Savable) null);
        capsule.write(this.bindRot, "bindRot", (Savable) null);
        capsule.write(this.bindScale, "bindScale", new Vector3f(1.0f, 1.0f, 1.0f));
        capsule.writeSavableArrayList(this.children, "children", null);
    }

    public String toString() {
        return toString(0);
    }

    public Bone(Bone bone) {
        this.children = new ArrayList<>();
        this.userControl = false;
        this.targetGeometry = null;
        this.localPos = new Vector3f();
        this.localRot = new Quaternion();
        this.localScale = new Vector3f(1.0f, 1.0f, 1.0f);
        this.modelPos = new Vector3f();
        this.modelRot = new Quaternion();
        this.modelScale = new Vector3f();
        this.currentWeightSum = -1.0f;
        this.name = bone.name;
        this.userControl = bone.userControl;
        this.bindPos = bone.bindPos.m1292clone();
        this.bindRot = bone.bindRot.m1285clone();
        this.bindScale = bone.bindScale.m1292clone();
        this.modelBindInversePos = bone.modelBindInversePos.m1292clone();
        this.modelBindInverseRot = bone.modelBindInverseRot.m1285clone();
        this.modelBindInverseScale = bone.modelBindInverseScale.m1292clone();
    }

    public Bone() {
        this.children = new ArrayList<>();
        this.userControl = false;
        this.targetGeometry = null;
        this.localPos = new Vector3f();
        this.localRot = new Quaternion();
        this.localScale = new Vector3f(1.0f, 1.0f, 1.0f);
        this.modelPos = new Vector3f();
        this.modelRot = new Quaternion();
        this.modelScale = new Vector3f();
        this.currentWeightSum = -1.0f;
    }
}
