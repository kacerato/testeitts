package com.ardor3d.spline;

import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyColorRGBA;
import com.ardor3d.math.type.ReadOnlyVector2;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.renderer.IndexMode;
import com.ardor3d.scenegraph.Line;
import com.ardor3d.scenegraph.Point;
import java.util.List;

public class Curve {
    static final boolean $assertionsDisabled = false;
    private List<ReadOnlyVector3> _controlPoints;
    private Spline _spline;

    public Curve(List<ReadOnlyVector3> list, Spline spline) {
        setControlPoints(list);
        setSpline(spline);
    }

    private Vector3[] toVector3(int i10, int i11, int i12) {
        int i13 = i10;
        if (i13 <= 0) {
            throw new IllegalArgumentException("start must be > 0! start=" + i13);
        }
        if (i11 >= getControlPointCount() - 1) {
            throw new IllegalArgumentException("end must be < " + (getControlPointCount() - 1) + "! end=" + i11);
        }
        if (i13 >= i11) {
            throw new IllegalArgumentException("start must be < end! start=" + i13 + ", end=" + i11);
        }
        if (i12 <= 1) {
            throw new IllegalArgumentException("steps must be >= 1! steps=" + i12);
        }
        List<ReadOnlyVector3> controlPoints = getControlPoints();
        int i14 = (i11 - i13) * i12;
        Vector3[] vector3Arr = new Vector3[i14];
        for (int i15 = 0; i15 < i14; i15++) {
            int i16 = i15 % i12;
            if (i16 == 0 && i15 >= i12) {
                i13++;
            }
            vector3Arr[i15] = getSpline().interpolate(controlPoints.get(i13 - 1), controlPoints.get(i13), controlPoints.get(i13 + 1), controlPoints.get(i13 + 2), i16 / (i12 - 1.0d));
        }
        return vector3Arr;
    }

    public double getApproximateLength(int i10) {
        return getApproximateLength(1, getControlPointCount() - 2, i10);
    }

    public int getControlPointCount() {
        return getControlPoints().size();
    }

    public List<ReadOnlyVector3> getControlPoints() {
        return this._controlPoints;
    }

    public Spline getSpline() {
        return this._spline;
    }

    public ReadOnlyVector3 interpolate(int i10, int i11, double d10) {
        return interpolate(i10, i11, d10, new Vector3());
    }

    public void setControlPoints(List<ReadOnlyVector3> list) {
        if (list == null) {
            throw new IllegalArgumentException("controlPoints can not be null!");
        }
        if (list.size() < 4) {
            throw new IllegalArgumentException("controlPoints must contain at least 4 elements for this class to work!");
        }
        this._controlPoints = list;
    }

    public void setSpline(Spline spline) {
        if (spline == null) {
            throw new IllegalArgumentException("spline can not be null!");
        }
        this._spline = spline;
    }

    public Line toRenderableLine(int i10) {
        return toRenderableLine(1, getControlPointCount() - 2, i10);
    }

    public Point toRenderablePoint(int i10) {
        return toRenderablePoint(1, getControlPointCount() - 2, i10);
    }

    public double getApproximateLength(int i10, int i11, int i12) {
        Vector3[] vector3 = toVector3(i10, i11, i12);
        double d10 = 0.0d;
        int i13 = 0;
        while (i13 < vector3.length - 1) {
            Vector3 vector32 = vector3[i13];
            i13++;
            d10 += vector32.distance(vector3[i13]);
        }
        return d10;
    }

    public ReadOnlyVector3 interpolate(int i10, int i11, double d10, Vector3 vector3) {
        if (i10 > 0) {
            if (i11 < getControlPointCount() - 1) {
                List<ReadOnlyVector3> controlPoints = getControlPoints();
                return getSpline().interpolate(controlPoints.get(i10 - 1), controlPoints.get(i10), controlPoints.get(i11), controlPoints.get(i11 + 1), d10, vector3);
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("end must be < ");
            sb2.append(getControlPointCount() - 1);
            sb2.append("! end=");
            sb2.append(i11);
            throw new IllegalArgumentException(sb2.toString());
        }
        throw new IllegalArgumentException("start must be > 0! start=" + i10);
    }

    public Line toRenderableLine(int i10, int i11, int i12) {
        Line line = new Line("curve", toVector3(i10, i11, i12), (ReadOnlyVector3[]) null, (ReadOnlyColorRGBA[]) null, (ReadOnlyVector2[]) null);
        line.getMeshData().setIndexMode(IndexMode.LineStrip);
        return line;
    }

    public Point toRenderablePoint(int i10, int i11, int i12) {
        return new Point("point", toVector3(i10, i11, i12), (ReadOnlyVector3[]) null, (ReadOnlyColorRGBA[]) null, (ReadOnlyVector2[]) null);
    }
}
