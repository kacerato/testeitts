package com.jme3.bullet.collision;

import android.provider.MediaStore;
import com.jme3.bounding.BoundingBox;
import com.jme3.bullet.CollisionSpace;
import com.jme3.bullet.NativePhysicsObject;
import com.jme3.bullet.collision.shapes.CollisionShape;
import com.jme3.bullet.debug.DebugMeshInitListener;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.material.Material;
import com.jme3.math.Matrix3f;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import com.simsilica.mathd.Matrix3d;
import com.simsilica.mathd.Quatd;
import com.simsilica.mathd.Vec3d;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.TreeSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.eclipse.jdt.core.Signature;
import p000if.C13702E;
import p000if.EnumC13714j;
import yd.C16181m;

public abstract class PhysicsCollisionObject extends NativePhysicsObject implements JmeCloneable, Savable {
    static final boolean $assertionsDisabled = false;
    public static final int COLLISION_GROUP_01 = 1;
    public static final int COLLISION_GROUP_02 = 2;
    public static final int COLLISION_GROUP_03 = 4;
    public static final int COLLISION_GROUP_04 = 8;
    public static final int COLLISION_GROUP_05 = 16;
    public static final int COLLISION_GROUP_06 = 32;
    public static final int COLLISION_GROUP_07 = 64;
    public static final int COLLISION_GROUP_08 = 128;
    public static final int COLLISION_GROUP_09 = 256;
    public static final int COLLISION_GROUP_10 = 512;
    public static final int COLLISION_GROUP_11 = 1024;
    public static final int COLLISION_GROUP_12 = 2048;
    public static final int COLLISION_GROUP_13 = 4096;
    public static final int COLLISION_GROUP_14 = 8192;
    public static final int COLLISION_GROUP_15 = 16384;
    public static final int COLLISION_GROUP_16 = 32768;
    public static final int COLLISION_GROUP_NONE = 0;
    public static final Logger logger = Logger.getLogger(PhysicsCollisionObject.class.getName());
    private static final String tagAnisotropicFrictionComponents = "anisotropicFrictionComponents";
    private static final String tagAnisotropicFrictionMode = "anisotropicFrictionMode";
    private static final String tagApplicationData = "applicationData";
    private static final String tagCcdMotionThreshold = "ccdMotionThreshold";
    private static final String tagCcdSweptSphereRadius = "ccdSweptSphereRadius";
    private static final String tagCollisionGroup = "collisionGroup";
    private static final String tagCollisionGroupsMask = "collisionGroupsMask";
    private static final String tagCollisionShape = "collisionShape";
    private static final String tagContactDamping = "contactDamping";
    private static final String tagContactProcessingThreshold = "contactProcessingThreshold";
    private static final String tagContactStiffness = "contactStiffness";
    private static final String tagDeactivationTime = "deactivationTime";
    private static final String tagDebugMaterial = "debugMaterial";
    private static final String tagDebugMeshNormals = "debugMeshNormals";
    private static final String tagDebugMeshResolution = "debugMeshResolution";
    private static final String tagFriction = "friction";
    private static final String tagHasCsd = "hasCsd";
    private static final String tagIgnoreList = "ignoreList";
    private static final String tagRestitution = "restitution";
    private static final String tagRollingFriction = "rollingFriction";
    private static final String tagSpinningFriction = "spinningFriction";
    private static final String tagUserIndex = "userIndex";
    private static final String tagUserIndex2 = "userIndex2";
    private static final String tagUserIndex3 = "userIndex3";
    private static final String tagUserObject = "userObject";
    private CollisionShape collisionShape;
    private Collection<PhysicsCollisionObject> ignoreList;
    private DebugMeshInitListener debugMeshInitListener = null;
    private int collideWithGroups = 1;
    private int collisionGroup = 1;
    private int debugMeshResolution = 0;
    private int debugNumSides = 1;
    private Material debugMaterial = null;
    private EnumC13714j debugMeshNormals = EnumC13714j.None;
    private Object applicationData = null;
    private Object userObject = null;

    private static native void activate(long j10, boolean z10);

    public static native void attachCollisionShape(long j10, long j11);

