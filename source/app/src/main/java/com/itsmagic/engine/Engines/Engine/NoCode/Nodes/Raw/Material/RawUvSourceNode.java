package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw.Material;

import C5.b;
import F5.c;
import android.content.Context;
import cc.e;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ga.EnumC13304B;
import ga.H;
import ga.o;
import ga.p;
import ga.z;
import java.util.List;

public class RawUvSourceNode extends NoCodeNode implements z {

    public static final String f79114h = "RawUvSource";

    @Expose
    public e value = e.Vertex;

    public final NoCodeSlot[] f79115g = {new NoCodeSlot("UV Source", H.UV_SOURCE).c(Lang.l(Lang.T.NOCODE_SLOT_UV_SOURCE))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new RawUvSourceNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return RawUvSourceNode.class;
        }

        @Override
        public String c() {
            return RawUvSourceNode.f79114h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, RawUvSourceNode.class);
        }

        @Override
        public String e() {
            return "Input/Material";
        }

        @Override
        public String f() {
            return "UV Source";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    public class b extends c.n0<e> {
        public b() {
        }

        @Override
        public void a() {
            NoCodeData A10 = RawUvSourceNode.this.A();
            if (A10 != null) {
                A10.y0();
            }
        }

        @Override
        public void set(e value) {
            RawUvSourceNode rawUvSourceNode = RawUvSourceNode.this;
            if (value == null) {
                value = e.Vertex;
            }
            rawUvSourceNode.value = value;
        }
    }

    static {
        o.a(new a());
    }

    public RawUvSourceNode() {
        this.serializedNodeType = f79114h;
    }

    @Override
    public List<C5.b> I(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(c.j("", e.class, this.value, new b(), b.a.SLDropdownWrap));
        return steppedArrayList;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f79115g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "UV Source";
    }

    @Override
    public boolean c0() {
        return true;
    }

    @Override
    public void m0() {
        NoCodeSlot noCodeSlot = this.f79115g[0];
        e eVar = this.value;
        if (eVar == null) {
            eVar = e.Vertex;
        }
        y0(noCodeSlot, eVar);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_RAW_UV_SOURCE);
    }
}
