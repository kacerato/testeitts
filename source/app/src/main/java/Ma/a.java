package Ma;

import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Events.Custom.BaseCustomEventNode;
import ga.H;

public abstract class a extends BaseCustomEventNode {

    public static final int f14832i = 0;

    public static final int f14833j = 1;

    public final NoCodeSlot[] f14834h;

    public a(String serializedName, String title, String argLabel, H argType) {
        super(serializedName, title);
        this.f14834h = new NoCodeSlot[]{new NoCodeSlot("Then", H.BRANCH).c(Lang.l(Lang.T.NOCODE_SLOT_THEN)), new NoCodeSlot(argLabel, argType).c(argLabel)};
    }

    @Override
    public void I0(Object... args) {
        Object K02 = K0(args);
        if (K02 == null) {
            return;
        }
        y0(this.f14834h[1], K02);
        u(this.f14834h[0]);
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f14834h;
    }

    public abstract Object K0(Object... args);
}
