package com.jme3.bullet;

import android.provider.MediaStore;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.objects.MultiBodyCollider;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import p000if.C13702E;

public class MultiBody extends NativePhysicsObject implements JmeCloneable, Savable {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(MultiBody.class.getName());
    private static final String tagAngularDamping = "angularDamping";
    private static final String tagBaseAngularVelocity = "baseAngularVelocity";
    private static final String tagBaseCollider = "baseCollider";
    private static final String tagBaseInertia = "baseInertia";
    private static final String tagBaseLocation = "baseLocation";
    private static final String tagBaseMass = "baseMass";
    private static final String tagBaseVelocity = "baseVelocity";
    private static final String tagCanSleep = "canSleep";
    private static final String tagCollisionGroup = "collisionGroup";
    private static final String tagCollisionGroupsMask = "collisionGroupsMask";
    private static final String tagFixedBase = "fixedBase";
    private static final String tagGlobalVelocities = "globalVelocities";
    private static final String tagLinearDamping = "linearDamping";
    private static final String tagLinks = "links";
    private static final String tagNumConfigured = "numConfigured";
    private static final String tagNumLinks = "numLinks";
    private static final String tagRK4 = "RK4";
    private static final String tagUserIndex = "userIndex";
    private static final String tagUserIndex2 = "userIndex2";
    private MultiBodyLink[] links;
    private int numConfigured = 0;
    private MultiBodyCollider baseCollider = null;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$bullet$MultiBodyJointType;

