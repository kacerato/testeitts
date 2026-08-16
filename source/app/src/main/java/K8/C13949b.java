package k8;

import Ic.C2636o;
import JAVARuntime.Terminal;
import android.util.Log;
import b3.s;
import com.itsmagic.engine.Core.Components.JCompiler.JavaMetaInfo;
import com.itsmagic.engine.Engines.Engine.Settings.JavaSettings;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import d8.e;
import d8.j;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;
import java.util.List;
import l8.C14057a;
import l8.C14059c;
import l8.C14060d;
import l8.C14061e;
import l8.g;
import l8.h;
import l8.i;
import org.eclipse.jdt.internal.compiler.batch.Main;
import org.jetbrains.annotations.Nullable;
import t3.C15377a;
import t8.C15384a;
import t8.d;

public class C13949b {

    public static boolean f94973a = false;

    public static boolean f94974b = false;

    public static String f94975c;

    public class a implements InterfaceC13948a {

        public final JavaMetaInfo f94976a;

        public final File f94977b;

        public final String f94978c;

        public final String f94979d;

        public a(final JavaMetaInfo val$javaMetaInfo, final File val$file, final String val$RUNTIME_FOLDER, final String val$javaFile) {
            this.f94976a = val$javaMetaInfo;
            this.f94977b = val$file;
            this.f94978c = val$RUNTIME_FOLDER;
            this.f94979d = val$javaFile;
        }

        @Override
        public List<e> a(String code) {
            JavaMetaInfo javaMetaInfo = this.f94976a;
            return (javaMetaInfo == null || !j.D0(javaMetaInfo)) ? C13949b.b(code, this.f94977b, this.f94978c, this.f94979d) : new SteppedArrayList();
        }
    }

    public class C1840b extends C15384a {

        public final List f94980b;

        public C1840b(final List val$stringOutputs) {
            this.f94980b = val$stringOutputs;
        }

        @Override
        public void write(char[] cbuf, int off, int len) throws IOException {
            String str = new String(cbuf, off, len);
            if (!str.isEmpty() && str.length() >= 3 && !str.equals("----------")) {
                this.f94980b.add(str);
            }
            if (C13949b.f94973a) {
                System.out.println("ECJ OUTPUT:" + str);
            }
        }
    }

