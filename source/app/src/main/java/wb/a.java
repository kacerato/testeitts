package Wb;

import cc.C4173d;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.CarPaint.CarPaintBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.CarPaint.CarbonFiberBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.CarPaint.IridescentBinder;

public class a {

    public class C0771a implements ec.c {
        @Override
        public void a(Sb.b builder) {
            builder.s(MaterialBuilder.e.SURFACE);
            builder.E(MaterialBuilder.n.LIT);
            builder.C(MaterialBuilder.t.TANGENTS);
            builder.i(MaterialBuilder.c.BACK);
        }
    }

    public static C4173d a(String name, String fragment, String vertex, CarPaintBinder binder) {
        C4173d c4173d = new C4173d(name, binder);
        c4173d.s(true);
        c4173d.r(fragment);
        c4173d.u(vertex);
        c4173d.w(new ec.i(MaterialBuilder.a.OPAQUE, 0.5f, MaterialBuilder.c.BACK, false));
        c4173d.v(new C0771a());
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT4;
        MaterialBuilder.g gVar = MaterialBuilder.g.LOW;
        c4173d.c(rVar, gVar, "baseColor");
        c4173d.c(rVar, gVar, "fiberColorA");
        c4173d.c(rVar, gVar, "fiberColorB");
        MaterialBuilder.r rVar2 = MaterialBuilder.r.FLOAT;
        c4173d.c(rVar2, MaterialBuilder.g.HIGH, "weaveScale");
        MaterialBuilder.g gVar2 = MaterialBuilder.g.MEDIUM;
        c4173d.c(rVar2, gVar2, "weaveContrast");
        c4173d.c(rVar2, gVar2, "fiberDepth");
        c4173d.c(rVar2, gVar2, "roughness");
        c4173d.c(rVar2, gVar2, "metallic");
        c4173d.c(rVar2, gVar2, "normalStrength");
        c4173d.c(rVar, gVar, "shiftColorA");
        c4173d.c(rVar, gVar, "shiftColorB");
        c4173d.c(rVar, gVar, "flakeColor");
        c4173d.c(rVar2, gVar2, "filmThickness");
        c4173d.c(rVar2, gVar2, "iridescenceStrength");
        c4173d.c(rVar2, gVar2, "flakeIntensity");
        return c4173d;
    }

    public static C4173d b() {
        return a("CarPaint/CarbonFiber", "CarPaint/easy_carpaint_carbonfiber_frag.glsl", "CarPaint/easy_carpaint_carbonfiber_vertex.glsl", new CarbonFiberBinder());
    }

    public static C4173d c() {
        return a("CarPaint/Iridescent", "CarPaint/easy_carpaint_iridescent_frag.glsl", "CarPaint/easy_carpaint_iridescent_vertex.glsl", new IridescentBinder());
    }
}
