package Ba;

import JAVARuntime.Device;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.EnumC13304B;
import ga.H;
import java.util.Collections;
import java.util.List;

public class z extends q {

    public static final String f1662h = "VibratePattern";

    public static final int f1663i = 0;

    public static final int f1664j = 1;

    public final NoCodeSlot[] f1665g = {new NoCodeSlot("Timings", H.LIST), new NoCodeSlot("Repeat", H.NUMBER)};

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new z();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return z.class;
        }

        @Override
        public String c() {
            return z.f1662h;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, z.class);
        }

        @Override
        public String e() {
            return "Input/Platform";
        }

        @Override
        public String f() {
            return "Vibrate Pattern";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public z() {
        this.serializedNodeType = f1662h;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.f1665g;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Vibrate Pattern";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 1 ? "-1" : "";
    }

    @Override
    public void m0() {
        try {
            ga.l a02 = ga.m.a0(Q(this.f1665g[0]));
            List<Object> e10 = a02 != null ? a02.e() : Collections.emptyList();
            long[] jArr = new long[e10.size()];
            for (int i10 = 0; i10 < e10.size(); i10++) {
                jArr[i10] = ga.m.V(e10.get(i10));
            }
            Device.vibratePattern(jArr, Math.round(ga.m.V(Q(this.f1665g[1]))));
            t();
        } catch (Throwable th2) {
            t();
            throw th2;
        }
    }
}
