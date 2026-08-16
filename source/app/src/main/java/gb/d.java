package Gb;

import Ib.h;
import JAVARuntime.Point3;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import java.util.LinkedList;

public class d {

    public final Vertex f7734a = a();

    public final int f7735b;

    public final float f7736c;

    public final float f7737d;

    public d(float maxAngle, float length, int radialVertices) {
        this.f7736c = maxAngle;
        this.f7737d = length;
        this.f7735b = radialVertices;
    }

    public final Vertex a() {
        float tan = (float) (Math.tan(Math.toRadians(this.f7736c)) * this.f7737d);
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        linkedList.add(new Vector3(0.0f, 0.0f, 0.0f));
        linkedList.add(new Vector3(0.0f, 0.0f, this.f7737d));
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int i12 = this.f7735b;
            if (i11 >= i12) {
                break;
            }
            double radians = Math.toRadians((360.0d / i12) * i11);
            double d10 = tan;
            linkedList.add(new Vector3((float) (Math.cos(radians) * d10), (float) (Math.sin(radians) * d10), this.f7737d));
            i11++;
        }
        int i13 = 0;
        while (true) {
            int i14 = this.f7735b;
            if (i13 >= i14) {
                break;
            }
            int i15 = i13 + 2;
            i13++;
            linkedList2.add(new Point3(0, (i13 % i14) + 2, i15));
        }
        while (true) {
            int i16 = this.f7735b;
            if (i10 >= i16) {
                Vertex vertex = new Vertex();
                h.K(linkedList, vertex);
                h.E(linkedList2, vertex);
                vertex.apply();
                return vertex;
            }
            int i17 = i10 + 2;
            i10++;
            linkedList2.add(new Point3(1, i17, (i10 % i16) + 2));
        }
    }

    public Vertex b() {
        return this.f7734a;
    }
}