    private boolean checkIgnoreList() {
        int numObjectsWithoutCollision = getNumObjectsWithoutCollision(nativeId());
        Collection<PhysicsCollisionObject> collection = this.ignoreList;
        int size = collection == null ? 0 : collection.size();
        if (size == numObjectsWithoutCollision) {
            return true;
        }
        logger.log(Level.SEVERE, "{0}  jvmCount = {1}, nativeCount = {2}", new Object[]{this, Integer.valueOf(size), Integer.valueOf(numObjectsWithoutCollision)});
        return false;
    }

    public static native void finalizeNative(long j10);

    public static native PhysicsCollisionObject findInstance(long j10);

    private static void freeNativeObject(long j10) {
        finalizeNative(j10);
    }

    private static native int getActivationState(long j10);

    private static native void getAnisotropicFriction(long j10, Vector3f vector3f);

    private static native void getBasis(long j10, Matrix3f matrix3f);

    private static native void getBasisDp(long j10, Matrix3d matrix3d);

    private static native float getCcdMotionThreshold(long j10);

    private static native float getCcdSweptSphereRadius(long j10);

    private static native int getCollideWithGroups(long j10);

    private static native int getCollisionFlags(long j10);

    private static native int getCollisionGroup(long j10);

    private static native CollisionSpace getCollisionSpace(long j10);

    private static native float getContactDamping(long j10);

    private static native float getContactProcessingThreshold(long j10);

    private static native float getContactStiffness(long j10);

    private static native float getDeactivationTime(long j10);

    private static native float getFriction(long j10);

    public static final native int getInternalType(long j10);

    private static native void getLocation(long j10, Vector3f vector3f);

    private static native void getLocationDp(long j10, Vec3d vec3d);

    private static native int getNumObjectsWithoutCollision(long j10);

    private static native long getObjectWithoutCollision(long j10, int i10);

    private static native void getOrientation(long j10, Quaternion quaternion);

    private static native void getOrientationDp(long j10, Quatd quatd);

    private static native int getProxyFilterGroup(long j10);

    private static native int getProxyFilterMask(long j10);

    private static native float getRestitution(long j10);

    private static native float getRollingFriction(long j10);

    private static native long getSpaceId(long j10);

    private static native float getSpinningFriction(long j10);

    private static native int getUserIndex(long j10);

    private static native int getUserIndex2(long j10);

    private static native int getUserIndex3(long j10);

    private static native boolean hasAnisotropicFriction(long j10, int i10);

    private static native boolean hasBroadphaseProxy(long j10);

    private native void initUserPointer(long j10, int i10, int i11);

    private static native boolean isActive(long j10);

    private static native boolean isInWorld(long j10);

    public static native void setActivationState(long j10, int i10);

    private static native void setAnisotropicFriction(long j10, Vector3f vector3f, int i10);

    private static native void setCcdMotionThreshold(long j10, float f10);

    private static native void setCcdSweptSphereRadius(long j10, float f10);

    private static native void setCollideWithGroups(long j10, int i10);

    public static native void setCollisionFlags(long j10, int i10);

    private static native void setCollisionGroup(long j10, int i10);

    private static native void setContactProcessingThreshold(long j10, float f10);

    private static native void setContactStiffnessAndDamping(long j10, float f10, float f11);

    private static native void setDeactivationTime(long j10, float f10);

    private static native void setFriction(long j10, float f10);

    private static native void setIgnoreCollisionCheck(long j10, long j11, boolean z10);

    private static native void setLocationAndBasis(long j10, Vector3f vector3f, Matrix3f matrix3f);

    private static native void setRestitution(long j10, float f10);

    private static native void setRollingFriction(long j10, float f10);

    private static native void setSpinningFriction(long j10, float f10);

    private static native void setUserIndex(long j10, int i10);

    private static native void setUserIndex2(long j10, int i10);

    private static native void setUserIndex3(long j10, int i10);

    public void activate(boolean z10) {
        activate(nativeId(), z10);
    }

    public void addCollideWithGroup(int i10) {
        this.collideWithGroups = i10 | this.collideWithGroups;
        if (hasAssignedNativeObject()) {
            setCollideWithGroups(nativeId(), this.collideWithGroups);
        }
    }

