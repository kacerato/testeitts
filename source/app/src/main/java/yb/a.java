package Yb;

import cc.C4173d;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.Matcap.MatcapLitBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.Matcap.MatcapUnlitBinder;
import gc.C13320a;

public class a {

    public class C0802a implements ec.c {
        @Override
        public void a(Sb.b builder) {
            builder.s(MaterialBuilder.e.SURFACE);
            builder.E(MaterialBuilder.n.LIT);
            builder.C(MaterialBuilder.t.TANGENTS);
            builder.i(MaterialBuilder.c.BACK);
        }
    }

    public class b implements ec.c {
        @Override
        public void a(Sb.b builder) {
            builder.s(MaterialBuilder.e.SURFACE);
            builder.E(MaterialBuilder.n.UNLIT);
            builder.C(MaterialBuilder.t.TANGENTS);
            builder.T(MaterialBuilder.s.CUSTOM0, "matcapWorldNormal");
            builder.i(MaterialBuilder.c.BACK);
        }
    }

    public static C4173d a() {
        C4173d c4173d = new C4173d("Lit/Matcap", new MatcapLitBinder());
        c4173d.s(true);
        c4173d.r("Matcap/easy_matcap_lit_frag.glsl");
        c4173d.u("Matcap/easy_matcap_lit_vertex.glsl");
        c4173d.w(new ec.i(MaterialBuilder.a.OPAQUE, 0.5f, MaterialBuilder.c.BACK, false));
        c4173d.v(new C0802a());
        MaterialBuilder.m mVar = MaterialBuilder.m.SAMPLER_2D;
        MaterialBuilder.l lVar = MaterialBuilder.l.FLOAT;
        MaterialBuilder.g gVar = MaterialBuilder.g.HIGH;
        c4173d.a(mVar, lVar, gVar, "matcap");
        c4173d.a(mVar, lVar, gVar, "normalMap");
        c4173d.a(mVar, lVar, gVar, "roughnessMap");
        c4173d.a(mVar, lVar, gVar, "metallicMap");
        c4173d.c(MaterialBuilder.r.FLOAT4, MaterialBuilder.g.LOW, "baseColor");
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT2;
        c4173d.c(rVar, gVar, "normalTilling");
        c4173d.c(rVar, gVar, "normalOffset");
        c4173d.c(rVar, gVar, "roughnessTilling");
        c4173d.c(rVar, gVar, "roughnessOffset");
        c4173d.c(rVar, gVar, "metallicTilling");
        c4173d.c(rVar, gVar, "metallicOffset");
        c4173d.b(new C13320a("hasNormal"));
        return c4173d;
    }

    public static C4173d b() {
        C4173d c4173d = new C4173d("Unlit/Matcap", new MatcapUnlitBinder());
        c4173d.s(false);
        c4173d.r("Matcap/easy_matcap_unlit_frag.glsl");
        c4173d.u("Matcap/easy_matcap_unlit_vertex.glsl");
        c4173d.w(new ec.i(MaterialBuilder.a.OPAQUE, 0.5f, MaterialBuilder.c.BACK, false));
        c4173d.v(new b());
        c4173d.a(MaterialBuilder.m.SAMPLER_2D, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, "matcap");
        c4173d.c(MaterialBuilder.r.FLOAT4, MaterialBuilder.g.LOW, "baseColor");
        return c4173d;
    }
}
