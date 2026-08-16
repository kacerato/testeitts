package Ea;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.itsmagic.engine.Engines.Engine.World.a;
import ga.EnumC13304B;
import ga.H;
import ga.m;
import ga.o;
import ga.p;

public class b extends NoCodeNode {

    public static final String f5742h = "LoadWorldAsync";

    public static final int f5743i = 0;

    public static final a.k f5744j = new a();

    public final NoCodeSlot[] f5745g = {new NoCodeSlot("World File", H.WORLD_FILE).c(Lang.l(Lang.T.NOCODE_SLOT_WORLD_FILE))};

    public class a implements a.k {
        @Override
        public World onFailed() {
            return null;
        }

        @Override
        public void onSuccess() {
        }
    }

    public class C0111b implements p {
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
            return b.f5742h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, b.class);
        }

        @Override
        public String e() {
            return "Actions/World";
        }

        @Override
        public String f() {
            return "Load World Async";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new C0111b());
    }

    public b() {
        this.serializedNodeType = f5742h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f5745g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Load World Async";
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [JAVARuntime.WorldFile, jb.a] */
    @Override
    public void m0() {
        String filePath;
        try {
            ?? r02 = m.r0(Q(this.f5745g[0]));
            filePath = r02 != 0 ? r02.getFilePath() : null;
        } catch (Exception unused) {
        }
        if (filePath != null && !filePath.trim().isEmpty()) {
            com.itsmagic.engine.Engines.Engine.World.a.K(filePath, false, f5744j);
            s();
            return;
        }
        s();
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_LOAD_WORLD_ASYNC);
    }
}
