package Db;

import Lc.g;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class b {

    public static final Object f5080a = new Object();

    public static final g<c> f5081b = new g<>();

    public static final List<c> f5082c = new SteppedArrayList();

    public static a a(Vertex originalMesh) {
        if (originalMesh == null) {
            throw new NullPointerException("originalMesh can`t be null");
        }
        if (originalMesh.j1() <= 0 || originalMesh.W0() <= 0) {
            throw new RuntimeException("originalMesh is empty");
        }
        synchronized (f5080a) {
            try {
                g<c> gVar = f5081b;
                c u10 = gVar.u(originalMesh.hashCode());
                if (u10 != null && u10.c() != null && u10.b() == originalMesh.f0()) {
                    return u10.c();
                }
                NativeFloatBuffer i12 = originalMesh.i1();
                NativeIntBuffer V02 = originalMesh.V0();
                a aVar = new a();
                aVar.m(W8.a.g(i12, V02));
                c cVar = new c(originalMesh, aVar, originalMesh.f0());
                gVar.td(originalMesh.hashCode(), cVar);
                f5082c.add(cVar);
                return aVar;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void b() {
        synchronized (f5080a) {
            try {
                for (int size = f5082c.size() - 1; size >= 0; size--) {
                    List<c> list = f5082c;
                    c cVar = list.get(size);
                    if (!cVar.e()) {
                        f5081b.e(cVar.d());
                        list.remove(size);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
