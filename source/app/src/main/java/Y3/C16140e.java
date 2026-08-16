package y3;

import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.u;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.v;
import java.io.File;
import java.io.IOException;
import java.lang.constant.ConstantDescs;
import java.util.Arrays;
import java.util.Comparator;
import org.openjdk.tools.doclint.DocLint;

public class C16140e extends v {

    public class a implements u {

        public class C2211a implements Comparator<File> {
            public C2211a() {
            }

            @Override
            public int compare(File a10, File b10) {
                if (a10.isDirectory() && !b10.isDirectory()) {
                    return -1;
                }
                if (a10.isDirectory() || !b10.isDirectory()) {
                    return a10.getName().compareToIgnoreCase(b10.getName());
                }
                return 1;
            }
        }

        @Override
        public String a(String text) {
            try {
                String R10 = com.itsmagic.engine.Core.Components.ProjectController.a.R();
                if (R10 != null && !R10.trim().isEmpty()) {
                    File canonicalFile = new File(R10).getCanonicalFile();
                    String trim = text == null ? "" : text.trim();
                    if (trim.isEmpty()) {
                        trim = ".";
                    }
                    File canonicalFile2 = new File(canonicalFile, trim).getCanonicalFile();
                    if (!canonicalFile2.getPath().startsWith(canonicalFile.getPath())) {
                        return "ERROR: invalid path";
                    }
                    if (!canonicalFile2.exists()) {
                        return "ERROR: folder does not exist";
                    }
                    if (!canonicalFile2.isDirectory()) {
                        return "ERROR: path is not a folder";
                    }
                    File[] listFiles = canonicalFile2.listFiles();
                    if (listFiles == null) {
                        return "ERROR: folder is not accessible";
                    }
                    Arrays.sort(listFiles, new C2211a());
                    StringBuilder sb2 = new StringBuilder();
                    for (File file : listFiles) {
                        if (!C16140e.D(canonicalFile, canonicalFile2, file)) {
                            if (sb2.length() > 0) {
                                sb2.append(DocLint.SEPARATOR);
                            }
                            sb2.append(file.getName());
                            if (file.isDirectory()) {
                                sb2.append("/");
                            }
                        }
                    }
                    return sb2.toString();
                }
                return "ERROR: no project is currently loaded";
            } catch (IOException unused) {
                return "ERROR: failed to access folder";
            } catch (Exception unused2) {
                return "ERROR: unexpected tool failure";
            }
        }
    }

    public C16140e() {
        super("io.ls", "Lists files and folders inside a project directory.", new a());
        b("path", "Project-relative folder path. Use empty string or '.' for the project root.", false);
        B("path");
        A(com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.JAVA_CODING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.LUA_CODING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.LEVEL_EDITION, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.EXPLAIN, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.NORMAL);
    }

    public static boolean D(File projectRoot, File folder, File file) {
        String name;
        if (projectRoot == null || folder == null || file == null || !projectRoot.equals(folder) || (name = file.getName()) == null || name.isEmpty()) {
            return false;
        }
        if (name.startsWith(ConstantDescs.DEFAULT_NAME)) {
            return true;
        }
        return "JAVARuntime".equalsIgnoreCase(name);
    }
}
