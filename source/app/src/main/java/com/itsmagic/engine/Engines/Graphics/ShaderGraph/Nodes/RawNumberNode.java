package com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes;

import Tc.b;
import com.ardor3d.util.export.xml.XMLExporter;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Material.Material;
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

public class RawNumberNode extends ShaderGraphNode implements s {

    public static final String f81208d = "RawNumber";

    @Expose
    public float value = 0.0f;

    public final ShaderGraphSlot[] f81209c = {new ShaderGraphSlot(XMLExporter.ELEMENT_VALUE, C.NUMBER)};

    public class a implements q {
        @Override
        public ShaderGraphNode a() {
            return new RawNumberNode();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return RawNumberNode.class;
        }

        @Override
        public String c() {
            return "RawNumber";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, RawNumberNode.class);
        }

        @Override
        public String e() {
            return "Input/Numbers";
        }

        @Override
        public String f() {
            return "Number";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        p.a(new a());
    }

    public RawNumberNode() {
        this.serializedNodeType = "RawNumber";
    }

    private static String H(float v10) {
        return b.p(v10, 6);
    }

    public String I() {
        return "sgp_" + j().replaceAll("[^A-Za-z0-9_]", ConstantDescs.DEFAULT_NAME);
    }

    @Override
    public void a(FilamentMaterial material, Material engineMaterial) {
        if (material == null || !this.exposeInInspector) {
            return;
        }
        material.w(I(), this.value);
    }

    @Override
    public String b() {
        return I();
    }

    @Override
    public void h(g context, w stage) {
        if (!this.exposeInInspector) {
            context.d(this, 0, stage, H(this.value), C.NUMBER);
            return;
        }
        String I10 = I();
        context.i(new f(MaterialBuilder.r.FLOAT, I10));
        context.d(this, 0, stage, "materialParams." + I10, C.NUMBER);
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f81209c;
    }

    @Override
    public w u() {
        return w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Number";
    }

    @Override
    public boolean z() {
        return true;
    }
}
