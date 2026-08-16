package com.ardor3d.math;

import com.ardor3d.math.type.ReadOnlyPlane;
import com.ardor3d.math.type.ReadOnlyRay3;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.util.Constants;

public class Ray3 extends Line3Base implements ReadOnlyRay3, Poolable {
    private static final ObjectPool<Ray3> RAY_POOL = ObjectPool.create(Ray3.class, Constants.maxPoolSize);
    private static final long serialVersionUID = 1;

    public Ray3() {
        super(Vector3.ZERO, Vector3.UNIT_Z);
    }

    public static final Ray3 fetchTempInstance() {
        return Constants.useMathPools ? RAY_POOL.fetch() : new Ray3();
    }

    public static boolean isValid(ReadOnlyRay3 readOnlyRay3) {
        return readOnlyRay3 != null && Vector3.isValid(readOnlyRay3.getDirection()) && Vector3.isValid(readOnlyRay3.getOrigin());
    }

    public static final void releaseTempInstance(Ray3 ray3) {
        if (Constants.useMathPools) {
            RAY_POOL.release(ray3);
        }
    }

    @Override
    public double distanceSquared(ReadOnlyVector3 readOnlyVector3, Vector3 vector3) {
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        fetchTempInstance.set(readOnlyVector3).subtractLocal(this._origin);
        double dot = this._direction.dot(fetchTempInstance);
        if (dot > 0.0d) {
            fetchTempInstance.set(this._direction).multiplyLocal(dot);
            fetchTempInstance.addLocal(this._origin);
        } else {
            fetchTempInstance.set(this._origin);
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
        if (!(obj instanceof ReadOnlyRay3)) {
            return false;
        }
        ReadOnlyRay3 readOnlyRay3 = (ReadOnlyRay3) obj;
        return this._origin.equals(readOnlyRay3.getOrigin()) && this._direction.equals(readOnlyRay3.getDirection());
    }

    public double getDistanceToPrimitive(Vector3[] vector3Arr) {
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        try {
            if (intersects(vector3Arr, fetchTempInstance)) {
                return getOrigin().distance(fetchTempInstance);
            }
            Vector3.releaseTempInstance(fetchTempInstance);
            return Double.POSITIVE_INFINITY;
        } finally {
            Vector3.releaseTempInstance(fetchTempInstance);
        }
    }

    public boolean intersects(Vector3[] vector3Arr, Vector3 vector3) {
        if (vector3Arr.length == 3) {
            return intersects(vector3Arr[0], vector3Arr[1], vector3Arr[2], vector3, true);
        }
        if (vector3Arr.length == 4) {
            return intersects(vector3Arr[0], vector3Arr[1], vector3Arr[3], vector3, false);
        }
        return false;
    }

    @Override
    public boolean intersectsPlanar(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32, ReadOnlyVector3 readOnlyVector33, Vector3 vector3, boolean z10) {
        return intersects(readOnlyVector3, readOnlyVector32, readOnlyVector33, vector3, true, z10);
    }

    public Ray3 set(ReadOnlyRay3 readOnlyRay3) {
        this._origin.set(readOnlyRay3.getOrigin());
        this._direction.set(readOnlyRay3.getDirection());
        return this;
    }

    public String toString() {
        return "com.ardor3d.math.Ray [Origin: " + ((Object) this._origin) + " - Direction: " + ((Object) this._direction) + "]";
    }

    public Ray3(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32) {
        super(readOnlyVector3, readOnlyVector32);
    }

    @Override
    public Ray3 mo1192clone() {
        return (Ray3) super.mo1192clone();
    }

    @Override
    public boolean intersects(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32, ReadOnlyVector3 readOnlyVector33, Vector3 vector3, boolean z10) {
        return intersects(readOnlyVector3, readOnlyVector32, readOnlyVector33, vector3, false, z10);
    }

    private boolean intersects(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32, ReadOnlyVector3 readOnlyVector33, Vector3 vector3, boolean z10, boolean z11) {
        double d10;
        boolean z12;
        Vector3 subtractLocal = Vector3.fetchTempInstance().set(this._origin).subtractLocal(readOnlyVector3);
        Vector3 subtractLocal2 = Vector3.fetchTempInstance().set(readOnlyVector32).subtractLocal(readOnlyVector3);
        Vector3 subtractLocal3 = Vector3.fetchTempInstance().set(readOnlyVector33).subtractLocal(readOnlyVector3);
        Vector3 crossLocal = Vector3.fetchTempInstance().set(subtractLocal2).crossLocal(subtractLocal3);
        double dot = this._direction.dot(crossLocal);
        if (dot > 2.220446049250313E-16d) {
            d10 = 1.0d;
        } else {
            if (dot >= -2.220446049250313E-16d) {
                return false;
            }
            dot = -dot;
            d10 = -1.0d;
        }
        double dot2 = this._direction.dot(subtractLocal.cross(subtractLocal3, subtractLocal3)) * d10;
        if (dot2 >= 0.0d) {
            double dot3 = this._direction.dot(subtractLocal2.crossLocal(subtractLocal)) * d10;
            if (dot3 >= 0.0d && (!z11 ? dot3 <= dot : dot2 + dot3 <= dot)) {
                double dot4 = (-d10) * subtractLocal.dot(crossLocal);
                if (dot4 >= 0.0d) {
                    if (vector3 == null) {
                        return true;
                    }
                    double d11 = 1.0d / dot;
                    double d12 = dot4 * d11;
                    if (!z10) {
                        vector3.set(this._origin).addLocal(this._direction.getX() * d12, this._direction.getY() * d12, this._direction.getZ() * d12);
                    } else {
                        vector3.set(d12, dot2 * d11, d11 * dot3);
                    }
                    z12 = true;
                    Vector3.releaseTempInstance(subtractLocal);
                    Vector3.releaseTempInstance(subtractLocal2);
                    Vector3.releaseTempInstance(subtractLocal3);
                    Vector3.releaseTempInstance(crossLocal);
                    return z12;
                }
            }
        }
        z12 = false;
        Vector3.releaseTempInstance(subtractLocal);
        Vector3.releaseTempInstance(subtractLocal2);
        Vector3.releaseTempInstance(subtractLocal3);
        Vector3.releaseTempInstance(crossLocal);
        return z12;
    }

    @Override
    public boolean intersects(ReadOnlyPlane readOnlyPlane, Vector3 vector3) {
        ReadOnlyVector3 normal = readOnlyPlane.getNormal();
        double dot = normal.dot(this._direction);
        if (dot > -2.220446049250313E-16d && dot < 2.220446049250313E-16d) {
            return false;
        }
        double constant = ((-normal.dot(this._origin)) + readOnlyPlane.getConstant()) / dot;
        if (constant < 2.220446049250313E-16d) {
            return false;
        }
        if (vector3 == null) {
            return true;
        }
        vector3.set(this._direction).multiplyLocal(constant).addLocal(this._origin);
        return true;
    }
}
