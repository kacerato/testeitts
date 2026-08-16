package nd;

import Bg.j;
import Ic.C2632k;
import android.content.Context;
import android.widget.Toast;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeGraph;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Texture.Cubemap.CubemapConfig;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.A;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.VulkanGraph;
import ga.E;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import ug.C15608a;
import wb.C15983e;
import y8.C16152a;
import yd.C16181m;
import z8.C16273a;
import zg.k;

public abstract class e {

    public class a implements y8.b {

        public final String f97950a;

        public final boolean f97951b;

        public final Context f97952c;

        public final String f97953d;

        public final InterfaceC14380a f97954e;

        public final String f97955f;

        public final y8.b f97956g;

        public class C1884a implements z8.b {
            public C1884a() {
            }

            @Override
            public void a() {
            }

            @Override
            public void b() {
            }

            @Override
            public void c() {
            }
        }

        public a(final String val$outputFolder, final boolean val$searchDependency, final Context val$context, final String val$projectFolder, final InterfaceC14380a val$exportInterface, final String val$zipName, final y8.b val$listener) {
            this.f97950a = val$outputFolder;
            this.f97951b = val$searchDependency;
            this.f97952c = val$context;
            this.f97953d = val$projectFolder;
            this.f97954e = val$exportInterface;
            this.f97955f = val$zipName;
            this.f97956g = val$listener;
        }

        @Override
        public void a() {
            y8.b bVar = this.f97956g;
            if (bVar != null) {
                bVar.a();
            }
        }

        @Override
        public void b() {
        }

