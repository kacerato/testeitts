package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class U extends AbstractC13820a {

    public static final String f96259i = "VectorYZX";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new U();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return U.class;
        }

        @Override
        public String c() {
            return "VectorYZX";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, U.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector YZX";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public U() {
        super("VectorYZX", "Vector YZX", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "yzx");
    }
}
