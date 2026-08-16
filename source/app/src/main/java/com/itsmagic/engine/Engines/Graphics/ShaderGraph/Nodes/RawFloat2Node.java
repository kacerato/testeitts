package com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes;

import Tc.b;
import com.ardor3d.util.export.xml.XMLExporter;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
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

public class RawFloat2Node extends ShaderGraphNode implements s {

    public static final String f81186d = "RawFloat2";

    @Expose
    public Vector2 value = new Vector2();

    public final ShaderGraphSlot[] f81187c = {new ShaderGraphSlot(XMLExporter.ELEMENT_VALUE, C.FLOAT2)};

    public class a implements q {
        @Override
        public ShaderGraphNode a() {
            return new RawFloat2Node();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return RawFloat2Node.class;
        }

        @Override
        public String c() {
            return "RawFloat2";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, RawFloat2Node.class);
        }

        @Override
        public String e() {
            return "Input/Vectors";
        }

        @Override
        public String f() {
            return "Float2";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        p.a(new a());
    }

    public RawFloat2Node() {
        this.serializedNodeType = "RawFloat2";
    }

    private static String H(float v10) {
        return b.p(v10, 6);
    }

    private String J() {
        Vector2 vector2 = this.value;
        float x10 = vector2 != null ? vector2.getX() : 0.0f;
        Vector2 vector22 = this.value;
        return "float2(" + H(x10) + ", " + H(vector22 != null ? vector22.getY() : 0.0f) + ")";
    }

    public String I() {
        return "sgp_" + j().replaceAll("[^A-Za-z0-9_]", ConstantDescs.DEFAULT_NAME);
    }

    @Override
    public void a(FilamentMaterial material, Material engineMaterial) {
        if (material == null || !this.exposeInInspector) {
            return;
        }
        material.y(I(), this.value.getX(), this.value.getY());
    }

    @Override
    public String b() {
        return I();
    }

    @Override
    public void h(g context, w stage) {
        if (!this.exposeInInspector) {
            context.d(this, 0, stage, J(), C.FLOAT2);
            return;
        }
        String I10 = I();
        context.i(new f(MaterialBuilder.r.FLOAT2, I10));
        context.d(this, 0, stage, "materialParams." + I10, C.FLOAT2);
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f81187c;
    }

    @Override
    public w u() {
        return w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Float2";
    }

    @Override
    public boolean z() {
        return true;
    }
}
