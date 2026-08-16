package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class C13664m0 extends ShaderGraphNode {

    public static final String f91953d = "LocalPosition";

    public final ShaderGraphSlot[] f91954c = {new ShaderGraphSlot("Local Pos", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3)};

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13664m0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13664m0.class;
        }

        @Override
        public String c() {
            return C13664m0.f91953d;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13664m0.class);
        }

        @Override
        public String e() {
            return "Input/Space";
        }

        @Override
        public String f() {
            return "Local Position";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13664m0() {
        this.serializedNodeType = f91953d;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        context.d(this, 0, stage, stage == com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.VERTEX ? "getPosition().xyz" : "getUserWorldPosition().xyz", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3);
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91954c;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Local Position";
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
