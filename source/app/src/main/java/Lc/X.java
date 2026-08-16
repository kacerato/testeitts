package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class X extends AbstractC13820a {

    public static final String f96262i = "VectorZWW";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new X();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return X.class;
        }

        @Override
        public String c() {
            return "VectorZWW";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, X.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector ZWW";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public X() {
        super("VectorZWW", "Vector ZWW", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "zww");
    }
}
