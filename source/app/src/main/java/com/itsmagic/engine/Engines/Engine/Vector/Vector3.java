package com.itsmagic.engine.Engines.Engine.Vector;

import Ic.A;
import androidx.annotation.Keep;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.math.Vector4f;
import com.threed.jpct.SimpleVector;
import java.io.Serializable;
import java.util.Locale;

@Keep
public class Vector3 extends c implements Serializable {
    public static final float EPS_LENGTH2_0 = 1.0E-8f;
    public static final float EPS_UNIT = 1.0E-4f;
    JAVARuntime.Vector3 run;

    @Keep
    @Expose
    private float f79840x;

    @Keep
    @Expose
    private float f79841y;

    @Keep
    @Expose
    private float f79842z;
    private static final ThreadLocal<Quaternion> quatTL = new a();
    private static final Vector3 zeroVector = new Vector3();
    private static final Vector3 oneVector = new Vector3(1.0f);
    private static final Vector3 leftVector = new Vector3(-1.0f, 0.0f, 0.0f);
    private static final Vector3 rightVector = new Vector3(1.0f, 0.0f, 0.0f);
    private static final Vector3 upVector = new Vector3(0.0f, 1.0f, 0.0f);
    private static final Vector3 downVector = new Vector3(0.0f, -1.0f, 0.0f);
    private static final Vector3 forwardVector = new Vector3(0.0f, 0.0f, 1.0f);
    private static final Vector3 backVector = new Vector3(0.0f, 0.0f, -1.0f);

    public class a extends ThreadLocal<Quaternion> {
        @Override
        public Quaternion initialValue() {
            return new Quaternion();
        }
    }

    public Vector3() {
    }

    public static float angle(Vector3 from, Vector3 to) {
        if (Nc.b.q1(from.lengthF() * to.lengthF()) < 1.0E-15f) {
            return 0.0f;
        }
        return ((float) Math.acos(Nc.b.E(dot(from, to) / r0, -1.0f, 1.0f))) * 57.295776f;
    }

    public static Vector3 back() {
        Vector3 vector3 = backVector;
        vector3.set(0.0f, 0.0f, -1.0f);
        return vector3;
    }

    public static Vector3 crossProduct(Vector3 vector1, Vector3 vector2) {
        return crossProduct(vector1.getX(), vector1.getY(), vector1.getZ(), vector2.getX(), vector2.getY(), vector2.getZ(), new Vector3());
    }

    public static Vector3 down() {
        Vector3 vector3 = downVector;
        vector3.set(0.0f, -1.0f, 0.0f);
        return vector3;
    }

    private void fallbackDirectionLocal(float x10, float y10, float z10) {
        if (x10 == 0.0f && y10 == 0.0f && z10 == 0.0f) {
            set(0.0f, 1.0f, 0.0f);
            return;
        }
        float abs = Math.abs(x10);
        float abs2 = Math.abs(y10);
        float abs3 = Math.abs(z10);
        if (abs >= abs2 && abs >= abs3) {
            set(Math.signum(x10), 0.0f, 0.0f);
        } else if (abs2 < abs || abs2 < abs3) {
            set(0.0f, 0.0f, Math.signum(z10));
        } else {
            set(0.0f, Math.signum(y10), 0.0f);
        }
    }

    public static Vector3 forward() {
        Vector3 vector3 = forwardVector;
        vector3.set(0.0f, 0.0f, 1.0f);
        return vector3;
    }

