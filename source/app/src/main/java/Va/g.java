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

public class g extends NoCodeNode implements F {

    public static final String f121408h = "SwapChildrenPosition";

    public static final int f121409i = 0;

    public static final int f121410j = 1;

    public static final int f121411k = 2;

    public final NoCodeSlot[] f121412g;

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
            return g.f121408h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, g.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Hierarchy";
        }

        @Override
        public String f() {
            return "Swap Children Position";
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
        H h10 = H.GAME_OBJECT;
        this.f121412g = new NoCodeSlot[]{new NoCodeSlot("Object", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT)), new NoCodeSlot("Object A", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT_A)), new NoCodeSlot("Object B", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OBJECT_B))};
        this.serializedNodeType = f121408h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f121412g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Swap Children Position";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return (inputIndex == 0 || inputIndex == 1 || inputIndex == 2) ? C13308d.f88188b : "";
    }

    @Override
    public void m0() {
        try {
            GameObject b10 = Aa.b.b(this, this.f79021a, this.f121412g[0]);
            GameObject a10 = Aa.b.a(this, this.f121412g[1]);
            GameObject a11 = Aa.b.a(this, this.f121412g[2]);
            if (C13317e.J(b10) && C13317e.J(a10) && C13317e.J(a11)) {
                b10.V1(a10, a11);
            }
        } finally {
            t();
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_SWAP_CHILDREN_POSITION);
    }
}
