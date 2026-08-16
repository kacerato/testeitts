package com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes;

import Tc.b;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.C;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.g;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.p;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.q;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.w;

public class RawMat4Node extends ShaderGraphNode {

    public static final String f81202d = "RawMat4";

    @Expose
    public Vector4 f81204c0 = new Vector4(1.0f, 0.0f, 0.0f, 0.0f);

    @Expose
    public Vector4 f81205c1 = new Vector4(0.0f, 1.0f, 0.0f, 0.0f);

    @Expose
    public Vector4 f81206c2 = new Vector4(0.0f, 0.0f, 1.0f, 0.0f);

    @Expose
    public Vector4 f81207c3 = new Vector4(0.0f, 0.0f, 0.0f, 1.0f);

    public final ShaderGraphSlot[] f81203c = {new ShaderGraphSlot("Mat4", C.MAT4)};

    public class a implements q {
        @Override
        public ShaderGraphNode a() {
            return new RawMat4Node();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return RawMat4Node.class;
        }

        @Override
        public String c() {
            return "RawMat4";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, RawMat4Node.class);
        }

        @Override
        public String e() {
            return "Input/Matrices";
        }

        @Override
        public String f() {
            return "Mat4";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        p.a(new a());
    }

    public RawMat4Node() {
        this.serializedNodeType = "RawMat4";
        this.exposeInInspector = false;
    }

    private static String H(float v10) {
        return b.p(v10, 6);
    }

    private String I() {
        return "mat4(" + J(this.f81204c0) + ", " + J(this.f81205c1) + ", " + J(this.f81206c2) + ", " + J(this.f81207c3) + ")";
    }

    public static String J(Vector4 v10) {
        if (v10 == null) {
            return "float4(0.0)";
        }
        return "float4(" + H(v10.getX()) + ", " + H(v10.getY()) + ", " + H(v10.getZ()) + ", " + H(v10.f()) + ")";
    }

    @Override
    public void h(g context, w stage) {
        context.d(this, 0, stage, I(), C.MAT4);
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f81203c;
    }

    @Override
    public w u() {
        return w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Mat4";
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
