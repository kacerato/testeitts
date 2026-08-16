package Pa;

import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.H;
import j9.C13813a;

public abstract class a extends Fa.a {

    public static final int f21196i = 0;

    public static final int f21197j = 1;

    public final NoCodeSlot[] f21198g = {new NoCodeSlot("Then", H.BRANCH).c(Lang.l(Lang.T.NOCODE_SLOT_THEN)), new NoCodeSlot("Collision", H.COLLISION).c(Lang.l(Lang.T.NOCODE_SLOT_COLLISION))};

    public final String f21199h;

    public a(String serializedName, String title) {
        this.serializedNodeType = serializedName;
        this.f21199h = title;
    }

    public void G0(C13813a collision) {
        if (d0()) {
            y0(this.f21198g[1], collision);
            u(this.f21198g[0]);
        }
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f21198g;
    }

    @Override
    public String N(NoCodeData graphData) {
        return this.f21199h;
    }

    @Override
    public void l0() {
        NoCodeData noCodeData = this.f79021a;
        if (noCodeData != null) {
            noCodeData.T0(this);
        }
    }

    @Override
    public void m0() {
    }
}
