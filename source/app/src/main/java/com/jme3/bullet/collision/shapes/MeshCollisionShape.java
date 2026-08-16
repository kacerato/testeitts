package com.jme3.bullet.collision.shapes;

import com.jme3.bullet.collision.shapes.infos.BoundingValueHierarchy;
import com.jme3.bullet.collision.shapes.infos.CompoundMesh;
import com.jme3.bullet.collision.shapes.infos.IndexedMesh;
import com.jme3.bullet.util.NativeLibrary;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Triangle;
import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.system.JmeSystem;
import com.jme3.system.Platform;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.logging.Logger;
import p000if.C13702E;

public class MeshCollisionShape extends CollisionShape {
    static final boolean $assertionsDisabled = false;
    public static final int maxSubmeshes = 1024;
    public static final int maxTrianglesInAnySubmesh = 2097151;
    private static final String tagBvh = "bvh";
    private static final String tagDoublePrecision = "doublePrecision";
    private static final String tagNativeMesh = "nativeMesh";
    private static final String tagNativePlatform = "nativePlatform";
    private static final String tagUseCompression = "useCompression";
    private BoundingValueHierarchy bvh;
    protected CompoundMesh nativeMesh;
    protected boolean useCompression;
    public static final Logger logger2 = Logger.getLogger(MeshCollisionShape.class.getName());
    private static boolean serializeBvh = true;

    public MeshCollisionShape() {
    }

    private static native long createShape(boolean z10, boolean z11, long j10);

    private static native boolean hasBvh(long j10);

    public static boolean isSerializingBvh() {
        return serializeBvh;
    }

    private static native void recalcAabb(long j10);

    private static native void setOptimizedBvh(long j10, long j11, Vector3f vector3f);

    public static void setSerializingBvh(boolean z10) {
        serializeBvh = z10;
    }

    @Override
    public boolean canSplit() {
        return true;
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.nativeMesh = (CompoundMesh) cloner.clone(this.nativeMesh);
        this.bvh = (BoundingValueHierarchy) cloner.clone(this.bvh);
        createShape();
        copyShapeProperties((MeshCollisionShape) obj);
    }

    public int countMeshTriangles() {
        return this.nativeMesh.countTriangles();
    }

    public int countMeshVertices() {
        return this.nativeMesh.countVertices();
    }

    public int countSubmeshes() {
        return this.nativeMesh.countSubmeshes();
    }

    public void createShape() {
        this.nativeMesh.countTriangles();
        if (this.useCompression) {
            int countSubmeshes = this.nativeMesh.countSubmeshes();
            if (countSubmeshes > 1024) {
                throw new IllegalArgumentException("Too many submeshes: " + countSubmeshes);
            }
            for (int i10 = 0; i10 < countSubmeshes; i10++) {
                int countTriangles = this.nativeMesh.getSubmesh(i10).countTriangles();
                if (countTriangles > 2097151) {
                    throw new IllegalArgumentException("Submesh has too many triangles: " + countTriangles);
                }
            }
        }
        long createShape = createShape(this.useCompression, false, this.nativeMesh.nativeId());
        setNativeId(createShape);
        setContactFilterEnabled(this.enableContactFilter);
        setScale(this.scale);
        setMargin(this.margin);
        BoundingValueHierarchy boundingValueHierarchy = this.bvh;
        if (boundingValueHierarchy == null) {
            this.bvh = new BoundingValueHierarchy(this);
        } else {
            setOptimizedBvh(createShape, boundingValueHierarchy.nativeId(), this.scale);
        }
    }

    public BoundingValueHierarchy getBvh() {
        return this.bvh;
    }

    public IndexedMesh getSubmesh(int i10) {
        C13702E.i(i10, "submesh index", 0, this.nativeMesh.countSubmeshes() - 1);
        return this.nativeMesh.getSubmesh(i10);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        boolean readBoolean = capsule.readBoolean(tagDoublePrecision, false);
        Platform platform = (Platform) capsule.readEnum(tagNativePlatform, Platform.class, null);
        if (readBoolean == NativeLibrary.isDoublePrecision() && platform == JmeSystem.getPlatform()) {
            this.bvh = (BoundingValueHierarchy) capsule.readSavable(tagBvh, null);
        } else {
            this.bvh = null;
        }
        this.nativeMesh = (CompoundMesh) capsule.readSavable(tagNativeMesh, null);
        this.useCompression = capsule.readBoolean(tagUseCompression, true);
        createShape();
        readShapeProperties(capsule);
    }

    @Override
    public void recalculateAabb() {
        recalcAabb(nativeId());
    }

