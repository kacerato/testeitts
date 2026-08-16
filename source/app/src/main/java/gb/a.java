package Gb;

import Ib.h;
import JAVARuntime.Point3;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import java.util.LinkedList;

public class a {

    public final Vertex f7727a;

    public a(float maxAngle, float length, int sideSegments, int baseSegments) {
        this.f7727a = a(maxAngle, length, sideSegments, baseSegments);
    }

    public final Vertex a(float maxAngle, float length, int sideSegments, int baseSegments) {
        float tan = (float) (Math.tan(Math.toRadians(maxAngle)) * length);
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        linkedList.add(new Vector3(0.0f, 0.0f, 0.0f));
        linkedList.add(new Vector3(0.0f, 0.0f, length));
        int i10 = 0;
        for (int i11 = 0; i11 < baseSegments; i11++) {
            double radians = Math.toRadians((360.0d / baseSegments) * i11);
            double d10 = tan;
            linkedList.add(new Vector3((float) (Math.cos(radians) * d10), (float) (Math.sin(radians) * d10), length));
        }
        int i12 = 0;
        while (i12 < sideSegments) {
            int i13 = baseSegments / sideSegments;
            int i14 = (i12 * i13) + 2;
            i12++;
            linkedList2.add(new Point3(0, ((i12 % sideSegments) * i13) + 2, i14));
        }
        while (i10 < baseSegments) {
            int i15 = i10 + 2;
            i10++;
            linkedList2.add(new Point3(1, i15, (i10 % baseSegments) + 2));
        }
        Vertex vertex = new Vertex();
        h.K(linkedList, vertex);
        h.E(linkedList2, vertex);
        vertex.apply();
        return vertex;
    }

    public Vertex b() {
        return this.f7727a;
    }
}
