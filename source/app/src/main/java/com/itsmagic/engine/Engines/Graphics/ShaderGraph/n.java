package com.itsmagic.engine.Engines.Graphics.ShaderGraph;

import cc.C4171b;
import cc.C4173d;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ec.EnumC13053a;
import nc.C14377b;

public class n {

    public final f f81381a;

    public final ec.h f81382b;

    public final C4171b f81383c;

    public final ShaderGraphData f81384d;

    public static class a {

        public static final int[] f81385a;

        static {
            int[] iArr = new int[EnumC12816b.values().length];
            f81385a = iArr;
            try {
                iArr[EnumC12816b.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f81385a[EnumC12816b.SOLID.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f81385a[EnumC12816b.THIN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public n(f compilation, ec.h varianceHandler, C4171b renderPassTemplate, ShaderGraphData graphData) {
        this.f81381a = compilation;
        this.f81382b = varianceHandler;
        this.f81383c = renderPassTemplate;
        this.f81384d = graphData;
    }

    public static n b(f compilation, final ShaderGraphData graphData, final boolean forcePreviewUnlit) {
        ShaderGraphSettings shaderGraphSettings;
        EnumC12816b enumC12816b;
        ShaderGraphSettings shaderGraphSettings2;
        ShaderGraphSettings shaderGraphSettings3;
        ShaderGraphSettings shaderGraphSettings4;
        if (compilation == null) {
            throw new NullPointerException("compilation");
        }
        if (compilation.a()) {
            throw new RuntimeException("Shader graph compile errors: " + ((Object) compilation.f81319e));
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList(compilation.f81317c);
        SteppedArrayList steppedArrayList2 = new SteppedArrayList(compilation.f81318d);
        boolean z10 = (graphData == null || (shaderGraphSettings4 = graphData.settings) == null || shaderGraphSettings4.isPostProcessing) ? false : true;
        String str = compilation.f81316b;
        String str2 = compilation.f81315a;
        if (z10) {
            str = v.c(C4173d.n(C4173d.f34731r)).replace("[INSERT_EASY_CODE]", str);
            str2 = v.c(C4173d.n(C4173d.f34732s)).replace("[INSERT_EASY_CODE]", str2);
        }
        ec.c cVar = new ec.c() {
            @Override
            public final void a(Sb.b bVar) {
                n.g(forcePreviewUnlit, graphData, bVar);
            }
        };
        gc.e eVar = new gc.e(new SteppedArrayList(), new SteppedArrayList(), str);
        boolean z11 = (forcePreviewUnlit || graphData == null || (shaderGraphSettings3 = graphData.settings) == null || shaderGraphSettings3.shadingModel == u.UNLIT) ? false : true;
        ec.h hVar = z10 ? new ec.h(eVar, str2, cVar, steppedArrayList, steppedArrayList2, true, z10, z11, (!z11 || graphData == null || (shaderGraphSettings2 = graphData.settings) == null || shaderGraphSettings2.refractionType == EnumC12816b.NONE) ? false : true) : new ec.h(eVar, str2, cVar, steppedArrayList, steppedArrayList2, true, z10);
        EnumC12816b enumC12816b2 = EnumC12816b.NONE;
        if (graphData != null && (shaderGraphSettings = graphData.settings) != null && (enumC12816b = shaderGraphSettings.refractionType) != null) {
            enumC12816b2 = enumC12816b;
        }
        int i10 = a.f81385a[enumC12816b2.ordinal()];
        return new n(compilation, hVar, new C4171b(hVar, steppedArrayList, new ec.i(MaterialBuilder.a.OPAQUE, 0.5f, MaterialBuilder.c.BACK, false, i10 != 1 ? i10 != 2 ? MaterialBuilder.k.THIN : MaterialBuilder.k.SOLID : null, true, true)), graphData);
    }

    public static n d(Material material, ShaderGraphData graphData) {
        if (graphData == null) {
            throw new NullPointerException("graphData");
        }
        graphData.e();
        A.h(graphData);
        ShaderGraphNode h10 = graphData.h();
        if (h10 != null) {
            return b(new h().h(graphData, h10), graphData, false);
        }
        throw new RuntimeException("Shader graph output node not found");
    }

    public static n e(ShaderGraphData graphData, ShaderGraphNode targetNode) {
        if (graphData == null || targetNode == null) {
            throw null;
        }
        graphData.e();
        return b(new h().h(graphData, targetNode), graphData, true);
    }

    public static n f(f compilation, ShaderGraphData graphData) {
        return b(compilation, graphData, false);
    }

    public static void g(boolean z10, ShaderGraphData shaderGraphData, Sb.b bVar) {
        ShaderGraphSettings shaderGraphSettings;
        bVar.s(MaterialBuilder.e.SURFACE);
        bVar.T(MaterialBuilder.s.CUSTOM0, "worldPos");
        if (z10) {
            bVar.E(MaterialBuilder.n.UNLIT);
        } else {
            bVar.E((shaderGraphData == null || (shaderGraphSettings = shaderGraphData.settings) == null || shaderGraphSettings.shadingModel != u.UNLIT) ? MaterialBuilder.n.LIT : MaterialBuilder.n.UNLIT);
        }
        if (shaderGraphData.settings.refractionType != EnumC12816b.NONE) {
            bVar.B(MaterialBuilder.k.THIN);
            bVar.A(MaterialBuilder.j.SCREEN_SPACE);
        }
        bVar.C(MaterialBuilder.t.UV0);
        bVar.C(MaterialBuilder.t.TANGENTS);
    }

    public dc.j c(Material material) {
        ShaderGraphSettings shaderGraphSettings;
        ShaderGraphBinder shaderGraphBinder = new ShaderGraphBinder();
        ShaderGraphData shaderGraphData = this.f81384d;
        if (shaderGraphData != null) {
            shaderGraphBinder.d1(shaderGraphData);
        }
        f fVar = this.f81381a;
        shaderGraphBinder.a1(fVar.f81317c, fVar.f81318d);
        ShaderGraphData shaderGraphData2 = this.f81384d;
        if (shaderGraphData2 != null && (shaderGraphSettings = shaderGraphData2.settings) != null && !shaderGraphSettings.isPostProcessing) {
            shaderGraphBinder.k0(new nc.h());
            shaderGraphBinder.g0(new C14377b());
        }
        return new dc.j(A.f81159a, shaderGraphBinder, C4171b.b(this.f81383c), material, false);
    }

    public void h() {
        ec.i g10 = this.f81383c.g();
        if (g10 == null) {
            g10 = new ec.i(MaterialBuilder.a.OPAQUE, 0.5f, MaterialBuilder.c.BACK, false, MaterialBuilder.k.THIN, true, true);
        }
        this.f81382b.C(g10);
    }

    public void i(EnumC13053a blendingMode, boolean doubleSided, boolean drawInFront, EnumC12816b refractionType) {
        ShaderGraphSettings shaderGraphSettings;
        EnumC12816b enumC12816b;
        if (blendingMode == null) {
            blendingMode = EnumC13053a.OPAQUE;
        }
        EnumC12816b enumC12816b2 = EnumC12816b.NONE;
        ShaderGraphData shaderGraphData = this.f81384d;
        if (shaderGraphData != null && (shaderGraphSettings = shaderGraphData.settings) != null && (enumC12816b = shaderGraphSettings.refractionType) != null) {
            enumC12816b2 = enumC12816b;
        }
        int i10 = a.f81385a[enumC12816b2.ordinal()];
        this.f81382b.C(new ec.i(MaterialBuilder.a.valueOf(blendingMode.name()), 0.5f, MaterialBuilder.c.BACK, doubleSided, i10 != 1 ? i10 != 2 ? MaterialBuilder.k.THIN : MaterialBuilder.k.SOLID : null, !drawInFront, !drawInFront));
    }
}