    static {
        if (C15377a.f109719g.booleanValue()) {
            f94973a = false;
            f94974b = false;
        }
        f94975c = "JPreCompiller";
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0099 A[Catch: IOException -> 0x0017, FileNotFoundException -> 0x001a, TryCatch #4 {FileNotFoundException -> 0x001a, IOException -> 0x0017, blocks: (B:6:0x000d, B:8:0x0013, B:9:0x001d, B:12:0x0070, B:17:0x0078, B:19:0x0099, B:20:0x009c), top: B:5:0x000d }] */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static List<e> b(String code, File file, String RUNTIME_FOLDER, String javaFile) {
        if (code == null || code.trim().isEmpty()) {
            throw new NullPointerException("Code can't be empty or null");
        }
        try {
            if (file.exists()) {
                file.delete();
            }
            file.createNewFile();
            C2636o.a(code, file);
            LinkedList linkedList = new LinkedList();
            C1840b c1840b = new C1840b(linkedList);
            e("instantiating the precompiler and compiling the java file");
            try {
                e(" ecjMain.compile result " + new Main(new PrintWriter(c1840b), new PrintWriter(c1840b), false, null).compile(new String[]{"-1.8", "-proc:none", "-classpath", RUNTIME_FOLDER, "-maxProblems", Dd.c.f5131w, "-noExit", "-nowarn", javaFile}));
                return d(linkedList);
            } catch (Error e10) {
                e = e10;
                System.out.println("FAILED TO PRECOMPILE FILE (" + javaFile + ")");
                if (f94973a) {
                    e.printStackTrace();
                }
                return d(linkedList);
            } catch (Exception e11) {
                e = e11;
                System.out.println("FAILED TO PRECOMPILE FILE (" + javaFile + ")");
                if (f94973a) {
                }
                return d(linkedList);
            }
        } catch (FileNotFoundException e12) {
            e12.printStackTrace();
            return null;
        } catch (IOException e13) {
            e13.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean c(JavaMetaInfo javaMetaInfo, String javaFile, String RUNTIME_FOLDER, int compileLoop, File file, C13950c javaCode) {
        SteppedArrayList steppedArrayList;
        e("Precompilling (loops:" + compileLoop + ") (file:" + javaFile + ")");
        try {
            JavaSettings e10 = K8.a.l().e();
            steppedArrayList = new SteppedArrayList();
            if (e10.d()) {
                steppedArrayList.add(new C14057a());
            }
            steppedArrayList.add(new g());
            if (e10.f()) {
                steppedArrayList.add(new C14061e());
            }
            steppedArrayList.add(new h());
            if (e10.e()) {
                steppedArrayList.add(new C14060d());
            }
            if (e10.c()) {
                steppedArrayList.add(new C14059c());
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        if (steppedArrayList.isEmpty()) {
            return false;
        }
        e("JAVA CODE BEFORE PRE COMPILLERS:\n" + ((Object) javaCode));
        if (javaCode.d() != null && !javaCode.d().trim().isEmpty()) {
            boolean z10 = false;
            for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
                i iVar = (i) steppedArrayList.get(i10);
                if (javaMetaInfo != null && j.D0(javaMetaInfo)) {
                    return false;
                }
                if (iVar.a(javaCode, b(javaCode.d(), file, RUNTIME_FOLDER, javaFile), new a(javaMetaInfo, file, RUNTIME_FOLDER, javaFile))) {
                    z10 = true;
                }
                if (javaMetaInfo != null && j.D0(javaMetaInfo)) {
                    return false;
                }
            }
            e("JAVA CODE BEFORE AFTER COMPILLERS:\n" + ((Object) javaCode));
            return z10;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x010c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0011 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static List<e> d(List<String> stringOutputs) {
        e gVar;
        LinkedList linkedList = new LinkedList();
        while (true) {
            e eVar = null;
            for (String str : stringOutputs) {
                if (eVar == null) {
                    try {
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        if (!f94973a) {
                        }
                    }
                    if (str.contains(". WARNING in ")) {
                        gVar = new t8.g();
                    } else if (str.contains(". ERROR in ")) {
                        gVar = new d();
                    }
                    eVar = gVar;
                } else if (str.startsWith(" (at line")) {
                    eVar.f(Nc.b.x1(str.replace(" (at line ", "").replace(")", ""), 0) - 1);
                    String[] split = str.split("\n");
                    StringBuilder sb2 = new StringBuilder();
                    for (int i10 = 1; i10 < split.length; i10++) {
                        String str2 = split[i10];
                        if (i10 >= split.length - 1) {
                            String replace = str2.replace("\n", "");
                            if (replace.length() > 1) {
                                sb2.append(replace.substring(1));
                            } else {
                                sb2.append(replace);
                            }
                        } else if (str2.length() > 1) {
                            sb2.append(str2.substring(1));
                            sb2.append("\n");
                        } else {
                            sb2.append(str2);
                            sb2.append("\n");
                        }
                    }
                    eVar.g(sb2.toString());
                } else {
                    if (str.contains("Syntax error, parameterized types are only available if source level is 1.5 or greater")) {
                        str = eVar.f84381a.contains("SteppedArrayList<") ? "Use of <> with SteppedArrayList is not supported yet, you can fix it by using non-typed: SteppedArrayList variableName" : eVar.f84381a.contains("List<") ? "Use of <> with List is not supported yet, you can fix it by using non-typed: List variableName" : "Use of <> is not support yet, is not necessary in this case, remove <>";
                    } else if (str.contains("Syntax error, annotations are only available if source level is 1.5 or greater")) {
                        str = "annotations is not supported yet.";
                    } else if (str.contains("are only available if source level is 1.5 or greater")) {
                        str = str.replace("are only available if source level is 1.5 or greater", "are not supported yet.");
                    }
                    eVar.e(str);
                    if (str.contains("The serializable class Controller does not declare a static final serialVersionUID field of type long")) {
                        eVar = null;
                    }
                    if (eVar != null) {
                        try {
                            linkedList.add(eVar);
                            break;
                        } catch (Exception e11) {
                            e11.printStackTrace();
                            if (f94973a) {
                                J4.d.V1(e11);
                            }
                        }
                    } else {
                        continue;
                    }
                }
                e10.printStackTrace();
                if (!f94973a) {
                    J4.d.V1(e10);
                }
            }
            return linkedList;
        }
    }

    public static void e(String message) {
        if (f94973a) {
            if (!f94974b) {
                Log.d(f94975c, message);
                return;
            }
            Terminal.log(f94975c + s.f32937c + message);
        }
    }

    public static void f(JavaMetaInfo javaMetaInfo, String javaFile, String RUNTIME_FOLDER) {
        File file = new File(javaFile.replace("/./", "/"));
        if (file.exists()) {
            try {
                boolean z10 = true;
                C13950c c13950c = new C13950c(Tc.b.w(javaFile, true));
                c13950c.f94984d = javaMetaInfo;
                c13950c.i(C2636o.c(file));
                int i10 = 0;
                while (z10) {
                    if (javaMetaInfo != null) {
                        try {
                            if (j.D0(javaMetaInfo)) {
                                return;
                            }
                        } catch (Error e10) {
                            e = e10;
                            e.printStackTrace();
                            z10 = false;
                            i10++;
                        } catch (Exception e11) {
                            e = e11;
                            e.printStackTrace();
                            z10 = false;
                            i10++;
                        }
                    }
                    z10 = c(javaMetaInfo, javaFile, RUNTIME_FOLDER, i10, file, c13950c);
                    if (javaMetaInfo != null && j.D0(javaMetaInfo)) {
                        return;
                    }
                    i10++;
                }
                C2636o.a(c13950c.d(), file);
            } catch (Exception e12) {
                e12.printStackTrace();
            }
        }
    }
}
