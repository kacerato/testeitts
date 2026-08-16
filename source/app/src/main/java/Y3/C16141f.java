package y3;

import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.u;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.v;
import java.io.File;

public class C16141f extends v {

    public class a implements u {
        @Override
        public String a(String text) {
            String trim;
            if (text == null) {
                trim = "";
            } else {
                try {
                    trim = text.trim();
                } catch (Exception e10) {
                    return "ERROR: " + e10.getMessage();
                }
            }
            if (trim.isEmpty()) {
                return "ERROR: path cannot be empty";
            }
            File l10 = D3.a.l(trim);
            return l10.exists() ? l10.isDirectory() ? "OK" : "ERROR: a file already exists at the target path" : l10.mkdirs() ? "OK" : "ERROR: folder creation failed";
        }
    }

    public C16141f() {
        super("io.mkdir", "Creates a folder inside the current project.", new a());
        b("path", "Project-relative folder path to create.", true);
        B("path");
        A(com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.JAVA_CODING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.LUA_CODING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.LEVEL_EDITION);
    }
}
