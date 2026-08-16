package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw;

import Tc.b;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import ga.EnumC13304B;
import ga.H;
import ga.o;
import ga.p;
import ga.z;

public class RawColorNode extends NoCodeNode implements z {

    public static final String f79117h = "RawColor";

    @Expose
    public ColorINT value = new ColorINT(1.0f, 1.0f, 1.0f, 1.0f);

    public final NoCodeSlot[] f79118g = {new NoCodeSlot(SerializableShaderEntry.f81153g, H.COLOR).c(Lang.l(Lang.T.NOCODE_SLOT_COLOR))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new RawColorNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return RawColorNode.class;
        }

        @Override
        public String c() {
            return "RawColor";
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, RawColorNode.class);
        }

        @Override
        public String e() {
            return "Input";
        }

        @Override
        public String f() {
            return SerializableShaderEntry.f81153g;
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public RawColorNode() {
        this.serializedNodeType = "RawColor";
    }

    public static String G0(float v10) {
        return b.p(v10, 6);
    }

    public final String H0() {
        ColorINT colorINT = this.value;
        float w10 = colorINT != null ? colorINT.w() : 1.0f;
        ColorINT colorINT2 = this.value;
        float u10 = colorINT2 != null ? colorINT2.u() : 1.0f;
        ColorINT colorINT3 = this.value;
        float s10 = colorINT3 != null ? colorINT3.s() : 1.0f;
        ColorINT colorINT4 = this.value;
        return "float4(" + G0(w10) + ", " + G0(u10) + ", " + G0(s10) + ", " + G0(colorINT4 != null ? colorINT4.r() : 1.0f) + ")";
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f79118g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return SerializableShaderEntry.f81153g;
    }

    @Override
    public boolean c0() {
        return true;
    }

    @Override
    public void m0() {
        NoCodeSlot noCodeSlot = this.f79118g[0];
        ColorINT colorINT = this.value;
        y0(noCodeSlot, colorINT != null ? colorINT.clone() : new ColorINT(1.0f, 1.0f, 1.0f, 1.0f));
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_RAW_COLOR);
    }
}
