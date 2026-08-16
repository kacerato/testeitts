package com.ardor3d.math;

import com.ardor3d.math.type.ReadOnlyLineSegment3;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.util.Constants;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

public class LineSegment3 extends Line3Base implements ReadOnlyLineSegment3, Poolable {
    private static final ObjectPool<LineSegment3> LINESEG3_POOL = ObjectPool.create(LineSegment3.class, Constants.maxPoolSize);
    private static final long serialVersionUID = 1;
    protected double _extent;

    public LineSegment3() {
        super(Vector3.ZERO, Vector3.UNIT_Z);
    }

    public static final LineSegment3 fetchTempInstance() {
        return Constants.useMathPools ? LINESEG3_POOL.fetch() : new LineSegment3();
    }

    public static boolean isValid(ReadOnlyLineSegment3 readOnlyLineSegment3) {
        return (readOnlyLineSegment3 == null || !Vector3.isValid(readOnlyLineSegment3.getDirection()) || !Vector3.isValid(readOnlyLineSegment3.getOrigin()) || Double.isInfinite(readOnlyLineSegment3.getExtent()) || Double.isNaN(readOnlyLineSegment3.getExtent())) ? false : true;
    }

    public static final void releaseTempInstance(LineSegment3 lineSegment3) {
        if (Constants.useMathPools) {
            LINESEG3_POOL.release(lineSegment3);
        }
    }

    @Override
    public double distanceSquared(ReadOnlyVector3 readOnlyVector3, Vector3 vector3) {
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        fetchTempInstance.set(readOnlyVector3).subtractLocal(this._origin);
        double dot = this._direction.dot(fetchTempInstance);
        double d10 = this._extent;
        if ((-d10) >= dot) {
            getNegativeEnd(fetchTempInstance);
        } else if (dot < d10) {
            fetchTempInstance.set(getDirection()).multiplyLocal(dot);
            fetchTempInstance.addLocal(getOrigin());
        } else {
            getPositiveEnd(fetchTempInstance);
        }
        if (vector3 != null) {
            vector3.set(fetchTempInstance);
        }
        readOnlyVector3.subtract(fetchTempInstance, fetchTempInstance);
        double lengthSquared = fetchTempInstance.lengthSquared();
        Vector3.releaseTempInstance(fetchTempInstance);
        return lengthSquared;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReadOnlyLineSegment3)) {
            return false;
        }
        ReadOnlyLineSegment3 readOnlyLineSegment3 = (ReadOnlyLineSegment3) obj;
        return this._origin.equals(readOnlyLineSegment3.getOrigin()) && this._direction.equals(readOnlyLineSegment3.getDirection()) && this._extent == readOnlyLineSegment3.getExtent();
    }

    @Override
    public double getExtent() {
        return this._extent;
    }

    public Vector3 getNegativeEnd(Vector3 vector3) {
        if (vector3 == null) {
            vector3 = new Vector3();
        }
        vector3.set(getDirection()).multiplyLocal(-this._extent);
        vector3.addLocal(getOrigin());
        return vector3;
    }

    public Vector3 getPositiveEnd(Vector3 vector3) {
        if (vector3 == null) {
            vector3 = new Vector3();
        }
        vector3.set(getDirection()).multiplyLocal(this._extent);
        vector3.addLocal(getOrigin());
        return vector3;
    }

    public Vector3 random(Vector3 vector3) {
        if (vector3 == null) {
            vector3 = new Vector3();
        }
        double nextRandomDouble = MathUtils.nextRandomDouble();
        double d10 = 1.0d - nextRandomDouble;
        double d11 = (nextRandomDouble * 2.0d) - 1.0d;
        vector3.setX((this._extent * 2.0d * getOrigin().getX() * d10) + (getDirection().getX() * this._extent * d11));
        vector3.setY((this._extent * 2.0d * getOrigin().getY() * d10) + (getDirection().getY() * this._extent * d11));
        vector3.setZ((this._extent * 2.0d * getOrigin().getZ() * d10) + (getDirection().getZ() * this._extent * d11));
        return vector3;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._extent = inputCapsule.readDouble("extent", 0.0d);
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        super.readExternal(objectInput);
        this._extent = objectInput.readDouble();
    }

    public LineSegment3 set(ReadOnlyLineSegment3 readOnlyLineSegment3) {
        this._origin.set(readOnlyLineSegment3.getOrigin());
        this._direction.set(readOnlyLineSegment3.getDirection());
        return this;
    }

    public void setExtent(double d10) {
        this._extent = d10;
    }

    public String toString() {
        return "com.ardor3d.math.LineSegment3 [Origin: " + ((Object) this._origin) + " - Direction: " + ((Object) this._direction) + " - Extent: " + this._extent + "]";
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this._extent, "extent", 0.0d);
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        super.writeExternal(objectOutput);
        objectOutput.writeDouble(this._extent);
    }

    public LineSegment3(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32, double d10) {
        super(readOnlyVector3, readOnlyVector32);
        this._extent = d10;
    }

    @Override
    public LineSegment3 mo1192clone() {
        return (LineSegment3) super.mo1192clone();
    }

    public LineSegment3(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32) {
        this();
        this._origin.set(readOnlyVector3).addLocal(readOnlyVector32).multiplyLocal(0.5d);
        this._direction.set(readOnlyVector32).subtractLocal(readOnlyVector3);
        this._extent = this._direction.length() * 0.5d;
        this._direction.normalizeLocal();
    }
}
