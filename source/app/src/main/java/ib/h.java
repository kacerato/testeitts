package Ib;

import JAVARuntime.Point3;
import JAVARuntime.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Data.VertexData;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import java.util.Iterator;
import java.util.List;
import uc.C15593a;
import vc.q;

public class h {

    @Deprecated
    public static final ThreadLocal<com.itsmagic.engine.Engines.Engine.Vector.f> f9003a = new a();

    @Deprecated
    public static final ThreadLocal<Vector3> f9004b = new b();

    public class a extends ThreadLocal<com.itsmagic.engine.Engines.Engine.Vector.f> {
        @Override
        public com.itsmagic.engine.Engines.Engine.Vector.f initialValue() {
            return new com.itsmagic.engine.Engines.Engine.Vector.f();
        }
    }

    public class b extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public static void A(int[] array, Vertex vertexModel) {
        if (array == null) {
            vertexModel.i2(new NativeIntBuffer(0));
        } else {
            vertexModel.i2(C15593a.q(array));
        }
    }

    public static void B(List<JAVARuntime.Vector3> list, Vertex vertexModel) {
        if (list == null) {
            vertexModel.i2(new NativeIntBuffer(0));
            return;
        }
        NativeIntBuffer nativeIntBuffer = new NativeIntBuffer(list.size() * 3);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            JAVARuntime.Vector3 vector3 = list.get(i11);
            nativeIntBuffer.set(i10, (int) vector3.instance.getX());
            nativeIntBuffer.set(i10 + 1, (int) vector3.instance.getY());
            nativeIntBuffer.set(i10 + 2, (int) vector3.instance.getZ());
            i10 += 3;
        }
        vertexModel.i2(nativeIntBuffer);
    }

    public static void C(List<Vector3> list, Vertex vertexModel) {
        if (list == null) {
            vertexModel.i2(new NativeIntBuffer(0));
            return;
        }
        NativeIntBuffer nativeIntBuffer = new NativeIntBuffer(list.size() * 3);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            Vector3 vector3 = list.get(i11);
            nativeIntBuffer.set(i10, (int) vector3.getX());
            nativeIntBuffer.set(i10 + 1, (int) vector3.getY());
            nativeIntBuffer.set(i10 + 2, (int) vector3.getZ());
            i10 += 3;
        }
        vertexModel.i2(nativeIntBuffer);
    }

    public static void D(List<Variable> list, Vertex vertexModel) {
        if (list == null) {
            vertexModel.q2(null);
            return;
        }
        NativeIntBuffer nativeIntBuffer = new NativeIntBuffer(list.size() * 3);
        Iterator<Variable> it = list.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            Vector3 vector3 = it.next().vector3_value;
            if (vector3 != null) {
                nativeIntBuffer.set(i10, (int) vector3.getX());
                nativeIntBuffer.set(i10 + 1, (int) vector3.getY());
                nativeIntBuffer.set(i10 + 2, (int) vector3.getZ());
                i10 += 3;
            }
        }
        vertexModel.i2(nativeIntBuffer);
    }

    public static void E(List<Point3> list, Vertex vertexModel) {
        if (list == null) {
            vertexModel.i2(new NativeIntBuffer(0));
            return;
        }
        NativeIntBuffer nativeIntBuffer = new NativeIntBuffer(list.size() * 3);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            Point3 point3 = list.get(i11);
            nativeIntBuffer.set(i10, point3.vector.J());
            nativeIntBuffer.set(i10 + 1, point3.vector.K());
            nativeIntBuffer.set(i10 + 2, point3.vector.L());
            i10 += 3;
        }
        vertexModel.i2(nativeIntBuffer);
    }

    public static void F(float[] array, Vertex vertexModel) {
        if (array == null) {
            vertexModel.m2(null);
        } else {
            vertexModel.m2(C15593a.m(array));
        }
    }

    public static void G(List<Vector2> list, Vertex vertexModel) {
        if (list == null) {
            vertexModel.m2(null);
            return;
        }
        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(list.size() * 2);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            Object obj = list.get(i11);
            if (obj instanceof Vector2) {
                Vector2 vector2 = (Vector2) obj;
                nativeFloatBuffer.set(i10, vector2.instance.getX());
                nativeFloatBuffer.set(i10 + 1, vector2.instance.getY());
            } else if (obj instanceof com.itsmagic.engine.Engines.Engine.Vector.Vector2) {
                com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector22 = (com.itsmagic.engine.Engines.Engine.Vector.Vector2) obj;
                nativeFloatBuffer.set(i10, vector22.getX());
                nativeFloatBuffer.set(i10 + 1, vector22.getY());
            }
            i10 += 2;
        }
        vertexModel.m2(nativeFloatBuffer);
    }

    public static void H(List<Variable> list, Vertex vertexModel) {
        if (list == null) {
            vertexModel.m2(null);
            return;
        }
        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(list.size() * 2);
        Iterator<Variable> it = list.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            com.itsmagic.engine.Engines.Engine.Vector.Vector2 vector2 = it.next().vector2_value;
            if (vector2 != null) {
                nativeFloatBuffer.set(i10, vector2.getX());
                nativeFloatBuffer.set(i10 + 1, vector2.getY());
                i10 += 2;
            }
        }
        vertexModel.m2(nativeFloatBuffer);
    }

    public static void I(float[] array, Vertex vertexModel) {
        if (array == null) {
            vertexModel.q2(null);
        } else {
            vertexModel.q2(C15593a.m(array));
        }
    }

    public static void J(List<JAVARuntime.Vector3> list, Vertex vertexModel) {
        if (list == null) {
            vertexModel.q2(null);
            return;
        }
        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(list.size() * 3);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            JAVARuntime.Vector3 vector3 = list.get(i11);
            nativeFloatBuffer.set(i10, vector3.instance.getX());
            nativeFloatBuffer.set(i10 + 1, vector3.instance.getY());
            nativeFloatBuffer.set(i10 + 2, vector3.instance.getZ());
            i10 += 3;
        }
        vertexModel.q2(nativeFloatBuffer);
    }

    public static void K(List<Vector3> list, Vertex vertexModel) {
        if (list == null) {
            vertexModel.q2(null);
            return;
        }
        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(list.size() * 3);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            Vector3 vector3 = list.get(i11);
            nativeFloatBuffer.set(i10, vector3.getX());
            nativeFloatBuffer.set(i10 + 1, vector3.getY());
            nativeFloatBuffer.set(i10 + 2, vector3.getZ());
            i10 += 3;
        }
        vertexModel.q2(nativeFloatBuffer);
    }

    public static void L(List<Variable> list, Vertex vertexModel) {
        if (list == null) {
            vertexModel.q2(null);
            return;
        }
        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(list.size() * 3);
        Iterator<Variable> it = list.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            Vector3 vector3 = it.next().vector3_value;
            if (vector3 != null) {
                nativeFloatBuffer.set(i10, vector3.getX());
                nativeFloatBuffer.set(i10 + 1, vector3.getY());
                nativeFloatBuffer.set(i10 + 2, vector3.getZ());
                i10 += 3;
            }
        }
        vertexModel.q2(nativeFloatBuffer);
    }

    public static void M(float[] array, Vertex vertexModel) {
        if (array == null) {
            vertexModel.s2(null);
        } else {
            vertexModel.s2(C15593a.m(array));
        }
    }

    public static void N(List<JAVARuntime.Vector3> list, Vertex vertexModel) {
        if (list == null) {
            vertexModel.q2(null);
            return;
        }
        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(list.size() * 3);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            Object obj = list.get(i11);
            if (obj instanceof JAVARuntime.Vector3) {
                JAVARuntime.Vector3 vector3 = (JAVARuntime.Vector3) obj;
                nativeFloatBuffer.set(i10, vector3.instance.getX());
                nativeFloatBuffer.set(i10 + 1, vector3.instance.getY());
                nativeFloatBuffer.set(i10 + 2, vector3.instance.getZ());
            } else if (obj instanceof Vector3) {
                Vector3 vector32 = (Vector3) obj;
                nativeFloatBuffer.set(i10, vector32.getX());
                nativeFloatBuffer.set(i10 + 1, vector32.getY());
                nativeFloatBuffer.set(i10 + 2, vector32.getZ());
            }
            i10 += 3;
        }
        vertexModel.s2(nativeFloatBuffer);
    }

    public static NativeFloatBuffer O(Vertex vertexModel, NativeFloatBuffer buffer, float[] matrix) {
        if (buffer == null || buffer.capacity() != vertexModel.i1().capacity()) {
            buffer = new NativeFloatBuffer(vertexModel.i1().capacity());
        }
        com.itsmagic.engine.Engines.Engine.Vector.f fVar = f9003a.get();
        fVar.y0(matrix);
        Vector3 vector3 = f9004b.get();
        new q(buffer);
        buffer.position(0);
        for (int i10 = 0; i10 < vertexModel.j1(); i10++) {
            vertexModel.h1(i10, vector3);
            fVar.p0(vector3, vector3);
            buffer.put(vector3);
        }
        buffer.position(0);
        return buffer;
    }

    public static void a(float[] normals, int idx, Vector3 normal) {
        int i10 = idx * 3;
        normals[i10] = normals[i10] + normal.getX();
        int i11 = i10 + 1;
        normals[i11] = normals[i11] + normal.getY();
        int i12 = i10 + 2;
        normals[i12] = normals[i12] + normal.getZ();
    }

    public static void b(float[] vertices, int idx, Vector3 out) {
        int i10 = idx * 3;
        out.setX(vertices[i10]);
        out.setY(vertices[i10 + 1]);
        out.setZ(vertices[i10 + 2]);
    }

    public static void c(VertexData vertexData) {
        float[] h10 = vertexData.h();
        int[] c10 = vertexData.c();
        if (h10 == null || h10.length < 2 || c10 == null || c10.length < 2) {
            return;
        }
        int length = h10.length;
        float[] fArr = new float[length];
        Vector3 vector3 = new Vector3();
        Vector3 vector32 = new Vector3();
        Vector3 vector33 = new Vector3();
        Vector3 vector34 = new Vector3();
        for (int i10 = 0; i10 < c10.length; i10 += 3) {
            try {
                int i11 = c10[i10];
                int i12 = c10[i10 + 1];
                int i13 = c10[i10 + 2];
                b(h10, i11, vector3);
                b(h10, i12, vector32);
                b(h10, i13, vector33);
                Vector3.triangleNormal(vector3, vector32, vector33, vector34);
                a(fArr, i11, vector34);
                a(fArr, i12, vector34);
                a(fArr, i13, vector34);
            } catch (IndexOutOfBoundsException e10) {
                e10.printStackTrace();
            }
        }
        for (int i14 = 0; i14 < length / 3; i14++) {
            try {
                u(fArr, i14, vector34);
            } catch (IndexOutOfBoundsException e11) {
                e11.printStackTrace();
            }
        }
        vertexData.p(fArr);
    }

    @Deprecated
    public static NativeFloatBuffer d(Vertex vertexModel, float[] matrix) {
        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(vertexModel.i1().capacity());
        nativeFloatBuffer.position(0);
        com.itsmagic.engine.Engines.Engine.Vector.f fVar = f9003a.get();
        fVar.y0(matrix);
        Vector3 vector3 = f9004b.get();
        for (int i10 = 0; i10 < vertexModel.j1(); i10++) {
            vertexModel.h1(i10, vector3);
            fVar.p0(vector3, vector3);
            nativeFloatBuffer.put(vector3);
        }
        nativeFloatBuffer.position(0);
        return nativeFloatBuffer;
    }

    public static SteppedArrayList<Vector3> e(Vertex vertex) {
        return Nc.b.d(vertex.V0());
    }

    public static int[] f(Vertex vertex) {
        return vertex.V0().toArray();
    }

    public static float[] g(Vertex vertex) {
        return vertex.m0().toArray();
    }

    public static List<JAVARuntime.Vector3> h(Vertex vertexModel) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        NativeFloatBuffer m02 = vertexModel.m0();
        for (int i10 = 0; i10 < m02.capacity(); i10 += 3) {
            steppedArrayList.add(new JAVARuntime.Vector3(m02.get(i10), m02.get(i10 + 1), m02.get(i10 + 2)));
        }
        return steppedArrayList;
    }

    public static SteppedArrayList<Vector3> i(Vertex vertex) {
        return Nc.b.c(vertex.x0());
    }

    public static float[] j(Vertex vertex) {
        return vertex.x0().toArray();
    }

    public static List<JAVARuntime.Vector3> k(Vertex vertexModel) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        NativeFloatBuffer x02 = vertexModel.x0();
        for (int i10 = 0; i10 < x02.capacity(); i10 += 3) {
            steppedArrayList.add(new JAVARuntime.Vector3(x02.get(i10), x02.get(i10 + 1), x02.get(i10 + 2)));
        }
        return steppedArrayList;
    }

    public static SteppedArrayList<com.itsmagic.engine.Engines.Engine.Vector.Vector2> l(Vertex vertex) {
        return Nc.b.a(vertex.a1());
    }

    public static List<JAVARuntime.Vector3> m(Vertex vertexModel) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        NativeIntBuffer V02 = vertexModel.V0();
        for (int i10 = 0; i10 < V02.capacity(); i10 += 3) {
            steppedArrayList.add(new JAVARuntime.Vector3(V02.get(i10), V02.get(i10 + 1), V02.get(i10 + 2)));
        }
        return steppedArrayList;
    }

    public static float[] n(Vertex vertex) {
        return vertex.a1().toArray();
    }

    public static List<Vector2> o(Vertex vertexModel) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        NativeFloatBuffer a12 = vertexModel.a1();
        for (int i10 = 0; i10 < a12.capacity(); i10 += 2) {
            steppedArrayList.add(new Vector2(a12.get(i10), a12.get(i10 + 1)));
        }
        return steppedArrayList;
    }

    public static SteppedArrayList<Vector3> p(Vertex vertex) {
        return Nc.b.c(vertex.i1());
    }

    public static float[] q(Vertex vertex) {
        return vertex.i1().toArray();
    }

    public static List<JAVARuntime.Vector3> r(Vertex vertexModel) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        NativeFloatBuffer i12 = vertexModel.i1();
        for (int i10 = 0; i10 < i12.capacity(); i10 += 3) {
            steppedArrayList.add(new JAVARuntime.Vector3(i12.get(i10), i12.get(i10 + 1), i12.get(i10 + 2)));
        }
        return steppedArrayList;
    }

    public static float[] s(Vertex vertex) {
        return vertex.l1().toArray();
    }

    public static List<JAVARuntime.Vector3> t(Vertex vertexModel) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        NativeFloatBuffer l12 = vertexModel.l1();
        for (int i10 = 0; i10 < l12.capacity(); i10 += 3) {
            steppedArrayList.add(new JAVARuntime.Vector3(l12.get(i10), l12.get(i10 + 1), l12.get(i10 + 2)));
        }
        return steppedArrayList;
    }

    public static void u(float[] normals, int idx, Vector3 tmp) {
        int i10 = idx * 3;
        tmp.setX(normals[i10]);
        int i11 = i10 + 1;
        tmp.setY(normals[i11]);
        int i12 = i10 + 2;
        tmp.setZ(normals[i12]);
        tmp.normalizeLocal();
        normals[i10] = tmp.getX();
        normals[i11] = tmp.getY();
        normals[i12] = tmp.getZ();
    }

    public static void v(float[] array, Vertex vertexModel) {
        if (array == null) {
            vertexModel.S1(null);
        } else {
            vertexModel.S1(C15593a.m(array));
        }
    }

    public static void w(List<JAVARuntime.Vector3> list, Vertex vertexModel) {
        if (list == null) {
            vertexModel.q2(null);
            return;
        }
        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(list.size() * 3);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            Object obj = list.get(i11);
            if (obj instanceof JAVARuntime.Vector3) {
                JAVARuntime.Vector3 vector3 = (JAVARuntime.Vector3) obj;
                nativeFloatBuffer.set(i10, vector3.instance.getX());
                nativeFloatBuffer.set(i10 + 1, vector3.instance.getY());
                nativeFloatBuffer.set(i10 + 2, vector3.instance.getZ());
            } else if (obj instanceof Vector3) {
                Vector3 vector32 = (Vector3) obj;
                nativeFloatBuffer.set(i10, vector32.getX());
                nativeFloatBuffer.set(i10 + 1, vector32.getY());
                nativeFloatBuffer.set(i10 + 2, vector32.getZ());
            }
            i10 += 3;
        }
        vertexModel.S1(nativeFloatBuffer);
    }

    public static void x(float[] array, Vertex vertexModel) {
        if (array == null) {
            vertexModel.Y1(null);
        } else {
            vertexModel.Y1(C15593a.m(array));
        }
    }

    public static void y(List<JAVARuntime.Vector3> list, Vertex vertexModel) {
        if (list == null) {
            vertexModel.Y1(null);
            return;
        }
        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(list.size() * 3);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            Object obj = list.get(i11);
            if (obj instanceof JAVARuntime.Vector3) {
                JAVARuntime.Vector3 vector3 = (JAVARuntime.Vector3) obj;
                nativeFloatBuffer.set(i10, vector3.instance.getX());
                nativeFloatBuffer.set(i10 + 1, vector3.instance.getY());
                nativeFloatBuffer.set(i10 + 2, vector3.instance.getZ());
            } else if (obj instanceof Vector3) {
                Vector3 vector32 = (Vector3) obj;
                nativeFloatBuffer.set(i10, vector32.getX());
                nativeFloatBuffer.set(i10 + 1, vector32.getY());
                nativeFloatBuffer.set(i10 + 2, vector32.getZ());
            }
            i10 += 3;
        }
        vertexModel.Y1(nativeFloatBuffer);
    }

    public static void z(List<Variable> list, Vertex vertexModel) {
        if (list == null) {
            vertexModel.Y1(null);
            return;
        }
        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(list.size() * 3);
        Iterator<Variable> it = list.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            Vector3 vector3 = it.next().vector3_value;
            if (vector3 != null) {
                nativeFloatBuffer.set(i10, vector3.getX());
                nativeFloatBuffer.set(i10 + 1, vector3.getY());
                nativeFloatBuffer.set(i10 + 2, vector3.getZ());
                i10 += 3;
            }
        }
        vertexModel.Y1(nativeFloatBuffer);
    }
}
