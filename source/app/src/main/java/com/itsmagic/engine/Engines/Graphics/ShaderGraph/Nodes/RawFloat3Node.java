package com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes;

import Tc.b;
import com.ardor3d.util.export.xml.XMLExporter;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
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

public class RawFloat3Node extends ShaderGraphNode implements s {

    public static final String f81188d = "RawFloat3";

    @Expose
    public Vector3 value = new Vector3();

    public final ShaderGraphSlot[] f81189c = {new ShaderGraphSlot(XMLExporter.ELEMENT_VALUE, C.FLOAT3)};

    public class a implements q {
        @Override
        public ShaderGraphNode a() {
            return new RawFloat3Node();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return RawFloat3Node.class;
        }

        @Override
        public String c() {
            return "RawFloat3";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, RawFloat3Node.class);
        }

        @Override
        public String e() {
            return "Input/Vectors";
        }

        @Override
        public String f() {
            return "Float3";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        p.a(new a());
    }

    public RawFloat3Node() {
        this.serializedNodeType = "RawFloat3";
    }

    private static String H(float v10) {
        return b.p(v10, 6);
    }

    private String J() {
        Vector3 vector3 = this.value;
        float x10 = vector3 != null ? vector3.getX() : 0.0f;
        Vector3 vector32 = this.value;
        float y10 = vector32 != null ? vector32.getY() : 0.0f;
        Vector3 vector33 = this.value;
        return "float3(" + H(x10) + ", " + H(y10) + ", " + H(vector33 != null ? vector33.getZ() : 0.0f) + ")";
    }

    public String I() {
        return "sgp_" + j().replaceAll("[^A-Za-z0-9_]", ConstantDescs.DEFAULT_NAME);
    }

    @Override
    public void a(FilamentMaterial material, Material engineMaterial) {
        if (material == null || this.value == null || !this.exposeInInspector) {
            return;
        }
        material.B(I(), this.value.getX(), this.value.getY(), this.value.getZ());
    }

    @Override
    public String b() {
        return I();
    }

    @Override
    public void h(g context, w stage) {
        if (!this.exposeInInspector) {
            context.d(this, 0, stage, J(), C.FLOAT3);
            return;
        }
        String I10 = I();
        context.i(new f(MaterialBuilder.r.FLOAT3, I10));
        context.d(this, 0, stage, "materialParams." + I10, C.FLOAT3);
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f81189c;
    }

    @Override
    public w u() {
        return w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Float3";
    }

    @Override
    public boolean z() {
        return true;
    }
}
