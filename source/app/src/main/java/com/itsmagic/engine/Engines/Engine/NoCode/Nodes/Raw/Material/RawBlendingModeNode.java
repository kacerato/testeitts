package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw.Material;

import C5.b;
import F5.c;
import android.content.Context;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ec.EnumC13053a;
import ga.EnumC13304B;
import ga.H;
import ga.o;
import ga.p;
import ga.z;
import java.util.List;

public class RawBlendingModeNode extends NoCodeNode implements z {

    public static final String f79108h = "RawBlendingMode";

    @Expose
    public EnumC13053a value = EnumC13053a.OPAQUE;

    public final NoCodeSlot[] f79109g = {new NoCodeSlot("Blending Mode", H.BLENDING_MODE).c(Lang.l(Lang.T.NOCODE_SLOT_BLENDING_MODE))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new RawBlendingModeNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return RawBlendingModeNode.class;
        }

        @Override
        public String c() {
            return RawBlendingModeNode.f79108h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, RawBlendingModeNode.class);
        }

        @Override
        public String e() {
            return "Input/Material";
        }

        @Override
        public String f() {
            return "Blending Mode";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    public class b extends c.n0<EnumC13053a> {
        public b() {
        }

        @Override
        public void a() {
            NoCodeData A10 = RawBlendingModeNode.this.A();
            if (A10 != null) {
                A10.y0();
            }
        }

        @Override
        public void set(EnumC13053a value) {
            RawBlendingModeNode rawBlendingModeNode = RawBlendingModeNode.this;
            if (value == null) {
                value = EnumC13053a.OPAQUE;
            }
            rawBlendingModeNode.value = value;
        }
    }

    static {
        o.a(new a());
    }

    public RawBlendingModeNode() {
        this.serializedNodeType = f79108h;
    }

    @Override
    public List<C5.b> I(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(c.j("", EnumC13053a.class, this.value, new b(), b.a.SLDropdownWrap));
        return steppedArrayList;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f79109g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Blending Mode";
    }

    @Override
    public boolean c0() {
        return true;
    }

    @Override
    public void m0() {
        NoCodeSlot noCodeSlot = this.f79109g[0];
        EnumC13053a enumC13053a = this.value;
        if (enumC13053a == null) {
            enumC13053a = EnumC13053a.OPAQUE;
        }
        y0(noCodeSlot, enumC13053a);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_RAW_BLENDING_MODE);
    }
}
