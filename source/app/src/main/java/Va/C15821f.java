package va;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import ga.C13308d;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.o;
import ga.p;
import gb.C13317e;

public class C15821f extends NoCodeNode implements F {

    public static final String f121404h = "SetParent";

    public static final int f121405i = 0;

    public static final int f121406j = 1;

    public final NoCodeSlot[] f121407g;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C15821f();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C15821f.class;
        }

        @Override
        public String c() {
            return C15821f.f121404h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C15821f.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Hierarchy";
        }

        @Override
        public String f() {
            return "Set Parent";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C15821f() {
        H h10 = H.GAME_OBJECT;
        this.f121407g = new NoCodeSlot[]{new NoCodeSlot("Object", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT)), new NoCodeSlot("Parent", h10).c(Lang.l(Lang.T.NOCODE_SLOT_PARENT))};
        this.serializedNodeType = f121404h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f121407g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Set Parent";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return (inputIndex == 0 || inputIndex == 1) ? C13308d.f88188b : "";
    }

    @Override
    public void m0() {
        try {
            GameObject b10 = Aa.b.b(this, this.f79021a, this.f121407g[0]);
            if (C13317e.J(b10)) {
                GameObject a10 = Aa.b.a(this, this.f121407g[1]);
                if (!C13317e.J(a10)) {
                    a10 = null;
                }
                b10.F1(a10);
            }
        } finally {
            t();
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_SET_PARENT);
    }
}
