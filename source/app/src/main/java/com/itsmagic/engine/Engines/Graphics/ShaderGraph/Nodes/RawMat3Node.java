package com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes;

import Tc.b;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.C;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.g;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.p;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.q;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.w;

public class RawMat3Node extends ShaderGraphNode {

    public static final String f81197d = "RawMat3";

    @Expose
    public Vector3 f81199c0 = new Vector3(1.0f, 0.0f, 0.0f);

    @Expose
    public Vector3 f81200c1 = new Vector3(0.0f, 1.0f, 0.0f);

    @Expose
    public Vector3 f81201c2 = new Vector3(0.0f, 0.0f, 1.0f);

    public final ShaderGraphSlot[] f81198c = {new ShaderGraphSlot("Mat3", C.MAT3)};

    public class a implements q {
        @Override
        public ShaderGraphNode a() {
            return new RawMat3Node();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return RawMat3Node.class;
        }

        @Override
        public String c() {
            return "RawMat3";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, RawMat3Node.class);
        }

        @Override
        public String e() {
            return "Input/Matrices";
        }

        @Override
        public String f() {
            return "Mat3";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        p.a(new a());
    }

    public RawMat3Node() {
        this.serializedNodeType = "RawMat3";
        this.exposeInInspector = false;
    }

    private static String H(float v10) {
        return b.p(v10, 6);
    }

    private String I() {
        return "mat3(" + J(this.f81199c0) + ", " + J(this.f81200c1) + ", " + J(this.f81201c2) + ")";
    }

    public static String J(Vector3 v10) {
        if (v10 == null) {
            return "float3(0.0)";
        }
        return "float3(" + H(v10.getX()) + ", " + H(v10.getY()) + ", " + H(v10.getZ()) + ")";
    }

    @Override
    public void h(g context, w stage) {
        context.d(this, 0, stage, I(), C.MAT3);
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f81198c;
    }

    @Override
    public w u() {
        return w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Mat3";
    }

    @Override
    public boolean y() {
        return false;
    }

    @Override
    public boolean z() {
        return true;
    }
}
