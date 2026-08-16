package ic;

import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class y1 extends ShaderGraphNode {

    public static final String f92044d = "Time";

    public final ShaderGraphSlot[] f92045c = {new ShaderGraphSlot("Time", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER)};

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new y1();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return y1.class;
        }

        @Override
        public String c() {
            return "Time";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, y1.class);
        }

        @Override
        public String e() {
            return "Input/Time";
        }

        @Override
        public String f() {
            return "Time";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public y1() {
        this.serializedNodeType = "Time";
        this.exposeInInspector = false;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        context.i(new ec.f(MaterialBuilder.r.FLOAT, MaterialBuilder.g.HIGH, com.itsmagic.engine.Engines.Graphics.ShaderGraph.x.f81392a));
        context.d(this, 0, stage, "materialParams.sg_time", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER);
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f92045c;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Time";
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
