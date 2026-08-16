package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.C12815a;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.EnumC12816b;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSettings;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;
import java.lang.constant.ConstantDescs;

public class N0 extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f91770e = "PBR Output";

    public static final int f91771f = 0;

    public static final int f91772g = 1;

    public static final int f91773h = 2;

    public static final int f91774i = 3;

    public static final int f91775j = 4;

    public static final int f91776k = 5;

    public static final int f91777l = 6;

    public static final int f91778m = 7;

    public static final int f91779n = 8;

    public static final int f91780o = 9;

    public static final int f91781p = 10;

    public static final int f91782q = 11;

    public static final int f91783r = 12;

    public final ShaderGraphSlot[] f91784c;

    public final ShaderGraphSlot[] f91785d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new N0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return N0.class;
        }

        @Override
        public String c() {
            return N0.f91770e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, N0.class);
        }

        @Override
        public String e() {
            return "Output";
        }

        @Override
        public String f() {
            return N0.f91770e;
        }

        @Override
        public boolean g() {
            return false;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public N0() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.w wVar = com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.VERTEX;
        ShaderGraphSlot shaderGraphSlot = new ShaderGraphSlot("Vertex Pos", c10, wVar);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c11 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4;
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.w wVar2 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.FRAGMENT;
        ShaderGraphSlot shaderGraphSlot2 = new ShaderGraphSlot("Base Color", c11, wVar2);
        ShaderGraphSlot shaderGraphSlot3 = new ShaderGraphSlot("Emissive", c11, wVar2);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c12 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        this.f91784c = new ShaderGraphSlot[]{shaderGraphSlot, shaderGraphSlot2, shaderGraphSlot3, new ShaderGraphSlot("Roughness", c12, wVar2), new ShaderGraphSlot("Metallic", c12, wVar2), new ShaderGraphSlot("Reflectance", c12, wVar2), new ShaderGraphSlot("Ambient Occlusion", c12, wVar2), new ShaderGraphSlot("Normal", c10, wVar2), new ShaderGraphSlot("Transmission", c12, wVar2), new ShaderGraphSlot("Absorption", c10, wVar2), new ShaderGraphSlot("IOR", c12, wVar2), new ShaderGraphSlot("Micro Thickness", c12, wVar2), new ShaderGraphSlot("Vertex Normal", c10, wVar)};
        this.f91785d = new ShaderGraphSlot[0];
        this.serializedNodeType = f91770e;
    }

    public final int[] H(ShaderGraphData graphData) {
        EnumC12816b enumC12816b;
        ShaderGraphSettings shaderGraphSettings;
        EnumC12816b enumC12816b2 = EnumC12816b.NONE;
        if (graphData == null || (shaderGraphSettings = graphData.settings) == null || (enumC12816b = shaderGraphSettings.refractionType) == null) {
            enumC12816b = enumC12816b2;
        }
        return enumC12816b != enumC12816b2 ? new int[]{0, 12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11} : new int[]{0, 12, 1, 2, 3, 4, 5, 6, 7};
    }

    public boolean I(ShaderGraphData graphData) {
        ShaderGraphSettings shaderGraphSettings;
        return (graphData == null || (shaderGraphSettings = graphData.settings) == null || shaderGraphSettings.isPostProcessing) ? false : true;
    }

    public final boolean J(ShaderGraphData data) {
        ShaderGraphSettings shaderGraphSettings;
        return (data == null || (shaderGraphSettings = data.settings) == null || (!shaderGraphSettings.isPostProcessing && shaderGraphSettings.shadingModel != com.itsmagic.engine.Engines.Graphics.ShaderGraph.u.UNLIT)) ? false : true;
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        switch (inputIndex) {
            case 1:
                return "float4(1.0)";
            case 2:
                return "float4(0.0, 0.0, 0.0, 1.0)";
            case 3:
                return "0.7";
            case 4:
                return "0.0";
            case 5:
                return Dd.c.f5125q;
            case 6:
                return "1.0";
            case 7:
                return "float3(0.0, 0.0, 1.0)";
            case 8:
                return "1.0";
            case 9:
                return "float3(0.0)";
            case 10:
                return "1.5";
            case 11:
                return "0.0";
            default:
                return null;
        }
    }

    @Override
    public boolean f() {
        return false;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        EnumC12816b enumC12816b;
        ShaderGraphSettings shaderGraphSettings;
        ShaderGraphData j10 = context.j();
        boolean J10 = J(j10);
        if (stage == com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.VERTEX) {
            if (context.k(this, 0)) {
                String a10 = C12815a.a(stage);
                String str = C12815a.b() + " * float4(" + context.g(this, 0, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3) + ", v.worldPosition.w);";
                context.h(stage, "v.worldPos = float4(" + a10 + ", v.worldPosition.w);");
                context.h(stage, "v.worldPosition = " + str + ";");
            } else {
                context.h(stage, "v.worldPos = float4(" + C12815a.a(stage) + ", v.worldPosition.w);");
            }
            if (context.k(this, 12)) {
                context.h(stage, "v.worldNormal = normalize(" + context.g(this, 12, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3) + ");");
                return;
            }
            return;
        }
        if (stage == com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.FRAGMENT) {
            context.h(stage, "material.normal = " + (!J10 ? context.g(this, 7, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3) : "float3(0.0, 0.0, 1.0)") + ";");
            context.h(stage, "prepareMaterial(material);");
            com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4;
            String g10 = context.g(this, 1, stage, c10);
            String g11 = context.g(this, 2, stage, c10);
            context.h(stage, "material.baseColor = " + g10 + ";");
            com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c11 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
            String b10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.y.b(g11, c10, c11);
            String str2 = "sg_" + j().replaceAll("[^A-Za-z0-9_]", ConstantDescs.DEFAULT_NAME) + "_em";
            context.h(stage, "float3 " + str2 + " = " + b10 + ";");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("sg_");
            sb2.append(j().replaceAll("[^A-Za-z0-9_]", ConstantDescs.DEFAULT_NAME));
            sb2.append("_lum");
            String sb3 = sb2.toString();
            context.h(stage, "float " + sb3 + " = dot(" + str2 + ", float3(0.2126, 0.7152, 0.0722));");
            StringBuilder sb4 = new StringBuilder();
            sb4.append(sb3);
            sb4.append(" = clamp(");
            sb4.append(sb3);
            sb4.append(", 0.0, 1.0);");
            context.h(stage, sb4.toString());
            context.h(stage, "material.emissive = float4(" + str2 + " * 200.0, 1.0 - " + sb3 + ");");
            if (J10) {
                return;
            }
            com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c12 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
            String g12 = context.g(this, 3, stage, c12);
            String g13 = context.g(this, 4, stage, c12);
            String g14 = context.g(this, 5, stage, c12);
            String g15 = context.g(this, 6, stage, c12);
            context.h(stage, "material.roughness = " + g12 + ";");
            context.h(stage, "material.metallic = " + g13 + ";");
            context.h(stage, "material.reflectance = " + g14 + ";");
            context.h(stage, "material.ambientOcclusion = " + g15 + ";");
            EnumC12816b enumC12816b2 = EnumC12816b.NONE;
            if (j10 == null || (shaderGraphSettings = j10.settings) == null || (enumC12816b = shaderGraphSettings.refractionType) == null) {
                enumC12816b = enumC12816b2;
            }
            if (enumC12816b != enumC12816b2) {
                String g16 = context.g(this, 8, stage, c12);
                String g17 = context.g(this, 9, stage, c11);
                String g18 = context.g(this, 10, stage, c12);
                String g19 = context.g(this, 11, stage, c12);
                context.h(stage, "material.transmission = " + g16 + ";");
                context.h(stage, "material.absorption = " + g17 + ";");
                context.h(stage, "material.ior = " + g18 + ";");
                context.h(stage, "material.microThickness = " + g19 + ";");
            }
        }
    }

    @Override
    public int l(ShaderGraphData graphData, int uiIndex) {
        ShaderGraphSettings shaderGraphSettings;
        if (graphData != null && (shaderGraphSettings = graphData.settings) != null && shaderGraphSettings.isPostProcessing) {
            return uiIndex == 0 ? 1 : -1;
        }
        if (!J(graphData)) {
            int[] H10 = H(graphData);
            if (uiIndex < 0 || uiIndex >= H10.length) {
                return -1;
            }
            return H10[uiIndex];
        }
        if (uiIndex == 0) {
            return 0;
        }
        if (uiIndex == 1) {
            return 12;
        }
        if (uiIndex == 2) {
            return 1;
        }
        return uiIndex == 3 ? 2 : -1;
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91784c;
    }

    @Override
    public ShaderGraphSlot[] n(ShaderGraphData graphData) {
        ShaderGraphSettings shaderGraphSettings;
        boolean z10 = (graphData == null || (shaderGraphSettings = graphData.settings) == null || !shaderGraphSettings.isPostProcessing) ? false : true;
        boolean J10 = J(graphData);
        if (z10) {
            return new ShaderGraphSlot[]{this.f91784c[1]};
        }
        if (J10) {
            ShaderGraphSlot[] shaderGraphSlotArr = this.f91784c;
            return new ShaderGraphSlot[]{shaderGraphSlotArr[0], shaderGraphSlotArr[12], shaderGraphSlotArr[1], shaderGraphSlotArr[2]};
        }
        int[] H10 = H(graphData);
        ShaderGraphSlot[] shaderGraphSlotArr2 = new ShaderGraphSlot[H10.length];
        for (int i10 = 0; i10 < H10.length; i10++) {
            shaderGraphSlotArr2[i10] = this.f91784c[H10[i10]];
        }
        return shaderGraphSlotArr2;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91785d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        ShaderGraphSettings shaderGraphSettings;
        boolean z10 = (graphData == null || (shaderGraphSettings = graphData.settings) == null || !shaderGraphSettings.isPostProcessing) ? false : true;
        J(graphData);
        return (z10 || J(graphData)) ? "Output" : f91770e;
    }

    @Override
    public boolean w() {
        return true;
    }
}
