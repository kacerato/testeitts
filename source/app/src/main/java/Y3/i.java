package y3;

import Ic.C2636o;
import com.google.gson.Gson;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.u;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.v;
import java.io.File;

public class i extends v {

    public static final Gson f129968k = new Gson();

    public class a implements u {
        @Override
        public String a(String text) {
            try {
                b bVar = (b) i.f129968k.fromJson(text, b.class);
                if (bVar == null) {
                    return "ERROR: invalid request";
                }
                String str = bVar.f129969a;
                if (str != null && !str.trim().isEmpty()) {
                    File k10 = D3.a.k(bVar.f129969a);
                    if (D3.a.e(k10)) {
                        return "ERROR: unsupported file format";
                    }
                    C2636o.e(bVar.f129970b, k10);
                    return "OK";
                }
                return "ERROR: path cannot be empty";
            } catch (Exception e10) {
                return "ERROR: " + e10.getMessage();
            }
        }
    }

    public static final class b {

        public String f129969a;

        public String f129970b;
    }

    public i() {
        super("io.wt", "Writes text to a project file.", new a());
        b("path", "Project-relative file path to write.", true);
        b("text", "Text content to write to the file.", true);
        A(com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.JAVA_CODING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.LUA_CODING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.LEVEL_EDITION);
    }
}
