package y3;

import Ic.C2636o;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.u;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.v;
import java.io.File;

public class C16142g extends v {

    public class a implements u {
        @Override
        public String a(String text) {
            try {
                File k10 = D3.a.k(text);
                if (!k10.exists()) {
                    return "ERROR: file does not exist";
                }
                if (k10.isDirectory()) {
                    return "ERROR: path is a directory";
                }
                if (D3.a.e(k10)) {
                    return "ERROR: unsupported file format";
                }
                String g10 = C2636o.g(k10);
                return g10 == null ? "" : g10;
            } catch (Exception e10) {
                return "ERROR: " + e10.getMessage();
            }
        }
    }

    public C16142g() {
        super("io.rt", "Reads text from a project file.", new a());
        b("path", "Project-relative file path to read.", true);
        B("path");
        A(com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.JAVA_CODING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.LUA_CODING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.LEVEL_EDITION, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.EXPLAIN, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.NORMAL);
    }
}
