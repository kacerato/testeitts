package sa;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import ga.C13308d;
import ga.EnumC13304B;

public class C15249f extends NoCodeNode implements ga.F {

    public static final String f109385i = "GetMaterialColor";

    public static final int f109386j = 0;

    public static final int f109387k = 0;

    public final NoCodeSlot[] f109388g = {new NoCodeSlot("Material", ga.H.MATERIAL).c(Lang.l(Lang.T.NOCODE_SLOT_MATERIAL))};

    public final NoCodeSlot[] f109389h = {new NoCodeSlot(SerializableShaderEntry.f81153g, ga.H.COLOR).c(Lang.l(Lang.T.NOCODE_SLOT_COLOR))};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new C15249f();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C15249f.class;
        }

        @Override
        public String c() {
            return C15249f.f109385i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C15249f.class);
        }

        @Override
        public String e() {
            return "Actions/Material/Colors";
        }

        @Override
        public String f() {
            return "Get Material Color";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public C15249f() {
        this.serializedNodeType = f109385i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f109388g;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f109389h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Material Color";
    }

    @Override
    public String a(int inputIndex, ga.H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : "";
    }

    @Override
    public void m0() {
        Material b02 = ga.m.b0(Q(this.f109388g[0]));
        ColorINT c10 = b02 != null ? J.c(b02) : J.h(this.f79021a);
        NoCodeSlot noCodeSlot = this.f109389h[0];
        if (c10 == null) {
            c10 = new ColorINT(1.0f, 1.0f, 1.0f, 1.0f);
        }
        y0(noCodeSlot, c10);
        u(this.f109389h[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_MATERIAL_COLOR);
    }
}
