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
import java.util.Iterator;

public class U extends NoCodeNode implements ga.F {

    public static final String f109358h = "SetMaterialColor";

    public static final int f109359i = 0;

    public static final int f109360j = 1;

    public final NoCodeSlot[] f109361g = {new NoCodeSlot("Material", ga.H.MATERIAL).c(Lang.l(Lang.T.NOCODE_SLOT_MATERIAL)), new NoCodeSlot(SerializableShaderEntry.f81153g, ga.H.COLOR).c(Lang.l(Lang.T.NOCODE_SLOT_COLOR))};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new U();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return U.class;
        }

        @Override
        public String c() {
            return U.f109358h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, U.class);
        }

        @Override
        public String e() {
            return "Actions/Material/Colors";
        }

        @Override
        public String f() {
            return "Set Material Color";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public U() {
        this.serializedNodeType = f109358h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f109361g;
    }

    public final void G0(ColorINT color) {
        Iterator<Material> it = J.j(this.f79021a).iterator();
        while (it.hasNext()) {
            J.a(it.next(), color);
        }
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Set Material Color";
    }

    @Override
    public String a(int inputIndex, ga.H desiredType) {
        return inputIndex == 0 ? C13308d.f88188b : inputIndex == 1 ? "float4(1, 1, 1, 1)" : "";
    }

    @Override
    public void m0() {
        try {
            ColorINT d10 = d(Q(this.f109361g[1]));
            Material b02 = ga.m.b0(Q(this.f109361g[0]));
            if (b02 != null) {
                J.a(b02, d10);
                if (d10 != null) {
                    q0(d10);
                }
                t();
                return;
            }
            G0(d10);
            if (d10 != null) {
                q0(d10);
            }
            t();
        } catch (Throwable th2) {
            if (0 != 0) {
                q0(null);
            }
            t();
            throw th2;
        }
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_SET_MATERIAL_COLOR);
    }
}
