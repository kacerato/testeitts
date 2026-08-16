package com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes;

import Tc.b;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.C;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.g;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.p;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.q;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.s;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.w;
import ec.f;
import java.lang.constant.ConstantDescs;

public class RawColorNode extends ShaderGraphNode implements s {

    public static final String f81181d = "RawColor";

    @Expose
    public ColorINT value = new ColorINT(1.0f, 1.0f, 1.0f, 1.0f);

    public final ShaderGraphSlot[] f81182c = {new ShaderGraphSlot(SerializableShaderEntry.f81153g, C.FLOAT4)};

    public class a implements q {
        @Override
        public ShaderGraphNode a() {
            return new RawColorNode();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return RawColorNode.class;
        }

        @Override
        public String c() {
            return "RawColor";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, RawColorNode.class);
        }

        @Override
        public String e() {
            return "Input";
        }

        @Override
        public String f() {
            return SerializableShaderEntry.f81153g;
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        p.a(new a());
    }

    public RawColorNode() {
        this.serializedNodeType = "RawColor";
    }

    public static String H(float v10) {
        return b.p(v10, 6);
    }

    public String I() {
        return "sgp_" + j().replaceAll("[^A-Za-z0-9_]", ConstantDescs.DEFAULT_NAME);
    }

    public final String J() {
        ColorINT colorINT = this.value;
        float w10 = colorINT != null ? colorINT.w() : 1.0f;
        ColorINT colorINT2 = this.value;
        float u10 = colorINT2 != null ? colorINT2.u() : 1.0f;
        ColorINT colorINT3 = this.value;
        float s10 = colorINT3 != null ? colorINT3.s() : 1.0f;
        ColorINT colorINT4 = this.value;
        return "float4(" + H(w10) + ", " + H(u10) + ", " + H(s10) + ", " + H(colorINT4 != null ? colorINT4.r() : 1.0f) + ")";
    }

    @Override
    public void a(FilamentMaterial material, Material engineMaterial) {
        if (material == null || this.value == null || !this.exposeInInspector) {
            return;
        }
        material.E(I(), this.value.w(), this.value.u(), this.value.s(), this.value.r());
    }

    @Override
    public String b() {
        return I();
    }

    @Override
    public void h(g context, w stage) {
        if (!this.exposeInInspector) {
            context.d(this, 0, stage, J(), C.FLOAT4);
            return;
        }
        String I10 = I();
        context.i(new f(MaterialBuilder.r.FLOAT4, I10));
        context.d(this, 0, stage, "materialParams." + I10, C.FLOAT4);
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f81182c;
    }

    @Override
    public w u() {
        return w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return SerializableShaderEntry.f81153g;
    }

    @Override
    public boolean z() {
        return true;
    }
}
