package ic;

import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;

public class C13662l1 extends ShaderGraphNode {

    public static final String f91948d = "SmoothDeltaTime";

    public final ShaderGraphSlot[] f91949c = {new ShaderGraphSlot("Smooth Delta", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER)};

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13662l1();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13662l1.class;
        }

        @Override
        public String c() {
            return "SmoothDeltaTime";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13662l1.class);
        }

        @Override
        public String e() {
            return "Input/Time";
        }

        @Override
        public String f() {
            return "Smooth Delta";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13662l1() {
        this.serializedNodeType = "SmoothDeltaTime";
        this.exposeInInspector = false;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        context.i(new ec.f(MaterialBuilder.r.FLOAT, MaterialBuilder.g.HIGH, com.itsmagic.engine.Engines.Graphics.ShaderGraph.x.f81394c));
        context.d(this, 0, stage, "materialParams.sg_smoothDeltaTime", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER);
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91949c;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Smooth Delta";
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
