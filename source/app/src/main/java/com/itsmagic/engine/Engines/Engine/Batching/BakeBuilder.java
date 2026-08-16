package com.itsmagic.engine.Engines.Engine.Batching;

import N8.b;
import N8.f;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import java.util.List;
import uc.C15593a;

public class BakeBuilder {

    public final Vector3 f72625a = new Vector3();

    public final Vector3 f72626b = new Vector3();

    public Vertex f72627c;

    public boolean f72628d;

    static {
        System.loadLibrary("batcher");
    }

    public BakeBuilder(List<f> rendererList, boolean requireTBN) {
        this.f72628d = requireTBN;
        n(rendererList);
    }

    public static void a(NativeFloatBuffer bakeVertices, NativeFloatBuffer bakeNormals, NativeFloatBuffer bakeTangents, NativeFloatBuffer bakeBitangents, NativeFloatBuffer vertices, NativeFloatBuffer normals, NativeFloatBuffer tangents, NativeFloatBuffer bitangents, NativeFloatBuffer matrix, int firstVerticeIndex) {
        if (vertices == null) {
            throw new RuntimeException("Vertices can't be null inside batchers");
        }
        nativeUpdateModel(NativeFloatBuffer.getCriticalDirectCppPointer(bakeVertices, -1L), NativeFloatBuffer.getCriticalDirectCppPointer(bakeNormals, -1L), NativeFloatBuffer.getCriticalDirectCppPointer(bakeTangents, -1L), NativeFloatBuffer.getCriticalDirectCppPointer(bakeBitangents, -1L), NativeFloatBuffer.getCriticalDirectCppPointer(vertices, -1L), NativeFloatBuffer.getCriticalDirectCppPointer(normals, -1L), NativeFloatBuffer.getCriticalDirectCppPointer(tangents, -1L), NativeFloatBuffer.getCriticalDirectCppPointer(bitangents, -1L), matrix.getCriticalDirectCppPointer(), normals != null ? normals.capacity() : 0, tangents != null ? tangents.capacity() : 0, bitangents != null ? bitangents.capacity() : 0, firstVerticeIndex);
    }

    public static void b(NativeFloatBuffer bakeVertices, NativeFloatBuffer bakeNormals, NativeFloatBuffer vertices, NativeFloatBuffer normals, NativeFloatBuffer matrix, int firstVerticeIndex) {
        if (vertices == null) {
            throw new RuntimeException("Vertices can't be null inside batchers");
        }
        nativeUpdateModelWithoutTBN(NativeFloatBuffer.getCriticalDirectCppPointer(bakeVertices, -1L), NativeFloatBuffer.getCriticalDirectCppPointer(bakeNormals, -1L), NativeFloatBuffer.getCriticalDirectCppPointer(vertices, -1L), NativeFloatBuffer.getCriticalDirectCppPointer(normals, -1L), matrix.getCriticalDirectCppPointer(), normals != null ? normals.capacity() : 0, firstVerticeIndex);
    }

    public static native void nativeUpdateModel(long bakeVertices, long bakeNormals, long bakeTangens, long bakeBitangents, long vertices, long normals, long tangentPointer, long bitangentPointer, long matrix, int bufferNormalsCount, int bufferTangentCount, int bufferBitangentsCount, int firstVerticeIndex);

    public static native void nativeUpdateModelWithoutTBN(long bakeVertices, long bakeNormals, long vertices, long normals, long matrix, int bufferNormalsCount, int firstVerticeIndex);

    public final void c(NativeFloatBuffer buffer, int baseIndex, float value, int count) {
        if (buffer != null) {
            buffer.fill(baseIndex, value, count);
        }
    }

    public Vertex d() {
        return this.f72627c;
    }

    public boolean e() {
        return this.f72628d;
    }

    public final void f(NativeFloatBuffer buffer, float value) {
        if (buffer != null) {
            buffer.put(value);
        }
    }

    public final void g(NativeFloatBuffer buffer, float x10, float y10) {
        if (buffer != null) {
            buffer.put(x10, y10);
        }
    }

