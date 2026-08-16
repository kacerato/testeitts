package Xb;

import cc.C4173d;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.DecalProjector;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.Lit.LitLightMapBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.Lit.LitPBRBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.Lit.LitPBRRefractiveBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.Lit.LitUltraBinder;
import gc.C13320a;

public class C3196b {

    public class a implements ec.c {
        @Override
        public void a(Sb.b builder) {
            builder.s(MaterialBuilder.e.SURFACE);
            builder.E(MaterialBuilder.n.LIT);
            builder.C(MaterialBuilder.t.TANGENTS);
            builder.i(MaterialBuilder.c.BACK);
        }
    }

    public class C0783b implements ec.c {
        @Override
        public void a(Sb.b builder) {
            builder.s(MaterialBuilder.e.SURFACE);
            builder.E(MaterialBuilder.n.LIT);
            builder.C(MaterialBuilder.t.TANGENTS);
            builder.i(MaterialBuilder.c.BACK);
        }
    }

    public class c implements ec.c {
        @Override
        public void a(Sb.b builder) {
            builder.s(MaterialBuilder.e.SURFACE);
            builder.E(MaterialBuilder.n.LIT);
            builder.C(MaterialBuilder.t.TANGENTS);
            builder.A(MaterialBuilder.j.SCREEN_SPACE);
            builder.i(MaterialBuilder.c.BACK);
        }
    }

    public class d implements ec.c {
        @Override
        public void a(Sb.b builder) {
            builder.s(MaterialBuilder.e.SURFACE);
            builder.E(MaterialBuilder.n.LIT);
            builder.C(MaterialBuilder.t.TANGENTS);
            builder.i(MaterialBuilder.c.BACK);
        }
    }

    public static C4173d a() {
        C4173d c4173d = new C4173d("Lit/LightMap", new LitLightMapBinder());
        c4173d.s(true);
        c4173d.r("Lightmap/easy_lit_lightmap_frag.glsl");
        c4173d.u("Lightmap/easy_lit_lightmap_vertex.glsl");
        c4173d.w(new ec.i(MaterialBuilder.a.OPAQUE, 0.5f, MaterialBuilder.c.BACK, false));
        c4173d.v(new d());
        MaterialBuilder.m mVar = MaterialBuilder.m.SAMPLER_2D;
        MaterialBuilder.l lVar = MaterialBuilder.l.FLOAT;
        MaterialBuilder.g gVar = MaterialBuilder.g.HIGH;
        c4173d.a(mVar, lVar, gVar, "albedo");
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT4;
        c4173d.d(rVar, "baseColor");
        c4173d.a(mVar, lVar, gVar, "emissive");
        c4173d.d(rVar, "emissive");
        MaterialBuilder.r rVar2 = MaterialBuilder.r.FLOAT;
        c4173d.d(rVar2, "emissiveNits");
        c4173d.a(mVar, lVar, gVar, "normalMap");
        c4173d.c(rVar2, MaterialBuilder.g.MEDIUM, "normalStrength");
        c4173d.a(mVar, lVar, gVar, "roughnessMap");
        c4173d.a(mVar, lVar, gVar, "metallicMap");
        c4173d.a(mVar, lVar, gVar, "aoMap");
        c4173d.a(mVar, lVar, gVar, "lightMap");
        c4173d.d(rVar2, "lightIntensity");
        MaterialBuilder.r rVar3 = MaterialBuilder.r.FLOAT2;
        c4173d.c(rVar3, gVar, "albedoTilling");
        c4173d.c(rVar3, gVar, "albedoOffset");
        c4173d.c(rVar3, gVar, "normalTilling");
        c4173d.c(rVar3, gVar, "normalOffset");
        c4173d.c(rVar3, gVar, "roughnessTilling");
        c4173d.c(rVar3, gVar, "roughnessOffset");
        c4173d.c(rVar3, gVar, "metallicTilling");
        c4173d.c(rVar3, gVar, "metallicOffset");
        c4173d.c(rVar3, gVar, "aoTilling");
        c4173d.c(rVar3, gVar, "aoOffset");
        c4173d.c(rVar3, gVar, "heightTilling");
        c4173d.c(rVar3, gVar, "heightOffset");
        c4173d.c(rVar3, gVar, "emissiveTilling");
        c4173d.c(rVar3, gVar, "emissiveOffset");
        return c4173d;
    }