    public void addToIgnoreList(PhysicsCollisionObject physicsCollisionObject) {
        C13702E.t(physicsCollisionObject, "other collision object");
        C13702E.H(physicsCollisionObject != this, "2 distinct collision objects");
        if (this.ignoreList == null) {
            this.ignoreList = new TreeSet();
        }
        if (this.ignoreList.contains(physicsCollisionObject)) {
            return;
        }
        this.ignoreList.add(physicsCollisionObject);
        if (physicsCollisionObject.ignoreList == null) {
            physicsCollisionObject.ignoreList = new TreeSet();
        }
        physicsCollisionObject.ignoreList.add(this);
        setIgnoreCollisionCheck(nativeId(), physicsCollisionObject.nativeId(), true);
    }

    public BoundingBox boundingBox(BoundingBox boundingBox) {
        if (boundingBox == null) {
            boundingBox = new BoundingBox();
        }
        this.collisionShape.boundingBox(getPhysicsLocation(null), getPhysicsRotationMatrix(null), boundingBox);
        return boundingBox;
    }

    public void clearIgnoreList() {
        long nativeId = nativeId();
        Collection<PhysicsCollisionObject> collection = this.ignoreList;
        if (collection == null || collection.isEmpty()) {
            return;
        }
        for (PhysicsCollisionObject physicsCollisionObject : this.ignoreList) {
            setIgnoreCollisionCheck(nativeId, physicsCollisionObject.nativeId(), false);
            physicsCollisionObject.ignoreList.remove(this);
        }
        this.ignoreList.clear();
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        Object obj2 = this.applicationData;
        if (obj2 instanceof Cloneable) {
            this.applicationData = cloner.clone(obj2);
        }
        Object obj3 = this.userObject;
        if (obj3 instanceof Cloneable) {
            this.userObject = cloner.clone(obj3);
        }
        this.collisionShape = (CollisionShape) cloner.clone(this.collisionShape);
        this.debugMaterial = (Material) cloner.clone(this.debugMaterial);
        if (hasAssignedNativeObject()) {
            return;
        }
        this.ignoreList = null;
    }

    public void cloneIgnoreList(Cloner cloner, PhysicsCollisionObject physicsCollisionObject) {
        Collection<PhysicsCollisionObject> collection = physicsCollisionObject.ignoreList;
        if (collection != null) {
            Iterator<PhysicsCollisionObject> it = collection.iterator();
            while (it.hasNext()) {
                PhysicsCollisionObject physicsCollisionObject2 = (PhysicsCollisionObject) cloner.clone(it.next());
                if (physicsCollisionObject2.hasAssignedNativeObject()) {
                    addToIgnoreList(physicsCollisionObject2);
                }
            }
        }
    }

    public int collisionFlags() {
        return getCollisionFlags(nativeId());
    }

    public final void copyPcoProperties(PhysicsCollisionObject physicsCollisionObject) {
        boolean z10 = (physicsCollisionObject.collisionFlags() & 128) != 0;
        setCcdMotionThreshold(physicsCollisionObject.getCcdMotionThreshold());
        setCcdSweptSphereRadius(physicsCollisionObject.getCcdSweptSphereRadius());
        if (z10) {
            setContactDamping(physicsCollisionObject.getContactDamping());
        }
        setContactProcessingThreshold(physicsCollisionObject.getContactProcessingThreshold());
        if (z10) {
            setContactStiffness(physicsCollisionObject.getContactStiffness());
        }
        setDeactivationTime(physicsCollisionObject.getDeactivationTime());
        setFriction(physicsCollisionObject.getFriction());
        setRestitution(physicsCollisionObject.getRestitution());
        setRollingFriction(physicsCollisionObject.getRollingFriction());
        setSpinningFriction(physicsCollisionObject.getSpinningFriction());
        setUserIndex(physicsCollisionObject.userIndex());
        setUserIndex2(physicsCollisionObject.userIndex2());
        setUserIndex3(physicsCollisionObject.userIndex3());
        if (physicsCollisionObject.hasAnisotropicFriction(1)) {
            setAnisotropicFriction(physicsCollisionObject.getAnisotropicFriction(null), 1);
        } else if (physicsCollisionObject.hasAnisotropicFriction(2)) {
            setAnisotropicFriction(physicsCollisionObject.getAnisotropicFriction(null), 2);
        }
    }

    public int countIgnored() {
        Collection<PhysicsCollisionObject> collection = this.ignoreList;
        if (collection == null) {
            return 0;
        }
        return collection.size();
    }

    public DebugMeshInitListener debugMeshInitListener() {
        return this.debugMeshInitListener;
    }

