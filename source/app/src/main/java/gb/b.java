package Gb;

import Ib.h;
import JAVARuntime.Point3;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import java.util.LinkedList;
import java.util.List;

public class b {

    public final Vertex f7728a;

    public b(float maxAngle, float length, int sideSegments, int baseSegments, float thickness) {
        this.f7728a = a(maxAngle, length, sideSegments, baseSegments, thickness);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Vertex a(float maxAngle, float length, int sideSegments, int baseSegments, float thickness) {
        float tan = (float) (Math.tan(Math.toRadians(maxAngle)) * length);
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        Vector3 vector3 = new Vector3(0.0f, 0.0f, 0.0f);
        LinkedList linkedList3 = new LinkedList();
        int i10 = 0;
        for (int i11 = 0; i11 < baseSegments; i11++) {
            double radians = Math.toRadians((360.0d / baseSegments) * i11);
            double d10 = tan;
            linkedList3.add(new Vector3((float) (Math.cos(radians) * d10), (float) (Math.sin(radians) * d10), length));
        }
        int i12 = 0;
        for (int i13 = 0; i13 < sideSegments; i13++) {
            i12 = b(linkedList, linkedList2, vector3, (Vector3) linkedList3.get((baseSegments / sideSegments) * i13), thickness, i12);
        }
        while (i10 < baseSegments) {
            Vector3 vector32 = (Vector3) linkedList3.get(i10);
            i10++;
            i12 = b(linkedList, linkedList2, vector32, (Vector3) linkedList3.get(i10 % baseSegments), thickness, i12);
        }
        Vertex vertex = new Vertex();
        h.K(linkedList, vertex);
        h.E(linkedList2, vertex);
        vertex.apply();
        return vertex;
    }

    public final int b(List<Vector3> verts, List<Point3> tris, Vector3 a10, Vector3 b10, float thickness, int baseIndex) {
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

    public Vertex c() {
        return this.f7728a;
    }
}
