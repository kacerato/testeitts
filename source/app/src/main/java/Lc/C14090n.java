package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class C14090n extends AbstractC13820a {

    public static final String f96291i = "VectorWZX";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C14090n();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C14090n.class;
        }

        @Override
        public String c() {
            return "VectorWZX";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C14090n.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector WZX";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C14090n() {
        super("VectorWZX", "Vector WZX", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "wzx");
    }
}
