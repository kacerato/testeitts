package Ka;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Input.Key;
import ga.D;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.o;
import ga.p;
import rc.C15169a;

public class g extends Fa.a implements F {

    public static final String f11098i = "OnKeyUp";

    public final NoCodeSlot[] f11099g = {new NoCodeSlot("Key Name", H.TEXT).c(Lang.l(Lang.T.NOCODE_SLOT_KEY_NAME))};

    public final NoCodeSlot[] f11100h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new g();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return g.class;
        }

        @Override
        public String c() {
            return g.f11098i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, g.class);
        }

        @Override
        public String e() {
            return "Events/Buttons";
        }

        @Override
        public String f() {
            return "On Key Up";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public g() {
        H h10 = H.BRANCH;
        this.f11100h = new NoCodeSlot[]{new NoCodeSlot("True", h10).c(Lang.l(Lang.T.NOCODE_SLOT_TRUE)), new NoCodeSlot("False", h10).c(Lang.l(Lang.T.NOCODE_SLOT_FALSE))};
        this.serializedNodeType = f11098i;
    }

    @Override
    public void E0() {
        if (this.f79021a != null && d0() && c8.b.j()) {
            this.f79021a.G0(this);
            Object Q10 = Q(this.f11099g[0]);
            String valueOf = Q10 != null ? String.valueOf(Q10) : "";
            if (valueOf.trim().isEmpty()) {
                return;
            }
            Key j10 = C15169a.j(valueOf);
            if (j10 == null || !j10.h()) {
                if (this.f79021a.o0(this, this.f11100h[1])) {
                    u(this.f11100h[1]);
                }
            } else if (this.f79021a.o0(this, this.f11100h[0])) {
                u(this.f11100h[0]);
            }
        }
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f11099g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f11100h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "On Key Up";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "keyname" : "";
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
        return Lang.l(Lang.T.NOCODE_ON_KEY_UP);
    }
}
