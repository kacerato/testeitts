package ga;

import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeBranchConnection;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeInputDefault;

public class E {
    public static boolean a(NoCodeData graphData) {
        return true;
    }

    public static boolean b(NoCodeData graphData, String oldKey, String newKey) {
        return true;
    }

    public static NoCodeData c() {
        NoCodeData noCodeData = new NoCodeData();
        noCodeData.I();
        Ia.a aVar = new Ia.a();
        aVar.u0(120.0f, 180.0f);
        noCodeData.g(aVar);
        za.x xVar = new za.x();
        xVar.u0(380.0f, 180.0f);
        xVar.w0(NoCodeInputDefault.n(0, 0.0f, 45.0f, 0.0f));
        noCodeData.g(xVar);
        noCodeData.branchConnections.add(new NoCodeBranchConnection(aVar.B(), -1, xVar.B(), -1));
        return noCodeData;
    }

    public static String d(String file) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("c:");
        if (file == null) {
            file = "";
        }
        sb2.append(file);
        return sb2.toString();
    }

    @Deprecated
    public static void e(NoCodeData data) {
    }

    public static String f(String file) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("t:");
        if (file == null) {
            file = "";
        }
        sb2.append(file);
        return sb2.toString();
    }
}
