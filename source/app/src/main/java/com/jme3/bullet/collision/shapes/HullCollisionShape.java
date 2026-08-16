package com.jme3.bullet.collision.shapes;

import com.jme3.bullet.collision.shapes.infos.ChildCollisionShape;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.math.FastMath;
import com.jme3.math.Plane;
import com.jme3.math.Triangle;
import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.logging.Logger;
import jf.d;
import jf.f;
import jf.h;
import jf.m;
import jf.p;
import p000if.C13702E;
import vhacd.VHACDHull;
import vhacd4.Vhacd4Hull;

public class HullCollisionShape extends ConvexShape {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(HullCollisionShape.class.getName());
    private static final int numAxes = 3;
    private static final String tagHullMesh = "hullMesh";
    private static final String tagPoints = "points";
    private FloatBuffer directBuffer;
    private float[] points;

    public HullCollisionShape() {
    }

    private static native int countHullVertices(long j10);

    private void createShape() {
        int length = this.points.length;
        int i10 = length / 3;
        this.directBuffer = BufferUtils.createFloatBuffer(length);
        for (float f10 : this.points) {
            if (!Float.isFinite(f10)) {
                throw new IllegalArgumentException("illegal coordinate: " + f10);
            }
            this.directBuffer.put(f10);
        }
        setNativeId(createShapeF(this.directBuffer, i10));
        setContactFilterEnabled(this.enableContactFilter);
        setScale(this.scale);
        setMargin(this.margin);
    }

    private static native long createShapeF(FloatBuffer floatBuffer, int i10);

    private static native void getHullVerticesF(long j10, FloatBuffer floatBuffer);

    private static float[] getPoints(Mesh... meshArr) {
        int i10 = 0;
        for (Mesh mesh : meshArr) {
            i10 += mesh.getVertexCount();
        }
        float[] fArr = new float[i10 * 3];
        int i11 = 0;
        for (Mesh mesh2 : meshArr) {
            FloatBuffer floatBuffer = mesh2.getFloatBuffer(VertexBuffer.Type.Position);
            int vertexCount = mesh2.getVertexCount() * 3;
            for (int i12 = 0; i12 < vertexCount; i12++) {
                fArr[i11] = floatBuffer.get(i12);
                i11++;
            }
        }
        return fArr;
    }

    private static native void recalcAabb(long j10);

    public float aabbVolume() {
        Vector3f vector3f = new Vector3f(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);
        Vector3f vector3f2 = new Vector3f(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);
        Vector3f vector3f3 = new Vector3f();
        int i10 = 0;
        while (true) {
            float[] fArr = this.points;
            if (i10 >= fArr.length) {
                return (vector3f.f81611x - vector3f2.f81611x) * (vector3f.f81612y - vector3f2.f81612y) * (vector3f.f81613z - vector3f2.f81613z);
            }
            vector3f3.set(fArr[i10], fArr[i10 + 1], fArr[i10 + 2]);
            h.b(vector3f2, vector3f3);
            h.a(vector3f, vector3f3);
            i10 += 3;
        }
    }

    @Override
    public boolean canSplit() {
        return true;
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.directBuffer = null;
        this.points = (float[]) cloner.clone(this.points);
        createShape();
        copyShapeProperties((HullCollisionShape) obj);
    }

    public float[] copyHullVertices() {
        long nativeId = nativeId();
        int countHullVertices = countHullVertices() * 3;
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(countHullVertices);
        getHullVerticesF(nativeId, createFloatBuffer);
        float[] fArr = new float[countHullVertices];
        for (int i10 = 0; i10 < countHullVertices; i10++) {
            fArr[i10] = createFloatBuffer.get(i10);
        }
        return fArr;
    }

    public int countHullVertices() {
        return countHullVertices(nativeId());
    }

    public int countMeshVertices() {
        return this.points.length / 3;
    }

    public Vector3f getHalfExtents(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        vector3f.zero();
        int i10 = 0;
        while (true) {
            float[] fArr = this.points;
            if (i10 >= fArr.length) {
                return vector3f;
            }
            float abs = FastMath.abs(fArr[i10]);
            if (abs > vector3f.f81611x) {
                vector3f.f81611x = abs;
            }
            float abs2 = FastMath.abs(this.points[i10 + 1]);
            if (abs2 > vector3f.f81612y) {
                vector3f.f81612y = abs2;
            }
            float abs3 = FastMath.abs(this.points[i10 + 2]);
            if (abs3 > vector3f.f81613z) {
                vector3f.f81613z = abs3;
            }
            i10 += 3;
        }
    }