    public static Vector3 fromJson(String json) {
        try {
            return (Vector3) X7.a.m().fromJson(json, Vector3.class);
        } catch (JsonSyntaxException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static Vector2 getExtremeHighest(Vector3 extremes) {
        float f10;
        Vector2 vector2 = new Vector2();
        if (extremes.getX() >= extremes.getY() && extremes.getX() >= extremes.getZ()) {
            f10 = extremes.getX();
            vector2.f79839y = 0.0f;
        } else if (extremes.getY() >= extremes.getX() && extremes.getY() >= extremes.getZ()) {
            f10 = extremes.getY();
            vector2.f79839y = 1.0f;
        } else if (extremes.getZ() < extremes.getX() || extremes.getZ() < extremes.getY()) {
            f10 = 1.0f;
        } else {
            f10 = extremes.getZ();
            vector2.f79839y = 2.0f;
        }
        vector2.f79838x = f10;
        return vector2;
    }

    public static Vector3 left() {
        Vector3 vector3 = leftVector;
        vector3.set(-1.0f, 0.0f, 0.0f);
        return vector3;
    }

    public static Vector3 one() {
        Vector3 vector3 = oneVector;
        vector3.set(1.0f);
        return vector3;
    }

    public static Vector3 random(float min, float max) {
        Vector3 vector3 = new Vector3();
        vector3.setX(Nc.d.h(min, max));
        vector3.setY(Nc.d.h(min, max));
        vector3.setZ(Nc.d.h(min, max));
        return vector3;
    }

    public static Vector3 reflect(Vector3 dir, Vector3 normal) {
        return reflect(dir, normal, new Vector3());
    }

    public static Vector3 right() {
        Vector3 vector3 = rightVector;
        vector3.set(1.0f, 0.0f, 0.0f);
        return vector3;
    }

    public static float signedAngle(Vector3 from, Vector3 to, Vector3 axis) {
        return angle(from, to) * (((axis.getX() * ((from.getY() * to.getZ()) - (from.getZ() * to.getY()))) + (axis.getY() * ((from.getZ() * to.getX()) - (from.getX() * to.getZ())))) + (axis.getZ() * ((from.getX() * to.getY()) - (from.getY() * to.getX()))) >= 0.0f ? 1.0f : -1.0f);
    }

    public static Vector3 smoothDamp(Vector3 current, Vector3 target, Vector3 currentVelocity, float smoothTime, float maxSpeed, float deltaTime) {
        return smoothDamp(current, target, currentVelocity, smoothTime, maxSpeed, deltaTime, new Vector3());
    }

    private static float snapComponent(float v10) {
        if (Math.abs(v10) < 1.0E-6f) {
            return 0.0f;
        }
        if (Math.abs(v10 - 1.0f) < 1.0E-6f) {
            return 1.0f;
        }
        if (Math.abs(1.0f + v10) < 1.0E-6f) {
            return -1.0f;
        }
        return v10;
    }

    public static float sqrLength(float x10, float y10, float z10) {
        return (x10 * x10) + (y10 * y10) + (z10 * z10);
    }

    public static Vector3 triangleNormal(Vector3 a10, Vector3 b10, Vector3 c10) {
        Vector3 crossProduct = crossProduct(b10.getX() - a10.getX(), b10.getY() - a10.getY(), b10.getZ() - a10.getZ(), c10.getX() - a10.getX(), c10.getY() - a10.getY(), c10.getZ() - a10.getZ(), new Vector3());
        crossProduct.normalizeLocal();
        return crossProduct;
    }

    public static Vector3 up() {
        Vector3 vector3 = upVector;
        vector3.set(0.0f, 1.0f, 0.0f);
        return vector3;
    }

    public static Vector3 zero() {
        Vector3 vector3 = zeroVector;
        vector3.set(0.0f);
        return vector3;
    }

    public Vector3 add(Vector3 vector3) {
        return new Vector3(getX() + vector3.getX(), getY() + vector3.getY(), getZ() + vector3.getZ());
    }

    public Vector3 addLocal(Vector3 vector3) {
        setX(getX() + vector3.getX());
        setY(getY() + vector3.getY());
        setZ(getZ() + vector3.getZ());
        return this;
    }

    public float angleBetween(Vector3 other) {
        float dot = dot(other);
        if (lengthF() * other.lengthF() == 0.0f) {
            return 0.0f;
        }
        return (float) Math.acos(Math.max(-1.0f, Math.min(1.0f, dot / r1)));
    }

    public Vector3 blend(float a10, float blend) {
        Vector3 vector3 = new Vector3();
        vector3.set(this);
        float E10 = Nc.b.E(0.0f, blend, 1.0f);
        vector3.set(this);
        vector3.blendLocal(a10, E10);
        return vector3;
    }

    public void blendLocal(Vector3 to, float blend) {
        float E10 = Nc.b.E(0.0f, blend, 1.0f);
        setX(Nc.b.z(getX(), to.getX(), E10));
        setY(Nc.b.z(getY(), to.getY(), E10));
        setZ(Nc.b.z(getZ(), to.getZ(), E10));
    }

    public Vector3 cross(Vector3 b10) {
        return new Vector3((getY() * b10.getZ()) - (getZ() * b10.getY()), (getZ() * b10.getX()) - (getX() * b10.getZ()), (getX() * b10.getY()) - (getY() * b10.getX()));
    }

    public Vector3 crossLocal(Vector3 b10) {
        float x10 = getX();
        float y10 = getY();
        float z10 = getZ();
        set((b10.getZ() * y10) - (b10.getY() * z10), (z10 * b10.getX()) - (b10.getZ() * x10), (x10 * b10.getY()) - (y10 * b10.getX()));
        return this;
    }

    public float distance(float x10, float y10, float z10) {
        return (float) Math.sqrt(Math.pow(getX() - x10, 2.0d) + Math.pow(getY() - y10, 2.0d) + Math.pow(getZ() - z10, 2.0d));
    }

    public float distanceIgnoreY(Vector3 target) {
        return (float) Math.sqrt(Math.pow(getX() - target.getX(), 2.0d) + Math.pow(getZ() - target.getZ(), 2.0d));
    }

    public Vector3 div(Vector3 vector3) {
        return new Vector3(getX() / vector3.getX(), getY() / vector3.getY(), getZ() / vector3.getZ());
    }

    public Vector3 divLocal(float a10) {
        setX(getX() / a10);
        setY(getY() / a10);
        setZ(getZ() / a10);
        return this;
    }

    public float dot(Vector3 b10) {
        return (getX() * b10.getX()) + (getY() * b10.getY()) + (getZ() * b10.getZ());
    }

    public double dotProductDouble(Vector3 b10) {
        return (getX() * b10.getX()) + (getY() * b10.getY()) + (getZ() * b10.getZ());
    }

    public int emulateHash() {
        return (((Float.floatToIntBits(getX()) * 31) + Float.floatToIntBits(getY())) * 31) + Float.floatToIntBits(getZ());
    }

    public boolean equally(Vector3 vector3, float delta) {
        return j.i(this, vector3, delta);
    }

    public boolean equallyOposite(Vector3 vector3) {
        return (vector3.getX() == getX() && vector3.getY() == getY() && vector3.getZ() == getZ()) || equally(vector3.mul(new Vector3(-1.0f)));
    }

    public boolean equalsApprox(Vector3 other, float epsilon) {
        return other != null && Math.abs(this.f79840x - other.f79840x) < epsilon && Math.abs(this.f79841y - other.f79841y) < epsilon && Math.abs(this.f79842z - other.f79842z) < epsilon;
    }

    public void fillOut(Vector3 out) {
        out.set(this);
    }

    public void fixNan() {
        setX(A.b(getX()));
        setY(A.b(getY()));
        setZ(A.b(getZ()));
    }

    public float get(int idx) {
        if (idx == 0) {
            return getX();
        }
        if (idx == 1) {
            return getY();
        }
        if (idx == 2) {
            return getZ();
        }
        throw new IndexOutOfBoundsException();
    }

    public Vector3 getPerp() {
        return getZ() < getX() ? new Vector3(getY(), -getX(), 0.0f) : new Vector3(0.0f, -getZ(), getY());
    }

    public float getX() {
        return this.f79840x;
    }

    public float getY() {
        return this.f79841y;
    }

    public float getZ() {
        return this.f79842z;
    }

    public Vector3 invert() {
        return mul(-1);
    }

    public Vector3 invertLocal() {
        mulLocal(-1.0f);
        return this;
    }

    public double length() {
        return Math.sqrt((getX() * getX()) + (getY() * getY()) + (getZ() * getZ()));
    }

    public float lengthF() {
        return (float) Math.sqrt((getX() * getX()) + (getY() * getY()) + (getZ() * getZ()));
    }

    public float lengthSquared() {
        return (getX() * getX()) + (getY() * getY()) + (getZ() * getZ());
    }

    public Vector3 lerp(Vector3f to, float speed) {
        if (speed != 0.0f) {
            Vector3 vector3 = new Vector3();
            vector3.set(this);
            vector3.lerpLocal(to, speed);
            return vector3;
        }
        return m1249clone();
    }

    public void lerpLocal(Vector3f to, float speed) {
        if (speed != 0.0f) {
            setX(Nc.b.N0(getX(), to.f81611x, speed));
            setY(Nc.b.N0(getY(), to.f81612y, speed));
            setZ(Nc.b.N0(getZ(), to.f81613z, speed));
        }
    }

    public double magnitude(Vector3 target) {
        return Math.sqrt(Math.pow(getX() - target.getX(), 2.0d) + Math.pow(getY() - target.getY(), 2.0d) + Math.pow(getZ() - target.getZ(), 2.0d));
    }

    public Vector3 mul(Vector3 vector3) {
        return new Vector3(getX() * vector3.getX(), getY() * vector3.getY(), getZ() * vector3.getZ());
    }

    public Vector3 mulLocal(Vector3 vector3) {
        setX(getX() * vector3.getX());
        setY(getY() * vector3.getY());
        setZ(getZ() * vector3.getZ());
        return this;
    }

    public Vector3 negateLocal() {
        this.f79840x = -this.f79840x;
        this.f79841y = -this.f79841y;
        this.f79842z = -this.f79842z;
        return this;
    }

    public Vector3 normalize() {
        return new Vector3(getX(), getY(), getZ()).normalizeLocal();
    }

    public void normalizeHasWeights() {
        float x10 = getX();
        float y10 = getY();
        float z10 = getZ();
        float f10 = x10 + y10 + z10;
        set(x10 / f10, y10 / f10, z10 / f10);
    }

    public Vector3 normalizeLocal() {
        float x10 = getX();
        float y10 = getY();
        float z10 = getZ();
        if (!Float.isFinite(x10)) {
            x10 = 0.0f;
        }
        if (!Float.isFinite(y10)) {
            y10 = 0.0f;
        }
        if (!Float.isFinite(z10)) {
            z10 = 0.0f;
        }
        float f10 = (x10 * x10) + (y10 * y10) + (z10 * z10);
        if (!Float.isFinite(f10) || f10 < 1.0E-8f) {
            fallbackDirectionLocal(x10, y10, z10);
            return this;
        }
        if (Math.abs(f10 - 1.0f) < 1.0E-4f) {
            set(snapComponent(x10), snapComponent(y10), snapComponent(z10));
            return this;
        }
        float sqrt = 1.0f / ((float) Math.sqrt(f10));
        if (Float.isFinite(sqrt)) {
            set(snapComponent(x10 * sqrt), snapComponent(y10 * sqrt), snapComponent(z10 * sqrt));
            return this;
        }
        fallbackDirectionLocal(x10, y10, z10);
        return this;
    }

    public Vector3 rotate(float rx, float ry, float rz) {
        return rotate(rx, ry, rz, new Vector3());
    }

    public void rotateLocal(float rx, float ry, float rz) {
        rotate(rx, ry, rz, this);
    }

    public Vector3 set(float x10, float y10, float z10) {
        setX(x10);
        setY(y10);
        setZ(z10);
        return this;
    }

    public Vector3 setAndReturn(float x10, float y10, float z10) {
        setX(x10);
        setY(y10);
        setZ(z10);
        return this;
    }

    public void setFromIndex(float value, int idx) {
        if (idx == 0) {
            setX(value);
        } else if (idx != 1) {
            if (idx != 2) {
                return;
            }
            setZ(value);
        }
        setY(value);
        setZ(value);
    }

    public void setRuntime(JAVARuntime.Vector3 run) {
        this.run = run;
    }

    public float setX(float x10) {
        this.f79840x = A.b(x10);
        return x10;
    }

    public void setXY(float x10, float y10) {
        setX(x10);
        setY(y10);
    }

    public void setXZ(float x10, float z10) {
        setX(x10);
        setZ(z10);
    }

    public float setY(float y10) {
        this.f79841y = A.b(y10);
        return y10;
    }

    public float setZ(float z10) {
        this.f79842z = A.b(z10);
        return z10;
    }

    public float sqrtDistance(Vector3 target) {
        return (float) (Math.pow(getX() - target.getX(), 2.0d) + Math.pow(getY() - target.getY(), 2.0d) + Math.pow(getZ() - target.getZ(), 2.0d));
    }

    public float sqrtDistanceIgnoreY(Vector3 target) {
        return (float) (Math.pow(getX() - target.getX(), 2.0d) + Math.pow(getZ() - target.getZ(), 2.0d));
    }

    public float sqrtLength() {
        return (getX() * getX()) + (getY() * getY()) + (getZ() * getZ());
    }

    public double sqrtMagnitude(Vector3 target) {
        return Math.pow(getX() - target.getX(), 2.0d) + Math.pow(getY() - target.getY(), 2.0d) + Math.pow(getZ() - target.getZ(), 2.0d);
    }

    public Vector3 sub(Vector3 vector3) {
        return new Vector3(getX() - vector3.getX(), getY() - vector3.getY(), getZ() - vector3.getZ());
    }

    public Vector3 subLocal(Vector3 vector3) {
        setX(getX() - vector3.getX());
        setY(getY() - vector3.getY());
        setZ(getZ() - vector3.getZ());
        return this;
    }

    public float[] toArray() {
        return new float[]{getX(), getY(), getZ()};
    }

    public JAVARuntime.Vector3 toJAVARuntime() {
        JAVARuntime.Vector3 vector3 = this.run;
        if (vector3 != null) {
            return vector3;
        }
        JAVARuntime.Vector3 vector32 = new JAVARuntime.Vector3(this);
        this.run = vector32;
        return vector32;
    }

    public String toJson() {
        return X7.a.m().toJson(this);
    }

    public String toString() {
        return "( " + getX() + " , " + getY() + " , " + getZ() + " )";
    }

    public Vector2 toVector2() {
        return new Vector2(getX(), getY());
    }

    public Vector3f toVector3f() {
        return new Vector3f(getX(), getY(), getZ());
    }

    public void toVector3fJME(Vector3f ccvJme3vector) {
        ccvJme3vector.set(this.f79840x, this.f79841y, this.f79842z);
    }

    public Vector2 xy() {
        return new Vector2(getX(), getY());
    }

    public Vector2 xz() {
        return new Vector2(getX(), getZ());
    }

    public Vector3(float a10) {
        float b10 = A.b(a10);
        this.f79842z = b10;
        this.f79841y = b10;
        this.f79840x = b10;
    }

    public static Vector3 crossProduct(Vector3 vector1, Vector3 vector2, Vector3 out) {
        crossProduct(vector1.getX(), vector1.getY(), vector1.getZ(), vector2.getX(), vector2.getY(), vector2.getZ(), out);
        return out;
    }

    public static float length(float x10, float y10, float z10) {
        return (float) Math.sqrt((x10 * x10) + (y10 * y10) + (z10 * z10));
    }

    public static Vector3 reflect(Vector3 dir, Vector3 normal, Vector3 out) {
        float dot = dot(normal, dir) * (-2.0f);
        out.set((normal.getX() * dot) + dir.getX(), (normal.getY() * dot) + dir.getY(), (dot * normal.getZ()) + dir.getZ());
        return out;
    }

    public static Vector3 smoothDamp(Vector3 current, Vector3 target, Vector3 currentVelocity, float smoothTime, float maxSpeed, float deltaTime, Vector3 out) {
        float S02 = Nc.b.S0(1.0E-4f, smoothTime);
        float f10 = 2.0f / S02;
        float f11 = f10 * deltaTime;
        float f12 = 1.0f / (((f11 + 1.0f) + ((0.48f * f11) * f11)) + (((0.235f * f11) * f11) * f11));
        float x10 = current.getX() - target.getX();
        float y10 = current.getY() - target.getY();
        float z10 = current.getZ() - target.getZ();
        float f13 = maxSpeed * S02;
        float f14 = (x10 * x10) + (y10 * y10) + (z10 * z10);
        if (f14 > f13 * f13) {
            float q12 = Nc.b.q1(f14);
            x10 = (x10 / q12) * f13;
            y10 = (y10 / q12) * f13;
            z10 = (z10 / q12) * f13;
        }
        target.setX(current.getX() - x10);
        target.setY(current.getY() - y10);
        target.setZ(current.getZ() - z10);
        float x11 = (currentVelocity.getX() + (f10 * x10)) * deltaTime;
        float y11 = (currentVelocity.getY() + (f10 * y10)) * deltaTime;
        float z11 = (currentVelocity.getZ() + (f10 * z10)) * deltaTime;
        currentVelocity.setX((currentVelocity.getX() - (f10 * x11)) * f12);
        currentVelocity.setY((currentVelocity.getY() - (f10 * y11)) * f12);
        currentVelocity.setZ((currentVelocity.getZ() - (f10 * z11)) * f12);
        float x12 = target.getX() + ((x10 + x11) * f12);
        float y12 = target.getY() + ((y10 + y11) * f12);
        float z12 = target.getZ() + ((z10 + z11) * f12);
        float x13 = target.getX() - current.getX();
        float y13 = target.getY() - current.getY();
        float z13 = target.getZ() - current.getZ();
        if ((x13 * (x12 - target.getX())) + (y13 * (y12 - target.getY())) + (z13 * (z12 - target.getZ())) > 0.0f) {
            x12 = target.getX();
            y12 = target.getY();
            z12 = target.getZ();
            currentVelocity.setX((x12 - target.getX()) / deltaTime);
            currentVelocity.setY((y12 - target.getY()) / deltaTime);
            currentVelocity.setZ((z12 - target.getZ()) / deltaTime);
        }
        out.set(x12, y12, z12);
        return out;
    }

    public Vector3 m1249clone() {
        return new Vector3(getX(), getY(), getZ());
    }

    public float distance(float x10, float y10) {
        return (float) Math.sqrt(Math.pow(getX() - x10, 2.0d) + Math.pow(getY() - y10, 2.0d));
    }

    public boolean equally(Vector3 vector3) {
        return j.h(this, vector3);
    }

    public void fillOut(Vector3f out) {
        out.f81611x = getX();
        out.f81612y = getY();
        out.f81613z = getZ();
    }

    public double magnitude() {
        return Math.sqrt(Math.pow(getX(), 2.0d) + Math.pow(getY(), 2.0d) + Math.pow(getZ(), 2.0d));
    }

    public Vector3 rotate(float rx, float ry, float rz, Vector3 out) {
        Quaternion quaternion = quatTL.get();
        quaternion.v(rx, ry, rz);
        quaternion.q0(this, out);
        return out;
    }

    public void rotateLocal(float rx, float ry, float rz, Vector3 pivot) {
        rotate(rx, ry, rz, pivot, this);
    }

    public float sqrtDistance(Vector3f target) {
        return (float) (Math.pow(getX() - target.f81611x, 2.0d) + Math.pow(getY() - target.f81612y, 2.0d) + Math.pow(getZ() - target.f81613z, 2.0d));
    }

    public float sqrtDistanceIgnoreY(float x10, float z10) {
        return (float) (Math.pow(getX() - x10, 2.0d) + Math.pow(getZ() - z10, 2.0d));
    }

    public double sqrtMagnitude() {
        return Math.pow(getX(), 2.0d) + Math.pow(getY(), 2.0d) + Math.pow(getZ(), 2.0d);
    }

    public String toString(int decimals) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("( ");
        Locale locale = Locale.US;
        sb2.append(String.format(locale, "%." + decimals + "f", Float.valueOf(getX())));
        sb2.append(", ");
        sb2.append(String.format(locale, "%." + decimals + "f", Float.valueOf(getY())));
        sb2.append(", ");
        sb2.append(String.format(locale, "%." + decimals + "f", Float.valueOf(getZ())));
        sb2.append(" )");
        return sb2.toString();
    }

    public Vector3(float x10, float y10, float z10) {
        this.f79840x = x10;
        this.f79841y = y10;
        this.f79842z = z10;
    }

    public static Vector3 clone(Vector3 vector3) {
        if (vector3 != null) {
            return vector3.m1249clone();
        }
        return null;
    }

    public static Vector3 crossProduct(float Ux, float Uy, float Uz, float Vx, float Vy, float Vz, Vector3 out) {
        out.set((Uy * Vz) - (Uz * Vy), (Uz * Vx) - (Vz * Ux), (Ux * Vy) - (Uy * Vx));
        return out;
    }

    public float distance(Vector3 target) {
        return (float) Math.sqrt(Math.pow(getX() - target.getX(), 2.0d) + Math.pow(getY() - target.getY(), 2.0d) + Math.pow(getZ() - target.getZ(), 2.0d));
    }

    public boolean equally(Vector2 vector2) {
        return j.g(this, vector2);
    }

    public void setXZ(Vector2 vector2) {
        setXZ(vector2.f79838x, vector2.f79839y);
    }

    public float sqrtDistance(float x10, float y10, float z10) {
        return (float) (Math.pow(getX() - x10, 2.0d) + Math.pow(getY() - y10, 2.0d) + Math.pow(getZ() - z10, 2.0d));
    }

    public static Vector3 crossProduct(Vector3f vector1, Vector3f vector2) {
        float f10 = vector1.f81612y;
        float f11 = vector2.f81613z;
        float f12 = vector1.f81613z;
        float f13 = vector2.f81612y;
        float f14 = vector2.f81611x;
        float f15 = vector1.f81611x;
        return new Vector3((f10 * f11) - (f12 * f13), (f12 * f14) - (f11 * f15), (f15 * f13) - (f10 * f14));
    }

    public static float sqrtDistance(float x10, float y10, float z10, float ox, float oy, float oz) {
        return (float) (Math.pow(x10 - ox, 2.0d) + Math.pow(y10 - oy, 2.0d) + Math.pow(z10 - oz, 2.0d));
    }

    public Vector3 addLocal(Vector3f vector3) {
        setX(getX() + vector3.getX());
        setY(getY() + vector3.getY());
        setZ(getZ() + vector3.getZ());
        return this;
    }

    public float distance(Vector2 target) {
        return (float) Math.sqrt(Math.pow(getX() - target.f79838x, 2.0d) + Math.pow(getY() - target.f79839y, 2.0d));
    }

    public Vector3 divLocal(float x10, float y10, float z10) {
        setX(getX() / x10);
        setY(getY() / y10);
        setZ(getZ() / z10);
        return this;
    }

    public float dot(float x10, float y10, float z10) {
        return (getX() * x10) + (getY() * y10) + (getZ() * z10);
    }

    public boolean equally(Vector3f vector3) {
        return j.f(this, vector3.getX(), vector3.getY(), vector3.getZ());
    }

    public void lerpLocal(Vector3 to, float speed) {
        if (speed != 0.0f) {
            setX(Nc.b.N0(getX(), to.getX(), speed));
            setY(Nc.b.N0(getY(), to.getY(), speed));
            setZ(Nc.b.N0(getZ(), to.getZ(), speed));
        }
    }

    public Vector3 mulLocal(Vector2 vector3) {
        setX(getX() * vector3.f79838x);
        setY(getY() * vector3.f79839y);
        return this;
    }

    public Vector3 set(float a10) {
        setX(a10);
        setY(a10);
        setZ(a10);
        return this;
    }

    public Vector3 subLocal(Vector3 vector3, float multiplier) {
        setX(getX() - (vector3.getX() * multiplier));
        setY(getY() - (vector3.getY() * multiplier));
        setZ(getZ() - (vector3.getZ() * multiplier));
        return this;
    }

    public static Vector3 triangleNormal(Vector3 a10, Vector3 b10, Vector3 c10, Vector3 out) {
        crossProduct(b10.getX() - a10.getX(), b10.getY() - a10.getY(), b10.getZ() - a10.getZ(), c10.getX() - a10.getX(), c10.getY() - a10.getY(), c10.getZ() - a10.getZ(), out);
        out.normalizeLocal();
        return out;
    }

    public Vector3 add(Vector3 vector3, Vector3 out) {
        out.set(getX() + vector3.getX(), getY() + vector3.getY(), getZ() + vector3.getZ());
        return out;
    }

    public void blendLocal(Vector3f to, float blend) {
        float E10 = Nc.b.E(0.0f, blend, 1.0f);
        setX(Nc.b.z(getX(), to.getX(), E10));
        setY(Nc.b.z(getY(), to.getY(), E10));
        setZ(Nc.b.z(getZ(), to.getZ(), E10));
    }

    public Vector3 cross(Vector3 b10, Vector3 out) {
        out.set((getY() * b10.getZ()) - (getZ() * b10.getY()), (getZ() * b10.getX()) - (getX() * b10.getZ()), (getX() * b10.getY()) - (getY() * b10.getX()));
        return out;
    }

    public float distance(Vector3f target) {
        return (float) Math.sqrt(Math.pow(getX() - target.f81611x, 2.0d) + Math.pow(getY() - target.f81612y, 2.0d) + Math.pow(getZ() - target.f81613z, 2.0d));
    }

    public Vector3 div(Vector2 vector2) {
        return new Vector3(getX() / vector2.f79838x, getY() / vector2.f79839y, getZ());
    }

    public boolean equally(float x10, float y10, float z10) {
        return j.f(this, x10, y10, z10);
    }

    public void fillOut(Vector4 out) {
        out.f79845x = getX();
        out.f79846y = getY();
        out.f79847z = getZ();
    }

    public Vector3 lerp(Vector3 to, float speed) {
        if (speed != 0.0f) {
            Vector3 vector3 = new Vector3();
            vector3.set(this);
            vector3.lerpLocal(to, speed);
            return vector3;
        }
        return m1249clone();
    }

    public Vector3 mul(Vector3 vector3, Vector3 out) {
        out.set(getX() * vector3.getX(), getY() * vector3.getY(), getZ() * vector3.getZ());
        return out;
    }

    public Vector3 rotate(float rx, float ry, float rz, Vector3 pivot, Vector3 out) {
        Quaternion quaternion = quatTL.get();
        quaternion.v(rx, ry, rz);
        quaternion.n0(getX() - pivot.getX(), getY() - pivot.getY(), getZ() - pivot.getZ(), out);
        out.setX(out.getX() + pivot.getX());
        out.setY(out.getY() + pivot.getY());
        out.setZ(out.getZ() + pivot.getZ());
        return out;
    }

    public Vector3 sub(Vector3 vector3, Vector3 out) {
        out.set(getX() - vector3.getX(), getY() - vector3.getY(), getZ() - vector3.getZ());
        return out;
    }

    public static float distance(float x10, float y10, float z10, float x22, float y22, float z22) {
        return (float) Math.sqrt(Math.pow(x10 - x22, 2.0d) + Math.pow(y10 - y22, 2.0d) + Math.pow(z10 - z22, 2.0d));
    }

    public Vector3 blend(Vector3 other, float blend) {
        Vector3 vector3 = new Vector3();
        vector3.set(this);
        float E10 = Nc.b.E(0.0f, blend, 1.0f);
        vector3.set(this);
        vector3.blendLocal(other, E10);
        return vector3;
    }

    public boolean equally(float a10) {
        return j.e(this, a10);
    }

    public Vector3 mulLocal(float x10, float y10, float z10) {
        setX(getX() * x10);
        setY(getY() * y10);
        setZ(getZ() * z10);
        return this;
    }

    public Vector3(Vector3f v10) {
        if (v10 != null) {
            this.f79840x = A.b(v10.f81611x);
            this.f79841y = A.b(v10.f81612y);
            this.f79842z = A.b(v10.f81613z);
        } else {
            this.f79842z = 0.0f;
            this.f79841y = 0.0f;
            this.f79840x = 0.0f;
        }
    }

    public Vector3 addLocal(Vector3 vector3, float multiplier) {
        setX(getX() + (vector3.getX() * multiplier));
        setY(getY() + (vector3.getY() * multiplier));
        setZ(getZ() + (vector3.getZ() * multiplier));
        return this;
    }

    public Vector3 divLocal(Vector3 vector3) {
        setX(getX() / vector3.getX());
        setY(getY() / vector3.getY());
        setZ(getZ() / vector3.getZ());
        return this;
    }

    public float dot(float a10) {
        return (getX() * a10) + (getY() * a10) + (getZ() * a10);
    }

    public void lerpLocal(float x10, float y10, float z10, float speed) {
        if (speed != 0.0f) {
            Nc.b.N0(getX(), x10, speed);
            Nc.b.N0(getY(), y10, speed);
            Nc.b.N0(getZ(), z10, speed);
        }
    }

    public Vector3 set(Vector3 v10) {
        setX(v10.getX());
        setY(v10.getY());
        setZ(v10.getZ());
        return this;
    }

    public Vector3 subLocal(Vector2 vector3) {
        setX(getX() - vector3.f79838x);
        setY(getY() - vector3.f79839y);
        return this;
    }

    public Vector3 crossLocal(float x10, float y10, float z10) {
        float x11 = getX();
        float y11 = getY();
        float z11 = getZ();
        set((y11 * z10) - (z11 * y10), (z11 * x10) - (z10 * x11), (x11 * y10) - (y11 * x10));
        return this;
    }

    public void fillOut(Vector4f out) {
        out.f81615x = getX();
        out.f81616y = getY();
        out.f81617z = getZ();
    }

    public static Vector3 triangleNormal(float ax, float ay, float az, float bx, float by, float bz, float cx, float cy, float cz, Vector3 out) {
        crossProduct(bx - ax, by - ay, bz - az, cx - ax, cy - ay, cz - az, out);
        out.normalizeLocal();
        return out;
    }

    public Vector3 add(Vector3 vector3, float multiplier) {
        return new Vector3(getX() + (vector3.getX() * multiplier), getY() + (vector3.getY() * multiplier), getZ() + (vector3.getZ() * multiplier));
    }

    public void blendLocal(float x10, float y10, float z10, float blend) {
        float E10 = Nc.b.E(0.0f, blend, 1.0f);
        setX(Nc.b.z(getX(), x10, E10));
        setY(Nc.b.z(getY(), y10, E10));
        setZ(Nc.b.z(getZ(), z10, E10));
    }

    public Vector3 cross(float x10, float y10, float z10) {
        return new Vector3((getY() * z10) - (getZ() * y10), (getZ() * x10) - (getX() * z10), (getX() * y10) - (getY() * x10));
    }

    public Vector3 div(float x10, float y10, float z10) {
        return new Vector3(getX() / x10, getY() / y10, getZ() / z10);
    }

    public Vector3 lerp(float x10, float y10, float z10, float speed) {
        if (speed != 0.0f) {
            Vector3 vector3 = new Vector3();
            vector3.set(this);
            vector3.lerpLocal(x10, y10, z10, speed);
            return vector3;
        }
        return m1249clone();
    }

    public Vector3 mul(Vector2 vector2) {
        return new Vector3(getX() * vector2.f79838x, getY() * vector2.f79839y, getZ());
    }

    public Vector3 mulLocal(float a10) {
        setX(getX() * a10);
        setY(getY() * a10);
        setZ(getZ() * a10);
        return this;
    }

    public Vector3 sub(float a10, Vector3 out) {
        out.set(getX() - a10, getY() - a10, getZ() - a10);
        return out;
    }

    public Vector3 subLocal(float x10, float y10, float z10) {
        setX(getX() - x10);
        setY(getY() - y10);
        setZ(getZ() - z10);
        return this;
    }

    public static float dot(Vector3 a10, Vector3 b10) {
        return (a10.getX() * b10.getX()) + (a10.getY() * b10.getY()) + (a10.getZ() * b10.getZ());
    }

    public Vector3 addLocal(Vector2 vector) {
        setX(getX() + vector.f79838x);
        setY(getY() + vector.f79839y);
        return this;
    }

    public Vector3 divLocal(Vector2 vector) {
        setX(getX() / vector.f79838x);
        setY(getY() / vector.f79839y);
        return this;
    }

    public void lerpLocal(float a10, float speed) {
        if (speed != 0.0f) {
            setX(Nc.b.N0(getX(), a10, speed));
            setY(Nc.b.N0(getY(), a10, speed));
            setZ(Nc.b.N0(getZ(), a10, speed));
        }
    }

    public Vector3 set(Vector4 v10) {
        setX(v10.getX());
        setY(v10.getY());
        setZ(v10.getZ());
        return this;
    }

    public static Vector3 triangleNormal(Vector3f a10, Vector3f b10, Vector3f c10) {
        float f10 = b10.f81611x;
        float f11 = a10.f81611x;
        float f12 = f10 - f11;
        float f13 = b10.f81612y;
        float f14 = a10.f81612y;
        float f15 = b10.f81613z;
        float f16 = a10.f81613z;
        Vector3 crossProduct = crossProduct(f12, f13 - f14, f15 - f16, c10.f81611x - f11, c10.f81612y - f14, c10.f81613z - f16, new Vector3());
        crossProduct.normalizeLocal();
        return crossProduct;
    }

    public Vector3 blend(float x10, float y10, float z10, float blend) {
        Vector3 vector3 = new Vector3();
        vector3.set(this);
        float E10 = Nc.b.E(0.0f, blend, 1.0f);
        vector3.set(this);
        vector3.blendLocal(x10, y10, z10, E10);
        return vector3;
    }

    public void fillOut(float[] out) {
        out[0] = getX();
        out[1] = getY();
        out[2] = getZ();
    }

    public Vector3(Vector3 v10) {
        if (v10 != null) {
            this.f79840x = A.b(v10.f79840x);
            this.f79841y = A.b(v10.f79841y);
            this.f79842z = A.b(v10.f79842z);
        } else {
            this.f79842z = 0.0f;
            this.f79841y = 0.0f;
            this.f79840x = 0.0f;
        }
    }

    public Vector3 addLocal(float x10, float y10, float z10) {
        setX(getX() + x10);
        setY(getY() + y10);
        setZ(getZ() + z10);
        return this;
    }

    public Vector3 subLocal(float a10) {
        setX(getX() - a10);
        setY(getY() - a10);
        setZ(getZ() - a10);
        return this;
    }

    public Vector3 add(Vector2 vector2) {
        return new Vector3(getX() + vector2.f79838x, getY() + vector2.f79839y, getZ());
    }

    public void blendLocal(float a10, float blend) {
        float E10 = Nc.b.E(0.0f, blend, 1.0f);
        setX(Nc.b.z(getX(), a10, E10));
        setY(Nc.b.z(getY(), a10, E10));
        setZ(Nc.b.z(getZ(), a10, E10));
    }

    public Vector3 cross(float a10) {
        return new Vector3((getY() * a10) - (getZ() * a10), (getZ() * a10) - (getX() * a10), (getX() * a10) - (getY() * a10));
    }

    public Vector3 div(float a10) {
        return new Vector3(getX() / a10, getY() / a10, getZ() / a10);
    }

    public Vector3 lerp(float a10, float speed) {
        if (speed != 0.0f) {
            Vector3 vector3 = new Vector3();
            vector3.set(this);
            vector3.lerpLocal(getX(), speed);
            return vector3;
        }
        return m1249clone();
    }

    public Vector3 mul(float a10, Vector3 out) {
        out.set(getX() * a10, getY() * a10, getZ() * a10);
        return out;
    }

    public Vector3 set(Vector4f v10) {
        setX(v10.getX());
        setY(v10.getY());
        setZ(v10.getZ());
        return this;
    }

    public Vector3 sub(Vector3f vector3) {
        return new Vector3(getX() - vector3.f81611x, getY() - vector3.f81612y, getZ() - vector3.f81613z);
    }

    public Vector3 rotate(Quaternion quaternion, Vector3 pivot, Vector3 out) {
        quaternion.n0(getX() - pivot.getX(), getY() - pivot.getY(), getZ() - pivot.getZ(), out);
        out.setX(out.getX() + pivot.getX());
        out.setY(out.getY() + pivot.getY());
        out.setZ(out.getZ() + pivot.getZ());
        return out;
    }

    public Vector3 addLocal(float x10, float y10, float z10, float multiplier) {
        setX(getX() + (x10 * multiplier));
        setY(getY() + (y10 * multiplier));
        setZ(getZ() + (z10 * multiplier));
        return this;
    }

    public void set(Vector2 v10, float z10) {
        setX(v10.f79838x);
        setY(v10.f79839y);
        setZ(z10);
    }

    public Vector3(float[] array) {
        this.f79840x = A.b(array[0]);
        this.f79841y = A.b(array[1]);
        this.f79842z = A.b(array[2]);
    }

    public Vector3 add(float x10, float y10, float z10) {
        return new Vector3(getX() + x10, getY() + y10, getZ() + z10);
    }

    public Vector3 div(int a10) {
        float f10 = a10;
        return new Vector3(getX() / f10, getY() / f10, getZ() / f10);
    }

    public Vector3 mul(float a10) {
        return new Vector3(getX() * a10, getY() * a10, getZ() * a10);
    }

    public Vector3 sub(Vector2 vector2) {
        return new Vector3(getX() - vector2.f79838x, getY() - vector2.f79839y, getZ());
    }

    public Vector3 addLocal(float a10) {
        setX(getX() + a10);
        setY(getY() + a10);
        setZ(getZ() + a10);
        return this;
    }

    public void set(Vector3f v10) {
        setX(v10.f81611x);
        setY(v10.f81612y);
        setZ(v10.f81613z);
    }

    public Vector3(Float[] array) {
        this.f79840x = A.b(array[0].floatValue());
        this.f79841y = A.b(array[1].floatValue());
        this.f79842z = A.b(array[2].floatValue());
    }

    public Vector3 add(float a10) {
        return new Vector3(getX() + a10, getY() + a10, getZ() + a10);
    }

    public Vector3 mul(float x10, float y10, float z10) {
        return new Vector3(getX() * x10, getY() * y10, getZ() * z10);
    }

    public Vector3 rotate(Quaternion quaternion) {
        return rotate(quaternion, new Vector3());
    }

    public Vector3 sub(float x10, float y10, float z10) {
        return new Vector3(getX() - x10, getY() - y10, getZ() - z10);
    }

    public Vector3 rotate(Quaternion quaternion, Vector3 out) {
        quaternion.q0(this, out);
        return out;
    }

    public void set(Float[] array) {
        setX(array[0].floatValue());
        setY(array[1].floatValue());
        setZ(array[2].floatValue());
    }

    public Vector3(SimpleVector simpleVector) {
        this.f79840x = A.b(simpleVector.f83625x);
        this.f79841y = A.b(simpleVector.f83626y);
        this.f79842z = A.b(simpleVector.f83627z);
    }

    public Vector3 add(float a10, Vector3 out) {
        out.set(getX() + a10, getY() + a10, getZ() + a10);
        return out;
    }

    public Vector3 mul(int a10) {
        float f10 = a10;
        return new Vector3(getX() * f10, getY() * f10, getZ() * f10);
    }

    public void set(float[] array) {
        setX(array[0]);
        setY(array[1]);
        setZ(array[2]);
    }

    public Vector3 sub(float a10) {
        return new Vector3(getX() - a10, getY() - a10, getZ() - a10);
    }

    public Vector3 add(int a10) {
        float f10 = a10;
        return new Vector3(getX() + f10, getY() + f10, getZ() + f10);
    }

    public Vector3 sub(int a10) {
        float f10 = a10;
        return new Vector3(getX() - f10, getY() - f10, getZ() - f10);
    }
}
