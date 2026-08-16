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
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import ga.EnumC13304B;
import ga.H;
import ga.o;
import ga.p;
import ga.z;

public class RawFloat3Node extends NoCodeNode implements z {

    public static final String f79121h = "RawFloat3";

    @Expose
    public Vector3 value = new Vector3();

    public final NoCodeSlot[] f79122g = {new NoCodeSlot(XMLExporter.ELEMENT_VALUE, H.FLOAT3).c(Lang.l(Lang.T.NOCODE_SLOT_VALUE))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new RawFloat3Node();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return RawFloat3Node.class;
        }

        @Override
        public String c() {
            return "RawFloat3";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, RawFloat3Node.class);
        }

        @Override
        public String e() {
            return "Input/Vectors";
        }

        @Override
        public String f() {
            return "Number 3";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public RawFloat3Node() {
        this.serializedNodeType = "RawFloat3";
    }

    private static String G0(float v10) {
        return b.p(v10, 6);
    }

    private String H0() {
        Vector3 vector3 = this.value;
        float x10 = vector3 != null ? vector3.getX() : 0.0f;
        Vector3 vector32 = this.value;
        float y10 = vector32 != null ? vector32.getY() : 0.0f;
        Vector3 vector33 = this.value;
        return "float3(" + G0(x10) + ", " + G0(y10) + ", " + G0(vector33 != null ? vector33.getZ() : 0.0f) + ")";
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f79122g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Number 3";
    }

    @Override
    public boolean c0() {
        return true;
    }

    @Override
    public void m0() {
        y0(this.f79122g[0], this.value != null ? new Vector3(this.value) : new Vector3());
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_RAW_FLOAT_3);
    }
}
