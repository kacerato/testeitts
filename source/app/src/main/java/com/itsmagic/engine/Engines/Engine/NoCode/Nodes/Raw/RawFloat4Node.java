package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw;

import Tc.b;
import com.ardor3d.util.export.xml.XMLExporter;
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
import ga.z;

public class RawFloat4Node extends NoCodeNode implements z {

    public static final String f79123h = "RawFloat4";

    @Expose
    public Vector4 value = new Vector4();

    public final NoCodeSlot[] f79124g = {new NoCodeSlot(XMLExporter.ELEMENT_VALUE, H.FLOAT4).c(Lang.l(Lang.T.NOCODE_SLOT_VALUE))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new RawFloat4Node();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return RawFloat4Node.class;
        }

        @Override
        public String c() {
            return "RawFloat4";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, RawFloat4Node.class);
        }

        @Override
        public String e() {
            return "Input/Vectors";
        }

        @Override
        public String f() {
            return "Number 4";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public RawFloat4Node() {
        this.serializedNodeType = "RawFloat4";
    }

    private static String G0(float v10) {
        return b.p(v10, 6);
    }

    private String H0() {
        Vector4 vector4 = this.value;
        float x10 = vector4 != null ? vector4.getX() : 0.0f;
        Vector4 vector42 = this.value;
        float y10 = vector42 != null ? vector42.getY() : 0.0f;
        Vector4 vector43 = this.value;
        float z10 = vector43 != null ? vector43.getZ() : 0.0f;
        Vector4 vector44 = this.value;
        return "float4(" + G0(x10) + ", " + G0(y10) + ", " + G0(z10) + ", " + G0(vector44 != null ? vector44.f() : 0.0f) + ")";
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f79124g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Number 4";
    }

    @Override
    public boolean c0() {
        return true;
    }

    @Override
    public void m0() {
        NoCodeSlot noCodeSlot = this.f79124g[0];
        Vector4 vector4 = this.value;
        y0(noCodeSlot, vector4 != null ? vector4.clone() : new Vector4());
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_RAW_FLOAT_4);
    }
}