        static {
            int[] iArr = new int[MultiBodyJointType.values().length];
            $SwitchMap$com$jme3$bullet$MultiBodyJointType = iArr;
            try {
                iArr[MultiBodyJointType.Fixed.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$bullet$MultiBodyJointType[MultiBodyJointType.Planar.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$bullet$MultiBodyJointType[MultiBodyJointType.Prismatic.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$jme3$bullet$MultiBodyJointType[MultiBodyJointType.Revolute.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$jme3$bullet$MultiBodyJointType[MultiBodyJointType.Spherical.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public MultiBody() {
    }

    private static native void addBaseForce(long j10, Vector3f vector3f);

    private static native void addBaseTorque(long j10, Vector3f vector3f);

    private static native void clearConstraintForces(long j10);

    private static native void clearForcesAndTorques(long j10);

    private static native void clearVelocities(long j10);

    private MultiBodyLink configureClonedLink(MultiBodyLink multiBodyLink) {
        MultiBodyLink multiBodyLink2;
        MultiBodyJointType jointType = multiBodyLink.jointType();
        float mass = multiBodyLink.mass();
        Vector3f inertia = multiBodyLink.inertia(null);
        Quaternion orientation = multiBodyLink.orientation(null);
        boolean z10 = !multiBodyLink.isCollisionWithParent();
        MultiBodyLink parentLink = multiBodyLink.getParentLink();
        if (parentLink != null) {
            multiBodyLink2 = this.links[parentLink.index()];
        } else {
            multiBodyLink2 = null;
        }
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$bullet$MultiBodyJointType[jointType.ordinal()];
        if (i10 == 1) {
            return configureFixedLink(mass, inertia, multiBodyLink2, orientation, multiBodyLink.parent2Pivot(null), multiBodyLink.pivot2Link(null));
        }
        if (i10 == 2) {
            return configurePlanarLink(mass, inertia, multiBodyLink2, orientation, multiBodyLink.axis(null), multiBodyLink.parent2Link(null), z10);
        }
        if (i10 == 3) {
            return configurePrismaticLink(mass, inertia, multiBodyLink2, orientation, multiBodyLink.axis(null), multiBodyLink.parent2Pivot(null), multiBodyLink.pivot2Link(null), z10);
        }
        if (i10 == 4) {
            return configureRevoluteLink(mass, inertia, multiBodyLink2, orientation, multiBodyLink.axis(null), multiBodyLink.parent2Pivot(null), multiBodyLink.pivot2Link(null), z10);
        }
        if (i10 == 5) {
            return configureSphericalLink(mass, inertia, multiBodyLink2, orientation, multiBodyLink.parent2Pivot(null), multiBodyLink.pivot2Link(null), z10);
        }
        throw new IllegalStateException("jointType = " + ((Object) jointType));
    }

    private MultiBodyLink configureLink() {
        int i10 = this.numConfigured;
        this.numConfigured = i10 + 1;
        finalizeMultiDof(nativeId());
        MultiBodyLink multiBodyLink = new MultiBodyLink(this, i10);
        this.links[i10] = multiBodyLink;
        return multiBodyLink;
    }

    private native long create(int i10, float f10, Vector3f vector3f, boolean z10, boolean z11);

    private static native void finalizeMultiDof(long j10);

    private static native void finalizeNative(long j10);

    private static void freeNativeObject(long j10) {
        finalizeNative(j10);
    }

    private static native float getAngularDamping(long j10);

    private static native long getBaseCollider(long j10);

    private static native void getBaseForce(long j10, Vector3f vector3f);

    private static native void getBaseInertia(long j10, Vector3f vector3f);

    private static native float getBaseMass(long j10);

    private static native void getBaseOmega(long j10, Vector3f vector3f);

    private static native void getBasePos(long j10, Vector3f vector3f);

    private static native void getBaseTorque(long j10, Vector3f vector3f);

    private static native void getBaseVel(long j10, Vector3f vector3f);

    private static native void getBaseWorldTransform(long j10, Transform transform);

    private static native boolean getCanSleep(long j10);

    private static native boolean getCanWakeup(long j10);

    private static native int getCollideWithGroups(long j10);

    private static native int getCollisionGroup(long j10);

    private static native float getLinearDamping(long j10);

    private static native float getMaxAppliedImpulse(long j10);

    private static native float getMaxCoordinateVelocity(long j10);

    private static native int getNumDofs(long j10);

    private static native int getNumLinks(long j10);

    private static native int getNumPosVars(long j10);

    private static native long getSpace(long j10);

    private static native boolean getUseGyroTerm(long j10);

    private static native int getUserIndex(long j10);

    private static native int getUserIndex2(long j10);

    private static native void getWorldToBaseRot(long j10, Quaternion quaternion);

    private static native boolean hasFixedBase(long j10);

    private static native boolean isUsingGlobalVelocities(long j10);

    private static native boolean isUsingRK4Integration(long j10);

    private static native void setBaseCollider(long j10, long j11);

    private static native void setBaseOmega(long j10, Vector3f vector3f);

    private static native void setBasePos(long j10, Vector3f vector3f);

    private static native void setBaseVel(long j10, Vector3f vector3f);

    private static native void setBaseWorldTransform(long j10, Transform transform);

    private static native void setCollideWithGroups(long j10, int i10);

    private static native void setCollisionGroup(long j10, int i10);

    private static native void setUserIndex(long j10, int i10);

    private static native void setUserIndex2(long j10, int i10);

    private static native void setWorldToBaseRot(long j10, Quaternion quaternion);

    private static native void setupFixed(long j10, int i10, float f10, Vector3f vector3f, int i11, Quaternion quaternion, Vector3f vector3f2, Vector3f vector3f3);

    private static native void setupPlanar(long j10, int i10, float f10, Vector3f vector3f, int i11, Quaternion quaternion, Vector3f vector3f2, Vector3f vector3f3, boolean z10);

    private static native void setupPrismatic(long j10, int i10, float f10, Vector3f vector3f, int i11, Quaternion quaternion, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4, boolean z10);

    private static native void setupRevolute(long j10, int i10, float f10, Vector3f vector3f, int i11, Quaternion quaternion, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4, boolean z10);

    private static native void setupSpherical(long j10, int i10, float f10, Vector3f vector3f, int i11, Quaternion quaternion, Vector3f vector3f2, Vector3f vector3f3, boolean z10);

    private static native void useGlobalVelocities(long j10, boolean z10);

    private static native void useRK4Integration(long j10, boolean z10);

    public MultiBodyCollider addBaseCollider(CollisionShape collisionShape) {
        C13702E.t(collisionShape, "shape");
        this.baseCollider = new MultiBodyCollider(this, -1);
        setBaseCollider(nativeId(), this.baseCollider.nativeId());
        this.baseCollider.attachShape(collisionShape);
        return this.baseCollider;
    }

    public void addBaseForce(Vector3f vector3f) {
        C13702E.d(vector3f, "force");
        addBaseForce(nativeId(), vector3f);
    }

    public void addBaseTorque(Vector3f vector3f) {
        C13702E.d(vector3f, "torque");
        addBaseTorque(nativeId(), vector3f);
    }

    public float angularDamping() {
        return getAngularDamping(nativeId());
    }

    public Vector3f baseAngularVelocity(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getBaseOmega(nativeId(), vector3f);
        return vector3f;
    }

    public Vector3f baseForce(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getBaseForce(nativeId(), vector3f);
        return vector3f;
    }

    public Vector3f baseInertia(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getBaseInertia(nativeId(), vector3f);
        return vector3f;
    }

    public Vector3f baseLocation(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getBasePos(nativeId(), vector3f);
        return vector3f;
    }

    public float baseMass() {
        return getBaseMass(nativeId());
    }

    public Quaternion baseOrientation(Quaternion quaternion) {
        if (quaternion == null) {
            quaternion = new Quaternion();
        }
        getWorldToBaseRot(nativeId(), quaternion);
        return quaternion;
    }

    public Vector3f baseTorque(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getBaseTorque(nativeId(), vector3f);
        return vector3f;
    }

    public Transform baseTransform(Transform transform) {
        if (transform == null) {
            transform = new Transform();
        }
        getBaseWorldTransform(nativeId(), transform);
        return transform;
    }

    public Vector3f baseVelocity(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getBaseVel(nativeId(), vector3f);
        return vector3f;
    }

    public boolean canSleep() {
        return getCanSleep(nativeId());
    }

    public boolean canWakeup() {
        return getCanWakeup(nativeId());
    }

    public void clearConstraintForces() {
        clearConstraintForces(nativeId());
    }

    public void clearForcesAndTorques() {
        clearForcesAndTorques(nativeId());
    }

    public void clearVelocities() {
        clearVelocities(nativeId());
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        int length = this.links.length;
        long create = create(length, baseMass(), baseInertia(null), hasFixedBase(), canSleep());
        reassignNativeId(create);
        MultiBody multiBody = (MultiBody) obj;
        MultiBodyCollider multiBodyCollider = this.baseCollider;
        if (multiBodyCollider != null) {
            CollisionShape collisionShape = multiBodyCollider.getCollisionShape();
            this.baseCollider = null;
            addBaseCollider((CollisionShape) cloner.clone(collisionShape));
            this.baseCollider.copyPcoProperties(multiBody.getBaseCollider());
        }
        this.numConfigured = 0;
        this.links = new MultiBodyLink[length];
        for (int i10 = 0; i10 < length; i10++) {
            this.links[i10] = configureClonedLink(multiBody.links[i10]);
        }
        finalizeMultiDof(create);
        setCollideWithGroups(multiBody.collideWithGroups());
        setCollisionGroup(multiBody.collisionGroup());
        setUserIndex(multiBody.userIndex());
        setUserIndex2(multiBody.userIndex2());
    }

    public int collideWithGroups() {
        return getCollideWithGroups(nativeId());
    }

    public int collisionGroup() {
        return getCollisionGroup(nativeId());
    }

    public MultiBodyLink configureFixedLink(float f10, Vector3f vector3f, MultiBodyLink multiBodyLink, Quaternion quaternion, Vector3f vector3f2, Vector3f vector3f3) {
        C13702E.E(f10, "mass");
        C13702E.G(vector3f, "inertia");
        C13702E.t(quaternion, MediaStore.Images.ImageColumns.ORIENTATION);
        C13702E.t(vector3f2, "parent to pivot offset");
        C13702E.t(vector3f3, "pivot to link offset");
        setupFixed(nativeId(), this.numConfigured, f10, vector3f, multiBodyLink == null ? -1 : multiBodyLink.index(), quaternion, vector3f2, vector3f3);
        return configureLink();
    }

    public MultiBodyLink configurePlanarLink(float f10, Vector3f vector3f, MultiBodyLink multiBodyLink, Quaternion quaternion, Vector3f vector3f2, Vector3f vector3f3, boolean z10) {
        C13702E.E(f10, "mass");
        C13702E.G(vector3f, "inertia");
        C13702E.t(quaternion, MediaStore.Images.ImageColumns.ORIENTATION);
        C13702E.t(vector3f2, "axis");
        C13702E.t(vector3f3, "parent to link offset");
        setupPlanar(nativeId(), this.numConfigured, f10, vector3f, multiBodyLink == null ? -1 : multiBodyLink.index(), quaternion, vector3f2, vector3f3, z10);
        return configureLink();
    }

    public MultiBodyLink configurePrismaticLink(float f10, Vector3f vector3f, MultiBodyLink multiBodyLink, Quaternion quaternion, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4, boolean z10) {
        C13702E.E(f10, "mass");
        C13702E.G(vector3f, "inertia");
        C13702E.t(quaternion, MediaStore.Images.ImageColumns.ORIENTATION);
        C13702E.t(vector3f2, "axis");
        C13702E.t(vector3f3, "parent to pivot offset");
        C13702E.t(vector3f4, "pivot to link offset");
        setupPrismatic(nativeId(), this.numConfigured, f10, vector3f, multiBodyLink == null ? -1 : multiBodyLink.index(), quaternion, vector3f2, vector3f3, vector3f4, z10);
        return configureLink();
    }

    public MultiBodyLink configureRevoluteLink(float f10, Vector3f vector3f, MultiBodyLink multiBodyLink, Quaternion quaternion, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4, boolean z10) {
        C13702E.E(f10, "mass");
        C13702E.G(vector3f, "inertia");
        C13702E.t(quaternion, MediaStore.Images.ImageColumns.ORIENTATION);
        C13702E.t(vector3f2, "axis");
        C13702E.t(vector3f3, "parent to pivot offset");
        C13702E.t(vector3f4, "pivot to link offset");
        setupRevolute(nativeId(), this.numConfigured, f10, vector3f, multiBodyLink == null ? -1 : multiBodyLink.index(), quaternion, vector3f2, vector3f3, vector3f4, z10);
        return configureLink();
    }

    public MultiBodyLink configureSphericalLink(float f10, Vector3f vector3f, MultiBodyLink multiBodyLink, Quaternion quaternion, Vector3f vector3f2, Vector3f vector3f3, boolean z10) {
        C13702E.E(f10, "mass");
        C13702E.G(vector3f, "inertia");
        C13702E.t(quaternion, MediaStore.Images.ImageColumns.ORIENTATION);
        C13702E.t(vector3f2, "parent to pivot offset");
        C13702E.t(vector3f3, "pivot to link offset");
        setupSpherical(nativeId(), this.numConfigured, f10, vector3f, multiBodyLink == null ? -1 : multiBodyLink.index(), quaternion, vector3f2, vector3f3, z10);
        return configureLink();
    }

    public boolean contains(MultiBodyCollider multiBodyCollider) {
        MultiBodyLink[] multiBodyLinkArr = this.links;
        int length = multiBodyLinkArr.length;
        boolean z10 = false;
        int i10 = 0;
        while (true) {
            if (i10 < length) {
                MultiBodyLink multiBodyLink = multiBodyLinkArr[i10];
                if (multiBodyLink != null && multiBodyLink.getCollider() == multiBodyCollider) {
                    z10 = true;
                    break;
                }
                i10++;
            } else {
                break;
            }
        }
        if (z10 || multiBodyCollider != this.baseCollider) {
            return z10;
        }
        return true;
    }

    public int countConfiguredLinks() {
        return this.numConfigured;
    }

    public int countDofs() {
        return getNumDofs(nativeId());
    }

    public int countPositionVariables() {
        return getNumPosVars(nativeId());
    }

    public MultiBodyCollider getBaseCollider() {
        return this.baseCollider;
    }

    public MultiBodyLink getLink(int i10) {
        C13702E.i(i10, "link index", 0, this.numConfigured - 1);
        return this.links[i10];
    }

    public boolean hasFixedBase() {
        return hasFixedBase(nativeId());
    }

    public boolean isUsingGlobalVelocities() {
        return isUsingGlobalVelocities(nativeId());
    }

    public boolean isUsingGyroTerm() {
        return getUseGyroTerm(nativeId());
    }

    public boolean isUsingRK4() {
        return isUsingRK4Integration(nativeId());
    }

    public float linearDamping() {
        return getLinearDamping(nativeId());
    }

    public List<MultiBodyCollider> listColliders() {
        MultiBodyCollider collider;
        ArrayList arrayList = new ArrayList(this.numConfigured + 1);
        MultiBodyCollider multiBodyCollider = this.baseCollider;
        if (multiBodyCollider != null) {
            arrayList.add(multiBodyCollider);
        }
        for (MultiBodyLink multiBodyLink : this.links) {
            if (multiBodyLink != null && (collider = multiBodyLink.getCollider()) != null) {
                arrayList.add(collider);
            }
        }
        return arrayList;
    }

    public float maxAppliedImpulse() {
        return getMaxAppliedImpulse(nativeId());
    }

    public float maxCoordinateVelocity() {
        return getMaxCoordinateVelocity(nativeId());
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        Vector3f vector3f = (Vector3f) capsule.readSavable(tagBaseInertia, null);
        float readFloat = capsule.readFloat(tagBaseMass, 1.0f);
        boolean readBoolean = capsule.readBoolean(tagCanSleep, true);
        boolean readBoolean2 = capsule.readBoolean(tagFixedBase, false);
        int readInt = capsule.readInt(tagNumLinks, 0);
        long create = create(readInt, readFloat, vector3f, readBoolean2, readBoolean);
        setNativeId(create);
        MultiBodyCollider multiBodyCollider = this.baseCollider;
        if (multiBodyCollider != null) {
            CollisionShape collisionShape = multiBodyCollider.getCollisionShape();
            this.baseCollider = null;
            addBaseCollider(collisionShape);
        }
        MultiBodyLink[] multiBodyLinkArr = this.links;
        this.links = new MultiBodyLink[readInt];
        this.numConfigured = capsule.readInt(tagNumConfigured, 0);
        for (int i10 = 0; i10 < this.numConfigured; i10++) {
            configureClonedLink(multiBodyLinkArr[i10]);
        }
        finalizeMultiDof(create);
        setCollisionGroup(capsule.readInt(tagCollisionGroup, 1));
        setCollideWithGroups(capsule.readInt(tagCollisionGroupsMask, 1));
        setBaseAngularVelocity((Vector3f) capsule.readSavable(tagBaseAngularVelocity, null));
        setBaseLocation((Vector3f) capsule.readSavable(tagBaseLocation, null));
        setBaseVelocity((Vector3f) capsule.readSavable(tagBaseVelocity, null));
        useRK4(capsule.readBoolean(tagRK4, false));
        setUserIndex(capsule.readInt(tagUserIndex, -1));
        setUserIndex2(capsule.readInt(tagUserIndex2, -1));
    }

    public void setBaseAngularVelocity(Vector3f vector3f) {
        C13702E.d(vector3f, "angular velocity");
        setBaseOmega(nativeId(), vector3f);
    }

    public void setBaseLocation(Vector3f vector3f) {
        C13702E.d(vector3f, "location");
        setBasePos(nativeId(), vector3f);
    }

    public void setBaseOrientation(Quaternion quaternion) {
        C13702E.t(quaternion, MediaStore.Images.ImageColumns.ORIENTATION);
        setWorldToBaseRot(nativeId(), quaternion);
    }

    public void setBaseTransform(Transform transform) {
        C13702E.t(transform, "transform");
        setBaseWorldTransform(nativeId(), transform);
    }

    public void setBaseVelocity(Vector3f vector3f) {
        C13702E.d(vector3f, "velocity");
        setBaseVel(nativeId(), vector3f);
    }

    public void setCollideWithGroups(int i10) {
        setCollideWithGroups(nativeId(), i10);
    }

    public void setCollisionGroup(int i10) {
        C13702E.H(Integer.bitCount(i10) == 1, "exactly one bit set");
        setCollisionGroup(nativeId(), i10);
    }

    public void setUserIndex(int i10) {
        setUserIndex(nativeId(), i10);
    }

    public void setUserIndex2(int i10) {
        setUserIndex2(nativeId(), i10);
    }

    public long spaceId() {
        return getSpace(nativeId());
    }

    public void useGlobalVelocities(boolean z10) {
        useGlobalVelocities(nativeId(), z10);
    }

    public void useRK4(boolean z10) {
        useRK4Integration(nativeId(), z10);
    }

    public int userIndex() {
        return getUserIndex(nativeId());
    }

    public int userIndex2() {
        return getUserIndex2(nativeId());
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(angularDamping(), tagAngularDamping, 0.04f);
        capsule.write(baseAngularVelocity(null), tagBaseAngularVelocity, (Savable) null);
        capsule.write(getBaseCollider(), tagBaseCollider, (Savable) null);
        capsule.write(baseInertia(null), tagBaseInertia, (Savable) null);
        capsule.write(baseLocation(null), tagBaseLocation, (Savable) null);
        capsule.write(baseMass(), tagBaseMass, 1.0f);
        capsule.write(baseVelocity(null), tagBaseVelocity, (Savable) null);
        capsule.write(canSleep(), tagCanSleep, true);
        capsule.write(collisionGroup(), tagCollisionGroup, 1);
        capsule.write(collideWithGroups(), tagCollisionGroupsMask, 1);
        capsule.write(hasFixedBase(), tagFixedBase, false);
        capsule.write(isUsingGlobalVelocities(), tagGlobalVelocities, false);
        capsule.write(linearDamping(), tagLinearDamping, 0.04f);
        MultiBodyLink[] multiBodyLinkArr = this.links;
        int length = multiBodyLinkArr.length;
        Savable[] savableArr = new Savable[length];
        System.arraycopy(multiBodyLinkArr, 0, savableArr, 0, length);
        capsule.write(savableArr, tagLinks, (Savable[]) null);
        capsule.write(length, tagNumLinks, 0);
        capsule.write(isUsingRK4(), tagRK4, false);
        capsule.write(userIndex(), tagUserIndex, -1);
        capsule.write(userIndex2(), tagUserIndex2, -1);
    }

    @Override
    public MultiBody jmeClone() {
        try {
            return (MultiBody) clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public MultiBody(int i10, float f10, Vector3f vector3f, boolean z10, boolean z11) {
        C13702E.q(i10, "number of links");
        C13702E.E(f10, "base mass");
        C13702E.G(vector3f, "base inertia");
        long create = create(i10, f10, vector3f, z10, z11);
        super.setNativeId(create);
        finalizeMultiDof(create);
        this.links = new MultiBodyLink[i10];
    }
}
