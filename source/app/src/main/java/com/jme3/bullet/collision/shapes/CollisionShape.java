package com.jme3.bullet.collision.shapes;

import androidx.constraintlayout.motion.widget.Key;
import com.jme3.bounding.BoundingBox;
import com.jme3.bullet.NativePhysicsObject;
import com.jme3.bullet.util.DebugShapeFactory;
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
import com.simsilica.mathd.Vec3d;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import jf.h;
import mf.C14234j;
import p000if.C13702E;
import yd.C16181m;

public abstract class CollisionShape extends NativePhysicsObject implements JmeCloneable, Savable {
    static final boolean $assertionsDisabled = false;
    private static final String tagEnableContactFilter = "enableContactFilter";
    private static final String tagMargin = "margin";
    private static final String tagScale = "scale";
    private static final String tagUserIndex = "userIndex";
    private static final String tagUserIndex2 = "userIndex2";
    protected boolean enableContactFilter = false;
    protected float margin = defaultMargin;
    protected Vector3f scale = new Vector3f(1.0f, 1.0f, 1.0f);
    public static final Logger logger = Logger.getLogger(CollisionShape.class.getName());
    private static final Quaternion rotateIdentity = new Quaternion();
    private static final Transform transformIdentity = new Transform();
    private static final Vector3f translateIdentity = new Vector3f(0.0f, 0.0f, 0.0f);
    private static float defaultMargin = 0.04f;

    private boolean checkScale(Vector3f vector3f) {
        getLocalScaling(nativeId(), vector3f);
        boolean equals = this.scale.equals(vector3f);
        if (!equals) {
            logger.log(Level.WARNING, "mismatch detected: shape={0} copy={1} native={2}", new Object[]{this, this.scale, vector3f});
        }
        return equals;
    }

    private static native void finalizeNative(long j10);

    private static void freeNativeObject(long j10) {
        DebugShapeFactory.removeShapeFromCache(j10);
        finalizeNative(j10);
    }

    private static native void getAabb(long j10, Vector3f vector3f, Matrix3f matrix3f, Vector3f vector3f2, Vector3f vector3f3);

    public static float getDefaultMargin() {
        return defaultMargin;
    }

    private static native void getLocalScaling(long j10, Vector3f vector3f);

    private static native void getLocalScalingDp(long j10, Vec3d vec3d);

    private static native float getMargin(long j10);

    public static final native int getShapeType(long j10);

    private static native int getUserIndex(long j10);

    private static native int getUserIndex2(long j10);

    private static native boolean isConcave(long j10);

    private static native boolean isContactFilterEnabled(long j10);

    private static native boolean isConvex(long j10);

    private static native boolean isInfinite(long j10);

    private static native boolean isNonMoving(long j10);

    private static native boolean isPolyhedral(long j10);

    private static native void setContactFilterEnabled(long j10, boolean z10);

    public static void setDefaultMargin(float f10) {
        C13702E.E(f10, tagMargin);
        defaultMargin = f10;
    }

    private static native void setLocalScaling(long j10, Vector3f vector3f);

    private static native void setMargin(long j10, float f10);

    private static native void setUserIndex(long j10, int i10);

    private static native void setUserIndex2(long j10, int i10);

    public Vector3f aabbCenter(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        boundingBox(translateIdentity, rotateIdentity, (BoundingBox) null).getCenter(vector3f);
        return vector3f;
    }

    public float aabbScaledVolume() {
        Vector3f extent = boundingBox(translateIdentity, rotateIdentity, (BoundingBox) null).getExtent(null);
        return extent.f81611x * 8.0f * extent.f81612y * extent.f81613z;
    }

    public BoundingBox boundingBox(Vector3f vector3f, Matrix3f matrix3f, BoundingBox boundingBox) {
        C13702E.d(vector3f, "translation");
        C13702E.t(matrix3f, Key.ROTATION);
        if (boundingBox == null) {
            boundingBox = new BoundingBox();
        }
        recalculateAabb();
        long nativeId = nativeId();
        Vector3f vector3f2 = new Vector3f();
        Vector3f vector3f3 = new Vector3f();
        getAabb(nativeId, vector3f, matrix3f, vector3f3, vector3f2);
        boundingBox.setMinMax(vector3f3, vector3f2);
        return boundingBox;
    }

    public boolean canScale(Vector3f vector3f) {
        if (vector3f == null) {
            return false;
        }
        return h.z(vector3f);
    }

    public boolean canSplit() {
        return false;
    }

    public void cloneFields(Cloner cloner, Object obj) {
        this.scale = (Vector3f) cloner.clone(this.scale);
        unassignNativeObject();
    }

    public final void copyShapeProperties(CollisionShape collisionShape) {
        setUserIndex(collisionShape.userIndex());
        setUserIndex2(collisionShape.userIndex2());
    }

