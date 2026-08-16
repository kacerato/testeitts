package Pb;

import Bb.e;
import com.itsmagic.engine.Engines.Engine.Settings.DecalSettings;
import com.itsmagic.engine.Engines.Engine.Settings.GameSettings;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import da.C12894h;
import vb.C15823b;

public class a {

    public static C15823b f21203a;

    public static boolean f21204b;

    public static final Pb.b f21205c = new Pb.b();

    public class C0518a implements x8.b {
        @Override
        public void a() {
            a.d();
        }

        @Override
        public void b() {
        }
    }

    public class b implements e {
        @Override
        public void b() {
            a.f21205c.b(a.f21203a);
            C12894h.g(a.f21205c);
        }
    }

    static {
        com.itsmagic.engine.Core.Components.ProjectController.a.h(new C0518a());
    }

    public static C15823b c() {
        return f21203a;
    }

    public static void d() {
        f21204b = true;
    }

    public static void e(GameSettings gameSettings) {
        if (f21204b) {
            f21204b = false;
            DecalSettings b10 = gameSettings.b();
            int i10 = TextureConfig.f79814s[b10.j()];
            C15823b c15823b = f21203a;
            if (c15823b == null || c15823b.t() != i10) {
                C15823b c15823b2 = new C15823b(i10, i10);
                f21203a = c15823b2;
                c15823b2.N(true);
                f21203a.d(new b());
            }
            for (int i11 = 0; i11 < b10.s(); i11++) {
                f21203a.O(i11, b10.r(i11));
            }
            f21203a.f();
            Pb.b bVar = f21205c;
            bVar.b(f21203a);
            C12894h.g(bVar);
        }
    }
}
