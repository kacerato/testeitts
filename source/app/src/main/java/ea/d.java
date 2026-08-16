package Ea;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.World.World;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.o;
import ga.p;
import gb.C13317e;

public class d extends NoCodeNode implements F {

    public static final String f5750i = "ObjectExistsByName";

    public static final int f5751j = 0;

    public static final int f5752k = 0;

    public static final int f5753l = 1;

    public final NoCodeSlot[] f5754g = {new NoCodeSlot("Name", H.TEXT).c(Lang.l(Lang.T.NOCODE_SLOT_NAME))};

    public final NoCodeSlot[] f5755h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new d();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return d.class;
        }

        @Override
        public String c() {
            return d.f5750i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, d.class);
        }

        @Override
        public String e() {
            return "Actions/World";
        }

        @Override
        public String f() {
            return "Object Exists";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public d() {
        H h10 = H.BRANCH;
        this.f5755h = new NoCodeSlot[]{new NoCodeSlot("On True", h10).c(Lang.l(Lang.T.NOCODE_SLOT_ON_TRUE)), new NoCodeSlot("On False", h10).c(Lang.l(Lang.T.NOCODE_SLOT_ON_FALSE))};
        this.serializedNodeType = f5750i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f5754g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f5755h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Object Exists";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0032  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m0() {
        boolean z10;
        String c10;
        World world;
        try {
            c10 = Aa.b.c(Q(this.f5754g[0]));
        } catch (Exception unused) {
        }
        if (c10 != null && !c10.trim().isEmpty() && W7.b.f27304d != null && (world = com.itsmagic.engine.Engines.Engine.World.a.f80030c) != null) {
            z10 = C13317e.J(world.k(c10));
            u(!z10 ? this.f5755h[0] : this.f5755h[1]);
        }
        z10 = false;
        u(!z10 ? this.f5755h[0] : this.f5755h[1]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_OBJECT_EXISTS_BY_NAME);
    }
}
