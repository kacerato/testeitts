package com.ardor3d.intersection;

import com.ardor3d.math.Vector3;
import com.ardor3d.util.Ardor3dException;
import java.util.List;

public class IntersectionRecord {
    private final double[] _distances;
    private final Vector3[] _normals;
    private final Vector3[] _points;
    private final List<PrimitiveKey> _primitives;

    public IntersectionRecord(double[] dArr, Vector3[] vector3Arr) {
        this(dArr, vector3Arr, null);
    }

    public double getClosestDistance() {
        double[] dArr = this._distances;
        double d10 = Double.MAX_VALUE;
        if (dArr != null) {
            for (double d11 : dArr) {
                if (d11 < d10) {
                    d10 = d11;
                }
            }
        }
        return d10;
    }

    public int getClosestIntersection() {
        double[] dArr = this._distances;
        if (dArr == null) {
            return -1;
        }
        int length = dArr.length;
        double d10 = Double.MAX_VALUE;
        int i10 = -1;
        while (true) {
            length--;
            if (length < 0) {
                return i10;
            }
            double d11 = this._distances[length];
            if (d11 < d10) {
                i10 = length;
                d10 = d11;
            }
        }
    }

    public int getFurthestIntersection() {
        double[] dArr = this._distances;
        if (dArr == null) {
            return -1;
        }
        int length = dArr.length;
        double d10 = Double.MIN_VALUE;
        int i10 = -1;
        while (true) {
            length--;
            if (length < 0) {
                return i10;
            }
            double d11 = this._distances[length];
            if (d11 > d10) {
                i10 = length;
                d10 = d11;
            }
        }
    }

    public double getIntersectionDistance(int i10) {
        return this._distances[i10];
    }

    public Vector3 getIntersectionNormal(int i10) {
        return this._normals[i10];
    }

    public Vector3 getIntersectionPoint(int i10) {
        return this._points[i10];
    }

    public PrimitiveKey getIntersectionPrimitive(int i10) {
        List<PrimitiveKey> list = this._primitives;
        if (list == null) {
            return null;
        }
        return list.get(i10);
    }

    public int getNumberOfIntersections() {
        Vector3[] vector3Arr = this._points;
        if (vector3Arr == null) {
            return 0;
        }
        return vector3Arr.length;
    }

    public IntersectionRecord(double[] dArr, Vector3[] vector3Arr, List<PrimitiveKey> list) {
        this(dArr, vector3Arr, null, list);
    }

    public IntersectionRecord(double[] dArr, Vector3[] vector3Arr, Vector3[] vector3Arr2, List<PrimitiveKey> list) {
        if (dArr.length == vector3Arr.length && (list == null || vector3Arr.length == list.size())) {
            this._distances = dArr;
            this._points = vector3Arr;
            this._normals = vector3Arr2;
            this._primitives = list;
            return;
        }
        throw new Ardor3dException("All arguments must have an equal number of elements.");
    }
}
