package com.jme3.bullet.collision.shapes;

import com.jme3.bullet.collision.shapes.infos.ChildCollisionShape;
import com.jme3.bullet.collision.shapes.infos.CompoundMesh;
import com.jme3.bullet.collision.shapes.infos.IndexedMesh;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.Savable;
import com.jme3.math.Triangle;
import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.logging.Logger;
import jf.h;
import p000if.C13702E;

public class GImpactCollisionShape extends CollisionShape {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(GImpactCollisionShape.class.getName());
    private static final String tagNativeMesh = "nativeMesh";
    protected CompoundMesh nativeMesh;

    public GImpactCollisionShape() {
    }

    private static native long createShape(long j10);

    private static native void recalcAabb(long j10);

    @Override
    public boolean canSplit() {
        return true;
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.nativeMesh = (CompoundMesh) cloner.clone(this.nativeMesh);
        createShape();
        copyShapeProperties((GImpactCollisionShape) obj);
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
        setNativeId(createShape(this.nativeMesh.nativeId()));
        setContactFilterEnabled(this.enableContactFilter);
        setScale(this.scale);
        setMargin(this.margin);
    }

    public IndexedMesh getSubmesh(int i10) {
        C13702E.i(i10, "submesh index", 0, this.nativeMesh.countSubmeshes() - 1);
        return this.nativeMesh.getSubmesh(i10);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.nativeMesh = (CompoundMesh) capsule.readSavable(tagNativeMesh, null);
        createShape();
        readShapeProperties(capsule);
    }

    @Override
    public void recalculateAabb() {
        recalcAabb(nativeId());
    }

    @Override
    public void setScale(Vector3f vector3f) {
        super.setScale(vector3f);
        recalculateAabb();
    }

    public ChildCollisionShape[] split(Triangle triangle) {
        C13702E.t(triangle, "splitting triangle");
        CompoundMesh[] split = this.nativeMesh.split(triangle);
        ChildCollisionShape[] childCollisionShapeArr = new ChildCollisionShape[2];
        CompoundMesh compoundMesh = split[0];
        int countTriangles = compoundMesh == null ? 0 : compoundMesh.countTriangles();
        CompoundMesh compoundMesh2 = split[1];
        int countTriangles2 = compoundMesh2 == null ? 0 : compoundMesh2.countTriangles();
        if (countTriangles == 0 || countTriangles2 == 0) {
            ChildCollisionShape childCollisionShape = new ChildCollisionShape(new Vector3f(), this);
            if (countTriangles > 0) {
                childCollisionShapeArr[0] = childCollisionShape;
            } else if (countTriangles2 > 0) {
                childCollisionShapeArr[1] = childCollisionShape;
            }
        } else {
            Vector3f vector3f = new Vector3f();
            Vector3f vector3f2 = new Vector3f();
            for (int i10 = 0; i10 < 2; i10++) {
                split[i10].maxMin(vector3f, vector3f2);
                h.M(vector3f, vector3f2, vector3f2);
                vector3f.set(vector3f2).negateLocal();
                GImpactCollisionShape gImpactCollisionShape = new GImpactCollisionShape(split[i10], vector3f);
                gImpactCollisionShape.setScale(this.scale);
                childCollisionShapeArr[i10] = new ChildCollisionShape(vector3f2, gImpactCollisionShape);
            }
        }
        return childCollisionShapeArr;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        jmeExporter.getCapsule(this).write(this.nativeMesh, tagNativeMesh, (Savable) null);
    }

    public GImpactCollisionShape(CompoundMesh compoundMesh, Vector3f vector3f) {
        C13702E.H(compoundMesh.countTriangles() > 0, "at least one triangle");
        this.nativeMesh = new CompoundMesh(compoundMesh, vector3f);
        createShape();
    }

    public GImpactCollisionShape(IndexedMesh... indexedMeshArr) {
        this.nativeMesh = new CompoundMesh();
        for (IndexedMesh indexedMesh : indexedMeshArr) {
            this.nativeMesh.add(indexedMesh);
        }
        C13702E.H(this.nativeMesh.countTriangles() > 0, "at least one triangle");
        createShape();
    }

    public GImpactCollisionShape(Mesh... meshArr) {
        CompoundMesh compoundMesh = new CompoundMesh(meshArr);
        this.nativeMesh = compoundMesh;
        C13702E.H(compoundMesh.countTriangles() > 0, "at least one triangle");
        createShape();
    }
}
