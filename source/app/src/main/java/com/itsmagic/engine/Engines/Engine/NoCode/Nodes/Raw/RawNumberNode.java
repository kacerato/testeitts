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
import ga.EnumC13304B;
import ga.H;
import ga.o;
import ga.p;
import ga.z;

public class RawNumberNode extends NoCodeNode implements z {

    public static final String f79138h = "RawNumber";

    @Expose
    public float value = 0.0f;

    public final NoCodeSlot[] f79139g = {new NoCodeSlot(XMLExporter.ELEMENT_VALUE, H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_VALUE))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new RawNumberNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return RawNumberNode.class;
        }

        @Override
        public String c() {
            return "RawNumber";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, RawNumberNode.class);
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
        o.a(new a());
    }

    public RawNumberNode() {
        this.serializedNodeType = "RawNumber";
    }

    private static String G0(float v10) {
        return b.p(v10, 6);
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f79139g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Number";
    }

    @Override
    public boolean c0() {
        return true;
    }

    @Override
    public void m0() {
        y0(this.f79139g[0], Float.valueOf(this.value));
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_RAW_NUMBER);
    }
}