    public EnumC13714j debugMeshNormals() {
        return this.debugMeshNormals;
    }

    public int debugMeshResolution() {
        return this.debugMeshResolution;
    }

    public int debugNumSides() {
        return this.debugNumSides;
    }

    public int getActivationState() {
        return getActivationState(nativeId());
    }

    public Vector3f getAnisotropicFriction(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getAnisotropicFriction(nativeId(), vector3f);
        return vector3f;
    }

    public Object getApplicationData() {
        return this.applicationData;
    }

    public float getCcdMotionThreshold() {
        return getCcdMotionThreshold(nativeId());
    }

    public float getCcdSquareMotionThreshold() {
        float ccdMotionThreshold = getCcdMotionThreshold();
        return ccdMotionThreshold * ccdMotionThreshold;
    }

    public float getCcdSweptSphereRadius() {
        return getCcdSweptSphereRadius(nativeId());
    }

    public int getCollideWithGroups() {
        return this.collideWithGroups;
    }

    public int getCollisionGroup() {
        return this.collisionGroup;
    }

    public CollisionShape getCollisionShape() {
        return this.collisionShape;
    }

    public CollisionSpace getCollisionSpace() {
        if (spaceId() != 0) {
            return getCollisionSpace(nativeId());
        }
        return null;
    }

    public float getContactDamping() {
        return getContactDamping(nativeId());
    }

    public float getContactProcessingThreshold() {
        return getContactProcessingThreshold(nativeId());
    }

    public float getContactStiffness() {
        return getContactStiffness(nativeId());
    }

    public float getDeactivationTime() {
        return getDeactivationTime(nativeId());
    }

    public Material getDebugMaterial() {
        return this.debugMaterial;
    }

    public float getFriction() {
        return getFriction(nativeId());
    }

    public Vector3f getPhysicsLocation() {
        return getPhysicsLocation(null);
    }

    public Vec3d getPhysicsLocationDp(Vec3d vec3d) {
        if (vec3d == null) {
            vec3d = new Vec3d();
        }
        getLocationDp(nativeId(), vec3d);
        return vec3d;
    }

    public Quaternion getPhysicsRotation(Quaternion quaternion) {
        if (quaternion == null) {
            quaternion = new Quaternion();
        }
        getOrientation(nativeId(), quaternion);
        return quaternion;
    }

    public Quatd getPhysicsRotationDp(Quatd quatd) {
        if (quatd == null) {
            quatd = new Quatd();
        }
        getOrientationDp(nativeId(), quatd);
        return quatd;
    }

    public Matrix3f getPhysicsRotationMatrix(Matrix3f matrix3f) {
        if (matrix3f == null) {
            matrix3f = new Matrix3f();
        }
        getBasis(nativeId(), matrix3f);
        return matrix3f;
    }

    public Matrix3d getPhysicsRotationMatrixDp(Matrix3d matrix3d) {
        if (matrix3d == null) {
            matrix3d = new Matrix3d();
        }
        getBasisDp(nativeId(), matrix3d);
        return matrix3d;
    }

    public float getRestitution() {
        return getRestitution(nativeId());
    }

    public float getRollingFriction() {
        return getRollingFriction(nativeId());
    }

    public Vector3f getScale(Vector3f vector3f) {
        return this.collisionShape.getScale(vector3f);
    }

    public float getSpinningFriction() {
        return getSpinningFriction(nativeId());
    }

    public Transform getTransform(Transform transform) {
        if (transform == null) {
            transform = new Transform();
        }
        getPhysicsLocation(transform.getTranslation());
        getPhysicsRotation(transform.getRotation());
        getScale(transform.getScale());
        return transform;
    }

    public Object getUserObject() {
        return this.userObject;
    }

    public boolean hasAnisotropicFriction(int i10) {
        C13702E.i(i10, "mode", 1, 3);
        return hasAnisotropicFriction(nativeId(), i10);
    }

    public boolean ignores(PhysicsCollisionObject physicsCollisionObject) {
        Collection<PhysicsCollisionObject> collection = this.ignoreList;
        if (collection == null || physicsCollisionObject == null) {
            return false;
        }
        return collection.contains(physicsCollisionObject);
    }

    public void initUserPointer() {
        logger.log(Level.FINE, "initUserPointer() for {0}", this);
        initUserPointer(nativeId(), this.collisionGroup, this.collideWithGroups);
    }

