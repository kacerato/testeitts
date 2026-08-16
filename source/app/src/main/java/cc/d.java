package Cc;

import com.itsmagic.engine.Engines.Engine.Settings.Physics.Layer;
import com.itsmagic.engine.Engines.Engine.Settings.Physics.PhysicsSettings;
import com.itsmagic.engine.Engines.Engine.World.World;

public class d {

    public static final a f2516a = new a(1);

    public static final int f2517b;

    public static boolean f2518c;

    public static int f2519d;

    static {
        int i10 = 0;
        for (int i11 = 0; i11 < 16; i11++) {
            i10 |= 1 << i11;
        }
        f2517b = i10;
        f2518c = true;
        f2519d = -1;
    }

    public static int a(int layer) {
        a aVar = f2516a;
        return aVar.d() > layer ? aVar.a(layer) : f2517b;
    }

    public static void b() {
        f2518c = true;
    }

    public static void c(World world) {
        PhysicsSettings g10;
        if (world == null || !com.itsmagic.engine.Core.Components.ProjectController.a.d0()) {
            f2518c = true;
            return;
        }
        if (K8.a.l() == null || (g10 = K8.a.l().g()) == null) {
            return;
        }
        if (f2518c || f2519d != g10.j()) {
            f2518c = false;
            int j10 = g10.j();
            f2519d = j10;
            f2516a.b(j10);
            for (int i10 = 0; i10 < f2519d; i10++) {
                try {
                    Layer i11 = g10.i(i10);
                    i11.f79542b = i10;
                    i11.f79543c = K8.a.k();
                    for (int i12 = 0; i12 < f2519d; i12++) {
                        if (i11.p(g10.i(i12))) {
                            f2516a.c(i10, i12, false);
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    f2518c = true;
                }
            }
        }
    }
}
