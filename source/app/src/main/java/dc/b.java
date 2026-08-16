package Dc;

import com.itsmagic.engine.Engines.Physics.DTOs.NativeIndexedMesh;
import com.jme3.bullet.collision.shapes.GImpactCollisionShape;
import com.jme3.util.clone.Cloner;
import p000if.C13702E;

public class b extends GImpactCollisionShape implements Cloneable {
    public b() {
    }

    public static a a(NativeIndexedMesh... submeshes) {
        C13702E.n(submeshes, "submeshes");
        a aVar = new a();
        for (NativeIndexedMesh nativeIndexedMesh : submeshes) {
            aVar.a(nativeIndexedMesh);
        }
        return aVar;
    }

    public b clone() {
        try {
            return (b) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override
    public void cloneFields(Cloner cloner, Object original) {
        super.cloneFields(cloner, original);
    }

    public b(a mesh) {
        C13702E.t(mesh, "mesh");
        C13702E.H(mesh.countTriangles() > 0, "at least one triangle");
        this.nativeMesh = mesh;
        createShape();
    }

    public b(NativeIndexedMesh... submeshes) {
        this(a(submeshes));
    }
}