    public byte[] serializeBvh() {
        return this.bvh.serialize();
    }

    @Override
    public void setScale(Vector3f vector3f) {
        super.setScale(vector3f);
        if (hasBvh(nativeId())) {
            this.bvh = new BoundingValueHierarchy(this);
        }
    }

    public MeshCollisionShape[] split(Triangle triangle) {
        C13702E.t(triangle, "splitting triangle");
        CompoundMesh[] split = this.nativeMesh.split(triangle);
        MeshCollisionShape[] meshCollisionShapeArr = new MeshCollisionShape[2];
        CompoundMesh compoundMesh = split[0];
        int countTriangles = compoundMesh == null ? 0 : compoundMesh.countTriangles();
        CompoundMesh compoundMesh2 = split[1];
        int countTriangles2 = compoundMesh2 == null ? 0 : compoundMesh2.countTriangles();
        if (countTriangles != 0 && countTriangles2 != 0) {
            MeshCollisionShape meshCollisionShape = new MeshCollisionShape(this.useCompression, split[0]);
            meshCollisionShapeArr[0] = meshCollisionShape;
            meshCollisionShape.setScale(this.scale);
            MeshCollisionShape meshCollisionShape2 = new MeshCollisionShape(this.useCompression, split[1]);
            meshCollisionShapeArr[1] = meshCollisionShape2;
            meshCollisionShape2.setScale(this.scale);
        } else if (countTriangles > 0) {
            meshCollisionShapeArr[0] = this;
        } else if (countTriangles2 > 0) {
            meshCollisionShapeArr[1] = this;
        }
        return meshCollisionShapeArr;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        if (serializeBvh) {
            capsule.write(this.bvh, tagBvh, (Savable) null);
        }
        capsule.write(NativeLibrary.isDoublePrecision(), tagDoublePrecision, false);
        capsule.write(JmeSystem.getPlatform(), tagNativePlatform, (Enum) null);
        capsule.write(this.nativeMesh, tagNativeMesh, (Savable) null);
        capsule.write(this.useCompression, tagUseCompression, true);
    }

    public MeshCollisionShape(boolean z10, Collection<IndexedMesh> collection) {
        C13702E.k(collection, "meshes");
        this.nativeMesh = new CompoundMesh();
        Iterator<IndexedMesh> it = collection.iterator();
        while (it.hasNext()) {
            this.nativeMesh.add(it.next());
        }
        C13702E.H(this.nativeMesh.countTriangles() > 0, "at least one triangle");
        this.useCompression = z10;
        createShape();
    }

    public MeshCollisionShape(boolean z10, CompoundMesh compoundMesh) {
        C13702E.H(compoundMesh.countTriangles() > 0, "at least one triangle");
        this.nativeMesh = new CompoundMesh(compoundMesh);
        this.useCompression = z10;
        createShape();
    }

    public MeshCollisionShape(boolean z10, IndexedMesh... indexedMeshArr) {
        C13702E.n(indexedMeshArr, "submeshes");
        this.nativeMesh = new CompoundMesh();
        for (IndexedMesh indexedMesh : indexedMeshArr) {
            this.nativeMesh.add(indexedMesh);
        }
        C13702E.H(this.nativeMesh.countTriangles() > 0, "at least one triangle");
        this.useCompression = z10;
        createShape();
    }

    public MeshCollisionShape(byte[] bArr, IndexedMesh... indexedMeshArr) {
        C13702E.t(bArr, "BVH data");
        C13702E.n(indexedMeshArr, "submeshes");
        this.nativeMesh = new CompoundMesh();
        for (IndexedMesh indexedMesh : indexedMeshArr) {
            this.nativeMesh.add(indexedMesh);
        }
        C13702E.H(this.nativeMesh.countTriangles() > 0, "at least one triangle");
        this.useCompression = true;
        this.bvh = new BoundingValueHierarchy(bArr);
        createShape();
    }

    public MeshCollisionShape(Mesh... meshArr) {
        C13702E.n(meshArr, "JME meshes");
        CompoundMesh compoundMesh = new CompoundMesh(meshArr);
        this.nativeMesh = compoundMesh;
        C13702E.H(compoundMesh.countTriangles() > 0, "at least one triangle");
        this.useCompression = true;
        createShape();
    }

    public MeshCollisionShape(Mesh mesh, boolean z10) {
        C13702E.t(mesh, "mesh");
        CompoundMesh compoundMesh = new CompoundMesh(mesh);
        this.nativeMesh = compoundMesh;
        C13702E.H(compoundMesh.countTriangles() > 0, "at least one triangle");
        this.useCompression = z10;
        createShape();
    }
}
