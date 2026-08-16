package ic;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class C13602A extends ShaderGraphNode {

    public static final String f91675d = "DistanceToCameraSquared";

    public final ShaderGraphSlot[] f91676c = {new ShaderGraphSlot("Distance^2", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER)};

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13602A();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13602A.class;
        }

        @Override
        public String c() {
            return C13602A.f91675d;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13602A.class);
        }

        @Override
        public String e() {
            return "Input/Space";
        }

        @Override
        public String f() {
            return "Distance To Camera Squared";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13602A() {
        this.serializedNodeType = f91675d;
        this.exposeInInspector = false;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        context.d(this, 0, stage, "dot(getWorldPosition().xyz - getWorldFromViewMatrix()[3].xyz, getWorldPosition().xyz - getWorldFromViewMatrix()[3].xyz)", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER);
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91676c;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Distance^2";
    }

    @Override
    public boolean x() {
        return true;
    }

    @Override
    public boolean y() {
        return false;
    }
}
