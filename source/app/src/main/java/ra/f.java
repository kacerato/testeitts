package Ra;

import androidx.exifinterface.media.ExifInterface;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.H;
import ga.o;
import ga.p;
import org.eclipse.jdt.core.Signature;

public class f extends NoCodeNode {

    public static final String f22647i = "FlipFlop";

    public static final int f22648j = 0;

    public static final int f22649k = 1;

    public static final int f22650l = 2;

    public final NoCodeSlot[] f22651g;

    public transient boolean f22652h;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new f();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return f.class;
        }

        @Override
        public String c() {
            return f.f22647i;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, f.class);
        }

        @Override
        public String e() {
            return "Flow";
        }

        @Override
        public String f() {
            return f.f22647i;
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public f() {
        H h10 = H.BRANCH;
        this.f22651g = new NoCodeSlot[]{new NoCodeSlot(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, h10).c(Lang.l(Lang.T.NOCODE_SLOT_A)), new NoCodeSlot(Signature.SIG_BYTE, h10).c(Lang.l(Lang.T.NOCODE_SLOT_B)), new NoCodeSlot("Is A", H.BOOLEAN).c(Lang.l(Lang.T.NOCODE_SLOT_IS_A))};
        this.f22652h = true;
        this.serializedNodeType = f22647i;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.f22651g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return f22647i;
    }

    @Override
    public Ac.b O() {
        return Theme.T.NODEGRAPH_SEMAPHORE_TOPBAR;
    }

    @Override
    public void j0() {
        super.j0();
        this.f22652h = true;
    }

    @Override
    public void m0() {
        boolean z10 = this.f22652h;
        y0(this.f22651g[2], Boolean.valueOf(z10));
        this.f22652h = !this.f22652h;
        u(z10 ? this.f22651g[0] : this.f22651g[1]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_FLIP_FLOP);
    }
}
