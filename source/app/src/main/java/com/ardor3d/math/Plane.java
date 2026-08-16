package com.ardor3d.math;

import com.ardor3d.math.type.ReadOnlyPlane;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.util.Constants;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import org.eclipse.jdt.core.JavaCore;

public class Plane implements Cloneable, Savable, Externalizable, ReadOnlyPlane, Poolable {
    private static final long serialVersionUID = 1;
    protected double _constant;
    protected final Vector3 _normal;
    private static final ObjectPool<Plane> PLANE_POOL = ObjectPool.create(Plane.class, Constants.maxPoolSize);
    public static final ReadOnlyPlane XZ = new Plane(Vector3.UNIT_Y, 0.0d);
    public static final ReadOnlyPlane XY = new Plane(Vector3.UNIT_Z, 0.0d);
    public static final ReadOnlyPlane YZ = new Plane(Vector3.UNIT_X, 0.0d);

    public Plane() {
        this(Vector3.UNIT_Y, 0.0d);
    }

    public static final Plane fetchTempInstance() {
        return Constants.useMathPools ? PLANE_POOL.fetch() : new Plane();
    }

    public static boolean isValid(ReadOnlyPlane readOnlyPlane) {
        if (readOnlyPlane == null || Double.isNaN(readOnlyPlane.getConstant()) || Double.isInfinite(readOnlyPlane.getConstant())) {
            return false;
        }
        return Vector3.isValid(readOnlyPlane.getNormal());
    }

    public static final void releaseTempInstance(Plane plane) {
        if (Constants.useMathPools) {
            PLANE_POOL.release(plane);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReadOnlyPlane)) {
            return false;
        }
        ReadOnlyPlane readOnlyPlane = (ReadOnlyPlane) obj;
        return getConstant() == readOnlyPlane.getConstant() && this._normal.equals(readOnlyPlane.getNormal());
    }

    @Override
    public Class<? extends Plane> getClassTag() {
        return getClass();
    }

    @Override
    public double getConstant() {
        return this._constant;
    }

    @Override
    public ReadOnlyVector3 getNormal() {
        return this._normal;
    }

    public int hashCode() {
        int hashCode = this._normal.hashCode() + 544;
        long doubleToLongBits = Double.doubleToLongBits(getConstant());
        return hashCode + (hashCode * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
    }

    @Override
    public double pseudoDistance(ReadOnlyVector3 readOnlyVector3) {
        return this._normal.dot(readOnlyVector3) - this._constant;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        this._normal.set((Vector3) inputCapsule.readSavable(JavaCore.NORMAL, new Vector3(Vector3.UNIT_Y)));
        this._constant = inputCapsule.readDouble("constant", 0.0d);
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        setNormal((Vector3) objectInput.readObject());
        setConstant(objectInput.readDouble());
    }

    public Plane set(ReadOnlyPlane readOnlyPlane) {
        setConstant(readOnlyPlane.getConstant());
        setNormal(readOnlyPlane.getNormal());
        return this;
    }

    public void setConstant(double d10) {
        this._constant = d10;
    }

    public void setNormal(ReadOnlyVector3 readOnlyVector3) {
        this._normal.set(readOnlyVector3);
    }

    public Plane setPlanePoints(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32, ReadOnlyVector3 readOnlyVector33) {
        this._normal.set(readOnlyVector32).subtractLocal(readOnlyVector3);
        this._normal.crossLocal(readOnlyVector33.getX() - readOnlyVector3.getX(), readOnlyVector33.getY() - readOnlyVector3.getY(), readOnlyVector33.getZ() - readOnlyVector3.getZ()).normalizeLocal();
        this._constant = this._normal.dot(readOnlyVector3);
        return this;
    }

    public String toString() {
        return "com.ardor3d.math.Plane [Normal: " + ((Object) this._normal) + " - Constant: " + this._constant + "]";
    }

    @Override
    public ReadOnlyPlane.Side whichSide(ReadOnlyVector3 readOnlyVector3) {
        double pseudoDistance = pseudoDistance(readOnlyVector3);
        return pseudoDistance < 0.0d ? ReadOnlyPlane.Side.Inside : pseudoDistance > 0.0d ? ReadOnlyPlane.Side.Outside : ReadOnlyPlane.Side.Neither;
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        outputCapsule.write(this._normal, JavaCore.NORMAL, new Vector3(Vector3.UNIT_Y));
        outputCapsule.write(this._constant, "constant", 0.0d);
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this._normal);
        objectOutput.writeDouble(getConstant());
    }

    public Plane(ReadOnlyVector3 readOnlyVector3, double d10) {
        Vector3 vector3 = new Vector3();
        this._normal = vector3;
        this._constant = 0.0d;
        vector3.set(readOnlyVector3);
        this._constant = d10;
    }

    public Plane m1195clone() {
        try {
            Plane plane = (Plane) super.clone();
            plane._normal.set(this._normal);
            return plane;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }
}
