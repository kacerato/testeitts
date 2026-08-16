package z3;

import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.u;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.v;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import d8.j;
import d8.r;
import java.util.LinkedHashSet;
import java.util.Locale;

public class C16259b extends v {

    public class a implements u {
        @Override
        public String a(String text) {
            return C16259b.C();
        }
    }

    public C16259b() {
        super("jr.classes", "Lists available JAVARuntime API classes.", new a());
        z();
        A(com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.JAVA_CODING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.LUA_CODING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.EXPLAIN, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.PLANNING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.NORMAL);
    }

    public static String C() {
        return D();
    }

    public static String D() {
        Class cls;
        String E10;
        String E11;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (int i10 = 0; i10 < j.k0(); i10++) {
            e8.c j02 = j.j0(i10);
            if (j02 != null && (E11 = E(j02.b())) != null) {
                linkedHashSet.add(E11);
            }
        }
        for (int i11 = 0; i11 < j.K0(); i11++) {
            r J02 = j.J0(i11);
            if (J02 != null && (cls = J02.f84454c) != null && (E10 = E(cls.getName())) != null) {
                linkedHashSet.add(E10);
            }
        }
        if (linkedHashSet.isEmpty()) {
            return "ERROR: no API classes found";
        }
        SteppedArrayList<String> steppedArrayList = new SteppedArrayList(linkedHashSet);
        steppedArrayList.sort(new C16258a());
        StringBuilder sb2 = new StringBuilder();
        for (String str : steppedArrayList) {
            if (sb2.length() > 0) {
                sb2.append("\n");
            }
            sb2.append(str);
        }
        return sb2.toString();
    }

    public static String E(String fullName) {
        if (fullName == null) {
            return null;
        }
        String trim = fullName.trim();
        if (trim.isEmpty() || !trim.toLowerCase(Locale.ROOT).startsWith("javaruntime.")) {
            return null;
        }
        String trim2 = trim.substring(12).trim();
        if (trim2.isEmpty()) {
            return null;
        }
        return trim2;
    }
}