    public boolean isActive() {
        return isActive(nativeId());
    }

    public final boolean isContactResponse() {
        return (getCollisionFlags(nativeId()) & 4) == 0;
    }

    public final boolean isInWorld() {
        return isInWorld(nativeId());
    }

    public final boolean isStatic() {
        return (getCollisionFlags(nativeId()) & 1) != 0;
    }

    public PhysicsCollisionObject[] listIgnoredPcos() {
        Collection<PhysicsCollisionObject> collection = this.ignoreList;
        int i10 = 0;
        if (collection == null) {
            return new PhysicsCollisionObject[0];
        }
        PhysicsCollisionObject[] physicsCollisionObjectArr = new PhysicsCollisionObject[collection.size()];
        Iterator<PhysicsCollisionObject> it = this.ignoreList.iterator();
        while (it.hasNext()) {
            physicsCollisionObjectArr[i10] = it.next();
            i10++;
        }
        return physicsCollisionObjectArr;
    }

    public Integer proxyGroup() {
        long nativeId = nativeId();
        if (hasBroadphaseProxy(nativeId)) {
            return Integer.valueOf(getProxyFilterGroup(nativeId));
        }
        return null;
    }

    public Integer proxyMask() {
        long nativeId = nativeId();
        if (hasBroadphaseProxy(nativeId)) {
            return Integer.valueOf(getProxyFilterMask(nativeId));
        }
        return null;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.collisionGroup = capsule.readInt(tagCollisionGroup, 1);
        this.collideWithGroups = capsule.readInt(tagCollisionGroupsMask, 1);
        this.debugMeshNormals = (EnumC13714j) capsule.readEnum(tagDebugMeshNormals, EnumC13714j.class, EnumC13714j.None);
        this.debugMeshResolution = capsule.readInt(tagDebugMeshResolution, 0);
        this.debugMaterial = (Material) capsule.readSavable(tagDebugMaterial, null);
        this.collisionShape = (CollisionShape) capsule.readSavable(tagCollisionShape, null);
    }

    public final void readPcoProperties(InputCapsule inputCapsule) throws IOException {
        setCcdMotionThreshold(inputCapsule.readFloat(tagCcdMotionThreshold, 0.0f));
        setCcdSweptSphereRadius(inputCapsule.readFloat(tagCcdSweptSphereRadius, 0.0f));
        boolean readBoolean = inputCapsule.readBoolean(tagHasCsd, true);
        if (readBoolean) {
            setContactDamping(inputCapsule.readFloat(tagContactDamping, 0.1f));
        }
        setContactProcessingThreshold(inputCapsule.readFloat(tagContactProcessingThreshold, 0.0f));
        if (readBoolean) {
            setContactStiffness(inputCapsule.readFloat(tagContactStiffness, 1.0E30f));
        }
        setDeactivationTime(inputCapsule.readFloat(tagDeactivationTime, 0.0f));
        setFriction(inputCapsule.readFloat(tagFriction, 0.5f));
        setRestitution(inputCapsule.readFloat(tagRestitution, 0.0f));
        setRollingFriction(inputCapsule.readFloat(tagRollingFriction, 0.0f));
        setSpinningFriction(inputCapsule.readFloat(tagSpinningFriction, 0.0f));
        int readInt = inputCapsule.readInt(tagAnisotropicFrictionMode, 0);
        if (readInt != 0) {
            setAnisotropicFriction((Vector3f) inputCapsule.readSavable(tagAnisotropicFrictionComponents, new Vector3f(1.0f, 1.0f, 1.0f)), readInt);
        }
        Savable[] readSavableArray = inputCapsule.readSavableArray(tagIgnoreList, null);
        if (readSavableArray != null) {
            for (Savable savable : readSavableArray) {
                addToIgnoreList((PhysicsCollisionObject) savable);
            }
        }
        this.applicationData = inputCapsule.readSavable(tagApplicationData, null);
        setUserIndex(inputCapsule.readInt(tagUserIndex, -1));
        setUserIndex2(inputCapsule.readInt(tagUserIndex2, -1));
        setUserIndex3(inputCapsule.readInt(tagUserIndex3, -1));
        this.userObject = inputCapsule.readSavable(tagUserObject, null);
    }

