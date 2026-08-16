package com.ardor3d.math;

import com.ardor3d.math.type.ReadOnlyLine3;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.util.Constants;

public class Line3 extends Line3Base implements ReadOnlyLine3, Poolable {
    private static final ObjectPool<Line3> LINE3_POOL = ObjectPool.create(Line3.class, Constants.maxPoolSize);
    private static final long serialVersionUID = 1;

    public Line3() {
        super(Vector3.ZERO, Vector3.UNIT_Z);
    }

    public static final Line3 fetchTempInstance() {
        return Constants.useMathPools ? LINE3_POOL.fetch() : new Line3();
    }

    public static boolean isValid(ReadOnlyLine3 readOnlyLine3) {
        return readOnlyLine3 != null && Vector3.isValid(readOnlyLine3.getDirection()) && Vector3.isValid(readOnlyLine3.getOrigin());
    }

    public static final void releaseTempInstance(Line3 line3) {
        if (Constants.useMathPools) {
            LINE3_POOL.release(line3);
        }
    }

    @Override
    public double distanceSquared(ReadOnlyVector3 readOnlyVector3, Vector3 vector3) {
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        fetchTempInstance.set(readOnlyVector3).subtractLocal(this._origin);
        fetchTempInstance.set(this._direction).multiplyLocal(this._direction.dot(fetchTempInstance));
        fetchTempInstance.addLocal(this._origin);
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
        if (!(obj instanceof ReadOnlyLine3)) {
            return false;
        }
        ReadOnlyLine3 readOnlyLine3 = (ReadOnlyLine3) obj;
        return this._origin.equals(readOnlyLine3.getOrigin()) && this._direction.equals(readOnlyLine3.getDirection());
    }

    public Line3 set(ReadOnlyLine3 readOnlyLine3) {
        this._origin.set(readOnlyLine3.getOrigin());
        this._direction.set(readOnlyLine3.getDirection());
        return this;
    }

    public String toString() {
        return "com.ardor3d.math.Line3 [Origin: " + ((Object) this._origin) + " - Direction: " + ((Object) this._direction) + "]";
    }

    public Line3(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32) {
        super(readOnlyVector3, readOnlyVector32);
    }

    public Line3(ReadOnlyLine3 readOnlyLine3) {
        super(readOnlyLine3.getOrigin(), readOnlyLine3.getDirection());
    }

    @Override
    public Line3 mo1192clone() {
        return (Line3) super.mo1192clone();
    }
}
