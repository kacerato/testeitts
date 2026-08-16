package com.jme3.scene.shape;

import com.jme3.math.Spline;
import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import java.util.Iterator;
import java.util.List;

public class Curve extends Mesh {
    private Spline spline;
    private Vector3f temp;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$math$Spline$SplineType;

        static {
            int[] iArr = new int[Spline.SplineType.values().length];
            $SwitchMap$com$jme3$math$Spline$SplineType = iArr;
            try {
                iArr[Spline.SplineType.CatmullRom.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$math$Spline$SplineType[Spline.SplineType.Bezier.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$math$Spline$SplineType[Spline.SplineType.Nurb.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$jme3$math$Spline$SplineType[Spline.SplineType.Linear.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public Curve() {
        this.temp = new Vector3f();
    }

    private void createBezierMesh(int i10) {
        int i11 = i10 == 0 ? 1 : i10;
        int size = ((this.spline.getControlPoints().size() + 2) / 3) - 1;
        int i12 = size * i11;
        float[] fArr = new float[(i12 + 1) * 3];
        List<Vector3f> controlPoints = this.spline.getControlPoints();
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        for (int i16 = 0; i16 < size; i16++) {
            Vector3f vector3f = controlPoints.get(i14);
            fArr[i15] = vector3f.f81611x;
            int i17 = i15 + 2;
            fArr[i15 + 1] = vector3f.f81612y;
            i15 += 3;
            fArr[i17] = vector3f.f81613z;
            for (int i18 = 1; i18 < i11; i18++) {
                this.spline.interpolate(i18 / i11, i14, this.temp);
                fArr[i15] = this.temp.getX();
                int i19 = i15 + 2;
                fArr[i15 + 1] = this.temp.getY();
                i15 += 3;
                fArr[i19] = this.temp.getZ();
            }
            i14 += 3;
        }
        Vector3f vector3f2 = controlPoints.get(i14);
        fArr[i15] = vector3f2.f81611x;
        fArr[i15 + 1] = vector3f2.f81612y;
        fArr[i15 + 2] = vector3f2.f81613z;
        short[] sArr = new short[i12 << 1];
        int i20 = 0;
        while (i13 < i12) {
            int i21 = i20 + 1;
            sArr[i20] = (short) i13;
            i13++;
            i20 += 2;
            sArr[i21] = (short) i13;
        }
        setMode(Mesh.Mode.Lines);
        setBuffer(VertexBuffer.Type.Position, 3, fArr);
        setBuffer(VertexBuffer.Type.Index, 2, sArr);
        updateBound();
        updateCounts();
    }

    private void createCatmullRomMesh(int i10) {
        float[] fArr = new float[(((this.spline.getControlPoints().size() - 1) * i10) + 1) * 3];
        short[] sArr = new short[(this.spline.getControlPoints().size() - 1) * i10 * 2];
        Iterator<Vector3f> it = this.spline.getControlPoints().iterator();
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (it.hasNext()) {
            Vector3f next = it.next();
            fArr[i12] = next.f81611x;
            fArr[i12 + 1] = next.f81612y;
            fArr[i12 + 2] = next.f81613z;
            i12 += 3;
            if (it.hasNext()) {
                for (int i14 = 1; i14 < i10; i14++) {
                    this.spline.interpolate(i14 / i10, i13, this.temp);
                    fArr[i12] = this.temp.getX();
                    fArr[i12 + 1] = this.temp.getY();
                    fArr[i12 + 2] = this.temp.getZ();
                    i12 += 3;
                }
            }
            i13++;
        }
        int i15 = 0;
        while (i11 < (this.spline.getControlPoints().size() - 1) * i10) {
            sArr[i15] = (short) i11;
            i11++;
            sArr[i15 + 1] = (short) i11;
            i15 += 2;
        }
        setMode(Mesh.Mode.Lines);
        setBuffer(VertexBuffer.Type.Position, 3, fArr);
        setBuffer(VertexBuffer.Type.Index, 2, sArr);
        updateBound();
        updateCounts();
    }

    private void createLinearMesh() {
        float[] fArr = new float[this.spline.getControlPoints().size() * 3];
        short[] sArr = new short[(this.spline.getControlPoints().size() - 1) * 2];
        Iterator<Vector3f> it = this.spline.getControlPoints().iterator();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (it.hasNext()) {
            Vector3f next = it.next();
            fArr[i10] = next.getX();
            fArr[i10 + 1] = next.getY();
            fArr[i10 + 2] = next.getZ();
            i10 += 3;
            if (it.hasNext()) {
                sArr[i12] = (short) i11;
                i11++;
                sArr[i12 + 1] = (short) i11;
                i12 += 2;
            }
        }
        setMode(Mesh.Mode.Lines);
        setBuffer(VertexBuffer.Type.Position, 3, fArr);
        setBuffer(VertexBuffer.Type.Index, 2, sArr);
        updateBound();
        updateCounts();
    }

    private void createNurbMesh(int i10) {
        if (this.spline.getControlPoints() == null || this.spline.getControlPoints().size() <= 0) {
            return;
        }
        int size = i10 == 0 ? this.spline.getControlPoints().size() + 1 : (this.spline.getControlPoints().size() * i10) + 1;
        float minNurbKnot = this.spline.getMinNurbKnot();
        float maxNurbKnot = (this.spline.getMaxNurbKnot() - minNurbKnot) / size;
        int i11 = (size + 1) * 3;
        float[] fArr = new float[i11];
        Vector3f vector3f = new Vector3f();
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13 += 3) {
            this.spline.interpolate(minNurbKnot, 0, vector3f);
            fArr[i13] = vector3f.f81611x;
            fArr[i13 + 1] = vector3f.f81612y;
            fArr[i13 + 2] = vector3f.f81613z;
            minNurbKnot += maxNurbKnot;
        }
        short[] sArr = new short[size << 1];
        int i14 = 0;
        while (i12 < size) {
            int i15 = i14 + 1;
            sArr[i14] = (short) i12;
            i14 += 2;
            i12++;
            sArr[i15] = (short) i12;
        }
        setMode(Mesh.Mode.Lines);
        setBuffer(VertexBuffer.Type.Position, 3, fArr);
        setBuffer(VertexBuffer.Type.Index, 2, sArr);
        updateBound();
        updateCounts();
    }

    public float getLength() {
        return this.spline.getTotalLength();
    }

    public Curve(Vector3f[] vector3fArr, int i10) {
        this(new Spline(Spline.SplineType.CatmullRom, vector3fArr, 10.0f, false), i10);
    }

    public Curve(Spline spline, int i10) {
        this.temp = new Vector3f();
        this.spline = spline;
        int i11 = AnonymousClass1.$SwitchMap$com$jme3$math$Spline$SplineType[spline.getType().ordinal()];
        if (i11 == 1) {
            createCatmullRomMesh(i10);
            return;
        }
        if (i11 == 2) {
            createBezierMesh(i10);
        } else if (i11 != 3) {
            createLinearMesh();
        } else {
            createNurbMesh(i10);
        }
    }
}
