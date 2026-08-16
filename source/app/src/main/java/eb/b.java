package Eb;

import Lc.g;
import com.itsmagic.engine.Engines.Engine.Vertex.Utils.ConvexHullModel;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Physics.DTOs.NativeHullCollisionShape;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Collections;
import java.util.List;

public class b {

    public static final Object f5759a = new Object();

    public static final g<c> f5760b = new g<>();

    public static final List<c> f5761c = new SteppedArrayList();

    public static a a(Vertex originalMesh) {
        if (originalMesh == null) {
            throw new NullPointerException("originalMesh can`t be null");
        }
        if (originalMesh.j1() <= 0 || originalMesh.W0() <= 0) {
            throw new RuntimeException("originalMesh is empty");
        }
        synchronized (f5759a) {
            try {
                g<c> gVar = f5760b;
                c u10 = gVar.u(originalMesh.hashCode());
                if (u10 != null && u10.c() != null && u10.b() == originalMesh.f0()) {
                    return u10.c();
                }
                ConvexHullModel convexHullModel = new ConvexHullModel(originalMesh);
                Vertex e10 = convexHullModel.e();
                NativeHullCollisionShape d10 = convexHullModel.d();
                a aVar = new a();
                aVar.d(e10);
                aVar.e(Collections.singletonList(d10));
                c cVar = new c(originalMesh, aVar, originalMesh.f0());
                gVar.td(originalMesh.hashCode(), cVar);
                f5761c.add(cVar);
                return aVar;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void b() {
        synchronized (f5759a) {
            try {
                for (int size = f5761c.size() - 1; size >= 0; size--) {
                    List<c> list = f5761c;
                    c cVar = list.get(size);
                    if (!cVar.e()) {
                        f5760b.e(cVar.d());
                        list.remove(size);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
