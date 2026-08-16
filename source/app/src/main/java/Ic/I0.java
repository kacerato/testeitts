package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class I0 extends ShaderGraphNode {

    public static final String f91733d = "ObjectNormal";

    public final ShaderGraphSlot[] f91734c = {new ShaderGraphSlot("Object Normal", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3)};

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new I0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return I0.class;
        }

        @Override
        public String c() {
            return I0.f91733d;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, I0.class);
        }

        @Override
        public String e() {
            return "Input/Space";
        }

        @Override
        public String f() {
            return "Object Normal";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public I0() {
        this.serializedNodeType = f91733d;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        context.d(this, 0, stage, "normalize(v.worldNormal)", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3);
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91734c;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.VERTEX;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Object Normal";
    }

    @Override
    public boolean x() {
        return true;
    }

    @Override
    public boolean y() {
        return false;
    }

    @Override
    public boolean z() {
        return false;
    }
}
