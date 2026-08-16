package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw;

import Tc.b;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import ga.EnumC13304B;
import ga.H;
import ga.o;
import ga.p;

public class RawMat4Node extends NoCodeNode {

    public static final String f79132h = "RawMat4";

    @Expose
    public Vector4 f79133c0 = new Vector4(1.0f, 0.0f, 0.0f, 0.0f);

    @Expose
    public Vector4 f79134c1 = new Vector4(0.0f, 1.0f, 0.0f, 0.0f);

    @Expose
    public Vector4 f79135c2 = new Vector4(0.0f, 0.0f, 1.0f, 0.0f);

    @Expose
    public Vector4 f79136c3 = new Vector4(0.0f, 0.0f, 0.0f, 1.0f);

    public final NoCodeSlot[] f79137g = {new NoCodeSlot("Mat4", H.MAT4).c(Lang.l(Lang.T.NOCODE_SLOT_MAT4))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new RawMat4Node();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return RawMat4Node.class;
        }

        @Override
        public String c() {
            return "RawMat4";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, RawMat4Node.class);
        }

        @Override
        public String e() {
            return "Input/Matrices";
        }

        @Override
        public String f() {
            return "Matrix 4";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public RawMat4Node() {
        this.serializedNodeType = "RawMat4";
        this.exposeInInspector = false;
    }

    private static String G0(float v10) {
        return b.p(v10, 6);
    }

    private String H0() {
        return "mat4(" + I0(this.f79133c0) + ", " + I0(this.f79134c1) + ", " + I0(this.f79135c2) + ", " + I0(this.f79136c3) + ")";
    }

    public static String I0(Vector4 v10) {
        if (v10 == null) {
            return "float4(0.0)";
        }
        return "float4(" + G0(v10.getX()) + ", " + G0(v10.getY()) + ", " + G0(v10.getZ()) + ", " + G0(v10.f()) + ")";
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f79137g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Matrix 4";
    }

    @Override
    public boolean c0() {
        return true;
    }

    @Override
    public void m0() {
        NoCodeSlot noCodeSlot = this.f79137g[0];
        Vector4 vector4 = this.f79133c0;
        Vector4 clone = vector4 != null ? vector4.clone() : new Vector4(1.0f, 0.0f, 0.0f, 0.0f);
        Vector4 vector42 = this.f79134c1;
        Vector4 clone2 = vector42 != null ? vector42.clone() : new Vector4(0.0f, 1.0f, 0.0f, 0.0f);
        Vector4 vector43 = this.f79135c2;
        Vector4 clone3 = vector43 != null ? vector43.clone() : new Vector4(0.0f, 0.0f, 1.0f, 0.0f);
        Vector4 vector44 = this.f79136c3;
        y0(noCodeSlot, new Vector4[]{clone, clone2, clone3, vector44 != null ? vector44.clone() : new Vector4(0.0f, 0.0f, 0.0f, 1.0f)});
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_RAW_MAT_4);
    }
}