    public void removeCollideWithGroup(int i10) {
        this.collideWithGroups = (~i10) & this.collideWithGroups;
        if (hasAssignedNativeObject()) {
            setCollideWithGroups(this.collideWithGroups);
        }
    }

    public void removeFromIgnoreList(PhysicsCollisionObject physicsCollisionObject) {
        C13702E.t(physicsCollisionObject, "other collision object");
        C13702E.H(physicsCollisionObject != this, "2 distinct collision objects");
        Collection<PhysicsCollisionObject> collection = this.ignoreList;
        if (collection == null || !collection.contains(physicsCollisionObject)) {
            return;
        }
        this.ignoreList.remove(physicsCollisionObject);
        physicsCollisionObject.ignoreList.remove(this);
        setIgnoreCollisionCheck(nativeId(), physicsCollisionObject.nativeId(), false);
    }

    public void setAnisotropicFriction(Vector3f vector3f, int i10) {
        C13702E.t(vector3f, "components");
        C13702E.i(i10, "mode", 0, 2);
        setAnisotropicFriction(nativeId(), vector3f, i10);
    }

    public void setApplicationData(Object obj) {
        this.applicationData = obj;
    }

    public void setCcdMotionThreshold(float f10) {
        setCcdMotionThreshold(nativeId(), f10);
    }

    public void setCcdSweptSphereRadius(float f10) {
        setCcdSweptSphereRadius(nativeId(), f10);
    }

    public void setCollideWithGroups(int i10) {
        long nativeId = nativeId();
        this.collideWithGroups = i10;
        setCollideWithGroups(nativeId, i10);
    }

    public void setCollisionGroup(int i10) {
        C13702E.H(Integer.bitCount(i10) == 1, "exactly one bit set");
        this.collisionGroup = i10;
        setCollisionGroup(nativeId(), i10);
    }

    public void setCollisionShape(CollisionShape collisionShape) {
        C13702E.t(collisionShape, "collision shape");
        this.collisionShape = collisionShape;
    }

    public void setContactDamping(float f10) {
        long nativeId = nativeId();
        setContactStiffnessAndDamping(nativeId, getContactStiffness(nativeId), f10);
    }

    public void setContactProcessingThreshold(float f10) {
        setContactProcessingThreshold(nativeId(), f10);
    }

    public void setContactStiffness(float f10) {
        long nativeId = nativeId();
        setContactStiffnessAndDamping(nativeId, f10, getContactDamping(nativeId));
    }

    public void setDeactivationTime(float f10) {
        setDeactivationTime(nativeId(), f10);
    }

    public void setDebugMaterial(Material material) {
        this.debugMaterial = material;
    }

    public void setDebugMeshInitListener(DebugMeshInitListener debugMeshInitListener) {
        this.debugMeshInitListener = debugMeshInitListener;
    }

    public void setDebugMeshNormals(EnumC13714j enumC13714j) {
        C13702E.t(enumC13714j, "new setting");
        this.debugMeshNormals = enumC13714j;
    }

    public void setDebugMeshResolution(int i10) {
        C13702E.i(i10, "new setting", 0, 2);
        this.debugMeshResolution = i10;
    }

    public void setDebugNumSides(int i10) {
        C13702E.i(i10, "number of sides", 0, 2);
        this.debugNumSides = i10;
    }

    public void setFriction(float f10) {
        C13702E.p(f10, tagFriction);
        setFriction(nativeId(), f10);
    }

    public void setIgnoreList(PhysicsCollisionObject[] physicsCollisionObjectArr) {
        C13702E.t(physicsCollisionObjectArr, "desired list");
        clearIgnoreList();
        if (physicsCollisionObjectArr.length > 0) {
            if (this.ignoreList == null) {
                this.ignoreList = new TreeSet();
            }
            for (PhysicsCollisionObject physicsCollisionObject : physicsCollisionObjectArr) {
                if (physicsCollisionObject != null && physicsCollisionObject != this && !this.ignoreList.contains(physicsCollisionObject)) {
                    addToIgnoreList(physicsCollisionObject);
                }
            }
        }
    }

    public void setLocationAndBasis(Vector3f vector3f, Matrix3f matrix3f) {
        C13702E.d(vector3f, "center location");
        C13702E.t(matrix3f, MediaStore.Images.ImageColumns.ORIENTATION);
        setLocationAndBasis(nativeId(), vector3f, matrix3f);
    }

