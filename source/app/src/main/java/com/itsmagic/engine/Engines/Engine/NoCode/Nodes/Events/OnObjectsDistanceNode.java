package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Events;

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
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ga.C13308d;
import ga.D;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.m;
import ga.o;
import ga.p;
import gb.C13317e;
import java.util.List;

public class OnObjectsDistanceNode extends Fa.a implements F {

    public static final String f79077i = "OnObjectsDistance";

    public static final int f79078j = 0;

    public static final int f79079k = 1;

    public static final int f79080l = 2;

    public static final int f79081m = 0;

    public static final int f79082n = 1;

    public static final float f79083o = 1.0E-4f;

    @Expose
    public c conditionType = c.LessThan;

    public final NoCodeSlot[] f79084g;

    public final NoCodeSlot[] f79085h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new OnObjectsDistanceNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return OnObjectsDistanceNode.class;
        }

        @Override
        public String c() {
            return OnObjectsDistanceNode.f79077i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, OnObjectsDistanceNode.class);
        }

        @Override
        public String e() {
            return "Events/Object";
        }

        @Override
        public String f() {
            return "On Distance";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    public class b extends c.n0<c> {
        public b() {
        }

        @Override
        public void a() {
            NoCodeData A10 = OnObjectsDistanceNode.this.A();
            if (A10 != null) {
                A10.y0();
            }
        }

        @Override
        public void set(c value) {
            OnObjectsDistanceNode onObjectsDistanceNode = OnObjectsDistanceNode.this;
            if (value == null) {
                value = c.LessThan;
            }
            onObjectsDistanceNode.conditionType = value;
        }

        @Override
        public String c(c enumObject) {
            if (enumObject == null) {
                return c.LessThan.name();
            }
            int ordinal = enumObject.ordinal();
            return ordinal != 0 ? ordinal != 1 ? ordinal != 2 ? ordinal != 3 ? ordinal != 4 ? enumObject.name() : "Lesser Or Equal" : "Bigger Or Equal" : "Less Than" : "Bigger Than" : "Equals";
        }
    }

    public enum c {
        Equals,
        BiggerThan,
        LessThan,
        BiggerOrEqual,
        LesserOrEqual
    }

    static {
        o.a(new a());
    }

    public OnObjectsDistanceNode() {
        H h10 = H.GAME_OBJECT;
        this.f79084g = new NoCodeSlot[]{new NoCodeSlot("Object A", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT_A)), new NoCodeSlot("Object B", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT_B)), new NoCodeSlot("Distance", H.NUMBER).c(Lang.l(Lang.T.NOCODE_SLOT_DISTANCE))};
        H h11 = H.BRANCH;
        this.f79085h = new NoCodeSlot[]{new NoCodeSlot("True", h11).c(Lang.l(Lang.T.NOCODE_SLOT_TRUE)), new NoCodeSlot("False", h11).c(Lang.l(Lang.T.NOCODE_SLOT_FALSE))};
        this.serializedNodeType = f79077i;
    }

    private boolean H0(float distanceSquared, float maxDistanceSquared) {
        int ordinal = I0().ordinal();
        return ordinal != 0 ? ordinal != 1 ? ordinal != 3 ? ordinal != 4 ? distanceSquared < maxDistanceSquared : distanceSquared <= maxDistanceSquared : distanceSquared >= maxDistanceSquared : distanceSquared > maxDistanceSquared : Math.abs(distanceSquared - maxDistanceSquared) <= 1.0E-4f;
    }

    @Override
    public void E0() {
        if (this.f79021a != null && d0() && c8.b.j()) {
            this.f79021a.G0(this);
            GameObject J02 = J0(this.f79084g[0]);
            GameObject J03 = J0(this.f79084g[1]);
            if (!C13317e.J(J02) || !C13317e.J(J03)) {
                if (this.f79021a.o0(this, this.f79085h[1])) {
                    u(this.f79085h[1]);
                    return;
                }
                return;
            }
            float V10 = m.V(Q(this.f79084g[2]));
            if (H0(J02.J0().E1(J03), V10 * V10)) {
                if (this.f79021a.o0(this, this.f79085h[0])) {
                    u(this.f79085h[0]);
                }
            } else if (this.f79021a.o0(this, this.f79085h[1])) {
                u(this.f79085h[1]);
            }
        }
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f79084g;
    }

    @Override
    public List<C5.b> I(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(F5.c.j("", c.class, I0(), new b(), b.a.SLDropdownWrap));
        return steppedArrayList;
    }

    public final c I0() {
        c cVar = this.conditionType;
        return cVar != null ? cVar : c.LessThan;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f79085h;
    }

    public final GameObject J0(NoCodeSlot slot) {
        Object Q10 = Q(slot);
        if (Q10 instanceof GameObject) {
            GameObject gameObject = (GameObject) Q10;
            if (C13317e.J(gameObject)) {
                return gameObject;
            }
        }
        NoCodeData noCodeData = this.f79021a;
        if (noCodeData != null) {
            return noCodeData.h0();
        }
        return null;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "On Distance";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return (inputIndex == 0 || inputIndex == 1) ? C13308d.f88188b : inputIndex == 2 ? "1.0" : "";
    }

    @Override
    public void l0() {
        NoCodeData noCodeData = this.f79021a;
        if (noCodeData != null) {
            noCodeData.T0(this);
        }
    }

    @Override
    public H t0(int index, D resolver) {
        return H.BRANCH;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_ON_OBJECTS_DISTANCE);
    }
}
