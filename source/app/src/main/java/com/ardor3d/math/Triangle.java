package com.ardor3d.math;

import b2.AbstractC3834c;
import com.ardor3d.math.type.ReadOnlyTriangle;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.util.Constants;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import u8.C15580b;

public class Triangle implements Cloneable, Savable, Externalizable, ReadOnlyTriangle, Poolable {
    private static final ObjectPool<Triangle> TRI_POOL = ObjectPool.create(Triangle.class, Constants.maxPoolSize);
    private static final long serialVersionUID = 1;
    protected transient Vector3 _center;
    private boolean _dirtyCenter;
    private boolean _dirtyNormal;
    protected int _index;
    protected transient Vector3 _normal;
    protected final Vector3 _pointA;
    protected final Vector3 _pointB;
    protected final Vector3 _pointC;

    public Triangle() {
        this._pointA = new Vector3();
        this._pointB = new Vector3();
        this._pointC = new Vector3();
        this._index = 0;
        this._dirtyNormal = true;
        this._dirtyCenter = true;
    }

    public static final Triangle fetchTempInstance() {
        return Constants.useMathPools ? TRI_POOL.fetch() : new Triangle();
    }

    public static boolean isValid(Triangle triangle) {
        return triangle != null && Vector3.isValid(triangle._pointA) && Vector3.isValid(triangle._pointB) && Vector3.isValid(triangle._pointC);
    }

    public static final void releaseTempInstance(Triangle triangle) {
        if (Constants.useMathPools) {
            TRI_POOL.release(triangle);
        }
    }

    public void calculateCenter() {
        Vector3 vector3 = this._center;
        if (vector3 == null) {
            this._center = this._pointA.m1203clone();
        } else {
            vector3.set(this._pointA);
        }
        this._center.addLocal(this._pointB).addLocal(this._pointC).multiplyLocal(0.3333333333333333d);
        this._dirtyCenter = false;
    }

