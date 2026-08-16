package Ua;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.F;
import ga.H;

public abstract class AbstractC3121a extends NoCodeNode implements F {

    public static final float f25905k = 1.70158f;

    public static final float f25906l = 2.5949094f;

    public static final float f25907m = 2.70158f;

    public static final float f25908n = 2.0943952f;

    public static final float f25909o = 1.3962634f;

    public static final float f25910p = 7.5625f;

    public static final float f25911q = 2.75f;

    public final String f25912g;

    public final String f25913h;

    public final NoCodeSlot[] f25914i;

    public final NoCodeSlot[] f25915j;

    public class C0716a implements ga.p {

        public final Class f25916a;

        public final String f25917b;

        public final String f25918c;

        public C0716a(final Class val$cls, final String val$serializedName, final String val$displayTitle) {
            this.f25916a = val$cls;
            this.f25917b = val$serializedName;
            this.f25918c = val$displayTitle;
        }

        @Override
        public NoCodeNode a() {
            try {
                return (NoCodeNode) this.f25916a.getDeclaredConstructor(null).newInstance(null);
            } catch (Throwable th2) {
                throw new RuntimeException(th2);
            }
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return this.f25916a;
        }

        @Override
        public String c() {
            return this.f25917b;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, this.f25916a);
        }

        @Override
        public String e() {
            return "Math/Easing";
        }

        @Override
        public String f() {
            return this.f25918c;
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    public AbstractC3121a(String serializedName, String displayTitle) {
        H h10 = H.NUMBER;
        this.f25914i = new NoCodeSlot[]{new NoCodeSlot("X", h10).c("x")};
        this.f25915j = new NoCodeSlot[]{new NoCodeSlot("Out", h10).c("Out")};
        this.f25912g = serializedName;
        this.f25913h = displayTitle;
        this.serializedNodeType = serializedName;
    }

    public static void H0(final Class<? extends AbstractC3121a> cls, final String serializedName, final String displayTitle) {
        ga.o.a(new C0716a(cls, serializedName, displayTitle));
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f25914i;
    }

    public abstract float G0(float x10);

    @Override
    public NoCodeSlot[] J() {
        return this.f25915j;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return this.f25913h;
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        if (inputIndex == 0) {
            return "0";
        }
        return null;
    }

    @Override
    public void m0() {
        y0(this.f25915j[0], Float.valueOf(G0(ga.m.V(Q(this.f25914i[0])))));
        u(this.f25915j[0]);
    }

    @Override
    public String x(NoCodeData graphData) {
        return this.f25913h;
    }
}
