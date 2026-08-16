package W8;

import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import com.itsmagic.engine.Engines.Physics.DTOs.NativeIndexedMesh;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.List;
import yc.C16167a;
import yc.C16168b;

public class a {

    public static final int f27324a = 2000000;

    public static final int f27325b = 3;

    public static Dc.a a(Dc.a mesh, float scaleX, float scaleY, float scaleZ) {
        if (mesh == null) {
            throw new NullPointerException("mesh");
        }
        Dc.a aVar = new Dc.a();
        for (int i10 = 0; i10 < mesh.countSubmeshes(); i10++) {
            NativeIndexedMesh submesh = mesh.getSubmesh(i10);
            NativeFloatBuffer c10 = c(submesh.e(), scaleX, scaleY, scaleZ);
            NativeIntBuffer m1251clone = submesh.b().m1251clone();
            m1251clone.position(0);
            aVar.a(new NativeIndexedMesh(c10, m1251clone, true));
        }
        return aVar;
    }

    public static List<Dc.a> b(List<Dc.a> meshes, float scaleX, float scaleY, float scaleZ) {
        if (meshes == null) {
            throw new NullPointerException("meshes");
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList(meshes.size());
        for (int i10 = 0; i10 < meshes.size(); i10++) {
            steppedArrayList.add(a(meshes.get(i10), scaleX, scaleY, scaleZ));
        }
        return steppedArrayList;
    }

    public static NativeFloatBuffer c(NativeFloatBuffer nativeVertices, float scaleX, float scaleY, float scaleZ) {
        if (nativeVertices != null) {
            return nativeVertices.scaleVertices(scaleX, scaleY, scaleZ);
        }
        throw new NullPointerException("nativeVertices");
    }

    public static Dc.a d(NativeFloatBuffer nativeVertices, NativeIntBuffer nativeIndices) {
        if (nativeVertices == null) {
            throw new NullPointerException("nativeVertices");
        }
        if (nativeIndices != null) {
            return new Dc.a(nativeVertices, nativeIndices);
        }
        throw new NullPointerException("nativeIndices");
    }

    public static Dc.a e(NativeFloatBuffer nativeVertices, NativeIntBuffer nativeIndices, boolean skipOptimization) {
        if (nativeVertices == null) {
            throw new NullPointerException("nativeVertices");
        }
        if (nativeIndices != null) {
            return new Dc.a(nativeVertices, nativeIndices, skipOptimization);
        }
        throw new NullPointerException("nativeIndices");
    }

    public static Dc.a f(C16167a nativeVertices, C16168b nativeIndices) {
        if (nativeVertices == null) {
            throw new NullPointerException("nativeVertices");
        }
        if (nativeIndices == null) {
            throw new NullPointerException("nativeIndices");
        }
        FloatBuffer l02 = nativeVertices.l0();
        IntBuffer Z10 = nativeIndices.Z();
        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(l02.remaining());
        while (l02.hasRemaining()) {
            nativeFloatBuffer.put(l02.get());
        }
        nativeFloatBuffer.position(0);
        NativeIntBuffer nativeIntBuffer = new NativeIntBuffer(Z10.remaining());
        while (Z10.hasRemaining()) {
            nativeIntBuffer.put(Z10.get());
        }
        nativeIntBuffer.position(0);
        return new Dc.a(nativeFloatBuffer, nativeIntBuffer);
    }

    public static List<Dc.a> g(NativeFloatBuffer nativeVertices, NativeIntBuffer nativeIndices) {
        if (nativeVertices == null) {
            throw new NullPointerException("nativeVertices");
        }
        if (nativeIndices == null) {
            throw new NullPointerException("nativeIndices");
        }
        int capacity = nativeIndices.capacity() / 3;
        SteppedArrayList steppedArrayList = new SteppedArrayList(Math.max(1, (1999999 + capacity) / f27324a));
        int i10 = 0;
        while (i10 < capacity) {
            int min = Math.min(f27324a, capacity - i10);
            int i11 = min * 3;
            NativeIntBuffer nativeIntBuffer = new NativeIntBuffer(i11);
            nativeIntBuffer.set(0, nativeIndices, i10 * 3, i11);
            nativeIntBuffer.position(0);
            steppedArrayList.add(new Dc.a(nativeVertices, nativeIntBuffer));
            i10 += min;
        }
        return steppedArrayList;
    }
}
