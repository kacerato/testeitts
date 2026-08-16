package ic;

import androidx.exifinterface.media.ExifInterface;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;
import org.eclipse.jdt.core.Signature;

public class C13686v extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f92016e = "DecalSample";

    public final ShaderGraphSlot[] f92017c;

    public final ShaderGraphSlot[] f92018d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new C13686v();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return C13686v.class;
        }

        @Override
        public String c() {
            return C13686v.f92016e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, C13686v.class);
        }

        @Override
        public String e() {
            return "Sampling";
        }

        @Override
        public String f() {
            return "Decal Sample";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public C13686v() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.w wVar = com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.FRAGMENT;
        this.f92017c = new ShaderGraphSlot[]{new ShaderGraphSlot("Layer", c10, wVar), new ShaderGraphSlot("UV", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2, wVar)};
        this.f92018d = new ShaderGraphSlot[]{new ShaderGraphSlot(SerializableShaderEntry.f81153g, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4), new ShaderGraphSlot("R", c10), new ShaderGraphSlot("G", c10), new ShaderGraphSlot(Signature.SIG_BYTE, c10), new ShaderGraphSlot(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, c10)};
        this.serializedNodeType = f92016e;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.C D(int index, com.itsmagic.engine.Engines.Graphics.ShaderGraph.z resolver) {
        return index == 0 ? com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4 : com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        if (inputIndex == 0) {
            return "0.0";
        }
        if (inputIndex == 1) {
            return "getUV0()";
        }
        return null;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        String g10 = context.g(this, 0, stage, c10);
        String g11 = context.g(this, 1, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2);
        String c11 = context.c(this, 0, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4);
        String c12 = context.c(this, 1, stage, c10);
        String c13 = context.c(this, 2, stage, c10);
        String c14 = context.c(this, 3, stage, c10);
        String c15 = context.c(this, 4, stage, c10);
        context.h(stage, c11 + " = decal(int(" + g10 + "), " + g11 + ");");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(c12);
        sb2.append(" = ");
        sb2.append(c11);
        sb2.append(".r;");
        context.h(stage, sb2.toString());
        context.h(stage, c13 + " = " + c11 + ".g;");
        context.h(stage, c14 + " = " + c11 + ".b;");
        context.h(stage, c15 + " = " + c11 + ".a;");
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f92017c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f92018d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.FRAGMENT;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Decal Sample";
    }
}
