package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Attributes;

import C5.b;
import D5.h;
import android.content.Context;
import android.view.View;
import com.ardor3d.util.export.xml.XMLExporter;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeAttribute;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import dd.C12908b;
import dd.d;
import ga.D;
import ga.EnumC13304B;
import ga.H;
import ga.k;
import ga.o;
import ga.p;
import java.util.List;
import r4.C15147a;

public class AttributeAccessNode extends NoCodeNode implements k {

    public static final String f79053h = "NoCodeAttributeAccess";

    @Expose
    public String attributeId = "";

    public transient NoCodeSlot[] f79054g;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new AttributeAccessNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return AttributeAccessNode.class;
        }

        @Override
        public String c() {
            return AttributeAccessNode.f79053h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, AttributeAccessNode.class);
        }

        @Override
        public String e() {
            return "Attributes";
        }

        @Override
        public String f() {
            return "Get Attribute";
        }

        @Override
        public boolean g() {
            return false;
        }
    }

    public class b implements h {
        public b() {
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            View view;
            if (variable == null || (view = variable.f81490c) == null) {
                return;
            }
            AttributeAccessNode.this.K0(view);
        }
    }

    public class c implements d {

        public final NoCodeAttribute f79056a;

        public final NoCodeData f79057b;

        public c(final NoCodeAttribute val$attribute, final NoCodeData val$data) {
            this.f79056a = val$attribute;
            this.f79057b = val$data;
        }

        @Override
        public void onSelected(View v10) {
            AttributeAccessNode attributeAccessNode = AttributeAccessNode.this;
            String str = this.f79056a.f78942id;
            if (str == null) {
                str = "";
            }
            attributeAccessNode.attributeId = str;
            attributeAccessNode.f79054g = null;
            this.f79057b.C0();
        }
    }

    static {
        o.a(new a());
    }

    public AttributeAccessNode() {
        this.serializedNodeType = f79053h;
        this.exposeInInspector = false;
    }

    @Override
    public List<C5.b> I(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(new C5.b(new b(), N(A()), b.a.SLDropdownWrap).l(true));
        return steppedArrayList;
    }

    public final NoCodeAttribute I0(NoCodeData data) {
        if (data != null) {
            return data.O(this.attributeId);
        }
        return null;
    }

    @Override
    public NoCodeSlot[] J() {
        NoCodeSlot noCodeSlot;
        H J02 = J0();
        NoCodeSlot[] noCodeSlotArr = this.f79054g;
        if (noCodeSlotArr != null && noCodeSlotArr.length == 1 && (noCodeSlot = noCodeSlotArr[0]) != null && noCodeSlot.type == J02) {
            return noCodeSlotArr;
        }
        NoCodeSlot[] noCodeSlotArr2 = {new NoCodeSlot(XMLExporter.ELEMENT_VALUE, J02).c(Lang.l(Lang.T.NOCODE_SLOT_VALUE))};
        this.f79054g = noCodeSlotArr2;
        return noCodeSlotArr2;
    }

    public final H J0() {
        NoCodeAttribute I02 = I0(A());
        return I02 != null ? I02.type : H.NUMBER;
    }

    public final void K0(View anchor) {
        NoCodeData A10 = A();
        if (anchor == null || A10 == null) {
            return;
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (NoCodeAttribute noCodeAttribute : A10.k0()) {
            if (noCodeAttribute != null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(noCodeAttribute.name);
                sb2.append(A10.r0(noCodeAttribute.f78942id) ? " (Global)" : "");
                steppedArrayList.add(new C12908b(sb2.toString(), new c(noCodeAttribute, A10)));
            }
        }
        if (steppedArrayList.isEmpty()) {
            return;
        }
        Y6.a.F1(anchor, C15147a.e.Left, steppedArrayList);
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        String str;
        NoCodeAttribute I02 = I0(graphData);
        return (I02 == null || (str = I02.name) == null || str.trim().isEmpty()) ? "Attribute" : I02.name;
    }

    @Override
    public H b(int outputIndex, D resolver) {
        NoCodeAttribute I02 = I0(A());
        return I02 != null ? I02.g() : H.NUMBER;
    }

    @Override
    public boolean b0() {
        return true;
    }

    @Override
    public void m0() {
        NoCodeData A10 = A();
        y0(J()[0], A10 != null ? A10.a0(this.attributeId) : null);
    }

    @Override
    public H t0(int index, D resolver) {
        return J0();
    }
}
