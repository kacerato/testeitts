package nb;

import Ic.C2636o;
import N7.c;
import W7.b;
import android.content.Context;
import android.content.res.AssetManager;
import com.bumptech.glide.load.engine.GlideException;
import com.itsmagic.engine.Core.Components.Settings.Server.UserSystem.UserController;
import d8.j;
import ei.C13155a;
import id.C13696a;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.lang.constant.ConstantDescs;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import nd.e;
import org.apache.commons.math3.geometry.VectorFormat;

public class C14375a {

    public static final AtomicBoolean f97925a = new AtomicBoolean();

    public static final AtomicBoolean f97926b = new AtomicBoolean();

    public static void a() {
        File file;
        File file2;
        InputStream open;
        FileOutputStream fileOutputStream;
        if (f97925a.get() || !f97926b.compareAndSet(false, true)) {
            return;
        }
        Context t10 = c.t();
        try {
            try {
                StringBuilder sb2 = new StringBuilder();
                C8.a aVar = b.f27306f;
                sb2.append(aVar.f2458a.f());
                sb2.append("/resources/");
                C13696a.g(new File(sb2.toString()));
                file = new File(aVar.f2458a.f() + "/resources/zip/" + Tc.b.v("compiled/resources.zip"));
                StringBuilder sb3 = new StringBuilder();
                sb3.append(aVar.f2458a.f());
                sb3.append("/resources/extracted/");
                file2 = new File(sb3.toString());
                AssetManager assets = t10.getAssets();
                open = assets != null ? assets.open("compiled/resources.zip") : null;
                file.createNewFile();
                fileOutputStream = new FileOutputStream(file);
            } catch (Throwable th2) {
                f97926b.set(false);
                throw th2;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = open.read(bArr);
                if (read <= 0) {
                    break;
                } else {
                    fileOutputStream.write(bArr, 0, read);
                }
            }
            fileOutputStream.close();
            e.m(file, file2);
            f97925a.set(true);
            f97926b.set(false);
        } catch (Throwable th3) {
            try {
                fileOutputStream.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    public static void b(String padding, File folder, StringBuilder code) {
        File[] listFiles = folder.listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                String lowerCase = file.getName().replaceAll("[^a-zA-Z0-9]", ConstantDescs.DEFAULT_NAME).toLowerCase(Locale.ROOT);
                if (file.isDirectory()) {
                    code.append(padding + lowerCase + " /\n");
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(padding);
                    sb2.append(GlideException.a.f59088e);
                    b(sb2.toString(), file, code);
                } else if (!file.getName().endsWith(".manifest")) {
                    code.append(padding + lowerCase + "\n");
                }
            }
        }
    }

    public static void c(String padding, File folder, StringBuilder code) {
        File[] listFiles = folder.listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                String lowerCase = file.getName().replaceAll("[^a-zA-Z0-9]", ConstantDescs.DEFAULT_NAME).toLowerCase(Locale.ROOT);
                String replace = file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/Resources/", "");
                String replaceAll = replace.replaceAll("[^a-zA-Z0-9]", ConstantDescs.DEFAULT_NAME);
                if (file.isDirectory()) {
                    String str = "FOLDER_" + replaceAll.toUpperCase();
                    code.append(padding + "public static final " + str + " " + lowerCase + " = new " + str + "(\"" + replace + "/\");\n");
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(padding);
                    sb2.append("public static class ");
                    sb2.append(str);
                    sb2.append(" extends File{\n");
                    code.append(sb2.toString());
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(padding);
                    sb3.append(GlideException.a.f59088e);
                    c(sb3.toString(), file, code);
                    code.append(padding + "  public " + str + "(String path) {\n" + padding + "    super(path, true);\n" + padding + "  }\n");
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append(padding);
                    sb4.append("}\n");
                    code.append(sb4.toString());
                } else if (!file.getName().endsWith(".manifest")) {
                    code.append(padding + "public static final File " + lowerCase + " = new File(\"" + replace + "\");\n");
                }
            }
        }
    }

    public static void d() {
        if (!UserController.P() && K8.a.l().e().b()) {
            j.f84394C = "Building R";
            StringBuilder sb2 = new StringBuilder();
            sb2.append("package JAVARuntime;\n");
            sb2.append("/** AUTO GENERATED RESOURCE BINDINGS **/\n");
            sb2.append("class R{\n");
            File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/Resources/");
            if (file.exists()) {
                sb2.append("\n");
                sb2.append("  /** -TABLE-\n");
                b(C13155a.f85806a, file, sb2);
                sb2.append("  */\n");
                sb2.append("\n");
            }
            sb2.append("  public static class File extends Resources.File{\n");
            sb2.append("    public File(String path) {\n      super(path, false);\n    }\n");
            sb2.append("    public File(String path, boolean isDirectory) {\n      super(path, isDirectory);\n    }\n");
            sb2.append("  }\n");
            sb2.append("\n");
            sb2.append("  public static File getFile(String path){\n    Resources.File f = Resources.getFile(path);\n    return new File(f.getPath(), f.isDirectory());\n  }\n");
            sb2.append("\n");
            if (file.exists()) {
                c(GlideException.a.f59088e, file, sb2);
            }
            file.mkdirs();
            C2636o.e("__EN__\n__EN__\n--WHAT IS THIS FOLDER FOR?--\nYou can store any type of file/folder inside the resources folder.\nAll the contents of the resources folder are sent to the APK/AAB (compiled game) without any type of alteration, obfuscation or optimization.\nThe files in the resources folder can be accessed through scripts by the [Resource] class, or by the [R] class (if the \"Auto generate R bindings\" module is enabled).\n\nUsage example:\n\nR.File file = R.file_name_at_resource_folder.txt;\nInputStream ips = file.getInputStream();\n\nOpen R class by topbar compiling panel and look for file \"table\".\n\n__PT__\n--O QUE \u00c9 PARA QUE SERVE ESSA PASTA?--\nVoc\u00ea pode armazenar qualquer tipo de arquivo/pasta dentro da pasta resources\nTodo o conte\u00fado da pasta resources \u00e9 enviado para o APK/AAB (jogo compilado) sem qualquer tipo de altera\u00e7\u00e3o, ofusca\u00e7\u00e3o ou otimiza\u00e7\u00e3o.\nOs arquivos da pasta resources podem ser acessados atrav\u00e9s de scripts pela classe [Resource], ou pela classe [R] (caso o modulo \"Auto generate R bindings\" esteja ligado).\n\nExemplo de uso:\n\nR.File file = R.file_name_at_resource_folder.txt;\nInputStream ips = file.getInputStream();\n\nAbra a classe R pelo painel de compila\u00e7\u00e3o da barra superior e procure pelo \"table\".\n", new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/Resources/READ-ME.txt"));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            C2636o.e(sb2.toString(), new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_PROJECT/Scripts/R.java"));
        }
    }

    public static InputStream e(String path) {
        if (g()) {
            return X7.a.o("/Resources/" + path);
        }
        i();
        File file = new File(new File(b.f27306f.f2458a.f() + "/resources/extracted/"), path);
        if (!file.exists()) {
            return null;
        }
        try {
            return new FileInputStream(file);
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static String[] f(String folder) {
        int i10 = 0;
        if (g()) {
            File file = new File(new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/Resources/"), folder);
            if (!file.exists()) {
                return new String[0];
            }
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                return null;
            }
            String[] strArr = new String[listFiles.length];
            while (i10 < listFiles.length) {
                strArr[i10] = listFiles[i10].getName();
                i10++;
            }
            return strArr;
        }
        i();
        File file2 = new File(new File(b.f27306f.f2458a.f() + "/resources/extracted/"), folder);
        if (!file2.exists()) {
            return new String[0];
        }
        File[] listFiles2 = file2.listFiles();
        if (listFiles2 == null) {
            return null;
        }
        String[] strArr2 = new String[listFiles2.length];
        while (i10 < listFiles2.length) {
            strArr2[i10] = listFiles2[i10].getName();
            i10++;
        }
        return strArr2;
    }

    public static boolean g() {
        return true;
    }

    public static boolean h(String path) {
        if (g()) {
            File file = new File(new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/Resources/"), path);
            if (file.exists()) {
                return file.isDirectory();
            }
            return false;
        }
        i();
        File file2 = new File(new File(b.f27306f.f2458a.f() + "/resources/extracted/"), path);
        if (file2.exists()) {
            return file2.isDirectory();
        }
        return false;
    }

    public static void i() {
        a();
    }
}
