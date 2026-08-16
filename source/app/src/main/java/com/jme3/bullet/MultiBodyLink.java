package com.jme3.bullet;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.objects.MultiBodyCollider;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Matrix3f;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;
import java.util.logging.Logger;
import p000if.C13702E;

public class MultiBodyLink extends NativePhysicsObject implements JmeCloneable, Savable {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(MultiBodyLink.class.getName());
    private static final String tagCollider = "collider";
    private static final String tagLinkIndex = "linkIndex";
    private static final String tagMultiBody = "multiBody";
    private static final String tagNumDofs = "numDofs";
    private static final String tagParentLink = "parentLink";
    private MultiBodyCollider collider = null;
    private int linkIndex;
    private MultiBody multiBody;
    private long multiBodyId;
    private int numDofs;
    private MultiBodyLink parentLink;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$bullet$MultiBodyJointType;

        static {
            int[] iArr = new int[MultiBodyJointType.values().length];
            $SwitchMap$com$jme3$bullet$MultiBodyJointType = iArr;
            try {
                iArr[MultiBodyJointType.Planar.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$bullet$MultiBodyJointType[MultiBodyJointType.Revolute.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$bullet$MultiBodyJointType[MultiBodyJointType.Prismatic.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public MultiBodyLink() {
    }

    private static native void addConstraintForce(long j10, Vector3f vector3f);

    private static native void addConstraintTorque(long j10, Vector3f vector3f);

    private static native void addForce(long j10, Vector3f vector3f);

    private static native void addJointTorque(long j10, int i10, float f10);

    private static native void addTorque(long j10, Vector3f vector3f);

    private static native void getAppliedForce(long j10, Vector3f vector3f);

    private static native void getAppliedTorque(long j10, Vector3f vector3f);

    private static native void getAxisBottom(long j10, int i10, Vector3f vector3f);

    private static native void getAxisTop(long j10, int i10, Vector3f vector3f);

    private static native long getCollider(long j10, int i10);

    private static native void getConstraintForce(long j10, Vector3f vector3f);

    private static native void getConstraintTorque(long j10, Vector3f vector3f);

    private static native void getDVector(long j10, Vector3f vector3f);

    private static native int getDofCount(long j10);

    private static native void getEVector(long j10, Vector3f vector3f);

    private static native int getFlags(long j10);

    private static native void getInertiaLocal(long j10, Vector3f vector3f);

    private static native float getJointPos(long j10, int i10);

    private static native float getJointTorque(long j10, int i10);

    private static native int getJointType(long j10);

    private static native float getJointVel(long j10, int i10, int i11);

    private static native long getLinkId(long j10, int i10);

    private static native float getMass(long j10);

    private static native void getParent2LinkRotation(long j10, Quaternion quaternion);

    private static native int getParentIndex(long j10);

    private static native int getPosVarCount(long j10);

    private static native void getQ0Parent2LinkRotation(long j10, Quaternion quaternion);

    private static native void getWorldTransform(long j10, Transform transform);

    private static native void localFrameToWorld(long j10, int i10, Matrix3f matrix3f);

    private static native void localPosToWorld(long j10, int i10, Vector3f vector3f);

    private static native void setCollider(long j10, long j11);

    private static native void setJointPos(long j10, int i10, int i11, float f10);

    private static native void setJointVel(long j10, int i10, int i11, float f10);

    private static native void worldPosToLocal(long j10, int i10, Vector3f vector3f);

    public MultiBodyCollider addCollider(CollisionShape collisionShape) {
        C13702E.t(collisionShape, "shape");
        this.collider = new MultiBodyCollider(this.multiBody, this.linkIndex);
        setCollider(nativeId(), this.collider.nativeId());
        this.collider.attachShape(collisionShape);
        return this.collider;
    }

    public void addConstraintForce(Vector3f vector3f) {
        C13702E.d(vector3f, "force");
        addConstraintForce(nativeId(), vector3f);
    }

    public void addConstraintTorque(Vector3f vector3f) {
        C13702E.d(vector3f, "torque");
        addConstraintTorque(nativeId(), vector3f);
    }

    public void addForce(Vector3f vector3f) {
        C13702E.d(vector3f, "force");
        addForce(nativeId(), vector3f);
    }

    public void addJointTorque(int i10, float f10) {
        C13702E.i(i10, "DOF index", 0, this.numDofs - 1);
        addJointTorque(nativeId(), i10, f10);
    }

    public void addTorque(Vector3f vector3f) {
        C13702E.d(vector3f, "torque");
        addTorque(nativeId(), vector3f);
    }

    public Vector3f appliedForce(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getAppliedForce(nativeId(), vector3f);
        return vector3f;
    }

    public Vector3f appliedTorque(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getAppliedTorque(nativeId(), vector3f);
        return vector3f;
    }

    public Vector3f axis(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        MultiBodyJointType jointType = jointType();
        long nativeId = nativeId();
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$bullet$MultiBodyJointType[jointType.ordinal()];
        if (i10 == 1 || i10 == 2) {
            getAxisTop(nativeId, 0, vector3f);
        } else {
            if (i10 != 3) {
                throw new IllegalStateException("jointType = " + ((Object) jointType));
            }
            getAxisBottom(nativeId, 0, vector3f);
        }
        return vector3f;
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        MultiBody multiBody = (MultiBody) cloner.clone(this.multiBody);
        this.multiBody = multiBody;
        this.multiBodyId = multiBody.nativeId();
        this.parentLink = (MultiBodyLink) cloner.clone(this.parentLink);
        reassignNativeId(getLinkId(this.multiBodyId, this.linkIndex));
        this.collider = (MultiBodyCollider) cloner.clone(this.collider);
    }

    public Vector3f constraintForce(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getConstraintForce(nativeId(), vector3f);
        return vector3f;
    }

    public Vector3f constraintTorque(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getConstraintTorque(nativeId(), vector3f);
        return vector3f;
    }

    public int countDofs() {
        return this.numDofs;
    }

    public int countPositionVariables() {
        return getPosVarCount(nativeId());
    }

    public MultiBodyCollider getCollider() {
        return this.collider;
    }

    public MultiBody getMultiBody() {
        return this.multiBody;
    }

    public MultiBodyLink getParentLink() {
        return this.parentLink;
    }

    public int index() {
        return this.linkIndex;
    }

    public Vector3f inertia(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getInertiaLocal(nativeId(), vector3f);
        return vector3f;
    }

    public boolean isCollisionWithParent() {
        return (getFlags(nativeId()) & 1) == 0;
    }

    public float jointPosition(int i10) {
        C13702E.i(i10, "DOF index", 0, this.numDofs - 1);
        return getJointPos(nativeId(), i10);
    }

    public float jointTorque(int i10) {
        C13702E.i(i10, "DOF index", 0, this.numDofs - 1);
        return getJointTorque(nativeId(), i10);
    }

    public MultiBodyJointType jointType() {
        return MultiBodyJointType.values()[getJointType(nativeId())];
    }

    public float jointVelocity(int i10) {
        C13702E.i(i10, "DOF index", 0, this.numDofs - 1);
        return getJointVel(this.multiBodyId, this.linkIndex, i10);
    }

    public Vector3f location(Vector3f vector3f) {
        Vector3f vector3f2 = vector3f == null ? new Vector3f() : vector3f.zero();
        localPosToWorld(this.multiBodyId, this.linkIndex, vector3f2);
        return vector3f2;
    }

    public float mass() {
        return getMass(nativeId());
    }

    public Quaternion orientation(Quaternion quaternion) {
        if (quaternion == null) {
            quaternion = new Quaternion();
        }
        getQ0Parent2LinkRotation(nativeId(), quaternion);
        return quaternion;
    }

    public Vector3f parent2Link(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getEVector(nativeId(), vector3f);
        return vector3f;
    }

    public Vector3f parent2Pivot(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getEVector(nativeId(), vector3f);
        return vector3f;
    }

    public Vector3f pivot2Link(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getDVector(nativeId(), vector3f);
        return vector3f;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.collider = (MultiBodyCollider) capsule.readSavable(tagCollider, null);
        this.linkIndex = capsule.readInt(tagLinkIndex, -1);
        this.multiBody = (MultiBody) capsule.readSavable(tagMultiBody, null);
        this.numDofs = capsule.readInt(tagNumDofs, 0);
        this.parentLink = (MultiBodyLink) capsule.readSavable(tagParentLink, null);
    }

    public void setJointPosition(int i10, float f10) {
        C13702E.i(i10, "DOF index", 0, this.numDofs - 1);
        setJointPos(this.multiBodyId, this.linkIndex, i10, f10);
    }

    public void setJointVelocity(int i10, float f10) {
        C13702E.i(i10, "DOF index", 0, this.numDofs - 1);
        setJointVel(this.multiBodyId, this.linkIndex, i10, f10);
    }

    public Transform worldTransform(Transform transform) {
        if (transform == null) {
            transform = new Transform();
        }
        getWorldTransform(nativeId(), transform);
        return transform;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.collider, tagCollider, (Savable) null);
        capsule.write(this.linkIndex, tagLinkIndex, -1);
        capsule.write(this.multiBody, tagMultiBody, (Savable) null);
        capsule.write(this.numDofs, tagNumDofs, 0);
        capsule.write(this.parentLink, tagParentLink, (Savable) null);
    }

    @Override
    public MultiBodyLink jmeClone() {
        try {
            return (MultiBodyLink) clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public MultiBodyLink(MultiBody multiBody, int i10) {
        C13702E.t(multiBody, "multibody");
        C13702E.q(i10, FirebaseAnalytics.d.f67690b0);
        this.linkIndex = i10;
        this.multiBody = multiBody;
        long nativeId = multiBody.nativeId();
        this.multiBodyId = nativeId;
        long linkId = getLinkId(nativeId, i10);
        super.setNativeIdNotTracked(linkId);
        this.numDofs = getDofCount(linkId);
        int parentIndex = getParentIndex(linkId);
        if (parentIndex == -1) {
            this.parentLink = null;
        } else {
            this.parentLink = multiBody.getLink(parentIndex);
        }
    }
}