    public float getMargin() {
        return this.margin;
    }

    public Vector3f getScale(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        vector3f.set(this.scale);
        return vector3f;
    }

    public Vec3d getScaleDp(Vec3d vec3d) {
        long nativeId = nativeId();
        if (vec3d == null) {
            vec3d = new Vec3d();
        }
        getLocalScalingDp(nativeId, vec3d);
        return vec3d;
    }

    public int getShapeType() {
        return getShapeType(nativeId());
    }

    public boolean isConcave() {
        return isConcave(nativeId());
    }

    public boolean isContactFilterEnabled() {
        return this.enableContactFilter;
    }

    public boolean isConvex() {
        return isConvex(nativeId());
    }

    public boolean isInfinite() {
        return isInfinite(nativeId());
    }

    public boolean isNonMoving() {
        return isNonMoving(nativeId());
    }

    public boolean isPolyhedral() {
        return isPolyhedral(nativeId());
    }

    public float maxRadius() {
        return DebugShapeFactory.maxDistance(this, transformIdentity, 0);
    }

    public final float nativeMargin() {
        return getMargin(nativeId());
    }

    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.enableContactFilter = capsule.readBoolean(tagEnableContactFilter, false);
        this.scale.set((Vector3f) capsule.readSavable("scale", new Vector3f(1.0f, 1.0f, 1.0f)));
        this.margin = capsule.readFloat(tagMargin, 0.04f);
    }

    public final void readShapeProperties(InputCapsule inputCapsule) throws IOException {
        setUserIndex(inputCapsule.readInt(tagUserIndex, -1));
        setUserIndex2(inputCapsule.readInt(tagUserIndex2, -1));
    }

    public void recalculateAabb() {
    }

    public float scaledVolume() {
        throw new UnsupportedOperationException("Not implemented for: " + ((Object) this));
    }

    public void setContactFilterEnabled(boolean z10) {
        setContactFilterEnabled(nativeId(), z10);
        this.enableContactFilter = z10;
    }

    public void setMargin(float f10) {
        C13702E.E(f10, tagMargin);
        setMargin(nativeId(), f10);
        logger.log(Level.FINE, "Margining {0}.", this);
        this.margin = f10;
    }

    @Override
    public void setNativeId(long j10) {
        super.setNativeId(j10);
        logger.log(Level.FINE, "Created {0}.", this);
    }

    public void setScale(float f10) {
        setScale(new Vector3f(f10, f10, f10));
    }

    public void setUserIndex(int i10) {
        setUserIndex(nativeId(), i10);
    }

    public void setUserIndex2(int i10) {
        setUserIndex2(nativeId(), i10);
    }

    public CollisionShape toSplittableShape() {
        if (canSplit()) {
            return this;
        }
        throw new IllegalArgumentException("this = " + ((Object) this));
    }

    @Override
    public String toString() {
        return C14234j.a(this) + C16181m.f130230g + Long.toHexString(nativeId());
    }

    public void updateScale() {
        getLocalScaling(nativeId(), this.scale);
    }

    public int userIndex() {
        return getUserIndex(nativeId());
    }

    public int userIndex2() {
        return getUserIndex2(nativeId());
    }

    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.enableContactFilter, tagEnableContactFilter, false);
        capsule.write(this.scale, "scale", (Savable) null);
        capsule.write(this.margin, tagMargin, 0.04f);
        capsule.write(userIndex(), tagUserIndex, -1);
        capsule.write(userIndex2(), tagUserIndex2, -1);
    }

    @Override
    public CollisionShape jmeClone() {
        try {
            return (CollisionShape) clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public void setScale(Vector3f vector3f) {
        if (canScale(vector3f)) {
            this.scale.set(vector3f);
            setLocalScaling(nativeId(), vector3f);
            logger.log(Level.FINE, "Scaling {0}.", this);
            return;
        }
        throw new IllegalArgumentException(String.format("%s cannot be scaled to (%s,%s,%s)", getClass().getCanonicalName(), Float.valueOf(vector3f.f81611x), Float.valueOf(vector3f.f81612y), Float.valueOf(vector3f.f81613z)));
    }

    public BoundingBox boundingBox(Vector3f vector3f, Quaternion quaternion, BoundingBox boundingBox) {
        C13702E.d(vector3f, "translation");
        C13702E.t(quaternion, Key.ROTATION);
        if (boundingBox == null) {
            boundingBox = new BoundingBox();
        }
        recalculateAabb();
        long nativeId = nativeId();
        Matrix3f matrix3f = new Matrix3f().set(quaternion);
        Vector3f vector3f2 = new Vector3f();
        Vector3f vector3f3 = new Vector3f();
        getAabb(nativeId, vector3f, matrix3f, vector3f3, vector3f2);
        boundingBox.setMinMax(vector3f3, vector3f2);
        return boundingBox;
    }
}
