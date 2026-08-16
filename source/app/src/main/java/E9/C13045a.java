package e9;

import Ib.h;
import JAVARuntime.GizmoObject;
import JAVARuntime.Point3;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.ParticleEmitter;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import java.util.LinkedList;

public class C13045a extends C13046b {

    public Vertex f85405a;

    public int f85406b = 12;

    public float f85407c;

    public float f85408d;

    public float f85409e;

    @Override
    public Vertex b() {
        return this.f85405a;
    }

    @Override
    public void c(ParticleEmitter emitter) {
        e(emitter);
    }

    @Override
    public void d(ParticleEmitter emitter, GizmoObject gizmoObject) {
        gizmoObject.setScale(1.0f);
        emitter.f79250n.transform.C0(gizmoObject.getRotation().instance);
        if (this.f85407c == emitter.getConeShapeOptions().b() && this.f85408d == emitter.getConeShapeOptions().c() && this.f85409e == emitter.getConeShapeOptions().d()) {
            return;
        }
        e(emitter);
    }

    public final void e(ParticleEmitter emitter) {
        this.f85407c = emitter.getConeShapeOptions().b();
        this.f85408d = emitter.getConeShapeOptions().c();
        this.f85409e = emitter.getConeShapeOptions().d();
        float f10 = 360.0f / this.f85406b;
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        Vector3 vector3 = new Vector3();
        for (int i10 = 0; i10 < this.f85406b; i10++) {
            float f11 = i10 * f10;
            linkedList.add(new Vector3(Nc.b.d0(f11) * emitter.getConeShapeOptions().d(), Nc.b.m1(f11) * emitter.getConeShapeOptions().d(), 0.0f));
        }
        int i11 = 0;
        float f12 = 0.0f;
        while (i11 < this.f85406b) {
            float f13 = i11 * f10;
            float b10 = 90.0f - emitter.getConeShapeOptions().b();
            float d02 = Nc.b.d0(f13);
            float m12 = Nc.b.m1(f13);
            float m13 = Nc.b.m1(b10);
            float f14 = 1.0f - m13;
            vector3.set(d02 * f14, m12 * f14, m13);
            vector3.normalizeLocal();
            float z10 = vector3.getZ();
            Vector3 vector32 = new Vector3(Nc.b.d0(f13) * emitter.getConeShapeOptions().d(), Nc.b.m1(f13) * emitter.getConeShapeOptions().d(), 0.0f);
            vector32.addLocal(vector3, 1.0f);
            linkedList.add(vector32);
            i11++;
            f12 = z10;
        }
        for (int i12 = 0; i12 < this.f85406b; i12++) {
            float f15 = i12 * f10;
            float c10 = 90.0f - emitter.getConeShapeOptions().c();
            float d03 = Nc.b.d0(f15);
            float m14 = Nc.b.m1(f15);
            float m15 = Nc.b.m1(c10);
            float f16 = 1.0f - m15;
            vector3.set(d03 * f16, m14 * f16, m15);
            vector3.normalizeLocal();
            vector3.setZ(f12);
            Vector3 vector33 = new Vector3(Nc.b.d0(f15) * emitter.getConeShapeOptions().d(), Nc.b.m1(f15) * emitter.getConeShapeOptions().d(), 0.0f);
            vector33.addLocal(vector3, 1.0f);
            linkedList.add(vector33);
        }
        int i13 = 0;
        while (i13 < this.f85406b - 1) {
            Point3 point3 = new Point3();
            point3.setZ(i13);
            int i14 = i13 + 1;
            point3.setY(i14);
            point3.setX(this.f85406b + i13 + 1);
            linkedList2.add(point3);
            Point3 point32 = new Point3();
            point32.setZ(i13);
            point32.setY(this.f85406b + i13 + 1);
            point32.setX(this.f85406b + i13);
            linkedList2.add(point32);
            i13 = i14;
        }
        Point3 point33 = new Point3();
        point33.setZ((this.f85406b * 2) - 1);
        point33.setY(this.f85406b - 1);
        point33.setX(0);
        linkedList2.add(point33);
        Point3 point34 = new Point3();
        point34.setZ((this.f85406b * 2) - 1);
        point34.setY(0);
        point34.setX(this.f85406b);
        linkedList2.add(point34);
        int i15 = 0;
        while (i15 < this.f85406b - 1) {
            Point3 point35 = new Point3();
            point35.setX(i15);
            int i16 = i15 + 1;
            point35.setY(i16);
            point35.setZ((this.f85406b * 2) + i15 + 1);
            linkedList2.add(point35);
            Point3 point36 = new Point3();
            point36.setX(i15);
            point36.setY((this.f85406b * 2) + i15 + 1);
            point36.setZ((this.f85406b * 2) + i15);
            linkedList2.add(point36);
            i15 = i16;
        }
        Point3 point37 = new Point3();
        point37.setX((this.f85406b * 3) - 1);
        point37.setY(this.f85406b - 1);
        point37.setZ(0);
        linkedList2.add(point37);
        Point3 point38 = new Point3();
        point38.setX((this.f85406b * 3) - 1);
        point38.setY(0);
        point38.setZ(this.f85406b * 2);
        linkedList2.add(point38);
        Vertex vertex = new Vertex();
        this.f85405a = vertex;
        h.K(linkedList, vertex);
        h.E(linkedList2, this.f85405a);
    }
}
