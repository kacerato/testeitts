package Gb;

import Ib.h;
import JAVARuntime.Point3;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import java.util.LinkedList;
import java.util.List;

public class g {

    public final Vertex f7752a;

    public g(float radius, int segments, float thickness) {
        this.f7752a = a(radius, segments, thickness);
    }

    public final Vertex a(float radius, int segments, float thickness) {
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        b(linkedList, linkedList2, radius, segments, thickness, 0, 2, 1, b(linkedList, linkedList2, radius, segments, thickness, 1, 2, 0, b(linkedList, linkedList2, radius, segments, thickness, 0, 1, 2, 0)));
        Vertex vertex = new Vertex();
        h.K(linkedList, vertex);
        h.E(linkedList2, vertex);
        vertex.apply();
        return vertex;
    }

    public final int b(List<Vector3> verts, List<Point3> tris, float radius, int segments, float thickness, int axisA, int axisB, int axisC, int baseIndex) {
        Vector3 vector3;
        Vector3 vector32;
        int i10 = 0;
        int i11 = baseIndex;
        while (i10 < segments) {
            double d10 = 360.0d / segments;
            double radians = Math.toRadians(i10 * d10);
            i10++;
            double radians2 = Math.toRadians(d10 * i10);
            double d11 = radius;
            float cos = (float) (Math.cos(radians) * d11);
            float sin = (float) (Math.sin(radians) * d11);
            float cos2 = (float) (Math.cos(radians2) * d11);
            float sin2 = (float) (Math.sin(radians2) * d11);
            if (axisA == 0 && axisB == 1) {
                vector3 = new Vector3(cos, sin, 0.0f);
                vector32 = new Vector3(cos2, sin2, 0.0f);
            } else if (axisA == 1 && axisB == 2) {
                vector3 = new Vector3(0.0f, cos, sin);
                vector32 = new Vector3(0.0f, cos2, sin2);
            } else {
                if (axisA != 0 || axisB != 2) {
                    throw new IllegalArgumentException("Unsupported axis combination");
                }
                vector3 = new Vector3(cos, 0.0f, sin);
                vector32 = new Vector3(cos2, 0.0f, sin2);
            }
            i11 = c(verts, tris, vector3, vector32, thickness, i11);
        }
        return i11;
    }

    public final int c(List<Vector3> verts, List<Point3> tris, Vector3 a10, Vector3 b10, float thickness, int baseIndex) {
        Vector3 normalizeLocal = b10.sub(a10).normalizeLocal();
        Vector3 vector3 = new Vector3(0.0f, 0.0f, 1.0f);
        if (Math.abs(normalizeLocal.dot(vector3)) > 0.95f) {
            vector3 = new Vector3(0.0f, 1.0f, 0.0f);
        }
        Vector3 mulLocal = normalizeLocal.cross(vector3).normalizeLocal().mulLocal(thickness * 0.5f);
        Vector3 add = a10.add(mulLocal);
        Vector3 sub = a10.sub(mulLocal);
        Vector3 sub2 = b10.sub(mulLocal);
        Vector3 add2 = b10.add(mulLocal);
        verts.add(add);
        verts.add(sub);
        verts.add(sub2);
        verts.add(add2);
        int i10 = baseIndex + 2;
        tris.add(new Point3(baseIndex, baseIndex + 1, i10));
        tris.add(new Point3(baseIndex, i10, baseIndex + 3));
        return baseIndex + 4;
    }

    public Vertex d() {
        return this.f7752a;
    }
}