    public static C4173d b() {
        C4173d c4173d = new C4173d("Lit/PBR", new LitPBRBinder());
        c4173d.s(true);
        c4173d.r("PBR/easy_lit_pbr_frag.glsl");
        c4173d.u("PBR/easy_lit_pbr_vertex.glsl");
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
        c4173d.a(mVar, lVar, gVar, "roughnessMap");
        c4173d.a(mVar, lVar, gVar, "metallicMap");
        c4173d.a(mVar, lVar, gVar, "aoMap");
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
        c4173d.c(rVar3, gVar, "roughnessTilling");
        c4173d.c(rVar3, gVar, "roughnessOffset");
        c4173d.c(rVar3, gVar, "metallicTilling");
        c4173d.c(rVar3, gVar, "metallicOffset");
        c4173d.c(rVar3, gVar, "aoTilling");
        c4173d.c(rVar3, gVar, "aoOffset");
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

    public static C4173d c() {
        C4173d c4173d = new C4173d("Lit/Refractive", new LitPBRRefractiveBinder());
        c4173d.s(true);
        c4173d.t(true);
        c4173d.r("PBR/easy_lit_refractive_frag.glsl");
        c4173d.u("PBR/easy_lit_refractive_vertex.glsl");
        c4173d.w(new ec.i(MaterialBuilder.a.OPAQUE, 0.5f, MaterialBuilder.c.BACK, false, MaterialBuilder.k.THIN));
        c4173d.v(new c());
        MaterialBuilder.m mVar = MaterialBuilder.m.SAMPLER_2D;
        MaterialBuilder.l lVar = MaterialBuilder.l.FLOAT;
        MaterialBuilder.g gVar = MaterialBuilder.g.HIGH;
        c4173d.a(mVar, lVar, gVar, "albedo");
        c4173d.a(mVar, lVar, gVar, "opacity");
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT4;
        c4173d.d(rVar, "baseColor");
        c4173d.a(mVar, lVar, gVar, "emissive");
        c4173d.d(rVar, "emissive");
        MaterialBuilder.r rVar2 = MaterialBuilder.r.FLOAT;
        c4173d.d(rVar2, "emissiveNits");
        c4173d.a(mVar, lVar, gVar, "normalMap");
        MaterialBuilder.g gVar2 = MaterialBuilder.g.MEDIUM;
        c4173d.c(rVar2, gVar2, "normalStrength");
        c4173d.a(mVar, lVar, gVar, "roughnessMap");
        c4173d.a(mVar, lVar, gVar, "metallicMap");
        c4173d.a(mVar, lVar, gVar, "aoMap");
        c4173d.d(rVar2, "transmission");
        c4173d.d(MaterialBuilder.r.FLOAT3, "absorption");
        c4173d.d(rVar2, "ior");
        c4173d.d(rVar2, "microThickness");
        c4173d.d(rVar2, "dispersion");
        MaterialBuilder.r rVar3 = MaterialBuilder.r.FLOAT2;
        c4173d.c(rVar3, gVar, "albedoTilling");
        c4173d.c(rVar3, gVar, "albedoOffset");
        c4173d.c(rVar3, gVar, "normalTilling");
        c4173d.c(rVar3, gVar, "normalOffset");
        c4173d.c(rVar3, gVar, "roughnessTilling");
        c4173d.c(rVar3, gVar, "roughnessOffset");
        c4173d.c(rVar3, gVar, "metallicTilling");
        c4173d.c(rVar3, gVar, "metallicOffset");
        c4173d.c(rVar3, gVar, "aoTilling");
        c4173d.c(rVar3, gVar, "aoOffset");
        c4173d.c(rVar3, gVar, "heightTilling");
        c4173d.c(rVar3, gVar, "heightOffset");
        c4173d.c(rVar3, gVar, "emissiveTilling");
        c4173d.c(rVar3, gVar, "emissiveOffset");
        c4173d.c(rVar2, gVar2, "worldUVScale");
        c4173d.b(new C13320a("useWorldUV"));
        c4173d.b(new C13320a("refractionTypeIsThin"));
        c4173d.b(new C13320a("refractionTypeIsSolid"));
        return c4173d;
    }

    public static C4173d d() {
        C4173d c4173d = new C4173d("Lit/Ultra", new LitUltraBinder());
        c4173d.s(true);
        c4173d.r("PBR/easy_lit_ultra_frag.glsl");
        c4173d.u("PBR/easy_lit_ultra_vertex.glsl");
        c4173d.w(new ec.i(MaterialBuilder.a.OPAQUE, 0.5f, MaterialBuilder.c.BACK, false));
        c4173d.v(new C0783b());
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
        c4173d.c(rVar2, gVar2, "hasNormalMap");
        c4173d.a(mVar, lVar, gVar, "roughnessMap");
        c4173d.c(rVar2, gVar2, "hasRoughnessMap");
        c4173d.a(mVar, lVar, gVar, "metallicMap");
        c4173d.a(mVar, lVar, gVar, "aoMap");
        c4173d.c(rVar2, gVar2, "hasAoMap");
        c4173d.a(mVar, lVar, gVar, "heightMap");
        c4173d.c(rVar2, gVar2, "hasHeightMap");
        c4173d.c(rVar2, gVar3, DecalProjector.f77444q0);
        c4173d.c(rVar2, gVar3, "heightNormalStrength");
        c4173d.c(rVar2, gVar2, DecalProjector.f77446v0);
        c4173d.c(rVar2, gVar2, DecalProjector.f77430D0);
        MaterialBuilder.r rVar3 = MaterialBuilder.r.FLOAT2;
        c4173d.c(rVar3, gVar, "albedoTilling");
        c4173d.c(rVar3, gVar, "albedoOffset");
        c4173d.c(rVar3, gVar, "normalTilling");
        c4173d.c(rVar3, gVar, "normalOffset");
        c4173d.c(rVar3, gVar, "roughnessTilling");
        c4173d.c(rVar3, gVar, "roughnessOffset");
        c4173d.c(rVar3, gVar, "metallicTilling");
        c4173d.c(rVar3, gVar, "metallicOffset");
        c4173d.c(rVar3, gVar, "aoTilling");
        c4173d.c(rVar3, gVar, "aoOffset");
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
