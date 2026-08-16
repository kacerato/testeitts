package com.jme3.math;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.util.logging.Logger;

public final class Vector2f implements Savable, Cloneable, Serializable {
    static final long serialVersionUID = 1;

    public float f81609x;

    public float f81610y;
    private static final Logger logger = Logger.getLogger(Vector2f.class.getName());
    public static final Vector2f ZERO = new Vector2f(0.0f, 0.0f);
    public static final Vector2f NAN = new Vector2f(Float.NaN, Float.NaN);
    public static final Vector2f UNIT_X = new Vector2f(1.0f, 0.0f);
    public static final Vector2f UNIT_Y = new Vector2f(0.0f, 1.0f);
    public static final Vector2f UNIT_XY = new Vector2f(1.0f, 1.0f);
    public static final Vector2f POSITIVE_INFINITY = new Vector2f(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);
    public static final Vector2f NEGATIVE_INFINITY = new Vector2f(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);

    public Vector2f(float f10, float f11) {
        this.f81609x = f10;
        this.f81610y = f11;
    }

    public static boolean isValidVector(Vector2f vector2f) {
        return (vector2f == null || Float.isNaN(vector2f.f81609x) || Float.isNaN(vector2f.f81610y) || Float.isInfinite(vector2f.f81609x) || Float.isInfinite(vector2f.f81610y)) ? false : true;
    }

    public Vector2f add(Vector2f vector2f) {
        if (vector2f == null) {
            logger.warning("Provided vector is null, null returned.");
            return null;
        }
        return new Vector2f(this.f81609x + vector2f.f81609x, this.f81610y + vector2f.f81610y);
    }

    public Vector2f addLocal(Vector2f vector2f) {
        if (vector2f == null) {
            logger.warning("Provided vector is null, null returned.");
            return null;
        }
        this.f81609x += vector2f.f81609x;
        this.f81610y += vector2f.f81610y;
        return this;
    }

    public float angleBetween(Vector2f vector2f) {
        return FastMath.atan2(vector2f.f81610y, vector2f.f81609x) - FastMath.atan2(this.f81610y, this.f81609x);
    }

    public Vector3f cross(Vector2f vector2f) {
        return new Vector3f(0.0f, 0.0f, determinant(vector2f));
    }

    public float determinant(Vector2f vector2f) {
        return (this.f81609x * vector2f.f81610y) - (this.f81610y * vector2f.f81609x);
    }

    public float distance(Vector2f vector2f) {
        return FastMath.sqrt(distanceSquared(vector2f));
    }

    public float distanceSquared(Vector2f vector2f) {
        double d10 = this.f81609x - vector2f.f81609x;
        double d11 = this.f81610y - vector2f.f81610y;
        return (float) ((d10 * d10) + (d11 * d11));
    }

    public Vector2f divide(float f10) {
        return new Vector2f(this.f81609x / f10, this.f81610y / f10);
    }

    public Vector2f divideLocal(float f10) {
        this.f81609x /= f10;
        this.f81610y /= f10;
        return this;
    }

