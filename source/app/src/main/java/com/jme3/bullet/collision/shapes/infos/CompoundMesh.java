package com.jme3.bullet.collision.shapes.infos;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.jme3.bullet.NativePhysicsObject;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Plane;
import com.jme3.math.Transform;
import com.jme3.math.Triangle;
import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;
import jf.d;
import jf.h;
import p000if.C13702E;

public class CompoundMesh extends NativePhysicsObject implements JmeCloneable, Savable {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(CompoundMesh.class.getName());
    private static final String tagScale = "scale";
    private static final String tagSubmeshes = "submeshes";
    protected ArrayList<IndexedMesh> submeshes = new ArrayList<>(4);
    protected Vector3f scale = new Vector3f(1.0f, 1.0f, 1.0f);

    public CompoundMesh() {
        createEmpty();
    }

    private static native void addIndexedMesh(long j10, long j11);

    private boolean checkScale(Vector3f vector3f) {
        getScaling(nativeId(), vector3f);
        return this.scale.equals(vector3f);
    }

    private void createEmpty() {
        setNativeId(createEmptyTiva());
        logger.log(Level.FINE, "Created {0}", this);
    }

    private static native long createEmptyTiva();

    private static native void finalizeNative(long j10);

    private static void freeNativeObject(long j10) {
        finalizeNative(j10);
    }

    private static native void getScaling(long j10, Vector3f vector3f);

    private static native void setScaling(long j10, float f10, float f11, float f12);

    public void add(IndexedMesh indexedMesh) {
        C13702E.t(indexedMesh, "submesh");
        this.submeshes.add(indexedMesh);
        addIndexedMesh(nativeId(), indexedMesh.nativeId());
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.submeshes = (ArrayList) cloner.clone(this.submeshes);
        this.scale = (Vector3f) cloner.clone(this.scale);
        unassignNativeObject();
        createEmpty();
        setScale(this.scale);
        long nativeId = nativeId();
        Iterator<IndexedMesh> it = this.submeshes.iterator();
        while (it.hasNext()) {
            addIndexedMesh(nativeId, it.next().nativeId());
        }
    }

    public int countSubmeshes() {
        return this.submeshes.size();
    }

    public int countTriangles() {
        Iterator<IndexedMesh> it = this.submeshes.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 += it.next().countTriangles();
        }
        return i10;
    }

    public int countVertices() {
        Iterator<IndexedMesh> it = this.submeshes.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 += it.next().countVertices();
        }
        return i10;
    }

    public Vector3f getScale(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        vector3f.set(this.scale);
        return vector3f;
    }

    public IndexedMesh getSubmesh(int i10) {
        C13702E.i(i10, FirebaseAnalytics.d.f67690b0, 0, this.submeshes.size() - 1);
        return this.submeshes.get(i10);
    }

    public void maxMin(Vector3f vector3f, Vector3f vector3f2) {
        vector3f.set(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);
        vector3f2.set(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);
        Vector3f vector3f3 = new Vector3f();
        Vector3f vector3f4 = new Vector3f();
        Iterator<IndexedMesh> it = this.submeshes.iterator();
        while (it.hasNext()) {
            it.next().maxMin(vector3f3, vector3f4);
            h.b(vector3f2, vector3f4);
            h.a(vector3f, vector3f3);
        }
        vector3f.multLocal(this.scale);
        vector3f2.multLocal(this.scale);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.scale = (Vector3f) capsule.readSavable("scale", new Vector3f(1.0f, 1.0f, 1.0f));
        this.submeshes = capsule.readSavableArrayList(tagSubmeshes, this.submeshes);
        setScale(this.scale);
        long nativeId = nativeId();
        Iterator<IndexedMesh> it = this.submeshes.iterator();
        while (it.hasNext()) {
            addIndexedMesh(nativeId, it.next().nativeId());
        }
    }

    public void setScale(Vector3f vector3f) {
        setScaling(nativeId(), vector3f.f81611x, vector3f.f81612y, vector3f.f81613z);
        logger.log(Level.FINE, "Scaled {0}", this);
        this.scale.set(vector3f);
    }

    public CompoundMesh[] split(Triangle triangle) {
        C13702E.t(triangle, "scaled triangle");
        Triangle triangle2 = new Triangle();
        Vector3f vector3f = new Vector3f();
        for (int i10 = 0; i10 < 3; i10++) {
            vector3f.set(triangle.get(i10));
            vector3f.divideLocal(this.scale);
            triangle2.set(i10, vector3f);
        }
        Plane plane = new Plane(triangle2.getNormal(), triangle2.get3());
        CompoundMesh[] compoundMeshArr = new CompoundMesh[2];
        Iterator<IndexedMesh> it = this.submeshes.iterator();
        while (it.hasNext()) {
            IndexedMesh[] split = it.next().split(plane);
            for (int i11 = 0; i11 < 2; i11++) {
                IndexedMesh indexedMesh = split[i11];
                if (indexedMesh != null) {
                    if (compoundMeshArr[i11] == null) {
                        compoundMeshArr[i11] = new CompoundMesh();
                    }
                    compoundMeshArr[i11].add(indexedMesh);
                }
            }
        }
        return compoundMeshArr;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.scale, "scale", (Savable) null);
        capsule.writeSavableArrayList(this.submeshes, tagSubmeshes, null);
    }

    public CompoundMesh jmeClone() {
        try {
            return (CompoundMesh) clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public CompoundMesh(CompoundMesh compoundMesh) {
        createEmpty();
        Iterator<IndexedMesh> it = compoundMesh.submeshes.iterator();
        while (it.hasNext()) {
            add(it.next());
        }
        setScale(compoundMesh.scale);
    }

    public CompoundMesh(CompoundMesh compoundMesh, Vector3f vector3f) {
        createEmpty();
        Transform transform = new Transform();
        transform.getScale().set(this.scale);
        transform.setTranslation(vector3f);
        Iterator<IndexedMesh> it = compoundMesh.submeshes.iterator();
        while (it.hasNext()) {
            IndexedMesh next = it.next();
            FloatBuffer copyVertexPositions = next.copyVertexPositions();
            d.x(copyVertexPositions, 0, copyVertexPositions.capacity(), transform);
            add(new IndexedMesh(copyVertexPositions, next.copyIndices()));
        }
    }

    public CompoundMesh(Mesh... meshArr) {
        createEmpty();
        for (Mesh mesh : meshArr) {
            add(new IndexedMesh(mesh));
        }
    }
}
