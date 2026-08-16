package Ra;

import C5.b;
import android.content.Context;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeBranchConnection;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import ga.EnumC13304B;
import ga.H;
import ga.o;
import ga.p;
import java.util.List;
import java.util.function.Predicate;

public class j extends NoCodeNode {

    public static final String f22677j = "MultiGate";

    public static final int f22678k = 1;

    public int f22679g = 2;

    public transient NoCodeSlot[] f22680h;

    public transient int f22681i;

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new j();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return j.class;
        }

        @Override
        public String c() {
            return j.f22677j;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, j.class);
        }

        @Override
        public String e() {
            return "Flow";
        }

        @Override
        public String f() {
            return j.f22677j;
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", j.this.f22679g);
        }

        /* JADX WARN: Code restructure failed: missing block: B:3:0x0006, code lost:
        
            r0 = java.lang.Math.max(1, r3.int_value);
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void set(Variable variable) {
            String str;
            int i10 = j.this.f22679g;
            if (variable != null && i10 <= 0 && (str = variable.str_value) != null) {
                try {
                    i10 = Math.max(1, Integer.parseInt(str));
                } catch (Exception unused) {
                }
            }
            j.this.L0(i10);
        }
    }

    static {
        o.a(new a());
    }

    public j() {
        this.serializedNodeType = f22677j;
    }

    private NoCodeSlot[] I0() {
        int max = Math.max(1, this.f22679g);
        NoCodeSlot[] noCodeSlotArr = this.f22680h;
        if (noCodeSlotArr != null && noCodeSlotArr.length == max) {
            return noCodeSlotArr;
        }
        this.f22680h = new NoCodeSlot[max];
        int i10 = 0;
        while (i10 < max) {
            NoCodeSlot[] noCodeSlotArr2 = this.f22680h;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Out ");
            int i11 = i10 + 1;
            sb2.append(i11);
            noCodeSlotArr2[i10] = new NoCodeSlot(sb2.toString(), H.BRANCH).c(String.format(Lang.l(Lang.T.NOCODE_SLOT_OUT), Integer.valueOf(i11)));
            i10 = i11;
        }
        if (this.f22681i >= max) {
            this.f22681i = 0;
        }
        return this.f22680h;
    }

    public static boolean J0(String str, int i10, NoCodeBranchConnection noCodeBranchConnection) {
        int i11;
        return noCodeBranchConnection != null && str.equals(noCodeBranchConnection.fromNodeId) && (i11 = noCodeBranchConnection.fromSlot) != -1 && i11 >= i10;
    }

    private void K0(NoCodeData data, final int outputCount) {
        if (data.branchConnections == null) {
            return;
        }
        final String B10 = B();
        data.branchConnections.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean J02;
                J02 = j.J0(String.this, outputCount, (NoCodeBranchConnection) obj);
                return J02;
            }
        });
    }

    @Override
    public List<C5.b> I(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(new C5.b(new b(), "Outputs", b.a.SLIntWrap).l(true));
        return steppedArrayList;
    }

    @Override
    public NoCodeSlot[] J() {
        return I0();
    }

    public final void L0(int count) {
        int max = Math.max(1, count);
        if (this.f22679g == max) {
            return;
        }
        this.f22679g = max;
        this.f22680h = null;
        if (this.f22681i >= max) {
            this.f22681i = 0;
        }
        NoCodeData A10 = A();
        if (A10 != null) {
            K0(A10, max);
            A10.C0();
        }
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return f22677j;
    }

    @Override
    public Ac.b O() {
        return Theme.T.NODEGRAPH_SEMAPHORE_TOPBAR;
    }

    @Override
    public void j0() {
        super.j0();
        this.f22681i = 0;
    }

    @Override
    public void m0() {
        NoCodeSlot[] I02 = I0();
        if (I02.length == 0) {
            s();
            return;
        }
        if (this.f22681i >= I02.length) {
            this.f22681i = 0;
        }
        int i10 = this.f22681i;
        NoCodeSlot noCodeSlot = I02[i10];
        this.f22681i = (i10 + 1) % I02.length;
        u(noCodeSlot);
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_MULTI_GATE);
    }
}
