package com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes;

import com.ardor3d.util.export.xml.XMLExporter;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.C;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphAttribute;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSettings;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.g;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.p;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.q;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.w;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.z;
import ec.f;
import java.util.List;

public class AttributeAccessNode extends ShaderGraphNode {

    public static final String f81160d = "AttributeAccess";

    @Expose
    public String attributeId = "";

    public final ShaderGraphSlot[] f81161c = {new ShaderGraphSlot(XMLExporter.ELEMENT_VALUE, C.DYNAMIC)};

    public class a implements q {
        @Override
        public ShaderGraphNode a() {
            return new AttributeAccessNode();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return AttributeAccessNode.class;
        }

        @Override
        public String c() {
            return AttributeAccessNode.f81160d;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, AttributeAccessNode.class);
        }

        @Override
        public String e() {
            return "Input";
        }

        @Override
        public String f() {
            return "Attribute";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    public static class b {

        public static final int[] f81162a;

        static {
            int[] iArr = new int[C.values().length];
            f81162a = iArr;
            try {
                iArr[C.FLOAT2.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f81162a[C.FLOAT3.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f81162a[C.FLOAT4.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f81162a[C.COLOR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f81162a[C.TEXTURE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f81162a[C.CUBEMAP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f81162a[C.NUMBER01.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f81162a[C.NUMBER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    static {
        p.a(new a());
    }

    public AttributeAccessNode() {
        this.serializedNodeType = f81160d;
        this.exposeInInspector = false;
    }

    @Override
    public C D(int index, z resolver) {
        ShaderGraphAttribute H10 = H(resolver instanceof g ? ((g) resolver).j() : resolver != null ? resolver.a() : null);
        return H10 != null ? H10.type : C.NUMBER;
    }

    public final ShaderGraphAttribute H(ShaderGraphData graphData) {
        ShaderGraphSettings shaderGraphSettings;
        List<ShaderGraphAttribute> list;
        String str;
        if (graphData != null && (shaderGraphSettings = graphData.settings) != null && (list = shaderGraphSettings.attributes) != null) {
            for (ShaderGraphAttribute shaderGraphAttribute : list) {
                if (shaderGraphAttribute != null && (str = shaderGraphAttribute.f81224id) != null && str.equals(this.attributeId)) {
                    return shaderGraphAttribute;
                }
            }
        }
        return null;
    }

    @Override
    public void h(g context, w stage) {
        ShaderGraphAttribute H10 = H(context.j());
        C c10 = H10 != null ? H10.type : C.NUMBER;
        String a10 = H10 != null ? H10.a() : "sga_missing";
        switch (b.f81162a[c10.ordinal()]) {
            case 1:
                context.i(new f(MaterialBuilder.r.FLOAT2, a10));
                context.d(this, 0, stage, "materialParams." + a10, C.FLOAT2);
                return;
            case 2:
                context.i(new f(MaterialBuilder.r.FLOAT3, a10));
                context.d(this, 0, stage, "materialParams." + a10, C.FLOAT3);
                return;
            case 3:
                context.i(new f(MaterialBuilder.r.FLOAT4, a10));
                context.d(this, 0, stage, "materialParams." + a10, C.FLOAT4);
                return;
            case 4:
                context.i(new f(MaterialBuilder.r.FLOAT4, a10));
                context.d(this, 0, stage, "materialParams." + a10, C.COLOR);
                return;
            case 5:
                context.e(new ec.g(MaterialBuilder.m.SAMPLER_2D, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, a10));
                context.d(this, 0, stage, "materialParams_" + a10, C.TEXTURE);
                return;
            case 6:
                context.e(new ec.g(MaterialBuilder.m.SAMPLER_CUBEMAP, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, a10));
                context.d(this, 0, stage, "materialParams_" + a10, C.CUBEMAP);
                return;
            case 7:
                context.i(new f(MaterialBuilder.r.FLOAT, a10));
                context.d(this, 0, stage, "materialParams." + a10, C.NUMBER01);
                return;
            default:
                context.i(new f(MaterialBuilder.r.FLOAT, a10));
                context.d(this, 0, stage, "materialParams." + a10, C.NUMBER);
                return;
        }
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f81161c;
    }

    @Override
    public ShaderGraphSlot[] r(ShaderGraphData graphData) {
        ShaderGraphAttribute H10 = H(graphData);
        return new ShaderGraphSlot[]{new ShaderGraphSlot(XMLExporter.ELEMENT_VALUE, H10 != null ? H10.type : C.NUMBER)};
    }

    @Override
    public w u() {
        return w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        ShaderGraphAttribute H10 = H(graphData);
        return H10 != null ? H10.name : "Attribute";
    }

    @Override
    public boolean x() {
        return true;
    }

    @Override
    public boolean y() {
        return false;
    }
}
