package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Gradient.Gradient;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.H;
import ga.o;
import ga.p;
import ga.z;

public class RawGradientNode extends NoCodeNode implements z {

    public static final String f79125h = "RawGradient";

    @Expose
    public Gradient gradient = new Gradient();

    public final NoCodeSlot[] f79126g = {new NoCodeSlot("Gradient", H.COLOR_GRADIENT).c(Lang.l(Lang.T.NOCODE_SLOT_GRADIENT))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new RawGradientNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return RawGradientNode.class;
        }

        @Override
        public String c() {
            return "RawGradient";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, RawGradientNode.class);
        }

        @Override
        public String e() {
            return "Input";
        }

        @Override
        public String f() {
            return "Color Gradient";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public RawGradientNode() {
        this.gradient.n();
        this.serializedNodeType = "RawGradient";
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f79126g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Color Gradient";
    }

    @Override
    public boolean c0() {
        return true;
    }

    @Override
    public void m0() {
        if (this.gradient == null) {
            Gradient gradient = new Gradient();
            this.gradient = gradient;
            gradient.n();
        }
        y0(this.f79126g[0], this.gradient);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_RAW_GRADIENT);
    }
}