    public float dot(Vector2f vector2f) {
        if (vector2f != null) {
            return (this.f81609x * vector2f.f81609x) + (this.f81610y * vector2f.f81610y);
        }
        logger.warning("Provided vector is null, 0 returned.");
        return 0.0f;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Vector2f)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        Vector2f vector2f = (Vector2f) obj;
        return Float.compare(this.f81609x, vector2f.f81609x) == 0 && Float.compare(this.f81610y, vector2f.f81610y) == 0;
    }

    public float getAngle() {
        return FastMath.atan2(this.f81610y, this.f81609x);
    }

    public float getX() {
        return this.f81609x;
    }

    public float getY() {
        return this.f81610y;
    }

    public int hashCode() {
        int floatToIntBits = Float.floatToIntBits(this.f81609x) + 1406;
        return floatToIntBits + (floatToIntBits * 37) + Float.floatToIntBits(this.f81610y);
    }

    public Vector2f interpolateLocal(Vector2f vector2f, float f10) {
        float f11 = 1.0f - f10;
        this.f81609x = (this.f81609x * f11) + (vector2f.f81609x * f10);
        this.f81610y = (f11 * this.f81610y) + (f10 * vector2f.f81610y);
        return this;
    }

    public boolean isSimilar(Vector2f vector2f, float f10) {
        return vector2f != null && Float.compare(Math.abs(vector2f.f81609x - this.f81609x), f10) <= 0 && Float.compare(Math.abs(vector2f.f81610y - this.f81610y), f10) <= 0;
    }

    public float length() {
        return FastMath.sqrt(lengthSquared());
    }

    public float lengthSquared() {
        float f10 = this.f81609x;
        float f11 = this.f81610y;
        return (f10 * f10) + (f11 * f11);
    }

    public Vector2f mult(float f10) {
        return new Vector2f(this.f81609x * f10, this.f81610y * f10);
    }

    public Vector2f multLocal(float f10) {
        this.f81609x *= f10;
        this.f81610y *= f10;
        return this;
    }

    public Vector2f negate() {
        return new Vector2f(-this.f81609x, -this.f81610y);
    }

    public Vector2f negateLocal() {
        this.f81609x = -this.f81609x;
        this.f81610y = -this.f81610y;
        return this;
    }

    public Vector2f normalize() {
        float length = length();
        return length != 0.0f ? divide(length) : divide(1.0f);
    }

    public Vector2f normalizeLocal() {
        float length = length();
        return length != 0.0f ? divideLocal(length) : divideLocal(1.0f);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.f81609x = capsule.readFloat("x", 0.0f);
        this.f81610y = capsule.readFloat("y", 0.0f);
    }

    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.f81609x = objectInput.readFloat();
        this.f81610y = objectInput.readFloat();
    }

    public void rotateAroundOrigin(float f10, boolean z10) {
        if (z10) {
            f10 = -f10;
        }
        float cos = FastMath.cos(f10);
        float sin = FastMath.sin(f10);
        float f11 = this.f81609x;
        float f12 = this.f81610y;
        this.f81609x = (cos * f11) - (sin * f12);
        this.f81610y = (sin * f11) + (cos * f12);
    }

    public Vector2f set(float f10, float f11) {
        this.f81609x = f10;
        this.f81610y = f11;
        return this;
    }

    public Vector2f setX(float f10) {
        this.f81609x = f10;
        return this;
    }

    public Vector2f setY(float f10) {
        this.f81610y = f10;
        return this;
    }

    public float smallestAngleBetween(Vector2f vector2f) {
        return FastMath.acos(dot(vector2f));
    }

    public Vector2f subtract(Vector2f vector2f) {
        return subtract(vector2f, (Vector2f) null);
    }

    public Vector2f subtractLocal(Vector2f vector2f) {
        if (vector2f == null) {
            logger.warning("Provided vector is null, null returned.");
            return null;
        }
        this.f81609x -= vector2f.f81609x;
        this.f81610y -= vector2f.f81610y;
        return this;
    }

    public float[] toArray(float[] fArr) {
        if (fArr == null) {
            fArr = new float[2];
        }
        fArr[0] = this.f81609x;
        fArr[1] = this.f81610y;
        return fArr;
    }

    public String toString() {
        return "(" + this.f81609x + ", " + this.f81610y + ")";
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.f81609x, "x", 0.0f);
        capsule.write(this.f81610y, "y", 0.0f);
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeFloat(this.f81609x);
        objectOutput.writeFloat(this.f81610y);
    }

    public Vector2f zero() {
        this.f81610y = 0.0f;
        this.f81609x = 0.0f;
        return this;
    }

    public Vector2f m1291clone() {
        try {
            return (Vector2f) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public Vector2f divide(float f10, float f11) {
        return new Vector2f(this.f81609x / f10, this.f81610y / f11);
    }

    public Vector2f mult(float f10, Vector2f vector2f) {
        if (vector2f == null) {
            vector2f = new Vector2f();
        }
        vector2f.f81609x = this.f81609x * f10;
        vector2f.f81610y = this.f81610y * f10;
        return vector2f;
    }

    public Vector2f subtract(Vector2f vector2f, Vector2f vector2f2) {
        if (vector2f2 == null) {
            vector2f2 = new Vector2f();
        }
        vector2f2.f81609x = this.f81609x - vector2f.f81609x;
        vector2f2.f81610y = this.f81610y - vector2f.f81610y;
        return vector2f2;
    }

    public Vector2f add(Vector2f vector2f, Vector2f vector2f2) {
        if (vector2f == null) {
            logger.warning("Provided vector is null, null returned.");
            return null;
        }
        if (vector2f2 == null) {
            vector2f2 = new Vector2f();
        }
        vector2f2.f81609x = this.f81609x + vector2f.f81609x;
        vector2f2.f81610y = this.f81610y + vector2f.f81610y;
        return vector2f2;
    }

    public float distanceSquared(float f10, float f11) {
        double d10 = this.f81609x - f10;
        double d11 = this.f81610y - f11;
        return (float) ((d10 * d10) + (d11 * d11));
    }

    public Vector2f divideLocal(float f10, float f11) {
        this.f81609x /= f10;
        this.f81610y /= f11;
        return this;
    }

    public Vector2f interpolateLocal(Vector2f vector2f, Vector2f vector2f2, float f10) {
        float f11 = 1.0f - f10;
        this.f81609x = (vector2f.f81609x * f11) + (vector2f2.f81609x * f10);
        this.f81610y = (f11 * vector2f.f81610y) + (f10 * vector2f2.f81610y);
        return this;
    }

    public Vector2f multLocal(Vector2f vector2f) {
        if (vector2f == null) {
            logger.warning("Provided vector is null, null returned.");
            return null;
        }
        this.f81609x *= vector2f.f81609x;
        this.f81610y *= vector2f.f81610y;
        return this;
    }

    public Vector2f set(Vector2f vector2f) {
        this.f81609x = vector2f.f81609x;
        this.f81610y = vector2f.f81610y;
        return this;
    }

    public Vector2f() {
        this.f81610y = 0.0f;
        this.f81609x = 0.0f;
    }

    public Vector2f addLocal(float f10, float f11) {
        this.f81609x += f10;
        this.f81610y += f11;
        return this;
    }

    public Vector2f subtractLocal(float f10, float f11) {
        this.f81609x -= f10;
        this.f81610y -= f11;
        return this;
    }

    public Vector2f mult(float f10, float f11) {
        return new Vector2f(this.f81609x * f10, this.f81610y * f11);
    }

    public Vector2f subtract(float f10, float f11) {
        return new Vector2f(this.f81609x - f10, this.f81610y - f11);
    }

    public Vector2f(Vector2f vector2f) {
        this.f81609x = vector2f.f81609x;
        this.f81610y = vector2f.f81610y;
    }

    public Vector2f multLocal(float f10, float f11) {
        this.f81609x *= f10;
        this.f81610y *= f11;
        return this;
    }
}
