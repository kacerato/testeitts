package ic;

import androidx.exifinterface.media.ExifInterface;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphSlot;
import org.eclipse.jdt.core.Signature;

public class w1 extends ShaderGraphNode implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.B {

    public static final String f92028e = "TextureSample";

    public final ShaderGraphSlot[] f92029c;

    public final ShaderGraphSlot[] f92030d;

    public class a implements com.itsmagic.engine.Engines.Graphics.ShaderGraph.q {
        @Override
        public ShaderGraphNode a() {
            return new w1();
        }

        @Override
        public Class<? extends ShaderGraphNode> b() {
            return w1.class;
        }

        @Override
        public String c() {
            return w1.f92028e;
        }

        @Override
        public ShaderGraphNode d(JsonObject json) {
            return (ShaderGraphNode) X7.a.m().fromJson((JsonElement) json, w1.class);
        }

        @Override
        public String e() {
            return "Sampling";
        }

        @Override
        public String f() {
            return "Texture Sample";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.p.a(new a());
    }

    public w1() {
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c10 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.TEXTURE;
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.w wVar = com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.FRAGMENT;
        this.f92029c = new ShaderGraphSlot[]{new ShaderGraphSlot(SerializableShaderEntry.f81152f, c10, wVar), new ShaderGraphSlot("UV", com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2, wVar)};
        ShaderGraphSlot shaderGraphSlot = new ShaderGraphSlot(SerializableShaderEntry.f81153g, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c11 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        this.f92030d = new ShaderGraphSlot[]{shaderGraphSlot, new ShaderGraphSlot("R", c11), new ShaderGraphSlot("G", c11), new ShaderGraphSlot(Signature.SIG_BYTE, c11), new ShaderGraphSlot(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, c11)};
        this.serializedNodeType = f92028e;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.C D(int index, com.itsmagic.engine.Engines.Graphics.ShaderGraph.z resolver) {
        return index == 0 ? com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4 : com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
    }

    @Override
    public String d(int inputIndex, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C desiredType) {
        if (inputIndex == 1) {
            return "getUV0()";
        }
        return null;
    }

    @Override
    public void h(com.itsmagic.engine.Engines.Graphics.ShaderGraph.g context, com.itsmagic.engine.Engines.Graphics.ShaderGraph.w stage) {
        String g10 = context.g(this, 0, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.TEXTURE);
        String g11 = context.g(this, 1, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT2);
        String c10 = context.c(this, 0, stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.FLOAT4);
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.C c11 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.C.NUMBER;
        String c12 = context.c(this, 1, stage, c11);
        String c13 = context.c(this, 2, stage, c11);
        String c14 = context.c(this, 3, stage, c11);
        String c15 = context.c(this, 4, stage, c11);
        context.h(stage, com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.a(com.itsmagic.engine.Engines.Graphics.ShaderGraph.t.b("texture_sample.glsl"), "@OUT@", c10), "@TEX@", g10), "@UV@", g11));
        context.h(stage, c12 + " = " + c10 + ".r;");
        context.h(stage, c13 + " = " + c10 + ".g;");
        context.h(stage, c14 + " = " + c10 + ".b;");
        context.h(stage, c15 + " = " + c10 + ".a;");
    }

    @Override
    public ShaderGraphSlot[] m() {
        return this.f92029c;
    }

    @Override
    public ShaderGraphSlot[] q() {
        return this.f92030d;
    }

    @Override
    public com.itsmagic.engine.Engines.Graphics.ShaderGraph.w u() {
        return com.itsmagic.engine.Engines.Graphics.ShaderGraph.w.FRAGMENT;
    }

    @Override
    public String v(ShaderGraphData graphData) {
        return "Texture Sample";
    }
}
