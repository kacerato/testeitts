package Fa;

import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.C13303A;
import ga.D;
import ga.EnumC13304B;
import ga.H;
import ga.m;

public abstract class e extends NoCodeNode {

    public final String f6726g;

    public final NoCodeSlot[] f6727h;

    public final NoCodeSlot[] f6728i;

    public class a implements m.c {
        public a() {
        }

        @Override
        public float apply(float a10) {
            return e.this.G0(a10);
        }
    }

    public e(String title) {
        H h10 = H.DYNAMIC;
        this.f6727h = new NoCodeSlot[]{new NoCodeSlot("In", h10).c(Lang.l(Lang.T.NOCODE_SLOT_IN))};
        this.f6728i = new NoCodeSlot[]{new NoCodeSlot("Out", h10).c(Lang.l(Lang.T.NOCODE_SLOT_OUT))};
        this.f6726g = title;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f6727h;
    }

    public abstract float G0(float value);

    @Override
    public NoCodeSlot[] J() {
        return this.f6728i;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return this.f6726g;
    }

    @Override
    public void m0() {
        NoCodeData noCodeData = this.f79021a;
        y0(this.f6728i[0], m.b(Q(this.f6727h[0]), noCodeData != null ? t0(0, new C13303A(noCodeData)) : H.NUMBER, new a()));
        u(this.f6728i[0]);
    }

    @Override
    public H t0(int index, D resolver) {
        return resolver.b(this, 0);
    }
}
