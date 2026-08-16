package Oa;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.C13308d;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.o;
import ga.p;

public class b extends Fa.a implements F {

    public static final String f16584i = "OnInFrontExit";

    public static final int f16585j = 0;

    public static final int f16586k = 1;

    public static final int f16587l = 2;

    public static final int f16588m = 3;

    public final NoCodeSlot[] f16589g;

    public transient boolean f16590h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new b();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return b.class;
        }

        @Override
        public String c() {
            return b.f16584i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, b.class);
        }

        @Override
        public String e() {
            return "Events/Object/Spatial";
        }

        @Override
        public String f() {
            return "On In Front Exit";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public b() {
        H h10 = H.GAME_OBJECT;
        NoCodeSlot c10 = new NoCodeSlot("Object A", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT_A));
        NoCodeSlot c11 = new NoCodeSlot("Object B", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT_B));
        H h11 = H.NUMBER;
        this.f16589g = new NoCodeSlot[]{c10, c11, new NoCodeSlot("Tolerance", h11).c(Lang.l(Lang.T.NOCODE_SLOT_TOLERANCE)), new NoCodeSlot("Max Distance", h11).c(Lang.l(Lang.T.NOCODE_SLOT_MAX_DISTANCE))};
        this.serializedNodeType = f16584i;
    }

    @Override
    public void E0() {
        if (this.f79021a != null && d0() && c8.b.j()) {
            this.f79021a.G0(this);
            NoCodeData noCodeData = this.f79021a;
            NoCodeSlot[] noCodeSlotArr = this.f16589g;
            boolean a10 = Aa.c.a(this, noCodeData, noCodeSlotArr[0], noCodeSlotArr[1], noCodeSlotArr[2], noCodeSlotArr[3]);
            if (a10 || !this.f16590h) {
                this.f16590h = a10;
            } else {
                this.f16590h = false;
                t();
            }
        }
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f16589g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "On In Front Exit";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return (inputIndex == 0 || inputIndex == 1) ? C13308d.f88188b : inputIndex == 2 ? "30" : inputIndex == 3 ? "1000" : "";
    }

    @Override
    public void l0() {
        NoCodeData noCodeData = this.f79021a;
        if (noCodeData != null) {
            noCodeData.T0(this);
        }
        this.f16590h = false;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_ON_IN_FRONT_EXIT);
    }
}
