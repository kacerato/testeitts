package ic;

import android.provider.Telephony;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;

public class C13607F extends AbstractC13653i1 {

    public static final String f91713g = "Exp";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13607F();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13607F.class;
        }

        @Override
        public String c() {
            return "Exp";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13607F.class);
        }

        @Override
        public String e() {
            return "Math/Advanced";
        }

        @Override
        public String f() {
            return "Exp";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13607F() {
        super("Exp", Telephony.BaseMmsColumns.EXPIRY);
        this.serializedNodeType = "Exp";
    }
}
