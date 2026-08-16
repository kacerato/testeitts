package ac;

import cc.C4173d;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.Unlit.UnlitSimpleBinder;
import ec.i;

public class C3598a {

    public class C0856a implements ec.c {
        @Override
        public void a(Sb.b builder) {
            builder.s(MaterialBuilder.e.SURFACE);
            builder.E(MaterialBuilder.n.UNLIT);
            builder.C(MaterialBuilder.t.TANGENTS);
            builder.i(MaterialBuilder.c.BACK);
        }
    }

    public static C4173d a(String name) {
        C4173d c4173d = new C4173d(name, new UnlitSimpleBinder());
        c4173d.s(false);
        c4173d.r("Unlit/easy_unlit_simple_frag.glsl");
        c4173d.u("Unlit/easy_unlit_simple_vertex.glsl");
        c4173d.w(new i(MaterialBuilder.a.OPAQUE, 0.5f, MaterialBuilder.c.BACK, false));
        c4173d.v(new C0856a());
        c4173d.a(MaterialBuilder.m.SAMPLER_2D, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, "albedo");
        c4173d.c(MaterialBuilder.r.FLOAT4, MaterialBuilder.g.LOW, "baseColor");
        return c4173d;
    }

    public static C4173d b() {
        return a("Unlit/Simple");
    }
}
