package Dc;

import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import com.itsmagic.engine.Engines.Physics.DTOs.NativeIndexedMesh;
import com.jme3.bullet.collision.shapes.infos.CompoundMesh;
import com.jme3.bullet.collision.shapes.infos.IndexedMesh;
import p000if.C13702E;

public class a extends CompoundMesh implements Cloneable {
    public a() {
    }

    public static void d(NativeFloatBuffer positions, NativeIntBuffer indices) {
        C13702E.H(positions.capacity() > 0, "positions must not be empty");
        C13702E.H(indices.capacity() > 0, "indices must not be empty");
        C13702E.H(positions.capacity() % 3 == 0, "positions capacity must be a multiple of 3");
        C13702E.H(indices.capacity() % 3 == 0, "indices capacity must be a multiple of 3");
        C13702E.H(indices.findMaxValue() < positions.capacity() / 3, "indices must reference only existing vertices");
    }

    public void a(NativeIndexedMesh submesh) {
        add(submesh);
    }

    @Override
    public void add(IndexedMesh submesh) {
        C13702E.t(submesh, "submesh");
        if (!(submesh instanceof NativeIndexedMesh)) {
            throw new IllegalArgumentException("submesh must be NativeIndexedMesh");
        }
        super.add(submesh);
    }

    @Override
    public NativeIndexedMesh getSubmesh(int index) {
        return (NativeIndexedMesh) super.getSubmesh(index);
    }

    @Override
    public a jmeClone() {
        try {
            return (a) clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public a(a original) {
        super(original);
    }

    public a(NativeFloatBuffer positions, NativeIntBuffer indices) {
        C13702E.t(positions, "positions");
        C13702E.t(indices, "indices");
        d(positions, indices);
        a(new NativeIndexedMesh(positions, indices));
    }

    public a(NativeFloatBuffer positions, NativeIntBuffer indices, boolean skipOptimization) {
        C13702E.t(positions, "positions");
        C13702E.t(indices, "indices");
        d(positions, indices);
        a(new NativeIndexedMesh(positions, indices, skipOptimization));
    }

    public a(NativeIndexedMesh... submeshes) {
        C13702E.n(submeshes, "submeshes");
        for (NativeIndexedMesh nativeIndexedMesh : submeshes) {
            C13702E.t(nativeIndexedMesh, "submesh");
            boolean z10 = true;
            C13702E.H(nativeIndexedMesh.countVertices() > 0, "submesh must contain vertices");
            if (nativeIndexedMesh.countTriangles() <= 0) {
                z10 = false;
            }
            C13702E.H(z10, "submesh must contain triangles");
            a(nativeIndexedMesh);
        }
    }
}
