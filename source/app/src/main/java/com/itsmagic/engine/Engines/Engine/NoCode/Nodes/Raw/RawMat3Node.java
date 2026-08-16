package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw;

import Tc.b;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import ga.EnumC13304B;
import ga.H;
import ga.o;
import ga.p;

public class RawMat3Node extends NoCodeNode {

    public static final String f79127h = "RawMat3";

    @Expose
    public Vector3 f79128c0 = new Vector3(1.0f, 0.0f, 0.0f);

    @Expose
    public Vector3 f79129c1 = new Vector3(0.0f, 1.0f, 0.0f);

    @Expose
    public Vector3 f79130c2 = new Vector3(0.0f, 0.0f, 1.0f);

    public final NoCodeSlot[] f79131g = {new NoCodeSlot("Mat3", H.MAT3).c(Lang.l(Lang.T.NOCODE_SLOT_MAT3))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new RawMat3Node();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return RawMat3Node.class;
        }

        @Override
        public String c() {
            return "RawMat3";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, RawMat3Node.class);
        }

        @Override
        public String e() {
            return "Input/Matrices";
        }

        @Override
        public String f() {
            return "Matrix 3";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public RawMat3Node() {
        this.serializedNodeType = "RawMat3";
        this.exposeInInspector = false;
    }

    private static String G0(float v10) {
        return b.p(v10, 6);
    }

    private String H0() {
        return "mat3(" + I0(this.f79128c0) + ", " + I0(this.f79129c1) + ", " + I0(this.f79130c2) + ")";
    }

    public static String I0(Vector3 v10) {
        if (v10 == null) {
            return "float3(0.0)";
        }
        return "float3(" + G0(v10.getX()) + ", " + G0(v10.getY()) + ", " + G0(v10.getZ()) + ")";
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f79131g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Matrix 3";
    }

    @Override
    public boolean c0() {
        return true;
    }

    @Override
    public void m0() {
        y0(this.f79131g[0], new Vector3[]{this.f79128c0 != null ? new Vector3(this.f79128c0) : new Vector3(1.0f, 0.0f, 0.0f), this.f79129c1 != null ? new Vector3(this.f79129c1) : new Vector3(0.0f, 1.0f, 0.0f), this.f79130c2 != null ? new Vector3(this.f79130c2) : new Vector3(0.0f, 0.0f, 1.0f)});
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_RAW_MAT_3);
    }
}
