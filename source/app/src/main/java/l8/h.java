package l8;

import java.util.List;
import k8.C13950c;
import k8.InterfaceC13948a;

public class h extends i {

    public static final String f96199b = "UIText cannot be resolved to a type";

    public static final String f96200c = "UIText";

    public static final String f96201d = "UITextView";

    @Override
    public boolean a(C13950c javaCode, List<d8.e> compillerOutputs, InterfaceC13948a jpcListener) {
        String str;
        for (d8.e eVar : compillerOutputs) {
            if (eVar != null && (str = eVar.f84382b) != null && str.contains(f96199b)) {
                String d10 = javaCode.d();
                if (d10 == null || !d10.contains(f96200c)) {
                    return false;
                }
                String replaceAll = d10.replaceAll("\\bUIText\\b", "UITextView");
                if (replaceAll.equals(d10)) {
                    return false;
                }
                javaCode.i(replaceAll);
                return true;
            }
        }
        return false;
    }
}
