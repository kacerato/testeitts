package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class C14084h extends AbstractC13820a {

    public static final String f96279i = "VectorWXZ";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C14084h();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C14084h.class;
        }

        @Override
        public String c() {
            return "VectorWXZ";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C14084h.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector WXZ";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C14084h() {
        super("VectorWXZ", "Vector WXZ", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "wxz");
    }
}
