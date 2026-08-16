package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw;

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

public class RawTextNode extends NoCodeNode implements z {

    public static final String f79145h = "RawText";

    @Expose
    public String value = "your message";

    public final NoCodeSlot[] f79146g = {new NoCodeSlot("Text", H.TEXT).c(Lang.l(Lang.T.NOCODE_SLOT_TEXT))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new RawTextNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return RawTextNode.class;
        }

        @Override
        public String c() {
            return RawTextNode.f79145h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, RawTextNode.class);
        }

        @Override
        public String e() {
            return "Input";
        }

        @Override
        public String f() {
            return "Text";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public RawTextNode() {
        this.serializedNodeType = f79145h;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f79146g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Text";
    }

    @Override
    public boolean c0() {
        return true;
    }

    @Override
    public void m0() {
        NoCodeSlot noCodeSlot = this.f79146g[0];
        String str = this.value;
        if (str == null) {
            str = "";
        }
        y0(noCodeSlot, str);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_RAW_TEXT);
    }
}
