package y3;

import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.u;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.v;
import java.io.File;

public class C16138c extends v {

    public class a implements u {
        @Override
        public String a(String text) {
            try {
                File k10 = D3.a.k(text);
                if (k10.exists()) {
                    if (k10.isFile()) {
                        return "true";
                    }
                }
                return "false";
            } catch (Exception e10) {
                return "ERROR: " + e10.getMessage();
            }
        }
    }

    public C16138c() {
        super("io.exists", "Checks whether a project file exists at the given path.", new a());
        b("path", "Project-relative file path to check.", true);
        B("path");
        A(com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.JAVA_CODING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.LUA_CODING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.LEVEL_EDITION, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.EXPLAIN, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.NORMAL);
    }
}
