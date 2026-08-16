package Ra;

import C5.b;
import Ra.e;
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
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;

public class e extends NoCodeNode {

    public static final String f22639j = "FirstWins";

    public static final int f22640k = 1;

    public transient NoCodeSlot[] f22642h;

    public int f22641g = 2;

    public transient HashMap<Long, c> f22643i = new HashMap<>();

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new e();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return e.class;
        }

        @Override
        public String c() {
            return e.f22639j;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, e.class);
        }

        @Override
        public String e() {
            return "Flow";
        }

        @Override
        public String f() {
            return "First Wins";
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
            return new Variable("", e.this.f22641g);
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
            int i10 = e.this.f22641g;
            if (variable != null && i10 <= 0 && (str = variable.str_value) != null) {
                try {
                    i10 = Math.max(1, Integer.parseInt(str));
                } catch (Exception unused) {
                }
            }
            e.this.O0(i10);
        }
    }

    static {
        o.a(new a());
    }

    public e() {
        this.serializedNodeType = f22639j;
    }

    public static c L0(Long l10) {
        return new c(null);
    }

    public static boolean M0(String str, int i10, NoCodeBranchConnection noCodeBranchConnection) {
        int i11;
        return noCodeBranchConnection != null && str.equals(noCodeBranchConnection.toNodeId) && (i11 = noCodeBranchConnection.toSlot) != -1 && i11 >= i10;
    }

    @Override
    public NoCodeSlot[] F() {
        return K0();
    }

    @Override
    public List<C5.b> I(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(new C5.b(new b(), "Inputs", b.a.SLIntWrap).l(true));
        return steppedArrayList;
    }

    public final void J0() {
        HashMap<Long, c> hashMap = this.f22643i;
        if (hashMap == null) {
            this.f22643i = new HashMap<>();
        } else {
            hashMap.clear();
        }
    }

    public final NoCodeSlot[] K0() {
        int max = Math.max(1, this.f22641g);
        NoCodeSlot[] noCodeSlotArr = this.f22642h;
        if (noCodeSlotArr != null && noCodeSlotArr.length == max) {
            return noCodeSlotArr;
        }
        this.f22642h = new NoCodeSlot[max];
        int i10 = 0;
        while (i10 < max) {
            NoCodeSlot[] noCodeSlotArr2 = this.f22642h;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("In ");
            int i11 = i10 + 1;
            sb2.append(i11);
            noCodeSlotArr2[i10] = new NoCodeSlot(sb2.toString(), H.BRANCH).c(String.format(Lang.l(Lang.T.NOCODE_SLOT_IN), Integer.valueOf(i11)));
            i10 = i11;
        }
        return this.f22642h;
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "First Wins";
    }

    public final void N0(NoCodeData data, final int inputCount) {
        if (data.branchConnections == null) {
            return;
        }
        final String B10 = B();
        data.branchConnections.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean M02;
                M02 = e.M0(String.this, inputCount, (NoCodeBranchConnection) obj);
                return M02;
            }
        });
    }

    @Override
    public Ac.b O() {
        return Theme.T.NODEGRAPH_SEMAPHORE_TOPBAR;
    }

    public final void O0(int count) {
        int max = Math.max(1, count);
        if (this.f22641g == max) {
            return;
        }
        this.f22641g = max;
        this.f22642h = null;
        J0();
        NoCodeData A10 = A();
        if (A10 != null) {
            N0(A10, max);
            A10.C0();
        }
    }

    @Override
    public void j0() {
        super.j0();
        J0();
    }

    @Override
    public void m0() {
        NoCodeData A10 = A();
        if (A10 == null) {
            t();
            return;
        }
        Set<Integer> b02 = A10.b0(this);
        if (b02.isEmpty()) {
            t();
            return;
        }
        int P10 = P();
        if (P10 < 0 || !b02.contains(Integer.valueOf(P10))) {
            return;
        }
        long c02 = A10.c0(this);
        if (c02 == null) {
            c02 = 0L;
        }
        if (this.f22643i == null) {
            this.f22643i = new HashMap<>();
        }
        c computeIfAbsent = this.f22643i.computeIfAbsent(c02, new Function() {
            @Override
            public final Object apply(Object obj) {
                e.c L02;
                L02 = e.L0((Long) obj);
                return L02;
            }
        });
        computeIfAbsent.f22646b.add(Integer.valueOf(P10));
        boolean z10 = computeIfAbsent.f22645a;
        if (!z10) {
            computeIfAbsent.f22645a = true;
        }
        boolean containsAll = computeIfAbsent.f22646b.containsAll(b02);
        if (containsAll) {
            this.f22643i.remove(c02);
        }
        if (!z10) {
            t();
        } else {
            if (!containsAll || A10.j0(this) > 0) {
                return;
            }
            s();
        }
    }

    @Override
    public boolean p() {
        return true;
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_FIRST_WINS);
    }

    public static class c {

        public boolean f22645a;

        public final HashSet<Integer> f22646b;

        public c() {
            this.f22646b = new HashSet<>();
        }

        public c(a aVar) {
            this();
        }
    }
}
