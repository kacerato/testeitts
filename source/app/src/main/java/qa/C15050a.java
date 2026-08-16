package qa;

import JAVARuntime.Animation;
import JAVARuntime.AnimationFile;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.o;
import ga.p;

public class C15050a extends NoCodeNode implements F {

    public static final String f106023i = "LoadAnimationFile";

    public static final int f106024j = 0;

    public static final int f106025k = 0;

    public final NoCodeSlot[] f106026g = {new NoCodeSlot("Animation File", H.ANIMATION_FILE).c(Lang.l(Lang.T.NOCODE_SLOT_ANIMATION_FILE))};

    public final NoCodeSlot[] f106027h = {new NoCodeSlot("Animation", H.ANIMATION).c(Lang.l(Lang.T.NOCODE_SLOT_ANIMATION))};

    public class C1966a implements p {
        @Override
        public NoCodeNode a() {
            return new C15050a();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C15050a.class;
        }

        @Override
        public String c() {
            return C15050a.f106023i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C15050a.class);
        }

        @Override
        public String e() {
            return "Input/Files";
        }

        @Override
        public String f() {
            return "Load Animation File";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new C1966a());
    }

    public C15050a() {
        this.serializedNodeType = f106023i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f106026g;
    }

    public final AnimationFile G0(Object value) {
        if (value instanceof AnimationFile) {
            return (AnimationFile) value;
        }
        if (!(value instanceof String)) {
            return null;
        }
        String trim = ((String) value).trim();
        if (trim.isEmpty()) {
            return null;
        }
        return new AnimationFile(trim);
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f106027h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Load Animation File";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        AnimationFile G02 = G0(Q(this.f106026g[0]));
        y0(this.f106027h[0], G02 != null ? Animation.loadFile(G02) : null);
        u(this.f106027h[0]);
    }
}
