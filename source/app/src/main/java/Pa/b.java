package Pa;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import ga.o;
import ga.p;

public class b extends Pa.a {

    public static final String f21200k = "OnCollisionEnter";

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
            return b.f21200k;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, b.class);
        }

        @Override
        public String e() {
            return "Events/Collision";
        }

        @Override
        public String f() {
            return "On Collision Enter";
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
        super(f21200k, "On Collision Enter");
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_ON_COLLISION_ENTER);
    }
}
