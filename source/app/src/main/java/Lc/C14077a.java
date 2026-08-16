package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class C14077a extends AbstractC13820a {

    public static final String f96265i = "VectorWWW";

    public class C1869a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C14077a();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C14077a.class;
        }

        @Override
        public String c() {
            return "VectorWWW";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C14077a.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector WWW";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new C1869a());
    }

    public C14077a() {
        super("VectorWWW", "Vector WWW", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "www");
    }
}