    @Override
    public float maxRadius() {
        int countHullVertices = countHullVertices();
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(countHullVertices * 3);
        getHullVerticesF(nativeId(), createFloatBuffer);
        double d10 = 0.0d;
        for (int i10 = 0; i10 < countHullVertices; i10++) {
            int i11 = i10 * 3;
            double P10 = f.P(this.scale.f81611x * createFloatBuffer.get(i11), this.scale.f81612y * createFloatBuffer.get(i11 + 1), this.scale.f81613z * createFloatBuffer.get(i11 + 2));
            if (P10 > d10) {
                d10 = P10;
            }
        }
        return this.margin + ((float) Math.sqrt(d10));
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        Mesh mesh = (Mesh) capsule.readSavable(tagHullMesh, null);
        if (mesh != null) {
            this.points = getPoints(mesh);
        } else {
            this.points = capsule.readFloatArray(tagPoints, new float[0]);
        }
        createShape();
        readShapeProperties(capsule);
    }

    @Override
    public void recalculateAabb() {
        recalcAabb(nativeId());
    }

    public ChildCollisionShape[] split(Triangle triangle) {
        C13702E.t(triangle, "splitting triangle");
        int countHullVertices = countHullVertices();
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(countHullVertices * 3);
        getHullVerticesF(nativeId(), createFloatBuffer);
        Plane plane = new Plane(triangle.getNormal(), triangle.get3());
        p pVar = new p(countHullVertices, true);
        p pVar2 = new p(countHullVertices, true);
        Vector3f vector3f = new Vector3f();
        for (int i10 = 0; i10 < countHullVertices; i10++) {
            d.g(createFloatBuffer, i10 * 3, vector3f);
            float pseudoDistance = plane.pseudoDistance(vector3f);
            if (pseudoDistance <= 0.0f) {
                pVar.a(vector3f);
            }
            if (pseudoDistance >= 0.0f) {
                pVar2.a(vector3f);
            }
        }
        ChildCollisionShape[] childCollisionShapeArr = new ChildCollisionShape[2];
        int m10 = pVar.m();
        int m11 = pVar2.m();
        if (m10 == 0 || m11 == 0) {
            ChildCollisionShape childCollisionShape = new ChildCollisionShape(new Vector3f(), this);
            if (m10 > 0) {
                childCollisionShapeArr[0] = childCollisionShape;
            } else if (m11 > 0) {
                childCollisionShapeArr[1] = childCollisionShape;
            }
            return childCollisionShapeArr;
        }
        FloatBuffer j10 = pVar.j();
        p pVar3 = new p(countHullVertices, true);
        for (int i11 = 0; i11 < m10; i11++) {
            d.g(j10, i11 * 3, vector3f);
            pVar3.a(vector3f);
        }
        FloatBuffer j11 = pVar2.j();
        p pVar4 = new p(countHullVertices, true);
        Vector3f vector3f2 = new Vector3f();
        for (int i12 = 0; i12 < m11; i12++) {
            d.g(j11, i12 * 3, vector3f);
            pVar4.a(vector3f);
            float pseudoDistance2 = plane.pseudoDistance(vector3f);
            for (int i13 = 0; i13 < m10; i13++) {
                d.g(j10, i13 * 3, vector3f2);
                float pseudoDistance3 = plane.pseudoDistance(vector3f2);
                float f10 = pseudoDistance2 - pseudoDistance3;
                if (f10 != 0.0f) {
                    h.G((-pseudoDistance3) / f10, vector3f2, vector3f, vector3f2);
                    pVar3.a(vector3f2);
                    pVar4.a(vector3f2);
                }
            }
        }
        pVar3.g(vector3f, vector3f2);
        Vector3f M10 = h.M(vector3f, vector3f2, null);
        vector3f.set(M10).negateLocal();
        FloatBuffer j12 = pVar3.j();
        d.y(j12, 0, j12.limit(), vector3f);
        HullCollisionShape hullCollisionShape = new HullCollisionShape(j12);
        hullCollisionShape.setScale(this.scale);
        childCollisionShapeArr[0] = new ChildCollisionShape(M10, hullCollisionShape);
        pVar4.g(vector3f, vector3f2);
        Vector3f M11 = h.M(vector3f, vector3f2, null);
        vector3f.set(M11).negateLocal();
        FloatBuffer j13 = pVar4.j();
        d.y(j13, 0, j13.limit(), vector3f);
        HullCollisionShape hullCollisionShape2 = new HullCollisionShape(j13);
        hullCollisionShape2.setScale(this.scale);
        childCollisionShapeArr[1] = new ChildCollisionShape(M11, hullCollisionShape2);
        return childCollisionShapeArr;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        jmeExporter.getCapsule(this).write(copyHullVertices(), tagPoints, new float[0]);
    }

