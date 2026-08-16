package com.jme3.bullet.collision.shapes;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.AbstractTriangle;
import com.jme3.math.FastMath;
import com.jme3.math.LineSegment;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.nio.FloatBuffer;
import java.util.logging.Logger;
import jf.d;
import jf.h;
import jf.i;
import p000if.C13702E;

public class SimplexCollisionShape extends ConvexShape {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(SimplexCollisionShape.class.getName());
    private static final int numAxes = 3;
    private static final String tagSimplexPoint1 = "simplexPoint1";
    private static final String tagSimplexPoint2 = "simplexPoint2";
    private static final String tagSimplexPoint3 = "simplexPoint3";
    private static final String tagSimplexPoint4 = "simplexPoint4";
    private Vector3f[] locations;

    public SimplexCollisionShape() {
    }

    private static native long createShape(Vector3f vector3f);

    private static native long createShape(Vector3f vector3f, Vector3f vector3f2);

    private static native long createShape(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3);

    private static native long createShape(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4);

    private void createShape() {
        long createShape;
        Vector3f[] vector3fArr = this.locations;
        int length = vector3fArr.length;
        if (length == 1) {
            createShape = createShape(vector3fArr[0]);
        } else if (length == 2) {
            createShape = createShape(vector3fArr[0], vector3fArr[1]);
        } else if (length == 3) {
            createShape = createShape(vector3fArr[0], vector3fArr[1], vector3fArr[2]);
        } else if (length == 4) {
            createShape = createShape(vector3fArr[0], vector3fArr[1], vector3fArr[2], vector3fArr[3]);
        } else {
            throw new IllegalArgumentException("numVertices = " + length);
        }
        setNativeId(createShape);
        setContactFilterEnabled(this.enableContactFilter);
        setScale(this.scale);
        setMargin(this.margin);
    }

    private static native void recalcAabb(long j10);

    @Override
    public boolean canScale(Vector3f vector3f) {
        return super.canScale(vector3f) && h.C(vector3f);
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.locations = (Vector3f[]) cloner.clone(this.locations);
        createShape();
        copyShapeProperties((SimplexCollisionShape) obj);
    }

    public Vector3f copyVertex(int i10, Vector3f vector3f) {
        C13702E.i(i10, FirebaseAnalytics.d.f67690b0, 0, this.locations.length - 1);
        return vector3f == null ? this.locations[i10].m1292clone() : vector3f.set(this.locations[i10]);
    }

