package Ub;

import com.google.android.filament.Material;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterialTemplate;
import java.nio.ByteBuffer;

public class b {
    public static FilamentMaterialTemplate a(boolean justCache) {
        return r(justCache, true, MaterialBuilder.a.OPAQUE, true, true, true);
    }

    public static FilamentMaterialTemplate b(boolean justCache) {
        return r(justCache, false, MaterialBuilder.a.OPAQUE, true, true, true);
    }

    public static FilamentMaterialTemplate c(boolean justCache) {
        return r(justCache, true, MaterialBuilder.a.OPAQUE, false, false, true);
    }

    public static FilamentMaterialTemplate d(boolean justCache) {
        return r(justCache, false, MaterialBuilder.a.OPAQUE, false, false, true);
    }

    public static String e(boolean textured, boolean transparent) {
        return textured ? transparent ? "void material(inout MaterialInputs material) {\n  prepareMaterial(material);\n  float4 c = texture(materialParams_albedo, getUV0());\n  c *= materialParams.baseColor;\n  c.rgb *= c.a;\n  material.baseColor = c;\n}\n" : "void material(inout MaterialInputs material) {\n  prepareMaterial(material);\n  float4 c = texture(materialParams_albedo, getUV0());\n  c *= materialParams.baseColor;\n  material.baseColor = c;\n}\n" : transparent ? "void material(inout MaterialInputs material) {\n  prepareMaterial(material);\n  float4 c = materialParams.baseColor;\n  c.rgb *= c.a;\n  material.baseColor = c;\n}\n" : "void material(inout MaterialInputs material) {\n  prepareMaterial(material);\n  material.baseColor = materialParams.baseColor;\n}\n";
    }

    public static FilamentMaterialTemplate f(boolean justCache) {
        return r(justCache, true, MaterialBuilder.a.FADE, false, true, true);
    }

    public static FilamentMaterialTemplate g(boolean justCache) {
        return r(justCache, true, MaterialBuilder.a.FADE, false, false, true);
    }

    public static FilamentMaterialTemplate h(boolean justCache) {
        return r(justCache, false, MaterialBuilder.a.FADE, false, false, true);
    }

    public static FilamentMaterialTemplate i(boolean justCache) {
        return r(justCache, true, MaterialBuilder.a.FADE, false, true, false);
    }

    public static FilamentMaterialTemplate j(boolean justCache) {
        return r(justCache, true, MaterialBuilder.a.FADE, false, false, false);
    }

    public static FilamentMaterialTemplate k(boolean justCache) {
        return r(justCache, false, MaterialBuilder.a.FADE, false, false, false);
    }

    public static FilamentMaterialTemplate l(boolean justCache) {
        return r(justCache, false, MaterialBuilder.a.FADE, false, true, false);
    }

    public static FilamentMaterialTemplate m(boolean justCache) {
        return r(justCache, false, MaterialBuilder.a.FADE, false, true, true);
    }

    public static FilamentMaterialTemplate n(boolean justCache) {
        return r(justCache, true, MaterialBuilder.a.OPAQUE, true, true, false);
    }

    public static FilamentMaterialTemplate o(boolean justCache) {
        return r(justCache, true, MaterialBuilder.a.OPAQUE, false, false, false);
    }

    public static FilamentMaterialTemplate p(boolean justCache) {
        return r(justCache, false, MaterialBuilder.a.OPAQUE, false, false, false);
    }

    public static FilamentMaterialTemplate q(boolean justCache) {
        return r(justCache, false, MaterialBuilder.a.OPAQUE, true, true, false);
    }

    public static FilamentMaterialTemplate r(boolean justCache, boolean doubleSided, MaterialBuilder.a blendingMode, boolean depthWrite, boolean depthCulling, boolean textured) {
        int hashCode = ("gizmo:" + doubleSided + "-" + blendingMode.name() + "-" + depthWrite + "-" + depthCulling + "-" + textured).hashCode();
        if (!justCache) {
            ByteBuffer f10 = ec.b.f(hashCode);
            if (f10 != null) {
                ByteBuffer duplicate = f10.duplicate();
                duplicate.rewind();
                return new FilamentMaterialTemplate(new Material.b().b(duplicate, duplicate.remaining()));
            }
        } else if (ec.b.c(hashCode)) {
            return null;
        }
        Sb.b bVar = (Sb.b) new Sb.b().v("Gizmo-" + Tc.b.L()).V(MaterialBuilder.u.OBJECT).x(MaterialBuilder.h.MOBILE).E(MaterialBuilder.n.UNLIT).m(doubleSided).c(blendingMode);
        if (!depthWrite) {
            bVar.l(false);
        }
        if (!depthCulling) {
            bVar.k(false);
        }
        bVar.P(MaterialBuilder.r.FLOAT4, "baseColor");
        if (textured) {
            bVar.C(MaterialBuilder.t.UV0);
            bVar.D(MaterialBuilder.m.SAMPLER_2D, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, "albedo");
        }
        bVar.r(e(textured, blendingMode == MaterialBuilder.a.FADE));
        com.google.android.filament.filamat.b d10 = bVar.d();
        if (d10 == null || !d10.b()) {
            throw new RuntimeException("Falha ao compilar material!");
        }
        ByteBuffer a10 = d10.a();
        ByteBuffer duplicate2 = a10.duplicate();
        duplicate2.rewind();
        ec.b.l(hashCode, a10);
        if (justCache) {
            return null;
        }
        return new FilamentMaterialTemplate(new Material.b().b(duplicate2, duplicate2.remaining()));
    }
}
