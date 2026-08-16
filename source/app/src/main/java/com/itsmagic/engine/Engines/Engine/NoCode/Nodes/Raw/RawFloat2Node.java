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
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import ga.EnumC13304B;
import ga.H;
import ga.o;
import ga.p;
import ga.z;

public class RawFloat2Node extends NoCodeNode implements z {

    public static final String f79119h = "RawFloat2";

    @Expose
    public Vector2 value = new Vector2();

    public final NoCodeSlot[] f79120g = {new NoCodeSlot(XMLExporter.ELEMENT_VALUE, H.FLOAT2).c(Lang.l(Lang.T.NOCODE_SLOT_VALUE))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new RawFloat2Node();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return RawFloat2Node.class;
        }

        @Override
        public String c() {
            return "RawFloat2";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, RawFloat2Node.class);
        }

        @Override
        public String e() {
            return "Input/Vectors";
        }

        @Override
        public String f() {
            return "Number 2";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public RawFloat2Node() {
        this.serializedNodeType = "RawFloat2";
    }

    private static String G0(float v10) {
        return b.p(v10, 6);
    }

    private String H0() {
        Vector2 vector2 = this.value;
        float x10 = vector2 != null ? vector2.getX() : 0.0f;
        Vector2 vector22 = this.value;
        return "float2(" + G0(x10) + ", " + G0(vector22 != null ? vector22.getY() : 0.0f) + ")";
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f79120g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Number 2";
    }

    @Override
    public boolean c0() {
        return true;
    }

    @Override
    public void m0() {
        y0(this.f79120g[0], this.value != null ? new Vector2(this.value) : new Vector2());
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_RAW_FLOAT_2);
    }
}
