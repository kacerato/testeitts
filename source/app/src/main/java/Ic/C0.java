package ic;

import androidx.exifinterface.media.ExifInterface;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;
import org.eclipse.jdt.core.Signature;

public class C0 extends ShaderGraphNode {

    public static final String f91693e = "NormalBlend";

    public final ShaderGraphSlot[] f91694c;

    public final ShaderGraphSlot[] f91695d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C0();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C0.class;
        }

        @Override
        public String c() {
            return C0.f91693e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C0.class);
        }

        @Override
        public String e() {
            return "Vector/Normal";
        }

        @Override
        public String f() {
            return "Normal Blend";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C0() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
        this.f91694c = new ShaderGraphSlot[]{new ShaderGraphSlot(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, c10), new ShaderGraphSlot(Signature.SIG_BYTE, c10)};
        this.f91695d = new ShaderGraphSlot[]{new ShaderGraphSlot("Out", c10)};
        this.serializedNodeType = f91693e;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.C D(int index, com.itsmagic.engine.Engines.Graphics.ShaderGraph.z resolver) {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
        String g10 = context.g(this, 0, stage, c10);
        context.h(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("normal_blend.glsl"), "@OUT@", context.c(this, 0, stage, c10)), "@A@", g10), "@B@", context.g(this, 1, stage, c10)));
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91694c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91695d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Normal Blend";
    }
}
