package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Raw.Material;

import C5.b;
import D5.h;
import android.content.Context;
import com.ardor3d.util.export.xml.XMLExporter;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import ga.EnumC13304B;
import ga.H;
import ga.o;
import ga.p;
import ga.z;
import java.util.List;

public class RawBooleanNode extends NoCodeNode implements z {

    public static final String f79111h = "RawBoolean";

    @Expose
    public boolean value = false;

    public final NoCodeSlot[] f79112g = {new NoCodeSlot(XMLExporter.ELEMENT_VALUE, H.BOOLEAN).c(Lang.l(Lang.T.NOCODE_SLOT_VALUE))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new RawBooleanNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return RawBooleanNode.class;
        }

        @Override
        public String c() {
            return RawBooleanNode.f79111h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, RawBooleanNode.class);
        }

        @Override
        public String e() {
            return "Input";
        }

        @Override
        public String f() {
            return "Boolean";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    public class b implements h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", String.valueOf(RawBooleanNode.this.value));
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                RawBooleanNode rawBooleanNode = RawBooleanNode.this;
                Boolean bool = variable.booolean_value;
                rawBooleanNode.value = bool != null ? bool.booleanValue() : "true".equalsIgnoreCase(variable.str_value);
                NoCodeData A10 = RawBooleanNode.this.A();
                if (A10 != null) {
                    A10.y0();
                }
            }
        }
    }

    static {
        o.a(new a());
    }

    public RawBooleanNode() {
        this.serializedNodeType = f79111h;
    }

    @Override
    public List<C5.b> I(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(new C5.b(new b(), "", b.a.SLBooleanWrap).l(true));
        return steppedArrayList;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f79112g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Boolean";
    }

    @Override
    public boolean c0() {
        return true;
    }

    @Override
    public void m0() {
        y0(this.f79112g[0], Boolean.valueOf(this.value));
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_RAW_BOOLEAN);
    }
}