    public HullCollisionShape(Collection<Vector3f> collection) {
        C13702E.k(collection, "locations");
        this.points = new float[collection.size() * 3];
        int i10 = 0;
        for (Vector3f vector3f : collection) {
            if (Vector3f.isValidVector(vector3f)) {
                float[] fArr = this.points;
                fArr[i10] = vector3f.f81611x;
                fArr[i10 + 1] = vector3f.f81612y;
                fArr[i10 + 2] = vector3f.f81613z;
                i10 += 3;
            } else {
                throw new IllegalArgumentException("illegal coordinates: " + ((Object) vector3f));
            }
        }
        createShape();
    }

    public HullCollisionShape(float... fArr) {
        C13702E.l(fArr, "coordinates");
        C13702E.H(fArr.length % 3 == 0, "length a multiple of 3");
        this.points = (float[]) fArr.clone();
        createShape();
    }

    public HullCollisionShape(FloatBuffer floatBuffer) {
        C13702E.t(floatBuffer, "flipped buffer");
        int limit = floatBuffer.limit();
        C13702E.F(limit, "limit");
        C13702E.H(limit % 3 == 0, "limit a multiple of 3");
        this.points = new float[limit];
        for (int i10 = 0; i10 < limit; i10++) {
            float f10 = floatBuffer.get(i10);
            if (Float.isFinite(f10)) {
                this.points[i10] = f10;
            } else {
                throw new IllegalArgumentException("illegal coordinate: " + f10);
            }
        }
        createShape();
    }

    public HullCollisionShape(Mesh... meshArr) {
        C13702E.n(meshArr, "meshes");
        float[] points = getPoints(meshArr);
        this.points = points;
        C13702E.H(points.length > 0, "at least one vertex");
        createShape();
    }

    public HullCollisionShape(m mVar) {
        Vector3f g10 = mVar.g(null);
        Vector3f h10 = mVar.h(null);
        ArrayList arrayList = new ArrayList(8);
        arrayList.add(new Vector3f(g10.f81611x, g10.f81612y, g10.f81613z));
        arrayList.add(new Vector3f(g10.f81611x, g10.f81612y, h10.f81613z));
        arrayList.add(new Vector3f(g10.f81611x, h10.f81612y, g10.f81613z));
        arrayList.add(new Vector3f(g10.f81611x, h10.f81612y, h10.f81613z));
        arrayList.add(new Vector3f(h10.f81611x, g10.f81612y, g10.f81613z));
        arrayList.add(new Vector3f(h10.f81611x, g10.f81612y, h10.f81613z));
        arrayList.add(new Vector3f(h10.f81611x, h10.f81612y, g10.f81613z));
        arrayList.add(new Vector3f(h10.f81611x, h10.f81612y, h10.f81613z));
        this.points = new float[arrayList.size() * 3];
        Vector3f vector3f = new Vector3f();
        Iterator<E> it = arrayList.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            mVar.f((Vector3f) it.next(), vector3f);
            float[] fArr = this.points;
            fArr[i10] = vector3f.f81611x;
            fArr[i10 + 1] = vector3f.f81612y;
            fArr[i10 + 2] = vector3f.f81613z;
            i10 += 3;
        }
        createShape();
    }

    public HullCollisionShape(Vector3f... vector3fArr) {
        C13702E.n(vector3fArr, "locations");
        this.points = new float[vector3fArr.length * 3];
        int i10 = 0;
        for (Vector3f vector3f : vector3fArr) {
            if (Vector3f.isValidVector(vector3f)) {
                float[] fArr = this.points;
                fArr[i10] = vector3f.f81611x;
                fArr[i10 + 1] = vector3f.f81612y;
                fArr[i10 + 2] = vector3f.f81613z;
                i10 += 3;
            } else {
                throw new IllegalArgumentException("illegal coordinates: " + ((Object) vector3f));
            }
        }
        createShape();
    }

    public HullCollisionShape(Vhacd4Hull vhacd4Hull) {
        C13702E.t(vhacd4Hull, "V-HACD hull");
        this.points = vhacd4Hull.clonePositions();
        createShape();
    }

    public HullCollisionShape(VHACDHull vHACDHull) {
        C13702E.t(vHACDHull, "V-HACD hull");
        this.points = vHACDHull.clonePositions();
        createShape();
    }
}
