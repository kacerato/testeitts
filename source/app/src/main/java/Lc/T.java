package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;

public class T extends AbstractC13820a {

    public static final String f96258i = "VectorYZW";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new T();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return T.class;
        }

        @Override
        public String c() {
            return "VectorYZW";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, T.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector YZW";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public T() {
        super("VectorYZW", "Vector YZW", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, "yzw");
    }
}
