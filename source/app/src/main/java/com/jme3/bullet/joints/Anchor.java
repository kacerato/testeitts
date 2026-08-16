package com.jme3.bullet.joints;

import com.jme3.bullet.objects.PhysicsRigidBody;
import com.jme3.bullet.objects.PhysicsSoftBody;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.logging.Logger;
import p000if.C13702E;

public class Anchor extends PhysicsJoint {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(Anchor.class.getName());
    private static final String tagAllowCollisions = "allowCollisions";
    private static final String tagInfluence = "influence";
    private static final String tagNodeIndexA = "nodeIndexA";
    private static final String tagPivotInB = "pivotInB";
    private boolean allowCollisions;
    private float influence = 1.0f;
    private int nodeIndexA;
    private Vector3f pivotInB;

    public Anchor() {
    }

    private static native long createAnchor(long j10, int i10, long j11, Vector3f vector3f, boolean z10, float f10);

    private void createAnchor() {
        setNativeIdNotTracked(createAnchor(getSoftBody().nativeId(), this.nodeIndexA, getRigidBody().nativeId(), this.pivotInB, this.allowCollisions, this.influence));
    }

    private static native void setInfluence(long j10, float f10);

    private static native void setPivotInB(long j10, Vector3f vector3f);

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        if (hasAssignedNativeObject()) {
            return;
        }
        this.pivotInB = (Vector3f) cloner.clone(this.pivotInB);
        createAnchor();
    }

    public Vector3f copyPivot(Vector3f vector3f) {
        return vector3f == null ? this.pivotInB.m1292clone() : vector3f.set(this.pivotInB);
    }

    public PhysicsRigidBody getRigidBody() {
        return (PhysicsRigidBody) getBodyB();
    }

    public PhysicsSoftBody getSoftBody() {
        return (PhysicsSoftBody) getBodyA();
    }

    public float influence() {
        return this.influence;
    }

    public boolean isAllowCollision() {
        return this.allowCollisions;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }

    public int nodeIndex() {
        return this.nodeIndexA;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.allowCollisions = capsule.readBoolean(tagAllowCollisions, true);
        this.influence = capsule.readFloat(tagInfluence, 1.0f);
        this.nodeIndexA = capsule.readInt(tagNodeIndexA, 0);
        this.pivotInB = (Vector3f) capsule.readSavable(tagPivotInB, new Vector3f());
        createAnchor();
    }

    public void setInfluence(float f10) {
        C13702E.f(f10, "amount");
        this.influence = f10;
        setInfluence(nativeId(), f10);
    }

    public void setPivotInB(Vector3f vector3f) {
        C13702E.t(vector3f, "location");
        this.pivotInB.set(vector3f);
        setPivotInB(nativeId(), vector3f);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.allowCollisions, tagAllowCollisions, true);
        capsule.write(this.influence, tagInfluence, 1.0f);
        capsule.write(this.nodeIndexA, tagNodeIndexA, 0);
        capsule.write(this.pivotInB, tagPivotInB, (Savable) null);
    }

    public Anchor(PhysicsSoftBody physicsSoftBody, int i10, PhysicsRigidBody physicsRigidBody, Vector3f vector3f, boolean z10) {
        C13702E.i(i10, "node index", 0, physicsSoftBody.countNodes() - 1);
        C13702E.t(physicsRigidBody, "rigid body B");
        C13702E.d(vector3f, "pivot location");
        setBodyA(physicsSoftBody);
        physicsSoftBody.addJoint(this);
        this.nodeIndexA = i10;
        setBodyB(physicsRigidBody);
        physicsRigidBody.addJoint(this);
        this.allowCollisions = z10;
        this.pivotInB = vector3f.m1292clone();
        createAnchor();
    }
}
