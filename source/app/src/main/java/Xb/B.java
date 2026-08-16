package Xb;

import cc.C4173d;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.DecalProjector;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.Lit.LitORMBinder;
import gc.C13320a;

public class B {

    public class a implements ec.c {
        @Override
        public void a(Sb.b builder) {
            builder.s(MaterialBuilder.e.SURFACE);
            builder.E(MaterialBuilder.n.LIT);
            builder.C(MaterialBuilder.t.TANGENTS);
            builder.i(MaterialBuilder.c.BACK);
        }
    }

    public static C4173d a() {
        return b("Lit/ORM");
    }

    public static C4173d b(String name) {
        C4173d c4173d = new C4173d(name, new LitORMBinder());
        c4173d.r("PBR/easy_lit_orm_frag.glsl");
        c4173d.u("PBR/easy_lit_orm_vertex.glsl");
        c4173d.w(new ec.i(MaterialBuilder.a.OPAQUE, 0.5f, MaterialBuilder.c.BACK, false));
        c4173d.v(new a());
        MaterialBuilder.m mVar = MaterialBuilder.m.SAMPLER_2D;
        MaterialBuilder.l lVar = MaterialBuilder.l.FLOAT;
        MaterialBuilder.g gVar = MaterialBuilder.g.HIGH;
        c4173d.a(mVar, lVar, gVar, "albedo");
        c4173d.a(mVar, lVar, gVar, "opacity");
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT4;
        MaterialBuilder.g gVar2 = MaterialBuilder.g.LOW;
        c4173d.c(rVar, gVar2, "baseColor");
        c4173d.a(mVar, lVar, gVar, "emissive");
        c4173d.c(rVar, gVar2, "emissive");
        MaterialBuilder.r rVar2 = MaterialBuilder.r.FLOAT;
        c4173d.c(rVar2, gVar2, "emissiveNits");
        c4173d.a(mVar, lVar, gVar, "normalMap");
        MaterialBuilder.g gVar3 = MaterialBuilder.g.MEDIUM;
        c4173d.c(rVar2, gVar3, "normalStrength");
        c4173d.a(mVar, lVar, gVar, "ormMap");
        c4173d.a(mVar, lVar, gVar, "heightMap");
        c4173d.c(rVar2, gVar3, DecalProjector.f77444q0);
        c4173d.c(rVar2, gVar3, "heightNormalStrength");
        c4173d.c(rVar2, gVar2, DecalProjector.f77446v0);
        c4173d.c(rVar2, gVar2, DecalProjector.f77430D0);
        MaterialBuilder.r rVar3 = MaterialBuilder.r.FLOAT2;
        c4173d.c(rVar3, gVar, "albedoTilling");
        c4173d.c(rVar3, gVar, "albedoOffset");
        c4173d.c(rVar3, gVar, "normalTilling");
        c4173d.c(rVar3, gVar, "normalOffset");
        c4173d.c(rVar3, gVar, "ormTilling");
        c4173d.c(rVar3, gVar, "ormOffset");
        c4173d.c(rVar3, gVar, "heightTilling");
        c4173d.c(rVar3, gVar, "heightOffset");
        c4173d.c(rVar3, gVar, "emissiveTilling");
        c4173d.c(rVar3, gVar, "emissiveOffset");
        c4173d.c(rVar2, gVar3, "worldUVScale");
        c4173d.b(new C13320a("useWorldUV"));
        c4173d.b(new C13320a("hasHeight"));
        c4173d.b(new C13320a("discardEdges"));
        return c4173d;
    }
}
