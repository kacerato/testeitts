package ic;

import androidx.exifinterface.media.ExifInterface;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;
import org.eclipse.jdt.core.Signature;

public class C1 extends ShaderGraphNode {

    public static final String f91696e = "TriangleNormal";

    public final ShaderGraphSlot[] f91697c;

    public final ShaderGraphSlot[] f91698d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C1();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C1.class;
        }

        @Override
        public String c() {
            return "TriangleNormal";
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C1.class);
        }

        @Override
        public String e() {
            return "Vector/Normal";
        }

        @Override
        public String f() {
            return "Triangle Normal";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C1() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
        this.f91697c = new ShaderGraphSlot[]{new ShaderGraphSlot(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, c10), new ShaderGraphSlot(Signature.SIG_BYTE, c10), new ShaderGraphSlot(Signature.SIG_CHAR, c10)};
        this.f91698d = new ShaderGraphSlot[]{new ShaderGraphSlot("Out", c10)};
        this.serializedNodeType = "TriangleNormal";
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.C D(int index, com.itsmagic.engine.Engines.Graphics.ShaderGraph.z resolver) {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT3;
        String g10 = context.g(this, 0, stage, c10);
        String g11 = context.g(this, 1, stage, c10);
        String g12 = context.g(this, 2, stage, c10);
        context.h(stage, context.c(this, 0, stage, c10) + " = normalize(cross((" + g11 + " - " + g10 + "), (" + g12 + " - " + g10 + ")));\n");
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f91697c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f91698d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.BOTH;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Triangle Normal";
    }
}
