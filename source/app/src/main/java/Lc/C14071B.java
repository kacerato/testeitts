package lc;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import jc.AbstractC13820a;
import yd.C16174f;

public class C14071B extends AbstractC13820a {

    public static final String f96241i = "VectorXYZ";

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C14071B();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C14071B.class;
        }

        @Override
        public String c() {
            return "VectorXYZ";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C14071B.class);
        }

        @Override
        public String e() {
            return "Vector/Float3 Converters";
        }

        @Override
        public String f() {
            return "Vector XYZ";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C14071B() {
        super("VectorXYZ", "Vector XYZ", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3, C16174f.f130183e);
    }
}
