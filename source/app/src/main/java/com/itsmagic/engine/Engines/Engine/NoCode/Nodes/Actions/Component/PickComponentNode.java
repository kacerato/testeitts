package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Component;

import C5.b;
import D5.h;
import JAVARuntime.Component;
import android.content.Context;
import android.view.View;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import dd.C12908b;
import dd.d;
import ga.C13308d;
import ga.D;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.o;
import ga.p;
import gb.C13317e;
import java.util.List;
import r4.C15147a;

public class PickComponentNode extends NoCodeNode implements F {

    public static final String f79039i = "PickComponent";

    public static final int f79040j = 0;

    public static final int f79041k = 0;

    public static final int f79042l = 1;

    public static final int f79043m = 2;

    @Expose
    public H componentType = C13308d.h();

    public final NoCodeSlot[] f79044g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT))};

    public transient NoCodeSlot[] f79045h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new PickComponentNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return PickComponentNode.class;
        }

        @Override
        public String c() {
            return PickComponentNode.f79039i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, PickComponentNode.class);
        }

        @Override
        public String e() {
            return "Actions/Component/Queries";
        }

        @Override
        public String f() {
            return "Pick Component";
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
            return null;
        }

        @Override
        public void set(Variable variable) {
            View view;
            if (variable == null || (view = variable.f81490c) == null) {
                return;
            }
            PickComponentNode.this.L0(view);
        }
    }

    public class c implements d {

        public final H f79047a;

        public c(final H val$type) {
            this.f79047a = val$type;
        }

        @Override
        public void onSelected(View v10) {
            PickComponentNode.this.K0(this.f79047a);
        }
    }

    static {
        o.a(new a());
    }

    public PickComponentNode() {
        this.serializedNodeType = f79039i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f79044g;
    }

    @Override
    public List<C5.b> I(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        C5.b l10 = new C5.b(new b(), C13308d.i(J0()), b.a.SLDropdownWrap).l(true);
        l10.f2078m = "type";
        steppedArrayList.add(l10);
        return steppedArrayList;
    }

    public final NoCodeSlot[] I0() {
        NoCodeSlot noCodeSlot;
        H J02 = J0();
        NoCodeSlot[] noCodeSlotArr = this.f79045h;
        if (noCodeSlotArr != null && noCodeSlotArr.length == 3 && (noCodeSlot = noCodeSlotArr[2]) != null && noCodeSlot.type == J02) {
            return noCodeSlotArr;
        }
        H h10 = H.BRANCH;
        NoCodeSlot[] noCodeSlotArr2 = {new NoCodeSlot("Found", h10).c(Lang.l(Lang.T.NOCODE_SLOT_FOUND)), new NoCodeSlot("Missing", h10).c(Lang.l(Lang.T.NOCODE_SLOT_MISSING)), new NoCodeSlot("Component", J02).c(Lang.l(Lang.T.NOCODE_SLOT_COMPONENT))};
        this.f79045h = noCodeSlotArr2;
        return noCodeSlotArr2;
    }

    @Override
    public NoCodeSlot[] J() {
        return I0();
    }

    public final H J0() {
        H y10 = C13308d.y(this.componentType);
        this.componentType = y10;
        return y10;
    }

    public final void K0(H value) {
        H y10 = C13308d.y(value);
        if (this.componentType == y10) {
            return;
        }
        this.componentType = y10;
        this.f79045h = null;
        NoCodeData A10 = A();
        if (A10 != null) {
            A10.C0();
        }
    }

    public final void L0(View anchor) {
        if (anchor == null) {
            return;
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (String str : C13308d.k()) {
            List<H> l10 = C13308d.l(str);
            if (!l10.isEmpty()) {
                SteppedArrayList steppedArrayList2 = new SteppedArrayList();
                for (H h10 : l10) {
                    steppedArrayList2.add(new C12908b(C13308d.i(h10), new c(h10)));
                }
                steppedArrayList.add(new C12908b(str, steppedArrayList2));
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
        return "Pick Component";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "owner" : "";
    }

    @Override
    public void m0() {
        NoCodeSlot[] I02 = I0();
        GameObject b10 = Aa.b.b(this, this.f79021a, this.f79044g[0]);
        Component e10 = C13317e.J(b10) ? C13308d.e(b10, J0()) : null;
        y0(I02[2], e10);
        u(e10 != null ? I02[0] : I02[1]);
    }

    @Override
    public H t0(int index, D resolver) {
        if (index == 2) {
            return J0();
        }
        NoCodeSlot[] I02 = I0();
        return (index < 0 || index >= I02.length) ? super.t0(index, resolver) : I02[index].type;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_PICK_COMPONENT);
    }
}
