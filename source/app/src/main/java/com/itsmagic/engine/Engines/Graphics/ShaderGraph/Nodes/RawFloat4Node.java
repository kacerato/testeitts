package com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes;

import Tc.b;
import com.ardor3d.util.export.xml.XMLExporter;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
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

public class RawFloat4Node extends ShaderGraphNode implements s {

    public static final String f81190d = "RawFloat4";

    @Expose
    public Vector4 value = new Vector4();

    public final ShaderGraphSlot[] f81191c = {new ShaderGraphSlot(XMLExporter.ELEMENT_VALUE, C.FLOAT4)};

    public class a implements q {
        @Override
        public ShaderGraphNode a() {
            return new RawFloat4Node();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return RawFloat4Node.class;
        }

        @Override
        public String c() {
            return "RawFloat4";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, RawFloat4Node.class);
        }

        @Override
        public String e() {
            return "Input/Vectors";
        }

        @Override
        public String f() {
            return "Float4";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        p.a(new a());
    }

    public RawFloat4Node() {
        this.serializedNodeType = "RawFloat4";
    }

    private static String H(float v10) {
        return b.p(v10, 6);
    }

    private String J() {
        Vector4 vector4 = this.value;
        float x10 = vector4 != null ? vector4.getX() : 0.0f;
        Vector4 vector42 = this.value;
        float y10 = vector42 != null ? vector42.getY() : 0.0f;
        Vector4 vector43 = this.value;
        float z10 = vector43 != null ? vector43.getZ() : 0.0f;
        Vector4 vector44 = this.value;
        return "float4(" + H(x10) + ", " + H(y10) + ", " + H(z10) + ", " + H(vector44 != null ? vector44.f() : 0.0f) + ")";
    }

    public String I() {
        return "sgp_" + j().replaceAll("[^A-Za-z0-9_]", ConstantDescs.DEFAULT_NAME);
    }

    @Override
    public void a(FilamentMaterial material, Material engineMaterial) {
        if (material == null || this.value == null || !this.exposeInInspector) {
            return;
        }
        material.E(I(), this.value.getX(), this.value.getY(), this.value.getZ(), this.value.f());
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
        return this.f81191c;
    }

    @Override
    public w u() {
        return w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Float4";
    }

    @Override
    public boolean z() {
        return true;
    }
}