    public final void h(NativeFloatBuffer buffer, float x10, float y10, float z10) {
        if (buffer != null) {
            buffer.put(x10, y10, z10);
        }
    }

    public final void i(NativeFloatBuffer buffer, Vector3 value) {
        if (buffer != null) {
            buffer.put(value);
        }
    }

    public final void j(NativeFloatBuffer buffer, NativeFloatBuffer value) {
        if (buffer != null) {
            buffer.put(value);
        }
    }

    public final void k(NativeFloatBuffer buffer, NativeFloatBuffer value, int count) {
        if (buffer != null) {
            buffer.put(value, count);
        }
    }

    public final void l(NativeFloatBuffer buffer, float value, int count) {
        if (buffer != null) {
            buffer.putFill(value, count);
        }
    }

    public void m() {
        this.f72627c.F(false, true);
    }

    public final void n(List<f> rendererList) {
        int Z02;
        this.f72627c = new Vertex();
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < rendererList.size(); i12++) {
            f fVar = rendererList.get(i12);
            b bVar = fVar.f15827r;
            Vertex vertex = fVar.f15811b;
            if (vertex.i1() != null) {
                int capacity = vertex.i1().capacity();
                bVar.f15784a = i10;
                bVar.f15785b = (i10 / 3) * 2;
                i10 += capacity;
            }
            if (vertex.V0() != null) {
                i11 += vertex.V0().capacity();
            }
        }
        NativeFloatBuffer j10 = C15593a.j(i10);
        NativeFloatBuffer j11 = C15593a.j(i10);
        NativeFloatBuffer j12 = C15593a.j((i10 / 3) * 2);
        NativeIntBuffer o10 = C15593a.o(i11);
        NativeFloatBuffer j13 = this.f72628d ? C15593a.j(i10) : null;
        this.f72627c.q2(j10);
        this.f72627c.Y1(j11);
        this.f72627c.m2(j12);
        this.f72627c.i2(o10);
        this.f72627c.e2(j13);
        for (int i13 = 0; i13 < rendererList.size(); i13++) {
            f fVar2 = rendererList.get(i13);
            b bVar2 = fVar2.f15827r;
            Vertex vertex2 = fVar2.f15811b;
            NativeIntBuffer V02 = vertex2.V0();
            if (V02 != null && V02.capacity() > 0) {
                try {
                    o10.putIncremented(V02, bVar2.f15784a / 3);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            NativeFloatBuffer a12 = vertex2.a1();
            if (a12 != null && (Z02 = Nc.b.Z0(a12.capacity(), vertex2.i1().capacity())) > 0) {
                j12.position(bVar2.f15785b);
                k(j12, a12, Z02);
            }
            if (this.f72628d) {
                a(this.f72627c.i1(), this.f72627c.x0(), this.f72627c.F0(), null, vertex2.i1(), vertex2.x0(), vertex2.F0(), null, fVar2.f15820k, fVar2.f15827r.f15784a);
            } else {
                b(this.f72627c.i1(), this.f72627c.x0(), vertex2.i1(), vertex2.x0(), fVar2.f15820k, fVar2.f15827r.f15784a);
            }
        }
        this.f72627c.F(false, true);
    }

    public final void o(NativeFloatBuffer buffer, int value) {
        if (buffer != null) {
            buffer.position(value);
        }
    }

    public final void p(NativeFloatBuffer buffer, int idx, float value) {
        if (buffer != null) {
            buffer.set(idx, value);
        }
    }

    public final void q(NativeFloatBuffer buffer, int idx, Vector3 value) {
        if (buffer != null) {
            buffer.set(idx, value);
        }
    }

    public void r(f model) {
        Vertex vertex = model.f15811b;
        if (this.f72628d) {
            a(this.f72627c.i1(), this.f72627c.x0(), this.f72627c.F0(), null, vertex.i1(), vertex.x0(), vertex.F0(), null, model.f15820k, model.f15827r.f15784a);
        } else {
            b(this.f72627c.i1(), this.f72627c.x0(), vertex.i1(), vertex.x0(), model.f15820k, model.f15827r.f15784a);
        }
    }
}
