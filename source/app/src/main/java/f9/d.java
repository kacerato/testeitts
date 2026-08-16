package F9;

import JAVARuntime.Vertex;
import aa.C3593a;
import aa.C3595c;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.ChunkSystem.VoxelChunk;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;

public class d {

    public static final ThreadLocal<Vector3> f6712a = new a();

    public class a extends ThreadLocal<Vector3> {
        @Override
        public Vector3 initialValue() {
            return new Vector3();
        }
    }

    public static C3593a a(Vector3 pos, Vector3 dir, float length) {
        Vertex vertex;
        C3593a b10;
        C3595c c3595c = new C3595c(pos, dir, length);
        int h10 = D9.a.h();
        C3593a c3593a = null;
        for (int i10 = 0; i10 < h10; i10++) {
            try {
                VoxelChunk g10 = D9.a.g(i10);
                if (g10 != null && g10.isReady() && (vertex = g10.f77699T) != null && (b10 = b(c3595c, g10, vertex)) != null && (c3593a == null || b10.getDistance() <= c3593a.getDistance())) {
                    try {
                        b10.setGameObject(g10.f79250n);
                        c3593a = b10;
                    } catch (Error | Exception e10) {
                        e = e10;
                        c3593a = b10;
                        e.printStackTrace();
                    }
                }
            } catch (Error e11) {
                e = e11;
            } catch (Exception e12) {
                e = e12;
            }
        }
        return c3593a;
    }

    public static C3593a b(C3595c ray, VoxelChunk chunk, Vertex vertex) {
        Vector3 vector3 = f6712a.get();
        vector3.set(ray.i().f());
        vector3.setY(0.0f);
        float distance = ray.getDistance() + chunk.getWidth();
        float f10 = distance * distance;
        boolean z10 = false;
        boolean z11 = Vector2.F0(chunk.f77700U.getX() - vector3.getX(), chunk.f77700U.getZ() - vector3.getZ()) >= f10;
        boolean z12 = z11 && Vector2.F0((chunk.f77700U.getX() + ((float) chunk.getWidth())) - vector3.getX(), chunk.f77700U.getZ() - vector3.getZ()) >= f10;
        boolean z13 = z12 && Vector2.F0(chunk.f77700U.getX() - vector3.getX(), (chunk.f77700U.getZ() + ((float) chunk.getWidth())) - vector3.getZ()) >= f10;
        if (z13) {
            z10 = Vector2.F0((chunk.f77700U.getX() + ((float) chunk.getWidth())) - vector3.getX(), (chunk.f77700U.getZ() + ((float) chunk.getWidth())) - vector3.getZ()) >= f10;
        }
        if ((z11 && z12 && z13 && z10) || vertex.i1() == null || vertex.V0() == null) {
            return null;
        }
        try {
            C3593a H22 = vertex.H2(chunk.f77701V, ray, Vertex.RayMode.ClosestPoint);
            if (H22 == null) {
                return null;
            }
            H22.setGameObject(chunk.f79250n);
            return H22;
        } catch (NullPointerException unused) {
            return null;
        }
    }
}