    public void setRestitution(float f10) {
        setRestitution(nativeId(), f10);
    }

    public void setRollingFriction(float f10) {
        setRollingFriction(nativeId(), f10);
    }

    public void setSpinningFriction(float f10) {
        setSpinningFriction(nativeId(), f10);
    }

    public void setUserIndex(int i10) {
        setUserIndex(nativeId(), i10);
    }

    public void setUserIndex2(int i10) {
        setUserIndex2(nativeId(), i10);
    }

    public void setUserIndex3(int i10) {
        setUserIndex3(nativeId(), i10);
    }

    public void setUserObject(Object obj) {
        this.userObject = obj;
    }

    public long spaceId() {
        return getSpaceId(nativeId());
    }

    @Override
    public String toString() {
        String replace = getClass().getSimpleName().replace("Body", "").replace("Control", Signature.SIG_CHAR).replace("Physics", "").replace("Object", "");
        if (!hasAssignedNativeObject()) {
            return replace + "#unassigned";
        }
        return replace + C16181m.f130230g + Long.toHexString(nativeId());
    }

    public int userIndex() {
        return getUserIndex(nativeId());
    }

    public int userIndex2() {
        return getUserIndex2(nativeId());
    }

    public int userIndex3() {
        return getUserIndex3(nativeId());
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        int i10 = 1;
        capsule.write(this.collisionGroup, tagCollisionGroup, 1);
        capsule.write(this.collideWithGroups, tagCollisionGroupsMask, 1);
        capsule.write(this.debugMeshNormals, tagDebugMeshNormals, EnumC13714j.None);
        capsule.write(this.debugMeshResolution, tagDebugMeshResolution, 0);
        capsule.write(this.debugMaterial, tagDebugMaterial, (Savable) null);
        capsule.write(this.collisionShape, tagCollisionShape, (Savable) null);
        Object obj = this.applicationData;
        if (obj instanceof Savable) {
            capsule.write((Savable) obj, tagApplicationData, (Savable) null);
        }
        capsule.write(userIndex(), tagUserIndex, -1);
        capsule.write(userIndex2(), tagUserIndex2, -1);
        capsule.write(userIndex3(), tagUserIndex3, -1);
        Object obj2 = this.userObject;
        if (obj2 instanceof Savable) {
            capsule.write((Savable) obj2, tagUserObject, (Savable) null);
        }
        capsule.write(getCcdMotionThreshold(), tagCcdMotionThreshold, 0.0f);
        capsule.write(getCcdSweptSphereRadius(), tagCcdSweptSphereRadius, 0.0f);
        capsule.write((collisionFlags() & 128) != 0, tagHasCsd, true);
        capsule.write(getContactDamping(), tagContactDamping, 0.1f);
        capsule.write(getContactProcessingThreshold(), tagContactProcessingThreshold, 0.0f);
        capsule.write(getContactStiffness(), tagContactStiffness, 1.0E30f);
        capsule.write(getDeactivationTime(), tagDeactivationTime, 0.0f);
        capsule.write(getFriction(), tagFriction, 0.5f);
        capsule.write(getRestitution(), tagRestitution, 0.0f);
        capsule.write(getRollingFriction(), tagRollingFriction, 0.0f);
        capsule.write(getSpinningFriction(), tagSpinningFriction, 0.0f);
        if (!hasAnisotropicFriction(1)) {
            i10 = 2;
            if (!hasAnisotropicFriction(2)) {
                i10 = 0;
            }
        }
        capsule.write(i10, tagAnisotropicFrictionMode, 0);
        if (i10 != 0) {
            capsule.write(getAnisotropicFriction(null), tagAnisotropicFrictionComponents, (Savable) null);
        }
        Collection<PhysicsCollisionObject> collection = this.ignoreList;
        if (collection != null) {
            Savable[] savableArr = new Savable[collection.size()];
            this.ignoreList.toArray(savableArr);
            capsule.write(savableArr, tagIgnoreList, (Savable[]) null);
        }
    }

    public Vector3f getPhysicsLocation(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getLocation(nativeId(), vector3f);
        return vector3f;
    }

    @Override
    public PhysicsCollisionObject jmeClone() {
        try {
            PhysicsCollisionObject physicsCollisionObject = (PhysicsCollisionObject) clone();
            physicsCollisionObject.unassignNativeObject();
            return physicsCollisionObject;
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }
}
