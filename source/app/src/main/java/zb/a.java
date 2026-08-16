package Zb;

import cc.C4173d;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.PS1.PS1Binder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.PS1.PS1LitBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.PS1.PS1UnlitBinder;
import ec.i;

public class a {

    public class C0819a implements ec.c {

        public final MaterialBuilder.n f31103a;

        public C0819a(final MaterialBuilder.n val$shading) {
            this.f31103a = val$shading;
        }

        @Override
        public void a(Sb.b builder) {
            builder.s(MaterialBuilder.e.SURFACE);
            builder.E(this.f31103a);
            builder.C(MaterialBuilder.t.TANGENTS);
            builder.i(MaterialBuilder.c.BACK);
        }
    }

    public static C4173d a(String name, final MaterialBuilder.n shading, String fragment, String vertex, PS1Binder binder) {
        C4173d c4173d = new C4173d(name, binder);
        c4173d.s(shading == MaterialBuilder.n.LIT);
        c4173d.r("PS1/" + fragment);
        c4173d.u("PS1/" + vertex);
        c4173d.w(new i(MaterialBuilder.a.OPAQUE, 0.5f, MaterialBuilder.c.BACK, false));
        c4173d.v(new C0819a(shading));
        MaterialBuilder.m mVar = MaterialBuilder.m.SAMPLER_2D;
        MaterialBuilder.l lVar = MaterialBuilder.l.FLOAT;
        MaterialBuilder.g gVar = MaterialBuilder.g.HIGH;
        c4173d.a(mVar, lVar, gVar, "albedo");
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT4;
        MaterialBuilder.g gVar2 = MaterialBuilder.g.LOW;
        c4173d.c(rVar, gVar2, "baseColor");
        c4173d.c(MaterialBuilder.r.INT, gVar2, "depthMode");
        MaterialBuilder.r rVar2 = MaterialBuilder.r.FLOAT2;
        c4173d.c(rVar2, MaterialBuilder.g.MEDIUM, "albedoSize");
        c4173d.c(rVar2, gVar2, "fakeSize");
        c4173d.c(rVar2, gVar, "albedoTilling");
        c4173d.c(rVar2, gVar, "albedoOffset");
        return c4173d;
    }

    public static C4173d b() {
        return a("Lit/PS1", MaterialBuilder.n.LIT, "easy_ps1_lit_frag.glsl", "easy_ps1_lit_vertex.glsl", new PS1LitBinder());
    }

    public static C4173d c() {
        return a("Unlit/PS1", MaterialBuilder.n.UNLIT, "easy_ps1_unlit_frag.glsl", "easy_ps1_unlit_vertex.glsl", new PS1UnlitBinder());
    }
}
