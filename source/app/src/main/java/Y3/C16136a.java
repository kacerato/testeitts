package y3;

import com.google.gson.Gson;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.u;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.v;
import id.C13696a;
import java.io.File;

public class C16136a extends v {

    public static final Gson f129951k = new Gson();

    public class C2209a implements u {
        @Override
        public String a(String text) {
            try {
                b bVar = (b) C16136a.f129951k.fromJson(text, b.class);
                if (bVar == null) {
                    return "ERROR: invalid request";
                }
                String str = bVar.f129952a;
                if (str != null && !str.trim().isEmpty()) {
                    String str2 = bVar.f129953b;
                    if (str2 != null && !str2.trim().isEmpty()) {
                        File k10 = D3.a.k(bVar.f129952a);
                        File k11 = D3.a.k(bVar.f129953b);
                        return !k10.exists() ? "ERROR: source does not exist" : k10.getCanonicalPath().equals(k11.getCanonicalPath()) ? "ERROR: source and destination are the same" : k11.exists() ? "ERROR: destination already exists" : C13696a.a(k10, k11) ? "OK" : "ERROR: copy failed";
                    }
                    return "ERROR: dst cannot be empty";
                }
                return "ERROR: src cannot be empty";
            } catch (Exception e10) {
                return "ERROR: " + e10.getMessage();
            }
        }
    }

    public static final class b {

        public String f129952a;

        public String f129953b;
    }

    public C16136a() {
        super("io.cp", "Copies a project file or folder to a new project path.", new C2209a());
        b("src", "Project-relative source file or folder path.", true);
        b("dst", "Project-relative destination file or folder path.", true);
        A(com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.JAVA_CODING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.LUA_CODING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.LEVEL_EDITION);
    }
}