    public float[] copyVertices() {
        int length = this.locations.length;
        float[] fArr = new float[length * 3];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = i10 * 3;
            Vector3f vector3f = this.locations[i10];
            fArr[i11] = vector3f.f81611x;
            fArr[i11 + 1] = vector3f.f81612y;
            fArr[i11 + 2] = vector3f.f81613z;
        }
        return fArr;
    }

    public int countMeshVertices() {
        return this.locations.length;
    }

    public Vector3f getHalfExtents(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        vector3f.zero();
        for (Vector3f vector3f2 : this.locations) {
            float abs = FastMath.abs(vector3f2.f81611x);
            if (abs > vector3f.f81611x) {
                vector3f.f81611x = abs;
            }
            float abs2 = FastMath.abs(vector3f2.f81612y);
            if (abs2 > vector3f.f81612y) {
                vector3f.f81612y = abs2;
            }
            float abs3 = FastMath.abs(vector3f2.f81613z);
            if (abs3 > vector3f.f81613z) {
                vector3f.f81613z = abs3;
            }
        }
        return vector3f;
    }

    @Override
    public float maxRadius() {
        double d10 = 0.0d;
        for (Vector3f vector3f : this.locations) {
            double F10 = h.F(vector3f);
            if (F10 > d10) {
                d10 = F10;
            }
        }
        return this.margin + ((float) Math.sqrt(d10));
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        Vector3f vector3f = (Vector3f) capsule.readSavable(tagSimplexPoint1, null);
        Vector3f vector3f2 = (Vector3f) capsule.readSavable(tagSimplexPoint2, null);
        Vector3f vector3f3 = (Vector3f) capsule.readSavable(tagSimplexPoint3, null);
        Vector3f vector3f4 = (Vector3f) capsule.readSavable(tagSimplexPoint4, null);
        if (vector3f2 == null) {
            this.locations = new Vector3f[]{vector3f};
        } else if (vector3f3 == null) {
            this.locations = new Vector3f[]{vector3f, vector3f2};
        } else if (vector3f4 == null) {
            this.locations = new Vector3f[]{vector3f, vector3f2, vector3f3};
        } else {
            this.locations = new Vector3f[]{vector3f, vector3f2, vector3f3, vector3f4};
        }
        createShape();
        readShapeProperties(capsule);
    }

    @Override
    public void recalculateAabb() {
        recalcAabb(nativeId());
    }

    @Override
    public HullCollisionShape toHullShape() {
        HullCollisionShape hullCollisionShape = new HullCollisionShape(this.locations);
        hullCollisionShape.setMargin(this.margin);
        return hullCollisionShape;
    }

    public float unscaledVolume() {
        Vector3f[] vector3fArr = this.locations;
        if (vector3fArr.length > 3) {
            return (float) i.f(vector3fArr[0], vector3fArr[1], vector3fArr[2], vector3fArr[3]);
        }
        return 0.0f;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.locations[0], tagSimplexPoint1, (Savable) null);
        Vector3f[] vector3fArr = this.locations;
        int length = vector3fArr.length;
        if (length > 1) {
            capsule.write(vector3fArr[1], tagSimplexPoint2, (Savable) null);
        }
        if (length > 2) {
            capsule.write(this.locations[2], tagSimplexPoint3, (Savable) null);
        }
        if (length > 3) {
            capsule.write(this.locations[3], tagSimplexPoint4, (Savable) null);
        }
    }

    public SimplexCollisionShape(Vector3f vector3f) {
        this.locations = r0;
        Vector3f[] vector3fArr = {vector3f.m1292clone()};
        createShape();
    }

    public SimplexCollisionShape(Vector3f vector3f, Vector3f vector3f2) {
        Vector3f[] vector3fArr = new Vector3f[2];
        this.locations = vector3fArr;
        vector3fArr[0] = vector3f.m1292clone();
        this.locations[1] = vector3f2.m1292clone();
        createShape();
    }

    public SimplexCollisionShape(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        Vector3f[] vector3fArr = new Vector3f[3];
        this.locations = vector3fArr;
        vector3fArr[0] = vector3f.m1292clone();
        this.locations[1] = vector3f2.m1292clone();
        this.locations[2] = vector3f3.m1292clone();
        createShape();
    }

    public SimplexCollisionShape(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4) {
        Vector3f[] vector3fArr = new Vector3f[4];
        this.locations = vector3fArr;
        vector3fArr[0] = vector3f.m1292clone();
        this.locations[1] = vector3f2.m1292clone();
        this.locations[2] = vector3f3.m1292clone();
        this.locations[3] = vector3f4.m1292clone();
        createShape();
    }

    public SimplexCollisionShape(AbstractTriangle abstractTriangle) {
        C13702E.t(abstractTriangle, "triangle");
        Vector3f[] vector3fArr = new Vector3f[3];
        this.locations = vector3fArr;
        vector3fArr[0] = abstractTriangle.get1().m1292clone();
        this.locations[1] = abstractTriangle.get2().m1292clone();
        this.locations[2] = abstractTriangle.get3().m1292clone();
        createShape();
    }

    public SimplexCollisionShape(FloatBuffer floatBuffer, int i10, int i11) {
        C13702E.t(floatBuffer, "buffer");
        C13702E.i(i10, "start position", 0, i11 - 3);
        C13702E.i(i11, "end position", i10 + 3, floatBuffer.capacity());
        int i12 = i11 - i10;
        C13702E.H(i12 % 3 == 0, "range a multiple of 3");
        int i13 = i12 / 3;
        this.locations = new Vector3f[i13];
        for (int i14 = 0; i14 < i13; i14++) {
            this.locations[i14] = new Vector3f();
            d.g(floatBuffer, (i14 * 3) + i10, this.locations[i14]);
        }
        createShape();
    }

    public SimplexCollisionShape(LineSegment lineSegment) {
        C13702E.t(lineSegment, "segment");
        Vector3f[] vector3fArr = new Vector3f[2];
        this.locations = vector3fArr;
        vector3fArr[0] = lineSegment.getNegativeEnd(null);
        this.locations[1] = lineSegment.getPositiveEnd(null);
        createShape();
    }

    public SimplexCollisionShape(Vector3f[] vector3fArr) {
        C13702E.n(vector3fArr, "vertices");
        int length = vector3fArr.length;
        this.locations = new Vector3f[length];
        for (int i10 = 0; i10 < length; i10++) {
            this.locations[i10] = vector3fArr[i10].m1292clone();
        }
        createShape();
    }
}
