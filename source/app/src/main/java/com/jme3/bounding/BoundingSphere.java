package com.jme3.bounding;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import com.jme3.bounding.BoundingVolume;
import com.jme3.collision.Collidable;
import com.jme3.collision.CollisionResult;
import com.jme3.collision.CollisionResults;
import com.jme3.collision.UnsupportedCollisionException;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.math.FastMath;
import com.jme3.math.Matrix4f;
import com.jme3.math.Plane;
import com.jme3.math.Quaternion;
import com.jme3.math.Ray;
import com.jme3.math.Transform;
import com.jme3.math.Triangle;
import com.jme3.math.Vector3f;
import com.jme3.scene.Spatial;
import com.jme3.util.BufferUtils;
import com.jme3.util.TempVars;
import java.io.IOException;
import java.nio.FloatBuffer;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;

public class BoundingSphere extends BoundingVolume {
    static final boolean $assertionsDisabled = false;
    private static final float RADIUS_EPSILON = 1.00001f;
    private static final Logger logger = Logger.getLogger(BoundingSphere.class.getName());
    float radius;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$bounding$BoundingVolume$Type;

        static {
            int[] iArr = new int[BoundingVolume.Type.values().length];
            $SwitchMap$com$jme3$bounding$BoundingVolume$Type = iArr;
            try {
                iArr[BoundingVolume.Type.Sphere.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$bounding$BoundingVolume$Type[BoundingVolume.Type.AABB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public BoundingSphere() {
    }

    private int collideWithRay(Ray ray, CollisionResults collisionResults) {
        TempVars tempVars = TempVars.get();
        Vector3f subtractLocal = tempVars.vect1.set(ray.getOrigin()).subtractLocal(this.center);
        float dot = subtractLocal.dot(subtractLocal) - (getRadius() * getRadius());
        if (dot <= 0.0d) {
            float dot2 = ray.direction.dot(subtractLocal);
            float sqrt = FastMath.sqrt((dot2 * dot2) - dot) - dot2;
            collisionResults.addCollision(new CollisionResult(new Vector3f(ray.direction).multLocal(sqrt).addLocal(ray.origin), sqrt));
            tempVars.release();
            return 1;
        }
        float dot3 = ray.direction.dot(subtractLocal);
        tempVars.release();
        if (dot3 >= 0.0d) {
            return 0;
        }
        float f10 = (dot3 * dot3) - dot;
        if (f10 < 0.0d) {
            return 0;
        }
        if (f10 >= 1.0E-4f) {
            float sqrt2 = FastMath.sqrt(f10);
            float f11 = -dot3;
            float f12 = f11 - sqrt2;
            collisionResults.addCollision(new CollisionResult(new Vector3f(ray.direction).multLocal(f12).addLocal(ray.origin), f12));
            float f13 = f11 + sqrt2;
            collisionResults.addCollision(new CollisionResult(new Vector3f(ray.direction).multLocal(f13).addLocal(ray.origin), f13));
            return 2;
        }
        float f14 = -dot3;
        collisionResults.addCollision(new CollisionResult(new Vector3f(ray.direction).multLocal(f14).addLocal(ray.origin), f14));
        return 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x014a A[Catch: all -> 0x00c5, TRY_LEAVE, TryCatch #0 {all -> 0x00c5, blocks: (B:3:0x0008, B:9:0x0054, B:13:0x0088, B:15:0x008e, B:18:0x00c8, B:22:0x00dd, B:25:0x00f4, B:29:0x0106, B:32:0x011c, B:36:0x0132, B:40:0x014a, B:43:0x0171, B:46:0x017c, B:49:0x0187, B:53:0x0194), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0171 A[Catch: all -> 0x00c5, TRY_ENTER, TryCatch #0 {all -> 0x00c5, blocks: (B:3:0x0008, B:9:0x0054, B:13:0x0088, B:15:0x008e, B:18:0x00c8, B:22:0x00dd, B:25:0x00f4, B:29:0x0106, B:32:0x011c, B:36:0x0132, B:40:0x014a, B:43:0x0171, B:46:0x017c, B:49:0x0187, B:53:0x0194), top: B:2:0x0008 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int collideWithTri(Triangle triangle, CollisionResults collisionResults) {
        Vector3f vector3f;
        float dot;
        Vector3f subtract;
        float dot2;
        float dot3;
        float dot4;
        TempVars tempVars = TempVars.get();
        try {
            Vector3f subtract2 = triangle.get1().subtract(this.center, tempVars.vect1);
            Vector3f subtract3 = triangle.get2().subtract(this.center, tempVars.vect2);
            Vector3f subtract4 = triangle.get3().subtract(this.center, tempVars.vect3);
            Vector3f subtract5 = subtract3.subtract(subtract2, tempVars.vect4);
            Vector3f subtract6 = subtract4.subtract(subtract2, tempVars.vect5);
            Vector3f cross = subtract5.cross(subtract6, tempVars.vect6);
            float dot5 = subtract2.dot(cross);
            float dot6 = cross.dot(cross);
            float f10 = dot5 * dot5;
            float f11 = this.radius;
            if (f10 > f11 * f11 * dot6) {
                return 0;
            }
            float dot7 = subtract6.dot(subtract6);
            float dot8 = subtract6.dot(subtract5);
            float f12 = -subtract6.dot(subtract2);
            float dot9 = subtract5.dot(subtract5);
            float f13 = -subtract5.dot(subtract2);
            float f14 = 1.0f / ((dot7 * dot9) - (dot8 * dot8));
            float f15 = ((dot9 * f12) - (dot8 * f13)) * f14;
            float f16 = ((dot7 * f13) - (dot8 * f12)) * f14;
            if (f15 >= 0.0f && f16 >= 0.0f && f15 + f16 <= 1.0f) {
                Vector3f add = this.center.add(subtract2.add(subtract6.mult(f15)).addLocal(subtract5.mult(f16)));
                CollisionResult collisionResult = new CollisionResult();
                Vector3f normalize = cross.normalize();
                collisionResult.setDistance((-normalize.dot(subtract2)) - this.radius);
                collisionResult.setContactNormal(normalize);
                collisionResult.setContactPoint(add);
                collisionResults.addCollision(collisionResult);
                return 1;
            }
            float f17 = this.radius;
            float f18 = f17 * f17;
            float dot10 = (-subtract5.dot(subtract2)) / subtract5.dot(subtract5);
            if (dot10 >= 0.0f && dot10 <= 1.0f) {
                vector3f = subtract2.add(subtract5.mult(dot10, tempVars.vect7), tempVars.vect8);
                float dot11 = vector3f.dot(vector3f);
                if (dot11 < f18) {
                    f18 = dot11;
                    dot = (-subtract6.dot(subtract2)) / subtract6.dot(subtract6);
                    if (dot >= 0.0f && dot <= 1.0f) {
                        Vector3f add2 = subtract2.add(subtract6.mult(dot, tempVars.vect7), tempVars.vect9);
                        dot4 = add2.dot(add2);
                        if (dot4 < f18) {
                            vector3f = add2;
                            f18 = dot4;
                        }
                    }
                    subtract = subtract4.subtract(subtract3);
                    dot2 = (-subtract.dot(subtract3)) / subtract.dot(subtract);
                    if (dot2 >= 0.0f && dot2 <= 1.0f) {
                        Vector3f add3 = subtract3.add(subtract.mult(dot2, tempVars.vect7), tempVars.vect10);
                        dot3 = add3.dot(add3);
                        if (dot3 < f18) {
                            vector3f = add3;
                            f18 = dot3;
                        }
                    }
                    if (vector3f == null) {
                        float sqrt = FastMath.sqrt(f18);
                        Vector3f divide = vector3f.divide(-sqrt);
                        CollisionResult collisionResult2 = new CollisionResult();
                        collisionResult2.setDistance(sqrt - this.radius);
                        collisionResult2.setContactNormal(divide);
                        collisionResult2.setContactPoint(vector3f.add(this.center));
                        collisionResults.addCollision(collisionResult2);
                        return 1;
                    }
                    float dot12 = subtract2.dot(subtract2);
                    if (dot12 < f18) {
                        f18 = dot12;
                    } else {
                        subtract2 = vector3f;
                    }
                    float dot13 = subtract3.dot(subtract3);
                    if (dot13 < f18) {
                        f18 = dot13;
                    } else {
                        subtract3 = subtract2;
                    }
                    float dot14 = subtract4.dot(subtract4);
                    if (dot14 < f18) {
                        f18 = dot14;
                    } else {
                        subtract4 = subtract3;
                    }
                    if (subtract4 == null) {
                        return 0;
                    }
                    float sqrt2 = FastMath.sqrt(f18);
                    Vector3f divide2 = subtract4.divide(-sqrt2);
                    CollisionResult collisionResult3 = new CollisionResult();
                    collisionResult3.setDistance(sqrt2 - this.radius);
                    collisionResult3.setContactNormal(divide2);
                    collisionResult3.setContactPoint(subtract4.add(this.center));
                    collisionResults.addCollision(collisionResult3);
                    return 1;
                }
            }
            vector3f = null;
            dot = (-subtract6.dot(subtract2)) / subtract6.dot(subtract6);
            if (dot >= 0.0f) {
                Vector3f add22 = subtract2.add(subtract6.mult(dot, tempVars.vect7), tempVars.vect9);
                dot4 = add22.dot(add22);
                if (dot4 < f18) {
                }
            }
            subtract = subtract4.subtract(subtract3);
            dot2 = (-subtract.dot(subtract3)) / subtract.dot(subtract);
            if (dot2 >= 0.0f) {
                Vector3f add32 = subtract3.add(subtract.mult(dot2, tempVars.vect7), tempVars.vect10);
                dot3 = add32.dot(add32);
                if (dot3 < f18) {
                }
            }
            if (vector3f == null) {
            }
        } finally {
            tempVars.release();
        }
    }

    private float getMaxAxis(Vector3f vector3f) {
        float abs = FastMath.abs(vector3f.f81611x);
        float abs2 = FastMath.abs(vector3f.f81612y);
        float abs3 = FastMath.abs(vector3f.f81613z);
        return abs >= abs2 ? abs >= abs3 ? abs : abs3 : abs2 >= abs3 ? abs2 : abs3;
    }

    private void recurseMini(FloatBuffer floatBuffer, int i10, int i11, int i12) {
        Vector3f vector3f = new Vector3f();
        Vector3f vector3f2 = new Vector3f();
        Vector3f vector3f3 = new Vector3f();
        Vector3f vector3f4 = new Vector3f();
        if (i11 == 0) {
            this.radius = 0.0f;
            this.center.set(0.0f, 0.0f, 0.0f);
        } else if (i11 == 1) {
            this.radius = -1.001358E-5f;
            BufferUtils.populateFromBuffer(this.center, floatBuffer, i12 - 1);
        } else if (i11 == 2) {
            BufferUtils.populateFromBuffer(vector3f, floatBuffer, i12 - 1);
            BufferUtils.populateFromBuffer(vector3f2, floatBuffer, i12 - 2);
            setSphere(vector3f, vector3f2);
        } else if (i11 == 3) {
            BufferUtils.populateFromBuffer(vector3f, floatBuffer, i12 - 1);
            BufferUtils.populateFromBuffer(vector3f2, floatBuffer, i12 - 2);
            BufferUtils.populateFromBuffer(vector3f3, floatBuffer, i12 - 3);
            setSphere(vector3f, vector3f2, vector3f3);
        } else if (i11 == 4) {
            BufferUtils.populateFromBuffer(vector3f, floatBuffer, i12 - 1);
            BufferUtils.populateFromBuffer(vector3f2, floatBuffer, i12 - 2);
            BufferUtils.populateFromBuffer(vector3f3, floatBuffer, i12 - 3);
            BufferUtils.populateFromBuffer(vector3f4, floatBuffer, i12 - 4);
            setSphere(vector3f, vector3f2, vector3f3, vector3f4);
            return;
        }
        for (int i13 = 0; i13 < i10; i13++) {
            BufferUtils.populateFromBuffer(vector3f, floatBuffer, i13 + i12);
            float distanceSquared = vector3f.distanceSquared(this.center);
            float f10 = this.radius;
            if (distanceSquared - (f10 * f10) > 1.001358E-5f) {
                for (int i14 = i13; i14 > 0; i14--) {
                    int i15 = i14 + i12;
                    BufferUtils.populateFromBuffer(vector3f2, floatBuffer, i15);
                    int i16 = (i14 - 1) + i12;
                    BufferUtils.populateFromBuffer(vector3f3, floatBuffer, i16);
                    BufferUtils.setInBuffer(vector3f3, floatBuffer, i15);
                    BufferUtils.setInBuffer(vector3f2, floatBuffer, i16);
                }
                recurseMini(floatBuffer, i13, i11 + 1, i12 + 1);
            }
        }
    }

    private void setSphere(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4) {
        Vector3f subtract = vector3f2.subtract(vector3f);
        Vector3f subtract2 = vector3f3.subtract(vector3f);
        Vector3f subtract3 = vector3f4.subtract(vector3f);
        float f10 = subtract.f81611x;
        float f11 = subtract2.f81612y;
        float f12 = subtract3.f81613z;
        float f13 = subtract3.f81612y;
        float f14 = subtract2.f81613z;
        float f15 = subtract2.f81611x;
        float f16 = subtract.f81612y;
        float f17 = subtract.f81613z;
        float f18 = (((f10 * ((f11 * f12) - (f13 * f14))) - (f15 * ((f12 * f16) - (f13 * f17)))) + (subtract3.f81611x * ((f16 * f14) - (f11 * f17)))) * 2.0f;
        if (f18 == 0.0f) {
            this.center.set(0.0f, 0.0f, 0.0f);
            this.radius = 0.0f;
        } else {
            Vector3f divideLocal = subtract.cross(subtract2).multLocal(subtract3.lengthSquared()).addLocal(subtract3.cross(subtract).multLocal(subtract2.lengthSquared())).addLocal(subtract2.cross(subtract3).multLocal(subtract.lengthSquared())).divideLocal(f18);
            this.radius = divideLocal.length() * RADIUS_EPSILON;
            vector3f.add(divideLocal, this.center);
        }
    }

    public void averagePoints(Vector3f[] vector3fArr) {
        logger.fine("Bounding Sphere calculated using average points.");
        this.center = vector3fArr[0];
        for (int i10 = 1; i10 < vector3fArr.length; i10++) {
            this.center.addLocal(vector3fArr[i10]);
        }
        this.center.multLocal(1.0f / vector3fArr.length);
        float f10 = 0.0f;
        for (Vector3f vector3f : vector3fArr) {
            float lengthSquared = vector3f.subtract(this.center).lengthSquared();
            if (lengthSquared > f10) {
                f10 = lengthSquared;
            }
        }
        this.radius = (((float) Math.sqrt(f10)) + RADIUS_EPSILON) - 1.0f;
    }

    public void calcWelzl(FloatBuffer floatBuffer) {
        if (this.center == null) {
            this.center = new Vector3f();
        }
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(floatBuffer.limit());
        floatBuffer.rewind();
        createFloatBuffer.put(floatBuffer);
        createFloatBuffer.flip();
        recurseMini(createFloatBuffer, createFloatBuffer.limit() / 3, 0, 0);
    }

    @Override
    public BoundingVolume clone(BoundingVolume boundingVolume) {
        if (boundingVolume == null || boundingVolume.getType() != BoundingVolume.Type.Sphere) {
            return new BoundingSphere(this.radius, this.center.m1292clone());
        }
        BoundingSphere boundingSphere = (BoundingSphere) boundingVolume;
        if (boundingSphere.center == null) {
            boundingSphere.center = new Vector3f();
        }
        boundingSphere.center.set(this.center);
        boundingSphere.radius = this.radius;
        boundingSphere.checkPlane = this.checkPlane;
        return boundingSphere;
    }

    @Override
    public int collideWith(Collidable collidable, CollisionResults collisionResults) {
        if (collidable instanceof Ray) {
            return collideWithRay((Ray) collidable, collisionResults);
        }
        if (collidable instanceof Triangle) {
            return collideWithTri((Triangle) collidable, collisionResults);
        }
        if (collidable instanceof BoundingVolume) {
            if (!intersects((BoundingVolume) collidable)) {
                return 0;
            }
            collisionResults.addCollision(new CollisionResult());
            return 1;
        }
        if (collidable instanceof Spatial) {
            return collidable.collideWith(this, collisionResults);
        }
        throw new UnsupportedCollisionException();
    }

    @Override
    public void computeFromPoints(FloatBuffer floatBuffer) {
        calcWelzl(floatBuffer);
    }

    public void computeFromTris(Triangle[] triangleArr, int i10, int i11) {
        int i12 = i11 - i10;
        if (i12 <= 0) {
            return;
        }
        Vector3f[] vector3fArr = new Vector3f[i12 * 3];
        int i13 = 0;
        while (i10 < i11) {
            vector3fArr[i13] = triangleArr[i10].get(0);
            int i14 = i13 + 2;
            vector3fArr[i13 + 1] = triangleArr[i10].get(1);
            i13 += 3;
            vector3fArr[i14] = triangleArr[i10].get(2);
            i10++;
        }
        averagePoints(vector3fArr);
    }

    @Override
    public boolean contains(Vector3f vector3f) {
        return this.center.distanceSquared(vector3f) < getRadius() * getRadius();
    }

    @Override
    public float distanceToEdge(Vector3f vector3f) {
        return this.center.distance(vector3f) - this.radius;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof BoundingSphere)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        BoundingSphere boundingSphere = (BoundingSphere) obj;
        if (Float.compare(this.radius, boundingSphere.getRadius()) != 0) {
            return false;
        }
        return super.equals(boundingSphere);
    }

    public float getRadius() {
        return this.radius;
    }

    @Override
    public BoundingVolume.Type getType() {
        return BoundingVolume.Type.Sphere;
    }

    @Override
    public float getVolume() {
        float f10 = this.radius;
        return 4.1887903f * f10 * f10 * f10;
    }

    @Override
    public int hashCode() {
        return (Objects.hash(Float.valueOf(this.radius)) * 59) + super.hashCode();
    }

    @Override
    public boolean intersects(BoundingVolume boundingVolume) {
        return boundingVolume.intersectsSphere(this);
    }

    @Override
    public boolean intersectsBoundingBox(BoundingBox boundingBox) {
        return Intersection.intersect(boundingBox, this.center, this.radius);
    }

    @Override
    public boolean intersectsSphere(BoundingSphere boundingSphere) {
        return Intersection.intersect(boundingSphere, this.center, this.radius);
    }

    public boolean isSimilar(BoundingSphere boundingSphere, float f10) {
        return boundingSphere != null && Float.compare(Math.abs(boundingSphere.getRadius() - this.radius), f10) <= 0 && this.center.isSimilar(boundingSphere.getCenter(), f10);
    }

    @Override
    @Deprecated
    public BoundingVolume merge(BoundingVolume boundingVolume) {
        if (boundingVolume == null) {
            return this;
        }
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$bounding$BoundingVolume$Type[boundingVolume.getType().ordinal()];
        if (i10 == 1) {
            BoundingSphere boundingSphere = (BoundingSphere) boundingVolume;
            return merge(boundingSphere.getRadius(), boundingSphere.center, new BoundingSphere());
        }
        if (i10 != 2) {
            return null;
        }
        BoundingBox boundingBox = (BoundingBox) boundingVolume;
        Vector3f vector3f = new Vector3f(boundingBox.xExtent, boundingBox.yExtent, boundingBox.zExtent);
        return merge(vector3f.length(), boundingBox.center, new BoundingSphere());
    }

    @Override
    public BoundingVolume mergeLocal(BoundingVolume boundingVolume) {
        if (boundingVolume == null) {
            return this;
        }
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$bounding$BoundingVolume$Type[boundingVolume.getType().ordinal()];
        if (i10 == 1) {
            BoundingSphere boundingSphere = (BoundingSphere) boundingVolume;
            return merge(boundingSphere.getRadius(), boundingSphere.center, this);
        }
        if (i10 != 2) {
            return null;
        }
        BoundingBox boundingBox = (BoundingBox) boundingVolume;
        TempVars tempVars = TempVars.get();
        Vector3f vector3f = tempVars.vect1;
        vector3f.set(boundingBox.xExtent, boundingBox.yExtent, boundingBox.zExtent);
        Vector3f vector3f2 = boundingBox.center;
        float length = vector3f.length();
        tempVars.release();
        return merge(length, vector3f2, this);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        try {
            this.radius = jmeImporter.getCapsule(this).readFloat(TestVFXEffect.f77524P, 0.0f);
        } catch (IOException e10) {
            logger.logp(Level.SEVERE, getClass().toString(), "read(JMEImporter)", "Exception", (Throwable) e10);
        }
    }

    public void setRadius(float f10) {
        this.radius = f10;
    }

    public String toString() {
        return getClass().getSimpleName() + " [Radius: " + this.radius + " Center: " + ((Object) this.center) + "]";
    }

    @Override
    public BoundingVolume transform(Transform transform, BoundingVolume boundingVolume) {
        BoundingSphere boundingSphere;
        if (boundingVolume != null && boundingVolume.getType() == BoundingVolume.Type.Sphere) {
            boundingSphere = (BoundingSphere) boundingVolume;
        } else {
            boundingSphere = new BoundingSphere(1.0f, new Vector3f(0.0f, 0.0f, 0.0f));
        }
        this.center.mult(transform.getScale(), boundingSphere.center);
        Quaternion rotation = transform.getRotation();
        Vector3f vector3f = boundingSphere.center;
        rotation.mult(vector3f, vector3f);
        boundingSphere.center.addLocal(transform.getTranslation());
        boundingSphere.radius = (FastMath.abs(getMaxAxis(transform.getScale()) * this.radius) + RADIUS_EPSILON) - 1.0f;
        return boundingSphere;
    }

    @Override
    public Plane.Side whichSide(Plane plane) {
        float pseudoDistance = plane.pseudoDistance(this.center);
        float f10 = this.radius;
        return pseudoDistance <= (-f10) ? Plane.Side.Negative : pseudoDistance >= f10 ? Plane.Side.Positive : Plane.Side.None;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        try {
            jmeExporter.getCapsule(this).write(this.radius, TestVFXEffect.f77524P, 0.0f);
        } catch (IOException e10) {
            logger.logp(Level.SEVERE, getClass().toString(), "write(JMEExporter)", "Exception", (Throwable) e10);
        }
    }

    public BoundingSphere(float f10, Vector3f vector3f) {
        this.center.set(vector3f);
        this.radius = f10;
    }

    @Override
    public boolean intersects(Ray ray) {
        TempVars tempVars = TempVars.get();
        Vector3f subtractLocal = tempVars.vect1.set(ray.getOrigin()).subtractLocal(this.center);
        float dot = subtractLocal.dot(subtractLocal) - (getRadius() * getRadius());
        if (dot <= 0.0d) {
            tempVars.release();
            return true;
        }
        float dot2 = ray.getDirection().dot(subtractLocal);
        tempVars.release();
        return ((double) dot2) < 0.0d && dot2 * dot2 >= dot;
    }

    @Override
    public BoundingVolume transform(Matrix4f matrix4f, BoundingVolume boundingVolume) {
        BoundingSphere boundingSphere;
        if (boundingVolume != null && boundingVolume.getType() == BoundingVolume.Type.Sphere) {
            boundingSphere = (BoundingSphere) boundingVolume;
        } else {
            boundingSphere = new BoundingSphere(1.0f, new Vector3f(0.0f, 0.0f, 0.0f));
        }
        matrix4f.mult(this.center, boundingSphere.center);
        Vector3f vector3f = new Vector3f(1.0f, 1.0f, 1.0f);
        matrix4f.mult(vector3f, vector3f);
        boundingSphere.radius = (FastMath.abs(getMaxAxis(vector3f) * this.radius) + RADIUS_EPSILON) - 1.0f;
        return boundingSphere;
    }

    @Override
    public boolean intersects(Vector3f vector3f) {
        return this.center.distanceSquared(vector3f) <= getRadius() * getRadius();
    }

    private BoundingVolume merge(float f10, Vector3f vector3f, BoundingSphere boundingSphere) {
        TempVars tempVars = TempVars.get();
        Vector3f subtract = vector3f.subtract(this.center, tempVars.vect1);
        float lengthSquared = subtract.lengthSquared();
        float f11 = f10 - this.radius;
        if (f11 * f11 >= lengthSquared) {
            if (f11 <= 0.0f) {
                tempVars.release();
                return this;
            }
            Vector3f vector3f2 = boundingSphere.center;
            if (vector3f2 == null) {
                vector3f2 = new Vector3f();
                boundingSphere.setCenter(vector3f2);
            }
            vector3f2.set(vector3f);
            boundingSphere.setRadius(f10);
            tempVars.release();
            return boundingSphere;
        }
        float sqrt = (float) Math.sqrt(lengthSquared);
        Vector3f vector3f3 = boundingSphere.center;
        if (vector3f3 == null) {
            vector3f3 = new Vector3f();
            boundingSphere.setCenter(vector3f3);
        }
        if (sqrt > RADIUS_EPSILON && Float.isFinite(sqrt)) {
            vector3f3.set(this.center.addLocal(subtract.multLocal((f11 + sqrt) / (2.0f * sqrt))));
        } else {
            vector3f3.set(this.center);
        }
        boundingSphere.setRadius((sqrt + this.radius + f10) * 0.5f);
        tempVars.release();
        return boundingSphere;
    }

    @Override
    public int collideWith(Collidable collidable) {
        if (collidable instanceof Ray) {
            return collideWithRay((Ray) collidable);
        }
        if (collidable instanceof Triangle) {
            return super.collideWith(collidable);
        }
        if (collidable instanceof BoundingVolume) {
            return intersects((BoundingVolume) collidable) ? 1 : 0;
        }
        throw new UnsupportedCollisionException();
    }

    private void setSphere(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        Vector3f subtract = vector3f2.subtract(vector3f);
        Vector3f subtract2 = vector3f3.subtract(vector3f);
        Vector3f cross = subtract.cross(subtract2);
        float dot = cross.dot(cross) * 2.0f;
        if (dot == 0.0f) {
            this.center.set(0.0f, 0.0f, 0.0f);
            this.radius = 0.0f;
        } else {
            Vector3f divideLocal = cross.cross(subtract).multLocal(subtract2.lengthSquared()).addLocal(subtract2.cross(cross).multLocal(subtract.lengthSquared())).divideLocal(dot);
            this.radius = divideLocal.length() * RADIUS_EPSILON;
            vector3f.add(divideLocal, this.center);
        }
    }

    private int collideWithRay(Ray ray) {
        TempVars tempVars = TempVars.get();
        Vector3f subtractLocal = tempVars.vect1.set(ray.getOrigin()).subtractLocal(this.center);
        float dot = subtractLocal.dot(subtractLocal) - (getRadius() * getRadius());
        if (dot <= 0.0d) {
            tempVars.release();
            return 1;
        }
        float dot2 = ray.direction.dot(subtractLocal);
        tempVars.release();
        if (dot2 >= 0.0d) {
            return 0;
        }
        float f10 = (dot2 * dot2) - dot;
        if (f10 < 0.0d) {
            return 0;
        }
        return f10 >= 1.0E-4f ? 2 : 1;
    }

    private void setSphere(Vector3f vector3f, Vector3f vector3f2) {
        float f10 = vector3f2.f81611x;
        float f11 = vector3f.f81611x;
        float f12 = (f10 - f11) * (f10 - f11);
        float f13 = vector3f2.f81612y;
        float f14 = vector3f.f81612y;
        float f15 = f12 + ((f13 - f14) * (f13 - f14));
        float f16 = vector3f2.f81613z;
        float f17 = vector3f.f81613z;
        this.radius = (FastMath.sqrt((f15 + ((f16 - f17) * (f16 - f17))) / 4.0f) + RADIUS_EPSILON) - 1.0f;
        this.center.interpolateLocal(vector3f, vector3f2, 0.5f);
    }
}