        @Override
        public void onSuccess() {
            File[] listFiles;
            File file = new File(this.f97950a);
            if (!file.exists()) {
                file.mkdirs();
            }
            if (this.f97951b) {
                C2632k c2632k = new C2632k();
                File file2 = new File((com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f97952c) + "/_TEMP/" + this.f97953d).replace("//", "/"));
                if (file2.isDirectory() && (listFiles = file2.listFiles()) != null) {
                    for (File file3 : listFiles) {
                        if (file3.isDirectory()) {
                            e.h(c2632k, file3, this.f97952c);
                        } else {
                            e.i(this.f97952c, c2632k, file3);
                        }
                    }
                    for (String str : c2632k.f9114a) {
                        File file4 = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f97952c) + "/_TEMP/" + str);
                        File file5 = new File(Tc.b.u(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f97952c) + "/_TEMP/" + str));
                        if (!file5.exists()) {
                            file5.mkdirs();
                        }
                        if (!file4.exists()) {
                            C16152a.c(new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f97952c) + "/" + str), file4, null);
                        }
                    }
                }
            } else {
                try {
                    Toast.makeText(this.f97952c, "Dependencies ignored.", 0).show();
                } catch (Exception unused) {
                }
            }
            if (this.f97954e != null) {
                StringBuilder sb2 = new StringBuilder();
                com.itsmagic.engine.Core.Components.ProjectController.a aVar = W7.b.f27302b;
                sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f97952c));
                sb2.append("/_TEMP/");
                sb2.append(this.f97953d);
                File file6 = new File(sb2.toString());
                if (file6.isDirectory()) {
                    e.b(file6, this.f97954e);
                }
            }
            f fVar = new f();
            StringBuilder sb3 = new StringBuilder();
            com.itsmagic.engine.Core.Components.ProjectController.a aVar2 = W7.b.f27302b;
            sb3.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f97952c));
            sb3.append("/_TEMP/");
            boolean m10 = fVar.m(sb3.toString(), this.f97950a + "/" + this.f97955f);
            StringBuilder sb4 = new StringBuilder();
            sb4.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(this.f97952c));
            sb4.append("/_TEMP/");
            C16273a.c(sb4.toString(), new C1884a());
            y8.b bVar = this.f97956g;
            if (bVar != null) {
                if (m10) {
                    bVar.onSuccess();
                } else {
                    bVar.a();
                }
            }
        }
    }

    public class b implements z8.b {
        @Override
        public void a() {
        }

        @Override
        public void b() {
        }

        @Override
        public void c() {
        }
    }

    public interface c {
        boolean a(File file);
    }

    @Deprecated
    public static void b(File folder, InterfaceC14380a exportInterface) {
        File[] fileArr;
        try {
            fileArr = folder.listFiles();
        } catch (Exception e10) {
            e10.printStackTrace();
            fileArr = null;
        }
        if (fileArr == null || fileArr.length <= 0) {
            return;
        }
        for (File file : fileArr) {
            if (!exportInterface.a(file)) {
                C16273a.c(file.getAbsolutePath(), new b());
            } else if (file.isDirectory()) {
                b(file, exportInterface);
            }
        }
    }

    public static boolean c(File folder, File outZip, boolean includeSourceFolder) {
        try {
            f fVar = new f();
            return includeSourceFolder ? fVar.g(folder.getAbsolutePath(), outZip.getAbsolutePath()) : fVar.j(folder.getAbsolutePath(), outZip.getAbsolutePath());
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean d(String addFolder, String outputFolder, String zipName) {
        try {
            return new f().g(addFolder, outputFolder + "/" + zipName);
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean e(String addFolder, String outputFolder, String zipName, c listener) {
        return new f().h(addFolder, outputFolder + "/" + zipName, listener);
    }

    @Deprecated
    public static void f(String projectFolder, String outputFolder, String zipName, boolean searchDependency, y8.b listener, Context context) {
        g(projectFolder, outputFolder, zipName, searchDependency, listener, context, null);
    }

    @Deprecated
    public static void g(String projectFolder, String outputFolder, String zipName, boolean searchDependency, y8.b listener, Context context, InterfaceC14380a exportInterface) {
        try {
            StringBuilder sb2 = new StringBuilder();
            com.itsmagic.engine.Core.Components.ProjectController.a aVar = W7.b.f27302b;
            sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(context));
            sb2.append("/");
            sb2.append(projectFolder);
            C16152a.a(sb2.toString(), com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/_TEMP/" + projectFolder, new a(outputFolder, searchDependency, context, projectFolder, exportInterface, zipName, listener));
        } catch (Exception e10) {
            e10.printStackTrace();
            if (listener != null) {
                listener.a();
            }
        }
    }

    @Deprecated
    public static void h(C2632k parentDependency, File folder, Context context) {
        File[] fileArr;
        try {
            fileArr = folder.listFiles();
        } catch (Exception e10) {
            e10.printStackTrace();
            fileArr = null;
        }
        if (fileArr == null || fileArr.length <= 0) {
            return;
        }
        for (File file : fileArr) {
            if (file.isDirectory()) {
                h(parentDependency, file, context);
            } else {
                i(context, parentDependency, file);
            }
        }
    }

    @Deprecated
    public static void i(Context context, C2632k dependency, File file) {
        NoCodeGraph a10;
        C2632k dependencyFiles;
        if (file != null && "settings.config".equalsIgnoreCase(file.getName())) {
            C2632k c10 = K8.a.l().c(null);
            if (c10 != null) {
                dependency.f9114a.addAll(c10.f9114a);
                return;
            }
            return;
        }
        String t10 = Tc.b.t(file.getAbsolutePath());
        if (t10.equals(".world")) {
            World h10 = World.h(X7.a.z(file.getAbsolutePath(), context));
            if (h10 != null) {
                for (GameObject gameObject : h10.q()) {
                    if (gameObject != null) {
                        gameObject.y0(context, dependency, file);
                    }
                }
                return;
            }
            return;
        }
        if (t10.equals(".go")) {
            GameObject T10 = GameObject.T(X7.a.z(file.getAbsolutePath(), context), true, false);
            if (T10 != null) {
                T10.y0(context, dependency, file);
                return;
            }
            return;
        }
        if (t10.equals(".mat")) {
            Material n10 = Material.n(X7.a.z(file.getAbsolutePath(), context));
            if (n10 == null || (dependencyFiles = n10.getDependencyFiles(null)) == null) {
                return;
            }
            dependency.f9114a.addAll(dependencyFiles.f9114a);
            dependencyFiles.f9114a.clear();
            return;
        }
        if (".cbm".equalsIgnoreCase(t10)) {
            try {
                CubemapConfig g10 = C15983e.g(file);
                if (g10 == null || g10.f() == null || g10.f().isEmpty()) {
                    return;
                }
                new C2632k().f9114a.add(g10.f());
                return;
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        if (!t10.equals(".vgs")) {
            if (!t10.equals(".ncg") || (a10 = NoCodeGraph.a(X7.a.z(file.getAbsolutePath(), context))) == null) {
                return;
            }
            NoCodeData d10 = a10.d();
            if (d10 == null) {
                d10 = E.c();
                a10.j(d10);
            }
            d10.I();
            C2632k c11 = a10.c(null);
            if (c11 != null) {
                dependency.f9114a.addAll(c11.f9114a);
                c11.f9114a.clear();
                return;
            }
            return;
        }
        VulkanGraph a11 = VulkanGraph.a(X7.a.z(file.getAbsolutePath(), context));
        if (a11 != null) {
            ShaderGraphData d11 = a11.d();
            if (d11 == null) {
                d11 = A.e();
                a11.j(d11);
            }
            d11.e();
            A.h(d11);
            C2632k c12 = a11.c(null);
            if (c12 != null) {
                dependency.f9114a.addAll(c12.f9114a);
                c12.f9114a.clear();
            }
        }
    }

    public static String j(String entryName) {
        String[] split = entryName.replace(C16181m.f130232i, "/").split("/");
        StringBuilder sb2 = new StringBuilder();
        for (String str : split) {
            if (!str.equals("") && !str.equals(".") && !str.equals(ClasspathEntry.DOT_DOT)) {
                if (sb2.length() > 0) {
                    sb2.append(File.separator);
                }
                sb2.append(str);
            }
        }
        return sb2.toString();
    }

    public static boolean k(String addFolder, String outputFolder, String zipName, c listener) {
        try {
            return new f().h(addFolder, outputFolder + "/" + zipName, listener);
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static void l(String addFolder, String outputFolder, String zipName, c listener) throws IOException {
        new f().i(addFolder, outputFolder + "/" + zipName, listener);
    }

    public static boolean m(File zipfileLocation, File outputFolder) throws IOException {
        return n(zipfileLocation.getAbsolutePath(), outputFolder.getAbsolutePath());
    }

    public static boolean n(String zipfileLocation, String outputFolder) throws IOException {
        File file = new File(zipfileLocation);
        File file2 = new File(outputFolder);
        if (!file.exists()) {
            throw new FileNotFoundException("Arquivo ZIP n\u00e3o encontrado: " + zipfileLocation);
        }
        if (!file2.exists() && !file2.mkdirs()) {
            throw new IOException("N\u00e3o foi poss\u00edvel criar o diret\u00f3rio de destino: " + outputFolder);
        }
        C15608a c15608a = new C15608a(file);
        for (j jVar : c15608a.R()) {
            File file3 = new File(file2, j(jVar.j()));
            if (!file3.getCanonicalPath().startsWith(file2.getCanonicalPath())) {
                System.err.println("Ignorando arquivo suspeito: " + jVar.j());
            } else if (jVar.s()) {
                file3.mkdirs();
            } else {
                file3.getParentFile().mkdirs();
                try {
                    k S10 = c15608a.S(jVar);
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file3);
                        try {
                            byte[] bArr = new byte[4096];
                            while (true) {
                                int read = S10.read(bArr);
                                if (read == -1) {
                                    break;
                                }
                                fileOutputStream.write(bArr, 0, read);
                            }
                            fileOutputStream.close();
                            S10.close();
                        } catch (Throwable th2) {
                            try {
                                fileOutputStream.close();
                            } catch (Throwable th3) {
                                th2.addSuppressed(th3);
                            }
                            throw th2;
                            break;
                        }
                    } catch (Throwable th4) {
                        if (S10 != null) {
                            try {
                                S10.close();
                            } catch (Throwable th5) {
                                th4.addSuppressed(th5);
                            }
                        }
                        throw th4;
                        break;
                    }
                } catch (Exception e10) {
                    System.err.println("Falha ao extrair " + jVar.j() + ": " + e10.getMessage());
                }
            }
        }
        return true;
    }
}
