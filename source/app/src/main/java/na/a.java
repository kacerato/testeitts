package Na;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.C13308d;
import ga.D;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.o;
import ga.p;

public class a extends Fa.a implements F {

    public static final String f15855i = "IsGrounded";

    public static final int f15856j = 0;

    public static final int f15857k = 0;

    public static final int f15858l = 1;

    public final NoCodeSlot[] f15859g = {new NoCodeSlot("Object", H.GAME_OBJECT).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT))};

    public final NoCodeSlot[] f15860h;

    public class C0443a implements p {
        @Override
        public NoCodeNode a() {
            return new a();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return a.class;
        }

        @Override
        public String c() {
            return a.f15855i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, a.class);
        }

        @Override
        public String e() {
            return "Events/Object/Movement";
        }

        @Override
        public String f() {
            return "Is Grounded";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new C0443a());
    }

    public a() {
        H h10 = H.BRANCH;
        this.f15860h = new NoCodeSlot[]{new NoCodeSlot("On True", h10).c(Lang.l(Lang.T.NOCODE_SLOT_ON_TRUE)), new NoCodeSlot("On False", h10).c(Lang.l(Lang.T.NOCODE_SLOT_ON_FALSE))};
        this.serializedNodeType = f15855i;
    }

    @Override
    public void E0() {
        if (this.f79021a != null && d0() && c8.b.j()) {
            this.f79021a.G0(this);
            if (Aa.a.a(this, this.f79021a, this.f15859g[0])) {
                if (this.f79021a.o0(this, this.f15860h[0])) {
                    u(this.f15860h[0]);
                }
            } else if (this.f79021a.o0(this, this.f15860h[1])) {
                u(this.f15860h[1]);
            }
        }
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f15859g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f15860h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Is Grounded";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : "";
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
        return Lang.l(Lang.T.NOCODE_IS_GROUNDED_EVENT);
    }
}
