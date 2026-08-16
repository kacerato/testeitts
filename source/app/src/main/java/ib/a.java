package Ib;

import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class a {

    public final NativeFloatBuffer f8902a;

    public final NativeIntBuffer f8903b;

    /* JADX WARN: Multi-variable type inference failed */
    public a(NativeFloatBuffer vertices, NativeIntBuffer triangles, float[] matrix, float maxTriangleArea) {
        com.itsmagic.engine.Engines.Engine.Vector.f fVar = new com.itsmagic.engine.Engines.Engine.Vector.f();
        fVar.y0(matrix);
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        Vector3 vector3 = new Vector3();
        for (int i10 = 0; i10 < vertices.capacity(); i10 += 3) {
            vector3.set(vertices.get(i10), vertices.get(i10 + 1), vertices.get(i10 + 2));
            fVar.p0(vector3, vector3);
            steppedArrayList.add(new Vector3(vector3));
        }
        LinkedList linkedList = new LinkedList();
        for (int i11 = 0; i11 < triangles.capacity(); i11 += 3) {
            linkedList.add(new int[]{triangles.get(i11), triangles.get(i11 + 1), triangles.get(i11 + 2)});
        }
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        while (!linkedList.isEmpty()) {
            int[] iArr = (int[]) linkedList.poll();
            if (f(steppedArrayList.get(iArr[0]), steppedArrayList.get(iArr[1]), steppedArrayList.get(iArr[2])) > maxTriangleArea) {
                Iterator<int[]> it = e(iArr, steppedArrayList).iterator();
                while (it.hasNext()) {
                    linkedList.add(it.next());
                }
            } else {
                steppedArrayList2.add(iArr);
            }
        }
        this.f8902a = new NativeFloatBuffer(steppedArrayList.size() * 3);
        for (int i12 = 0; i12 < steppedArrayList.size(); i12++) {
            Vector3 vector32 = steppedArrayList.get(i12);
            int i13 = i12 * 3;
            this.f8902a.set(i13, vector32.getX());
            this.f8902a.set(i13 + 1, vector32.getY());
            this.f8902a.set(i13 + 2, vector32.getZ());
        }
        this.f8903b = new NativeIntBuffer(steppedArrayList2.size() * 3);
        for (int i14 = 0; i14 < steppedArrayList2.size(); i14++) {
            int[] iArr2 = (int[]) steppedArrayList2.get(i14);
            int i15 = i14 * 3;
            this.f8903b.set(i15, iArr2[0]);
            this.f8903b.set(i15 + 1, iArr2[1]);
            this.f8903b.set(i15 + 2, iArr2[2]);
        }
    }

    public final int a(Vector3 v10, List<Vector3> vertices) {
        vertices.add(new Vector3(v10));
        return vertices.size() - 1;
    }

    public NativeIntBuffer b() {
        return this.f8903b;
    }

    public NativeFloatBuffer c() {
        return this.f8902a;
    }

    public final Vector3 d(Vector3 a10, Vector3 b10) {
        return new Vector3((a10.getX() + b10.getX()) * 0.5f, (a10.getY() + b10.getY()) * 0.5f, (a10.getZ() + b10.getZ()) * 0.5f);
    }

    public final List<int[]> e(int[] tri, List<Vector3> vertices) {
        int i10 = tri[0];
        int i11 = tri[1];
        int i12 = tri[2];
        Vector3 vector3 = vertices.get(i10);
        Vector3 vector32 = vertices.get(i11);
        Vector3 vector33 = vertices.get(i12);
        float distance = vector3.distance(vector32);
        float distance2 = vector32.distance(vector33);
        float distance3 = vector33.distance(vector3);
        SteppedArrayList steppedArrayList = new SteppedArrayList(2);
        if (distance >= distance2 && distance >= distance3) {
            int a10 = a(d(vector3, vector32), vertices);
            steppedArrayList.add(new int[]{i10, a10, i12});
            steppedArrayList.add(new int[]{a10, i11, i12});
        } else if (distance2 < distance || distance2 < distance3) {
            int a11 = a(d(vector33, vector3), vertices);
            steppedArrayList.add(new int[]{i10, i11, a11});
            steppedArrayList.add(new int[]{a11, i11, i12});
        } else {
            int a12 = a(d(vector32, vector33), vertices);
            steppedArrayList.add(new int[]{i10, i11, a12});
            steppedArrayList.add(new int[]{i10, a12, i12});
        }
        return steppedArrayList;
    }

    public final float f(Vector3 a10, Vector3 b10, Vector3 c10) {
        return b10.m1249clone().sub(a10).cross(c10.m1249clone().sub(a10)).lengthF() * 0.5f;
    }
}
