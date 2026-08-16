package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class Y extends AbstractC13820a {

    public static final String f96263i = "VectorZWX";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new Y();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return Y.class;
        }

        @Override
        public String c() {
            return "VectorZWX";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, Y.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector ZWX";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public Y() {
        super("VectorZWX", "Vector ZWX", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "zwx");
    }
}