    public void calculateNormal() {
        Vector3 vector3 = this._normal;
        if (vector3 == null) {
            this._normal = this._pointB.m1203clone();
        } else {
            vector3.set(this._pointB);
        }
        this._normal.subtractLocal(this._pointA).crossLocal(this._pointC.getX() - this._pointA.getX(), this._pointC.getY() - this._pointA.getY(), this._pointC.getZ() - this._pointA.getZ());
        this._normal.normalizeLocal();
        this._dirtyNormal = false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReadOnlyTriangle)) {
            return false;
        }
        ReadOnlyTriangle readOnlyTriangle = (ReadOnlyTriangle) obj;
        return this._index == readOnlyTriangle.getIndex() && this._pointA.equals(readOnlyTriangle.getA()) && this._pointB.equals(readOnlyTriangle.getB()) && this._pointC.equals(readOnlyTriangle.getC());
    }

    @Override
    public ReadOnlyVector3 get(int i10) {
        if (i10 == 0) {
            return getA();
        }
        if (i10 == 1) {
            return getB();
        }
        if (i10 == 2) {
            return getC();
        }
        throw new IllegalArgumentException("invalid index: " + i10);
    }

    @Override
    public ReadOnlyVector3 getA() {
        return this._pointA;
    }

    @Override
    public ReadOnlyVector3 getB() {
        return this._pointB;
    }

    @Override
    public ReadOnlyVector3 getC() {
        return this._pointC;
    }

    @Override
    public ReadOnlyVector3 getCenter() {
        if (this._dirtyCenter) {
            calculateCenter();
        }
        return this._center;
    }

    @Override
    public Class<? extends Triangle> getClassTag() {
        return getClass();
    }

    @Override
    public int getIndex() {
        return this._index;
    }

    @Override
    public ReadOnlyVector3 getNormal() {
        if (this._dirtyNormal) {
            calculateNormal();
        }
        return this._normal;
    }

    public int hashCode() {
        int hashCode = this._pointA.hashCode() + 544;
        int hashCode2 = hashCode + (hashCode * 31) + this._pointB.hashCode();
        int hashCode3 = hashCode2 + (hashCode2 * 31) + this._pointC.hashCode();
        return hashCode3 + (hashCode3 * 31) + this._index;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        Vector3 vector3 = this._pointA;
        ReadOnlyVector3 readOnlyVector3 = Vector3.ZERO;
        vector3.set((Vector3) inputCapsule.readSavable("a", new Vector3(readOnlyVector3)));
        this._pointB.set((Vector3) inputCapsule.readSavable(C15580b.f118629u, new Vector3(readOnlyVector3)));
        this._pointC.set((Vector3) inputCapsule.readSavable(AbstractC3834c.f32824b1, new Vector3(readOnlyVector3)));
        this._index = inputCapsule.readInt(FirebaseAnalytics.d.f67690b0, 0);
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        setA((Vector3) objectInput.readObject());
        setB((Vector3) objectInput.readObject());
        setC((Vector3) objectInput.readObject());
        setIndex(objectInput.readInt());
    }

    public void set(int i10, ReadOnlyVector3 readOnlyVector3) {
        if (i10 == 0) {
            setA(readOnlyVector3);
        } else if (i10 == 1) {
            setB(readOnlyVector3);
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException("index must be 0, 1 or 2 (corresponding to A, B or C.)");
            }
            setC(readOnlyVector3);
        }
    }

    public void setA(ReadOnlyVector3 readOnlyVector3) {
        this._pointA.set(readOnlyVector3);
        this._dirtyNormal = true;
        this._dirtyCenter = true;
    }

    public void setB(ReadOnlyVector3 readOnlyVector3) {
        this._pointB.set(readOnlyVector3);
        this._dirtyNormal = true;
        this._dirtyCenter = true;
    }

    public void setC(ReadOnlyVector3 readOnlyVector3) {
        this._pointC.set(readOnlyVector3);
        this._dirtyNormal = true;
        this._dirtyCenter = true;
    }

    public void setIndex(int i10) {
        this._index = i10;
    }

    public String toString() {
        return "com.ardor3d.math.Triangle [A: " + ((Object) this._pointA) + " - B: " + ((Object) this._pointB) + " - C: " + ((Object) this._pointC) + " - Index: " + this._index + "]";
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        Vector3 vector3 = this._pointA;
        ReadOnlyVector3 readOnlyVector3 = Vector3.ZERO;
        outputCapsule.write(vector3, "a", new Vector3(readOnlyVector3));
        outputCapsule.write(this._pointB, C15580b.f118629u, new Vector3(readOnlyVector3));
        outputCapsule.write(this._pointC, AbstractC3834c.f32824b1, new Vector3(readOnlyVector3));
        outputCapsule.write(this._index, FirebaseAnalytics.d.f67690b0, 0);
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this._pointA);
        objectOutput.writeObject(this._pointB);
        objectOutput.writeObject(this._pointC);
        objectOutput.writeInt(getIndex());
    }

    public Triangle m1201clone() {
        try {
            Triangle triangle = (Triangle) super.clone();
            triangle._pointA.set(this._pointA);
            triangle._pointB.set(this._pointB);
            triangle._pointC.set(this._pointC);
            Vector3 vector3 = this._center;
            triangle._center = vector3 != null ? vector3.m1203clone() : null;
            Vector3 vector32 = this._normal;
            triangle._normal = vector32 != null ? vector32.m1203clone() : null;
            return triangle;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public Triangle(Vector3 vector3, Vector3 vector32, Vector3 vector33) {
        this(vector3, vector32, vector33, 0);
    }

    public Triangle(Vector3 vector3, Vector3 vector32, Vector3 vector33, int i10) {
        Vector3 vector34 = new Vector3();
        this._pointA = vector34;
        Vector3 vector35 = new Vector3();
        this._pointB = vector35;
        Vector3 vector36 = new Vector3();
        this._pointC = vector36;
        this._index = 0;
        this._dirtyNormal = true;
        this._dirtyCenter = true;
        vector34.set(vector3);
        vector35.set(vector32);
        vector36.set(vector33);
        this._index = i10;
    }
}
