package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class C14073D extends AbstractC13820a {

    public static final String f96243i = "VectorXZX";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C14073D();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C14073D.class;
        }

        @Override
        public String c() {
            return "VectorXZX";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C14073D.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector XZX";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C14073D() {
        super("VectorXZX", "Vector XZX", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "xzx");
    }
}
