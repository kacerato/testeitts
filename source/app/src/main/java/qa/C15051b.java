package qa;

import JAVARuntime.AnimationMask;
import JAVARuntime.AnimationMaskFile;
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

public class C15051b extends NoCodeNode implements F {

    public static final String f106028i = "LoadAnimationMaskFile";

    public static final int f106029j = 0;

    public static final int f106030k = 0;

    public final NoCodeSlot[] f106031g = {new NoCodeSlot("Animation Mask File", H.ANIMATION_MASK_FILE).c(Lang.l(Lang.T.NOCODE_SLOT_ANIMATION_MASK_FILE))};

    public final NoCodeSlot[] f106032h = {new NoCodeSlot("Animation Mask", H.ANIMATION_MASK).c(Lang.l(Lang.T.NOCODE_SLOT_ANIMATION_MASK))};

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new C15051b();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return C15051b.class;
        }

        @Override
        public String c() {
            return C15051b.f106028i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, C15051b.class);
        }

        @Override
        public String e() {
            return "Input/Files";
        }

        @Override
        public String f() {
            return "Load Animation Mask File";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public C15051b() {
        this.serializedNodeType = f106028i;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f106031g;
    }

    public final AnimationMaskFile G0(Object value) {
        if (value instanceof AnimationMaskFile) {
            return (AnimationMaskFile) value;
        }
        if (!(value instanceof String)) {
            return null;
        }
        String trim = ((String) value).trim();
        if (trim.isEmpty()) {
            return null;
        }
        return new AnimationMaskFile(trim);
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f106032h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Load Animation Mask File";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return "";
    }

    @Override
    public void m0() {
        AnimationMaskFile G02 = G0(Q(this.f106031g[0]));
        y0(this.f106032h[0], G02 != null ? AnimationMask.loadFile(G02) : null);
        u(this.f106032h[0]);
    }
}
