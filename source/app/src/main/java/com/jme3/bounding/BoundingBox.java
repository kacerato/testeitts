package com.jme3.bounding;

import com.jme3.bounding.BoundingVolume;
import com.jme3.collision.Collidable;
import com.jme3.collision.CollisionResult;
import com.jme3.collision.CollisionResults;
import com.jme3.collision.UnsupportedCollisionException;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.math.FastMath;
import com.jme3.math.Matrix3f;
import com.jme3.math.Matrix4f;
import com.jme3.math.Plane;
import com.jme3.math.Quaternion;
import com.jme3.math.Ray;
import com.jme3.math.Transform;
import com.jme3.math.Triangle;
import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.scene.Spatial;
import com.jme3.util.TempVars;
import java.io.IOException;
import java.nio.FloatBuffer;
import java.util.Objects;

public class BoundingBox extends BoundingVolume {
    static final boolean $assertionsDisabled = false;
    float xExtent;
    float yExtent;
    float zExtent;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$bounding$BoundingVolume$Type;

        static {
            int[] iArr = new int[BoundingVolume.Type.values().length];
            $SwitchMap$com$jme3$bounding$BoundingVolume$Type = iArr;
            try {
                iArr[BoundingVolume.Type.AABB.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$bounding$BoundingVolume$Type[BoundingVolume.Type.Sphere.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public BoundingBox() {
    }

    public static void checkMinMax(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        float f10 = vector3f3.f81611x;
        if (f10 < vector3f.f81611x) {
            vector3f.f81611x = f10;
        }
        float f11 = vector3f3.f81611x;
        if (f11 > vector3f2.f81611x) {
            vector3f2.f81611x = f11;
        }
        float f12 = vector3f3.f81612y;
        if (f12 < vector3f.f81612y) {
            vector3f.f81612y = f12;
        }
        float f13 = vector3f3.f81612y;
        if (f13 > vector3f2.f81612y) {
            vector3f2.f81612y = f13;
        }
        float f14 = vector3f3.f81613z;
        if (f14 < vector3f.f81613z) {
            vector3f.f81613z = f14;
        }
        float f15 = vector3f3.f81613z;
        if (f15 > vector3f2.f81613z) {
            vector3f2.f81613z = f15;
        }
    }

    private boolean clip(float f10, float f11, float[] fArr) {
        if (f10 > 0.0f) {
            float f12 = f11 / f10;
            if (f12 > fArr[1]) {
                return false;
            }
            if (f12 > fArr[0]) {
                fArr[0] = f12;
            }
            return true;
        }
        if (f10 >= 0.0f) {
            return ((double) f11) <= 0.0d;
        }
        float f13 = f11 / f10;
        if (f13 < fArr[0]) {
            return false;
        }
        if (f13 < fArr[1]) {
            fArr[1] = f13;
        }
        return true;
    }

    private int collideWithRay(Ray ray, CollisionResults collisionResults) {
        TempVars tempVars = TempVars.get();
        try {
            Vector3f subtractLocal = tempVars.vect1.set(ray.origin).subtractLocal(this.center);
            Vector3f vector3f = tempVars.vect2.set(ray.direction);
            float[] fArr = tempVars.fWdU;
            fArr[0] = 0.0f;
            fArr[1] = Float.POSITIVE_INFINITY;
            if (clip(vector3f.f81611x, (-subtractLocal.f81611x) - this.xExtent, fArr) && clip(-vector3f.f81611x, subtractLocal.f81611x - this.xExtent, fArr) && clip(vector3f.f81612y, (-subtractLocal.f81612y) - this.yExtent, fArr) && clip(-vector3f.f81612y, subtractLocal.f81612y - this.yExtent, fArr) && clip(vector3f.f81613z, (-subtractLocal.f81613z) - this.zExtent, fArr) && clip(-vector3f.f81613z, subtractLocal.f81613z - this.zExtent, fArr)) {
                float f10 = fArr[0];
                if (f10 == 0.0f) {
                    if (fArr[1] != Float.POSITIVE_INFINITY) {
                    }
                }
                if (fArr[1] > f10) {
                    Vector3f addLocal = new Vector3f(ray.direction).multLocal(fArr[0]).addLocal(ray.origin);
                    Vector3f addLocal2 = new Vector3f(ray.direction).multLocal(fArr[1]).addLocal(ray.origin);
                    collisionResults.addCollision(new CollisionResult(addLocal, fArr[0]));
                    collisionResults.addCollision(new CollisionResult(addLocal2, fArr[1]));
                    tempVars.release();
                    return 2;
                }
                collisionResults.addCollision(new CollisionResult(new Vector3f(ray.direction).multLocal(fArr[0]).addLocal(ray.origin), fArr[0]));
                tempVars.release();
                return 1;
            }
            tempVars.release();
            return 0;
        } catch (Throwable th2) {
            tempVars.release();
            throw th2;
        }
    }

    @Override
    public BoundingVolume clone(BoundingVolume boundingVolume) {
        if (boundingVolume == null || boundingVolume.getType() != BoundingVolume.Type.AABB) {
            return new BoundingBox(this.center.m1292clone(), this.xExtent, this.yExtent, this.zExtent);
        }
        BoundingBox boundingBox = (BoundingBox) boundingVolume;
        boundingBox.center.set(this.center);
        boundingBox.xExtent = this.xExtent;
        boundingBox.yExtent = this.yExtent;
        boundingBox.zExtent = this.zExtent;
        boundingBox.checkPlane = this.checkPlane;
        return boundingBox;
    }

    @Override
    public int collideWith(Collidable collidable, CollisionResults collisionResults) {
        if (collidable instanceof Ray) {
            return collideWithRay((Ray) collidable, collisionResults);
        }
        if (collidable instanceof Triangle) {
            Triangle triangle = (Triangle) collidable;
            if (!intersects(triangle.get1(), triangle.get2(), triangle.get3())) {
                return 0;
            }
            collisionResults.addCollision(new CollisionResult());
            return 1;
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
        throw new UnsupportedCollisionException("With: " + collidable.getClass().getSimpleName());
    }

    @Override
    public void computeFromPoints(FloatBuffer floatBuffer) {
        containAABB(floatBuffer);
    }

    public void computeFromTris(Triangle[] triangleArr, int i10, int i11) {
        if (i11 - i10 <= 0) {
            return;
        }
        TempVars tempVars = TempVars.get();
        Vector3f vector3f = tempVars.vect1.set(new Vector3f(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY));
        Vector3f vector3f2 = tempVars.vect2.set(new Vector3f(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY));
        while (i10 < i11) {
            checkMinMax(vector3f, vector3f2, triangleArr[i10].get(0));
            checkMinMax(vector3f, vector3f2, triangleArr[i10].get(1));
            checkMinMax(vector3f, vector3f2, triangleArr[i10].get(2));
            i10++;
        }
        this.center.set(vector3f.addLocal(vector3f2));
        this.center.multLocal(0.5f);
        float f10 = vector3f2.f81611x;
        Vector3f vector3f3 = this.center;
        this.xExtent = f10 - vector3f3.f81611x;
        this.yExtent = vector3f2.f81612y - vector3f3.f81612y;
        this.zExtent = vector3f2.f81613z - vector3f3.f81613z;
        tempVars.release();
    }

    public void containAABB(FloatBuffer floatBuffer) {
        FloatBuffer floatBuffer2 = floatBuffer;
        if (floatBuffer2 == null) {
            return;
        }
        floatBuffer.rewind();
        if (floatBuffer.remaining() <= 2) {
            return;
        }
        TempVars tempVars = TempVars.get();
        float[] fArr = tempVars.skinPositions;
        int ceil = ((int) FastMath.ceil(floatBuffer.limit() / fArr.length)) - 1;
        float f10 = Float.NEGATIVE_INFINITY;
        float f11 = Float.NEGATIVE_INFINITY;
        float f12 = Float.POSITIVE_INFINITY;
        float f13 = Float.POSITIVE_INFINITY;
        float f14 = Float.POSITIVE_INFINITY;
        float f15 = Float.NEGATIVE_INFINITY;
        while (ceil >= 0) {
            int min = Math.min(fArr.length, floatBuffer.remaining());
            floatBuffer2.get(fArr, 0, min);
            for (int i10 = 0; i10 < min; i10 += 3) {
                Vector3f vector3f = tempVars.vect1;
                float f16 = fArr[i10];
                vector3f.f81611x = f16;
                float f17 = fArr[i10 + 1];
                vector3f.f81612y = f17;
                float f18 = fArr[i10 + 2];
                vector3f.f81613z = f18;
                if (f16 < f12) {
                    f12 = f16;
                }
                if (f16 > f10) {
                    f10 = f16;
                }
                if (f17 < f13) {
                    f13 = f17;
                }
                if (f17 > f15) {
                    f15 = f17;
                }
                if (f18 < f14) {
                    f14 = f18;
                }
                if (f18 > f11) {
                    f11 = f18;
                }
            }
            ceil--;
            floatBuffer2 = floatBuffer;
        }
        tempVars.release();
        this.center.set(f12 + f10, f13 + f15, f14 + f11);
        this.center.multLocal(0.5f);
        Vector3f vector3f2 = this.center;
        this.xExtent = f10 - vector3f2.f81611x;
        this.yExtent = f15 - vector3f2.f81612y;
        this.zExtent = f11 - vector3f2.f81613z;
    }

    @Override
    public boolean contains(Vector3f vector3f) {
        return FastMath.abs(this.center.f81611x - vector3f.f81611x) < this.xExtent && FastMath.abs(this.center.f81612y - vector3f.f81612y) < this.yExtent && FastMath.abs(this.center.f81613z - vector3f.f81613z) < this.zExtent;
    }

    @Override
    public float distanceToEdge(Vector3f vector3f) {
        TempVars tempVars = TempVars.get();
        Vector3f vector3f2 = tempVars.vect1;
        vector3f.subtract(this.center, vector3f2);
        float f10 = vector3f2.f81611x;
        float f11 = this.xExtent;
        float f12 = 0.0f;
        if (f10 < (-f11)) {
            float f13 = f10 + f11;
            f12 = 0.0f + (f13 * f13);
            vector3f2.f81611x = -f11;
        } else if (f10 > f11) {
            float f14 = f10 - f11;
            f12 = 0.0f + (f14 * f14);
            vector3f2.f81611x = f11;
        }
        float f15 = vector3f2.f81612y;
        float f16 = this.yExtent;
        if (f15 < (-f16)) {
            float f17 = f15 + f16;
            f12 += f17 * f17;
            vector3f2.f81612y = -f16;
        } else if (f15 > f16) {
            float f18 = f15 - f16;
            f12 += f18 * f18;
            vector3f2.f81612y = f16;
        }
        float f19 = vector3f2.f81613z;
        float f20 = this.zExtent;
        if (f19 < (-f20)) {
            float f21 = f19 + f20;
            f12 += f21 * f21;
            vector3f2.f81613z = -f20;
        } else if (f19 > f20) {
            float f22 = f19 - f20;
            f12 += f22 * f22;
            vector3f2.f81613z = f20;
        }
        tempVars.release();
        return FastMath.sqrt(f12);
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof BoundingBox)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        BoundingBox boundingBox = (BoundingBox) obj;
        if (Float.compare(this.xExtent, boundingBox.xExtent) == 0 && Float.compare(this.yExtent, boundingBox.yExtent) == 0 && Float.compare(this.zExtent, boundingBox.zExtent) == 0) {
            return super.equals(boundingBox);
        }
        return false;
    }

    public Vector3f getExtent(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        vector3f.set(this.xExtent, this.yExtent, this.zExtent);
        return vector3f;
    }

    public Vector3f getMax(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        vector3f.set(this.center).addLocal(this.xExtent, this.yExtent, this.zExtent);
        return vector3f;
    }

    public Vector3f getMin(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        vector3f.set(this.center).subtractLocal(this.xExtent, this.yExtent, this.zExtent);
        return vector3f;
    }

    @Override
    public BoundingVolume.Type getType() {
        return BoundingVolume.Type.AABB;
    }

    @Override
    public float getVolume() {
        return this.xExtent * 8.0f * this.yExtent * this.zExtent;
    }

    public float getXExtent() {
        return this.xExtent;
    }

    public float getYExtent() {
        return this.yExtent;
    }

    public float getZExtent() {
        return this.zExtent;
    }

    @Override
    public int hashCode() {
        return (Objects.hash(Float.valueOf(this.xExtent), Float.valueOf(this.yExtent), Float.valueOf(this.zExtent)) * 59) + super.hashCode();
    }

    @Override
    public boolean intersects(BoundingVolume boundingVolume) {
        return boundingVolume.intersectsBoundingBox(this);
    }

    @Override
    public boolean intersectsBoundingBox(BoundingBox boundingBox) {
        Vector3f vector3f = this.center;
        float f10 = vector3f.f81611x;
        float f11 = this.xExtent;
        float f12 = f10 + f11;
        Vector3f vector3f2 = boundingBox.center;
        float f13 = vector3f2.f81611x;
        float f14 = boundingBox.xExtent;
        if (f12 >= f13 - f14 && f10 - f11 <= f13 + f14) {
            float f15 = vector3f.f81612y;
            float f16 = this.yExtent;
            float f17 = f15 + f16;
            float f18 = vector3f2.f81612y;
            float f19 = boundingBox.yExtent;
            if (f17 >= f18 - f19 && f15 - f16 <= f18 + f19) {
                float f20 = vector3f.f81613z;
                float f21 = this.zExtent;
                float f22 = f20 + f21;
                float f23 = vector3f2.f81613z;
                float f24 = boundingBox.zExtent;
                if (f22 >= f23 - f24 && f20 - f21 <= f23 + f24) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public boolean intersectsSphere(BoundingSphere boundingSphere) {
        return boundingSphere.intersectsBoundingBox(this);
    }

    public boolean isSimilar(BoundingBox boundingBox, float f10) {
        return boundingBox != null && Float.compare(Math.abs(boundingBox.xExtent - this.xExtent), f10) <= 0 && Float.compare(Math.abs(boundingBox.yExtent - this.yExtent), f10) <= 0 && Float.compare(Math.abs(boundingBox.zExtent - this.zExtent), f10) <= 0 && this.center.isSimilar(boundingBox.getCenter(), f10);
    }

    @Override
    @Deprecated
    public BoundingVolume merge(BoundingVolume boundingVolume) {
        return mergeLocal(boundingVolume);
    }

    @Override
    public BoundingVolume mergeLocal(BoundingVolume boundingVolume) {
        if (boundingVolume == null) {
            return this;
        }
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$bounding$BoundingVolume$Type[boundingVolume.getType().ordinal()];
        if (i10 == 1) {
            BoundingBox boundingBox = (BoundingBox) boundingVolume;
            return mergeLocal(boundingBox.center, boundingBox.xExtent, boundingBox.yExtent, boundingBox.zExtent);
        }
        if (i10 != 2) {
            return null;
        }
        BoundingSphere boundingSphere = (BoundingSphere) boundingVolume;
        Vector3f vector3f = boundingSphere.center;
        float f10 = boundingSphere.radius;
        return mergeLocal(vector3f, f10, f10, f10);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.xExtent = capsule.readFloat("xExtent", 0.0f);
        this.yExtent = capsule.readFloat("yExtent", 0.0f);
        this.zExtent = capsule.readFloat("zExtent", 0.0f);
    }

    public void setMinMax(Vector3f vector3f, Vector3f vector3f2) {
        this.center.set(vector3f2).addLocal(vector3f).multLocal(0.5f);
        this.xExtent = FastMath.abs(vector3f2.f81611x - this.center.f81611x);
        this.yExtent = FastMath.abs(vector3f2.f81612y - this.center.f81612y);
        this.zExtent = FastMath.abs(vector3f2.f81613z - this.center.f81613z);
    }

    public void setXExtent(float f10) {
        if (f10 < 0.0f) {
            throw new IllegalArgumentException();
        }
        this.xExtent = f10;
    }

    public void setYExtent(float f10) {
        if (f10 < 0.0f) {
            throw new IllegalArgumentException();
        }
        this.yExtent = f10;
    }

    public void setZExtent(float f10) {
        if (f10 < 0.0f) {
            throw new IllegalArgumentException();
        }
        this.zExtent = f10;
    }

    public String toString() {
        return getClass().getSimpleName() + " [Center: " + ((Object) this.center) + "  xExtent: " + this.xExtent + "  yExtent: " + this.yExtent + "  zExtent: " + this.zExtent + "]";
    }

    @Override
    public BoundingVolume transform(Transform transform, BoundingVolume boundingVolume) {
        BoundingBox boundingBox;
        if (boundingVolume != null && boundingVolume.getType() == BoundingVolume.Type.AABB) {
            boundingBox = (BoundingBox) boundingVolume;
        } else {
            boundingBox = new BoundingBox();
        }
        this.center.mult(transform.getScale(), boundingBox.center);
        Quaternion rotation = transform.getRotation();
        Vector3f vector3f = boundingBox.center;
        rotation.mult(vector3f, vector3f);
        boundingBox.center.addLocal(transform.getTranslation());
        TempVars tempVars = TempVars.get();
        Matrix3f matrix3f = tempVars.tempMat3;
        matrix3f.set(transform.getRotation());
        matrix3f.absoluteLocal();
        Vector3f scale = transform.getScale();
        tempVars.vect1.set(this.xExtent * FastMath.abs(scale.f81611x), this.yExtent * FastMath.abs(scale.f81612y), this.zExtent * FastMath.abs(scale.f81613z));
        matrix3f.mult(tempVars.vect1, tempVars.vect2);
        boundingBox.xExtent = FastMath.abs(tempVars.vect2.getX());
        boundingBox.yExtent = FastMath.abs(tempVars.vect2.getY());
        boundingBox.zExtent = FastMath.abs(tempVars.vect2.getZ());
        tempVars.release();
        return boundingBox;
    }

    @Override
    public Plane.Side whichSide(Plane plane) {
        float abs = FastMath.abs(this.xExtent * plane.getNormal().getX()) + FastMath.abs(this.yExtent * plane.getNormal().getY()) + FastMath.abs(this.zExtent * plane.getNormal().getZ());
        float pseudoDistance = plane.pseudoDistance(this.center);
        return pseudoDistance < (-abs) ? Plane.Side.Negative : pseudoDistance > abs ? Plane.Side.Positive : Plane.Side.None;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.xExtent, "xExtent", 0.0f);
        capsule.write(this.yExtent, "yExtent", 0.0f);
        capsule.write(this.zExtent, "zExtent", 0.0f);
    }

    public BoundingBox(Vector3f vector3f, float f10, float f11, float f12) {
        this.center.set(vector3f);
        this.xExtent = f10;
        this.yExtent = f11;
        this.zExtent = f12;
    }

    @Override
    public boolean intersects(Ray ray) {
        Vector3f vector3f;
        TempVars tempVars = TempVars.get();
        Vector3f subtract = ray.origin.subtract(getCenter(tempVars.vect2), tempVars.vect1);
        float[] fArr = tempVars.fWdU;
        float[] fArr2 = tempVars.fAWdU;
        float[] fArr3 = tempVars.fDdU;
        float[] fArr4 = tempVars.fADdU;
        float[] fArr5 = tempVars.fAWxDdU;
        Vector3f direction = ray.getDirection();
        Vector3f vector3f2 = Vector3f.UNIT_X;
        float dot = direction.dot(vector3f2);
        fArr[0] = dot;
        fArr2[0] = FastMath.abs(dot);
        float dot2 = subtract.dot(vector3f2);
        fArr3[0] = dot2;
        float abs = FastMath.abs(dot2);
        fArr4[0] = abs;
        if (abs > this.xExtent && fArr3[0] * fArr[0] >= 0.0d) {
            tempVars.release();
            return false;
        }
        Vector3f direction2 = ray.getDirection();
        Vector3f vector3f3 = Vector3f.UNIT_Y;
        float dot3 = direction2.dot(vector3f3);
        fArr[1] = dot3;
        fArr2[1] = FastMath.abs(dot3);
        float dot4 = subtract.dot(vector3f3);
        fArr3[1] = dot4;
        float abs2 = FastMath.abs(dot4);
        fArr4[1] = abs2;
        if (abs2 > this.yExtent) {
            vector3f = vector3f3;
            if (fArr3[1] * fArr[1] >= 0.0d) {
                tempVars.release();
                return false;
            }
        } else {
            vector3f = vector3f3;
        }
        Vector3f direction3 = ray.getDirection();
        Vector3f vector3f4 = Vector3f.UNIT_Z;
        float dot5 = direction3.dot(vector3f4);
        fArr[2] = dot5;
        fArr2[2] = FastMath.abs(dot5);
        float dot6 = subtract.dot(vector3f4);
        fArr3[2] = dot6;
        float abs3 = FastMath.abs(dot6);
        fArr4[2] = abs3;
        if (abs3 > this.zExtent && fArr3[2] * fArr[2] >= 0.0d) {
            tempVars.release();
            return false;
        }
        Vector3f cross = ray.getDirection().cross(subtract, tempVars.vect2);
        float abs4 = FastMath.abs(cross.dot(vector3f2));
        fArr5[0] = abs4;
        if (abs4 > (this.yExtent * fArr2[2]) + (this.zExtent * fArr2[1])) {
            tempVars.release();
            return false;
        }
        float abs5 = FastMath.abs(cross.dot(vector3f));
        fArr5[1] = abs5;
        if (abs5 > (this.xExtent * fArr2[2]) + (this.zExtent * fArr2[0])) {
            tempVars.release();
            return false;
        }
        float abs6 = FastMath.abs(cross.dot(vector3f4));
        fArr5[2] = abs6;
        if (abs6 > (this.xExtent * fArr2[1]) + (this.yExtent * fArr2[0])) {
            tempVars.release();
            return false;
        }
        tempVars.release();
        return true;
    }

    private BoundingBox mergeLocal(Vector3f vector3f, float f10, float f11, float f12) {
        float f13 = this.xExtent;
        if (f13 != Float.POSITIVE_INFINITY && f10 != Float.POSITIVE_INFINITY) {
            Vector3f vector3f2 = this.center;
            float f14 = vector3f2.f81611x;
            float f15 = f14 - f13;
            float f16 = vector3f.f81611x;
            if (f15 > f16 - f10) {
                f15 = f16 - f10;
            }
            float f17 = f14 + f13;
            if (f17 < f16 + f10) {
                f17 = f16 + f10;
            }
            float f18 = (f15 + f17) / 2.0f;
            vector3f2.f81611x = f18;
            this.xExtent = f17 - f18;
        } else {
            this.center.f81611x = 0.0f;
            this.xExtent = Float.POSITIVE_INFINITY;
        }
        float f19 = this.yExtent;
        if (f19 != Float.POSITIVE_INFINITY && f11 != Float.POSITIVE_INFINITY) {
            Vector3f vector3f3 = this.center;
            float f20 = vector3f3.f81612y;
            float f21 = f20 - f19;
            float f22 = vector3f.f81612y;
            if (f21 > f22 - f11) {
                f21 = f22 - f11;
            }
            float f23 = f20 + f19;
            if (f23 < f22 + f11) {
                f23 = f22 + f11;
            }
            float f24 = (f21 + f23) / 2.0f;
            vector3f3.f81612y = f24;
            this.yExtent = f23 - f24;
        } else {
            this.center.f81612y = 0.0f;
            this.yExtent = Float.POSITIVE_INFINITY;
        }
        float f25 = this.zExtent;
        if (f25 != Float.POSITIVE_INFINITY && f12 != Float.POSITIVE_INFINITY) {
            Vector3f vector3f4 = this.center;
            float f26 = vector3f4.f81613z;
            float f27 = f26 - f25;
            float f28 = vector3f.f81613z;
            if (f27 > f28 - f12) {
                f27 = f28 - f12;
            }
            float f29 = f26 + f25;
            if (f29 < f28 + f12) {
                f29 = f28 + f12;
            }
            float f30 = (f27 + f29) / 2.0f;
            vector3f4.f81613z = f30;
            this.zExtent = f29 - f30;
        } else {
            this.center.f81613z = 0.0f;
            this.zExtent = Float.POSITIVE_INFINITY;
        }
        return this;
    }

    public BoundingBox(BoundingBox boundingBox) {
        this.center.set(boundingBox.center);
        this.xExtent = boundingBox.xExtent;
        this.yExtent = boundingBox.yExtent;
        this.zExtent = boundingBox.zExtent;
    }

    public BoundingBox(Vector3f vector3f, Vector3f vector3f2) {
        setMinMax(vector3f, vector3f2);
    }

    @Override
    public int collideWith(Collidable collidable) {
        if (collidable instanceof Ray) {
            return collideWithRay((Ray) collidable);
        }
        if (collidable instanceof Triangle) {
            Triangle triangle = (Triangle) collidable;
            return intersects(triangle.get1(), triangle.get2(), triangle.get3()) ? 1 : 0;
        }
        if (collidable instanceof BoundingVolume) {
            return intersects((BoundingVolume) collidable) ? 1 : 0;
        }
        throw new UnsupportedCollisionException("With: " + collidable.getClass().getSimpleName());
    }

    public void computeFromTris(int[] iArr, Mesh mesh, int i10, int i11) {
        if (i11 - i10 <= 0) {
            return;
        }
        TempVars tempVars = TempVars.get();
        Vector3f vector3f = tempVars.vect1;
        Vector3f vector3f2 = tempVars.vect2;
        Triangle triangle = tempVars.triangle;
        Vector3f vector3f3 = vector3f.set(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);
        Vector3f vector3f4 = vector3f2.set(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);
        while (i10 < i11) {
            mesh.getTriangle(iArr[i10], triangle);
            checkMinMax(vector3f3, vector3f4, triangle.get(0));
            checkMinMax(vector3f3, vector3f4, triangle.get(1));
            checkMinMax(vector3f3, vector3f4, triangle.get(2));
            i10++;
        }
        this.center.set(vector3f3.addLocal(vector3f4));
        this.center.multLocal(0.5f);
        float f10 = vector3f4.f81611x;
        Vector3f vector3f5 = this.center;
        this.xExtent = f10 - vector3f5.f81611x;
        this.yExtent = vector3f4.f81612y - vector3f5.f81612y;
        this.zExtent = vector3f4.f81613z - vector3f5.f81613z;
        tempVars.release();
    }

    @Override
    public BoundingVolume transform(Matrix4f matrix4f, BoundingVolume boundingVolume) {
        BoundingBox boundingBox;
        if (boundingVolume != null && boundingVolume.getType() == BoundingVolume.Type.AABB) {
            boundingBox = (BoundingBox) boundingVolume;
        } else {
            boundingBox = new BoundingBox();
        }
        TempVars tempVars = TempVars.get();
        boundingBox.center.divideLocal(matrix4f.multProj(this.center, boundingBox.center));
        Matrix3f matrix3f = tempVars.tempMat3;
        matrix4f.toRotationMatrix(matrix3f);
        matrix3f.absoluteLocal();
        tempVars.vect1.set(this.xExtent, this.yExtent, this.zExtent);
        Vector3f vector3f = tempVars.vect1;
        matrix3f.mult(vector3f, vector3f);
        boundingBox.xExtent = FastMath.abs(tempVars.vect1.getX());
        boundingBox.yExtent = FastMath.abs(tempVars.vect1.getY());
        boundingBox.zExtent = FastMath.abs(tempVars.vect1.getZ());
        tempVars.release();
        return boundingBox;
    }

    private int collideWithRay(Ray ray) {
        TempVars tempVars = TempVars.get();
        try {
            Vector3f subtractLocal = tempVars.vect1.set(ray.origin).subtractLocal(this.center);
            Vector3f vector3f = tempVars.vect2.set(ray.direction);
            float[] fArr = tempVars.fWdU;
            fArr[0] = 0.0f;
            fArr[1] = Float.POSITIVE_INFINITY;
            if (clip(vector3f.f81611x, (-subtractLocal.f81611x) - this.xExtent, fArr) && clip(-vector3f.f81611x, subtractLocal.f81611x - this.xExtent, fArr) && clip(vector3f.f81612y, (-subtractLocal.f81612y) - this.yExtent, fArr) && clip(-vector3f.f81612y, subtractLocal.f81612y - this.yExtent, fArr) && clip(vector3f.f81613z, (-subtractLocal.f81613z) - this.zExtent, fArr) && clip(-vector3f.f81613z, subtractLocal.f81613z - this.zExtent, fArr)) {
                float f10 = fArr[0];
                if (f10 == 0.0f) {
                    if (fArr[1] != Float.POSITIVE_INFINITY) {
                    }
                }
                if (fArr[1] > f10) {
                    tempVars.release();
                    return 2;
                }
                tempVars.release();
                return 1;
            }
            tempVars.release();
            return 0;
        } catch (Throwable th2) {
            tempVars.release();
            throw th2;
        }
    }

    public boolean intersects(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        return Intersection.intersect(this, vector3f, vector3f2, vector3f3);
    }

    @Override
    public boolean intersects(Vector3f vector3f) {
        return FastMath.abs(this.center.f81611x - vector3f.f81611x) <= this.xExtent && FastMath.abs(this.center.f81612y - vector3f.f81612y) <= this.yExtent && FastMath.abs(this.center.f81613z - vector3f.f81613z) <= this.zExtent;
    }
}
