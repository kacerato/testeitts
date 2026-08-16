package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Attributes;

import com.ardor3d.util.export.xml.XMLExporter;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeAttribute;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.H;
import ga.o;
import ga.p;

public class SetAttributeNode extends NoCodeNode {

    public static final String f79059h = "NoCodeSetAttribute";

    public static final int f79060i = 0;

    @Expose
    public String attributeId = "";

    public transient NoCodeSlot[] f79061g;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new SetAttributeNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return SetAttributeNode.class;
        }

        @Override
        public String c() {
            return SetAttributeNode.f79059h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, SetAttributeNode.class);
        }

        @Override
        public String e() {
            return "Attributes";
        }

        @Override
        public String f() {
            return "Set Attribute";
        }

        @Override
        public boolean g() {
            return false;
        }
    }

    static {
        o.a(new a());
    }

    public SetAttributeNode() {
        this.serializedNodeType = f79059h;
        this.exposeInInspector = false;
    }

    private NoCodeAttribute G0(NoCodeData data) {
        if (data != null) {
            return data.O(this.attributeId);
        }
        return null;
    }

    private H H0() {
        NoCodeAttribute G02 = G0(A());
        return G02 != null ? G02.type : H.NUMBER;
    }

    @Override
    public NoCodeSlot[] F() {
        NoCodeSlot noCodeSlot;
        H H02 = H0();
        NoCodeSlot[] noCodeSlotArr = this.f79061g;
        if (noCodeSlotArr != null && noCodeSlotArr.length == 1 && (noCodeSlot = noCodeSlotArr[0]) != null && noCodeSlot.type == H02) {
            return noCodeSlotArr;
        }
        NoCodeSlot[] noCodeSlotArr2 = {new NoCodeSlot(XMLExporter.ELEMENT_VALUE, H02).c(Lang.l(Lang.T.NOCODE_SLOT_VALUE))};
        this.f79061g = noCodeSlotArr2;
        return noCodeSlotArr2;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        String str;
        NoCodeAttribute G02 = G0(graphData);
        if (G02 == null || (str = G02.name) == null || str.trim().isEmpty()) {
            return "Set Attribute";
        }
        return "Set - " + G02.name;
    }

    @Override
    public void m0() {
        String str;
        try {
            NoCodeData A10 = A();
            if (A10 != null && (str = this.attributeId) != null && !str.isEmpty()) {
                A10.W0(this.attributeId, Q(F()[0]));
            }
        } finally {
            t();
        }
    }
}
