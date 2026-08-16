package u9;

import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.DecalProjector;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ec.e;
import ec.f;
import ec.g;
import ec.h;
import ec.i;
import mc.C14207a;

public class C15584d {

    public static e f118703a;

    public static e f118704b;

    public static e f118705c;

    public class a implements ec.c {
        @Override
        public void a(Sb.b builder) {
            builder.s(MaterialBuilder.e.SURFACE);
            builder.E(MaterialBuilder.n.LIT);
            builder.C(MaterialBuilder.t.UV0);
            builder.C(MaterialBuilder.t.TANGENTS);
            builder.i(MaterialBuilder.c.BACK);
            builder.k(true);
            builder.l(true);
        }
    }

    public class b implements ec.c {
        @Override
        public void a(Sb.b builder) {
            builder.s(MaterialBuilder.e.SURFACE);
            builder.E(MaterialBuilder.n.LIT);
            builder.C(MaterialBuilder.t.UV0);
            builder.C(MaterialBuilder.t.TANGENTS);
            builder.i(MaterialBuilder.c.BACK);
            builder.k(true);
            builder.l(false);
        }
    }

    public class c implements ec.c {
        @Override
        public void a(Sb.b builder) {
            builder.s(MaterialBuilder.e.SURFACE);
            builder.E(MaterialBuilder.n.UNLIT);
            builder.C(MaterialBuilder.t.UV0);
            builder.C(MaterialBuilder.t.TANGENTS);
            builder.i(MaterialBuilder.c.NONE);
            builder.k(true);
            builder.l(false);
        }
    }

    public static void a() {
        f118705c = e().r(new i(MaterialBuilder.a.TRANSPARENT, 0.01f, MaterialBuilder.c.NONE, false, null, false, true), "STerrainBrush-" + Tc.b.L());
    }

    public static void b() {
        f118703a = g().r(new i(MaterialBuilder.a.OPAQUE, 0.01f, MaterialBuilder.c.BACK, false), "STerrain-" + Tc.b.L());
    }

    public static void c() {
        f118704b = i().r(new i(MaterialBuilder.a.FADE, 0.01f, MaterialBuilder.c.BACK, false), "STerrain-" + Tc.b.L());
    }

    public static e d() {
        return f118705c;
    }

    public static h e() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        steppedArrayList.add(new f(MaterialBuilder.r.FLOAT4, MaterialBuilder.g.LOW, "baseColor"));
        steppedArrayList2.add(new g(MaterialBuilder.m.SAMPLER_2D, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, "brushMap"));
        return new h(new gc.e(new SteppedArrayList(), new SteppedArrayList(), j("brush_preview_frag.glsl")), new c(), steppedArrayList, steppedArrayList2, false);
    }

    public static e f() {
        return f118703a;
    }

    public static h g() {
        return new h(new gc.e(new SteppedArrayList(), new SteppedArrayList(), j("lit_a_frag.glsl")), new a(), new SteppedArrayList(), new SteppedArrayList(), false);
    }

    public static e h() {
        return f118704b;
    }

    public static h i() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        MaterialBuilder.g gVar = MaterialBuilder.g.MEDIUM;
        steppedArrayList.add(new f(rVar, gVar, "maxHeight"));
        MaterialBuilder.g gVar2 = MaterialBuilder.g.HIGH;
        steppedArrayList.add(new f(rVar, gVar2, "uvStep"));
        MaterialBuilder.m mVar = MaterialBuilder.m.SAMPLER_2D;
        MaterialBuilder.l lVar = MaterialBuilder.l.FLOAT;
        steppedArrayList2.add(new g(mVar, lVar, gVar2, "layer1Map"));
        steppedArrayList2.add(new g(mVar, lVar, gVar2, "albedo1R"));
        steppedArrayList2.add(new g(mVar, lVar, gVar2, "metallic1R"));
        steppedArrayList2.add(new g(mVar, lVar, gVar2, "nm1R"));
        steppedArrayList2.add(new g(mVar, lVar, gVar2, "heightMap"));
        MaterialBuilder.g gVar3 = MaterialBuilder.g.LOW;
        steppedArrayList.add(new f(rVar, gVar3, "enableHeight"));
        steppedArrayList.add(new f(rVar, gVar, DecalProjector.f77444q0));
        steppedArrayList.add(new f(rVar, gVar, "heightNormalStrength"));
        steppedArrayList.add(new f(rVar, gVar3, DecalProjector.f77446v0));
        steppedArrayList.add(new f(rVar, gVar3, DecalProjector.f77430D0));
        steppedArrayList.add(new f(rVar, gVar, "layer1Sizes"));
        steppedArrayList.add(new f(rVar, gVar3, "layer1Roughness"));
        steppedArrayList.add(new f(rVar, gVar3, "layer1Specular"));
        return new h(new gc.e(new SteppedArrayList(), new SteppedArrayList(), j("lit_b_frag.glsl")), new b(), steppedArrayList, steppedArrayList2, false);
    }

    public static String j(String file) {
        return C14207a.a("Shaders/Terrain/" + file);
    }

    public static void k() {
        g().C(new i(MaterialBuilder.a.OPAQUE, 0.01f, MaterialBuilder.c.BACK, false));
    }

    public static void l() {
        g().E(new i(MaterialBuilder.a.OPAQUE, 0.01f, MaterialBuilder.c.BACK, false));
    }

    public static void m() {
        i().C(new i(MaterialBuilder.a.FADE, 0.01f, MaterialBuilder.c.BACK, false));
    }

    public static void n() {
        i().E(new i(MaterialBuilder.a.FADE, 0.01f, MaterialBuilder.c.BACK, false));
    }

    public static void o() {
        e().C(new i(MaterialBuilder.a.TRANSPARENT, 0.01f, MaterialBuilder.c.NONE, false, null, false, true));
    }

    public static void p() {
        e().E(new i(MaterialBuilder.a.TRANSPARENT, 0.01f, MaterialBuilder.c.NONE, false, null, false, true));
    }
}
