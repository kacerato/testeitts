package com.jme3.math;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Spline implements JmeCloneable, Savable {
    private List<Vector3f> CRcontrolPoints;
    private int basisFunctionDegree;
    private List<Vector3f> controlPoints;
    private float curveTension;
    private boolean cycle;
    private List<Float> knots;
    private List<Float> segmentsLength;
    private float totalLength;
    private SplineType type;
    private float[] weights;

    public enum SplineType {
        Linear,
        CatmullRom,
        Bezier,
        Nurb
    }

    public Spline() {
        this.controlPoints = new ArrayList();
        this.curveTension = 0.5f;
        this.type = SplineType.CatmullRom;
    }

    private void computeBezierLength() {
        if (this.controlPoints.size() > 1) {
            int i10 = 0;
            while (i10 < this.controlPoints.size() - 1) {
                Vector3f vector3f = this.controlPoints.get(i10);
                Vector3f vector3f2 = this.controlPoints.get(i10 + 1);
                Vector3f vector3f3 = this.controlPoints.get(i10 + 2);
                i10 += 3;
                float bezierP1toP2Length = FastMath.getBezierP1toP2Length(vector3f, vector3f2, vector3f3, this.controlPoints.get(i10));
                this.segmentsLength.add(Float.valueOf(bezierP1toP2Length));
                this.totalLength += bezierP1toP2Length;
            }
        }
    }

    private void computeCatmulLength() {
        if (this.controlPoints.size() > 1) {
            int i10 = 0;
            while (i10 < this.controlPoints.size() - 1) {
                int i11 = i10 + 1;
                float catmullRomP1toP2Length = FastMath.getCatmullRomP1toP2Length(this.CRcontrolPoints.get(i10), this.CRcontrolPoints.get(i11), this.CRcontrolPoints.get(i10 + 2), this.CRcontrolPoints.get(i10 + 3), 0.0f, 1.0f, this.curveTension);
                this.segmentsLength.add(Float.valueOf(catmullRomP1toP2Length));
                this.totalLength += catmullRomP1toP2Length;
                i10 = i11;
            }
        }
    }

    private void computeNurbLength() {
    }

    private void computeTotalLength() {
        this.totalLength = 0.0f;
        List<Float> list = this.segmentsLength;
        if (list == null) {
            this.segmentsLength = new ArrayList();
        } else {
            list.clear();
        }
        SplineType splineType = this.type;
        if (splineType != SplineType.Linear) {
            if (splineType == SplineType.Bezier) {
                computeBezierLength();
                return;
            } else if (splineType == SplineType.Nurb) {
                computeNurbLength();
                return;
            } else {
                initCatmullRomWayPoints(this.controlPoints);
                computeCatmulLength();
                return;
            }
        }
        if (this.controlPoints.size() > 1) {
            int i10 = 0;
            while (i10 < this.controlPoints.size() - 1) {
                int i11 = i10 + 1;
                float length = this.controlPoints.get(i11).subtract(this.controlPoints.get(i10)).length();
                this.segmentsLength.add(Float.valueOf(length));
                this.totalLength += length;
                i10 = i11;
            }
        }
    }

    private void initCatmullRomWayPoints(List<Vector3f> list) {
        List<Vector3f> list2 = this.CRcontrolPoints;
        if (list2 == null) {
            this.CRcontrolPoints = new ArrayList();
        } else {
            list2.clear();
        }
        int size = list.size();
        int i10 = size - 1;
        if (this.cycle) {
            this.CRcontrolPoints.add(list.get(list.size() - 2));
        } else {
            this.CRcontrolPoints.add(list.get(0).subtract(list.get(1).subtract(list.get(0))));
        }
        Iterator<Vector3f> it = list.iterator();
        while (it.hasNext()) {
            this.CRcontrolPoints.add(it.next());
        }
        if (this.cycle) {
            this.CRcontrolPoints.add(list.get(1));
        } else {
            this.CRcontrolPoints.add(list.get(i10).add(list.get(i10).subtract(list.get(size - 2))));
        }
    }

    public void addControlPoint(Vector3f vector3f) {
        if (this.controlPoints.size() > 2 && this.cycle) {
            List<Vector3f> list = this.controlPoints;
            list.remove(list.size() - 1);
        }
        this.controlPoints.add(vector3f.m1292clone());
        if (this.controlPoints.size() >= 2 && this.cycle) {
            List<Vector3f> list2 = this.controlPoints;
            list2.add(list2.get(0).m1292clone());
        }
        if (this.controlPoints.size() > 1) {
            computeTotalLength();
        }
    }

    public void clearControlPoints() {
        this.controlPoints.clear();
        this.totalLength = 0.0f;
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.controlPoints = (List) cloner.clone(this.controlPoints);
        if (this.segmentsLength != null) {
            this.segmentsLength = new ArrayList(this.segmentsLength);
        }
        this.CRcontrolPoints = (List) cloner.clone(this.CRcontrolPoints);
        if (this.knots != null) {
            this.knots = new ArrayList(this.knots);
        }
        this.weights = (float[]) cloner.clone(this.weights);
    }

    public int getBasisFunctionDegree() {
        return this.basisFunctionDegree;
    }

    public List<Vector3f> getControlPoints() {
        return this.controlPoints;
    }

    public float getCurveTension() {
        return this.curveTension;
    }

    public List<Float> getKnots() {
        return this.knots;
    }

    public float getMaxNurbKnot() {
        return this.knots.get(this.weights.length).floatValue();
    }

    public float getMinNurbKnot() {
        return this.knots.get(this.basisFunctionDegree - 1).floatValue();
    }

    public List<Float> getSegmentsLength() {
        return this.segmentsLength;
    }

    public float getTotalLength() {
        return this.totalLength;
    }

    public SplineType getType() {
        return this.type;
    }

    public float[] getWeights() {
        return this.weights;
    }

    public Vector3f interpolate(float f10, int i10, Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        int ordinal = this.type.ordinal();
        if (ordinal == 0) {
            FastMath.interpolateLinear(f10, this.controlPoints.get(i10), this.controlPoints.get(i10 + 1), vector3f);
        } else if (ordinal == 1) {
            FastMath.interpolateCatmullRom(f10, this.curveTension, this.CRcontrolPoints.get(i10), this.CRcontrolPoints.get(i10 + 1), this.CRcontrolPoints.get(i10 + 2), this.CRcontrolPoints.get(i10 + 3), vector3f);
        } else if (ordinal == 2) {
            FastMath.interpolateBezier(f10, this.controlPoints.get(i10), this.controlPoints.get(i10 + 1), this.controlPoints.get(i10 + 2), this.controlPoints.get(i10 + 3), vector3f);
        } else if (ordinal == 3) {
            CurveAndSurfaceMath.interpolateNurbs(f10, this, vector3f);
        }
        return vector3f;
    }

    public boolean isCycle() {
        return this.cycle;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.controlPoints = capsule.readSavableArrayList("controlPoints", new ArrayList());
        float[] readFloatArray = capsule.readFloatArray("segmentsLength", null);
        if (readFloatArray != null) {
            this.segmentsLength = new ArrayList(readFloatArray.length);
            for (float f10 : readFloatArray) {
                this.segmentsLength.add(Float.valueOf(f10));
            }
        }
        this.type = (SplineType) capsule.readEnum("type", SplineType.class, SplineType.CatmullRom);
        this.totalLength = capsule.readFloat("totalLength", 0.0f);
        this.CRcontrolPoints = capsule.readSavableArrayList("CRControlPoints", null);
        this.curveTension = capsule.readFloat("curveTension", 0.5f);
        this.cycle = capsule.readBoolean("cycle", false);
        float[] readFloatArray2 = capsule.readFloatArray("knots", null);
        if (readFloatArray2 == null) {
            this.knots = null;
        } else {
            this.knots = new ArrayList(readFloatArray2.length);
            for (float f11 : readFloatArray2) {
                this.knots.add(Float.valueOf(f11));
            }
        }
        this.weights = capsule.readFloatArray("weights", null);
        this.basisFunctionDegree = capsule.readInt("basisFunctionDegree", 0);
    }

    public void removeControlPoint(Vector3f vector3f) {
        this.controlPoints.remove(vector3f);
        if (this.controlPoints.size() > 1) {
            computeTotalLength();
        }
    }

    public void setCurveTension(float f10) {
        this.curveTension = f10;
        if (this.type != SplineType.CatmullRom || getControlPoints().isEmpty()) {
            return;
        }
        computeTotalLength();
    }

    public void setCycle(boolean z10) {
        if (this.type != SplineType.Nurb) {
            if (this.controlPoints.size() < 2) {
                this.cycle = z10;
                return;
            }
            if (this.cycle && !z10) {
                this.controlPoints.remove(r0.size() - 1);
            }
            if (!this.cycle && z10) {
                List<Vector3f> list = this.controlPoints;
                list.add(list.get(0));
            }
            this.cycle = z10;
            computeTotalLength();
        }
    }

    public void setType(SplineType splineType) {
        this.type = splineType;
        computeTotalLength();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        float[] fArr;
        float[] fArr2;
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.writeSavableArrayList((ArrayList) this.controlPoints, "controlPoints", null);
        capsule.write(this.type, "type", SplineType.CatmullRom);
        List<Float> list = this.segmentsLength;
        if (list != null) {
            fArr = new float[list.size()];
            for (int i10 = 0; i10 < this.segmentsLength.size(); i10++) {
                fArr[i10] = this.segmentsLength.get(i10).floatValue();
            }
        } else {
            fArr = null;
        }
        capsule.write(fArr, "segmentsLength", (float[]) null);
        capsule.write(this.totalLength, "totalLength", 0.0f);
        capsule.writeSavableArrayList((ArrayList) this.CRcontrolPoints, "CRControlPoints", null);
        capsule.write(this.curveTension, "curveTension", 0.5f);
        capsule.write(this.cycle, "cycle", false);
        List<Float> list2 = this.knots;
        if (list2 == null) {
            fArr2 = null;
        } else {
            int size = list2.size();
            fArr2 = new float[size];
            for (int i11 = 0; i11 < size; i11++) {
                fArr2[i11] = this.knots.get(i11).floatValue();
            }
        }
        capsule.write(fArr2, "knots", (float[]) null);
        capsule.write(this.weights, "weights", (float[]) null);
        capsule.write(this.basisFunctionDegree, "basisFunctionDegree", 0);
    }

    @Override
    public Spline jmeClone() {
        try {
            return (Spline) clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public Spline(SplineType splineType, Vector3f[] vector3fArr, float f10, boolean z10) {
        this.controlPoints = new ArrayList();
        this.curveTension = 0.5f;
        this.type = SplineType.CatmullRom;
        if (splineType != SplineType.Nurb) {
            for (Vector3f vector3f : vector3fArr) {
                this.controlPoints.add(vector3f);
            }
            this.type = splineType;
            this.curveTension = f10;
            this.cycle = z10;
            computeTotalLength();
            return;
        }
        throw new IllegalArgumentException("To create NURBS spline use: 'public Spline(Vector3f[] controlPoints, float[] weights, float[] nurbKnots)' constructor!");
    }

    public Spline(SplineType splineType, List<Vector3f> list, float f10, boolean z10) {
        ArrayList arrayList = new ArrayList();
        this.controlPoints = arrayList;
        this.curveTension = 0.5f;
        this.type = SplineType.CatmullRom;
        if (splineType != SplineType.Nurb) {
            this.type = splineType;
            arrayList.addAll(list);
            this.curveTension = f10;
            this.cycle = z10;
            computeTotalLength();
            return;
        }
        throw new IllegalArgumentException("To create NURBS spline use: 'public Spline(Vector3f[] controlPoints, float[] weights, float[] nurbKnots)' constructor!");
    }

    public Spline(List<Vector4f> list, List<Float> list2) {
        this.controlPoints = new ArrayList();
        this.curveTension = 0.5f;
        this.type = SplineType.CatmullRom;
        int i10 = 0;
        while (i10 < list2.size() - 1) {
            float floatValue = list2.get(i10).floatValue();
            i10++;
            if (floatValue > list2.get(i10).floatValue()) {
                throw new IllegalArgumentException("The knots values cannot decrease!");
            }
        }
        this.type = SplineType.Nurb;
        this.weights = new float[list.size()];
        this.knots = list2;
        this.basisFunctionDegree = list2.size() - this.weights.length;
        for (int i11 = 0; i11 < list.size(); i11++) {
            Vector4f vector4f = list.get(i11);
            this.controlPoints.add(new Vector3f(vector4f.f81615x, vector4f.f81616y, vector4f.f81617z));
            this.weights[i11] = vector4f.f81614w;
        }
        CurveAndSurfaceMath.prepareNurbsKnots(this.knots, this.basisFunctionDegree);
        computeTotalLength();
    }
}
