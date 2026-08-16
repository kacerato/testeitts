package u8;

import Ic.C2633l;
import Ob.a;
import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Utils.C12740h;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.FolderManifest;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeGraph;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Settings.GameSettings;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Dictionary.ShaderTemplates;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.A;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.VulkanGraph;
import ec.h;
import ga.E;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import mc.C14212f;
import mc.k;
import n.C14331a;
import nd.e;
import ug.C15608a;
import y8.C16152a;
import yb.C16165b;
import yd.C16181m;
import z8.C16273a;

public class C15579a {

    public BuildDictionary f118603a;

    public String[] f118604b;

    public String[] f118605c;

    public String f118606d;

    public String f118607e;

    public final boolean f118608f;

    public class C2033a implements z8.b {

        public final d f118609a;

        public final int[] f118610b;

        public C2033a(final d val$serviceListener, final int[] val$count) {
            this.f118609a = val$serviceListener;
            this.f118610b = val$count;
        }

        @Override
        public void a() {
            d dVar = this.f118609a;
            if (dVar != null) {
                dVar.a();
            }
        }

        @Override
        public void b() {
            d dVar = this.f118609a;
            if (dVar != null) {
                dVar.onSuccess();
            }
        }

        @Override
        public void c() {
            d dVar = this.f118609a;
            if (dVar != null) {
                int[] iArr = this.f118610b;
                int i10 = iArr[0] + 1;
                iArr[0] = i10;
                dVar.onProgressChange(i10, i10);
            }
        }
    }

    public class b implements Runnable {

        public int f118612b;

        public final AtomicInteger f118613c = new AtomicInteger();

        public final File f118614d;

        public final d f118615e;

        public final File f118616f;

        public class C2034a implements C14212f.c {

            public class RunnableC2035a implements Runnable {
                public RunnableC2035a() {
                }

                @Override
                public void run() {
                    b bVar = b.this;
                    bVar.f118615e.onProgressChange(bVar.f118613c.get(), b.this.f118612b);
                }
            }

            public class RunnableC2036b implements Runnable {
                public RunnableC2036b() {
                }

                @Override
                public void run() {
                    b bVar = b.this;
                    bVar.f118615e.onProgressChange(bVar.f118613c.get(), b.this.f118612b);
                }
            }

            public C2034a() {
            }

            @Override
            public void a(int t10) {
                b.this.f118612b += t10;
                N7.c.j0(new RunnableC2035a());
            }

            @Override
            public void b() {
                b.this.f118613c.incrementAndGet();
                N7.c.j0(new RunnableC2036b());
            }
        }

        public class RunnableC2037b implements Runnable {
            public RunnableC2037b() {
            }

            @Override
            public void run() {
                b bVar = b.this;
                bVar.f118615e.onProgressChange(bVar.f118613c.get(), b.this.f118612b);
            }
        }

        public class c implements Runnable {
            public c() {
            }

            @Override
            public void run() {
                b.this.f118615e.onSuccess();
            }
        }

        public b(final File val$shaderCacheFolder, final d val$serviceListener, final File val$avBin) {
            this.f118614d = val$shaderCacheFolder;
            this.f118615e = val$serviceListener;
            this.f118616f = val$avBin;
        }

        @Override
        public void run() {
            k.d(N7.c.t(), this.f118614d);
            File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_VULKAN/");
            if (file.exists()) {
                C16152a.c(file, this.f118614d, null);
            }
            O9.a<ShaderTemplates.a> g10 = a.b.f16600a.g();
            this.f118612b += g10.size();
            C14212f.c(this.f118614d, new C2034a());
            ec.b.n(this.f118614d);
            for (int i10 = 0; i10 < g10.size(); i10++) {
                ShaderTemplates.a aVar = g10.get(i10);
                aVar.f81111c.C(aVar.f81112d);
                this.f118613c.incrementAndGet();
                N7.c.j0(new RunnableC2037b());
            }
            ec.b.b();
            h.h();
            if (this.f118616f.exists()) {
                this.f118616f.delete();
            }
            N7.c.j0(new c());
        }
    }

    public class c implements z8.b {

        public final int f118623a;

        public final d f118624b;

        public final Context f118625c;

        public final int[] f118626d;

        public c(final int val$x, final d val$serviceListener, final Context val$context, final int[] val$count) {
            this.f118623a = val$x;
            this.f118624b = val$serviceListener;
            this.f118625c = val$context;
            this.f118626d = val$count;
        }

        @Override
        public void a() {
            d dVar = this.f118624b;
            if (dVar != null) {
                dVar.a();
            }
        }

        @Override
        public void b() {
            C15579a.this.f118603a.h("Deleted unnecessary file: /Builder/assets/compiled/" + C15579a.this.f118604b[this.f118623a]);
            if (this.f118623a < C15579a.this.f118604b.length - 1) {
                C15579a.this.w(this.f118623a + 1, this.f118624b, this.f118625c);
                return;
            }
            d dVar = this.f118624b;
            if (dVar != null) {
                dVar.onSuccess();
            }
        }

        @Override
        public void c() {
            d dVar = this.f118624b;
            if (dVar != null) {
                int[] iArr = this.f118626d;
                int i10 = iArr[0] + 1;
                iArr[0] = i10;
                dVar.onProgressChange(i10, this.f118623a);
            }
        }
    }

    public C15579a(String worldZero) {
        this(worldZero, true);
    }

    public static String y(String path) {
        if (path == null) {
            return null;
        }
        String o10 = Tc.b.o(path.trim());
        if (o10.startsWith("/")) {
            o10 = o10.substring(1);
        }
        if (o10.isEmpty()) {
            return null;
        }
        return o10;
    }

    public void c(String relativePath) {
        if (relativePath == null || relativePath.trim().isEmpty()) {
            return;
        }
        String replace = relativePath.trim().replace(C16181m.f130232i, "/");
        for (String str : this.f118604b) {
            if (replace.equals(str)) {
                return;
            }
        }
        String[] strArr = this.f118604b;
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length + 1);
        this.f118604b = strArr2;
        strArr2[strArr2.length - 1] = replace;
    }

    public final void d(File projectFiles, Context context) {
        for (File file : projectFiles.listFiles()) {
            FolderManifest folderManifest = null;
            if (file.isDirectory()) {
                File file2 = new File(file, "f.manifest");
                if (file2.exists()) {
                    try {
                        folderManifest = (FolderManifest) X7.a.m().fromJson(X7.a.z(file2.getAbsolutePath(), context), FolderManifest.class);
                    } catch (Error | Exception unused) {
                    }
                    if (folderManifest == null) {
                        d(file, context);
                    } else if (!folderManifest.excludeFromAPK) {
                        d(file, context);
                    }
                } else {
                    d(file, context);
                }
            } else {
                C16152a.c(file, new File(W7.b.f27306f.f2458a.b(context) + "/Builder/assets/compiled/" + file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/", "")), null);
            }
        }
    }

    public void e(d serviceListener, Context context) {
        e.c(new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/Resources/"), new File(W7.b.f27306f.f2458a.b(context) + "/Builder/assets/compiled/resources.zip"), false);
        if (serviceListener != null) {
            serviceListener.onSuccess();
        }
    }

    public void f(d serviceListener, Context context) {
        if (!this.f118608f) {
            if (serviceListener != null) {
                serviceListener.onSuccess();
                return;
            }
            return;
        }
        try {
            File file = new File(new File(W7.b.f27306f.f2458a.b(context) + "/Builder/assets/compiled"), "vulkan");
            file.mkdirs();
            O9.b.d(new b(file, serviceListener, new File(file, "av.bin")));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void g(d serviceListener, Context context) {
        String str = W7.b.f27306f.f2458a.b(context) + "/Builder/assets/compiled/";
        File file = new File(str);
        if (!file.exists()) {
            if (serviceListener != null) {
                serviceListener.a();
                return;
            }
            return;
        }
        j(context);
        for (BuildDicFile buildDicFile : this.f118603a.g()) {
            String c10 = buildDicFile.c();
            String t10 = Tc.b.t(c10);
            String b10 = buildDicFile.b();
            if (b10.equals(this.f118606d)) {
                this.f118603a.h("ZERO WORLD FOUND " + c10 + " to " + new File(file, b10).getAbsolutePath());
                World h10 = World.h(X7.a.B(str, b10, context));
                if (h10 != null) {
                    h10.w(this.f118603a);
                    boolean U10 = com.itsmagic.engine.Engines.Engine.World.a.U(h10, str, b10, context, true);
                    this.f118603a.h("ZERO WORLD SAVE " + U10);
                }
                if (b10.equals(this.f118606d)) {
                    buildDicFile.a();
                }
            } else if (t10.equals(".world")) {
                this.f118603a.h("WORLD FOUND " + c10 + " to " + new File(file, b10).getAbsolutePath());
                World h11 = World.h(X7.a.B(str, b10, context));
                if (h11 != null) {
                    h11.w(this.f118603a);
                    boolean U11 = com.itsmagic.engine.Engines.Engine.World.a.U(h11, str, b10, context, true);
                    this.f118603a.h("WORLD SAVE " + U11);
                }
            } else if (t10.equals(".go")) {
                this.f118603a.h("OBJECT FOUND " + c10);
                GameObject T10 = GameObject.T(X7.a.B(str, b10, context), true, false);
                if (T10 != null) {
                    T10.s1();
                    T10.reloadFilesPaths(this.f118603a);
                    X7.a.k(str, b10, T10.x1().toString());
                }
            } else if (t10.equals(".mat")) {
                this.f118603a.h("MATERIAL FOUND " + c10);
                Material n10 = Material.n(X7.a.B(str, b10, context));
                if (n10 != null) {
                    n10.reloadFilesPaths(this.f118603a);
                    X7.a.k(str, b10, n10.a0(context));
                }
            } else if (t10.equals(".vgs")) {
                this.f118603a.h("Vulkan graph FOUND " + c10);
                VulkanGraph a10 = VulkanGraph.a(X7.a.B(str, b10, context));
                if (a10 != null) {
                    ShaderGraphData d10 = a10.d();
                    if (d10 == null) {
                        d10 = A.e();
                        a10.j(d10);
                    }
                    d10.e();
                    A.h(d10);
                    a10.f(this.f118603a);
                    X7.a.k(str, b10, a10.i(context));
                }
            } else if (t10.equals(".ncg")) {
                this.f118603a.h("Code graph FOUND " + c10);
                NoCodeGraph a11 = NoCodeGraph.a(X7.a.B(str, b10, context));
                if (a11 != null) {
                    NoCodeData d11 = a11.d();
                    if (d11 == null) {
                        d11 = E.c();
                        a11.j(d11);
                    }
                    d11.I();
                    a11.f(this.f118603a);
                    X7.a.k(str, b10, a11.i(context));
                }
            }
        }
        if (serviceListener != null) {
            serviceListener.onSuccess();
        }
    }

    public void h(d serviceListener, Context context) {
        try {
            StringBuilder sb2 = new StringBuilder();
            C8.a aVar = W7.b.f27306f;
            sb2.append(aVar.f2458a.b(context));
            sb2.append("/Builder/assets.zip");
            File file = new File(sb2.toString());
            if (file.exists()) {
                file.delete();
            }
            C15608a c15608a = new C15608a(aVar.f2458a.b(context) + "/Builder/assets.zip");
            for (File file2 : new File(aVar.f2458a.b(context) + "/Builder/assets/compiled").listFiles()) {
                if (file2.isDirectory()) {
                    c15608a.g(file2);
                } else {
                    c15608a.a(file2);
                }
            }
            if (serviceListener != null) {
                serviceListener.onSuccess();
            }
        } catch (IOException e10) {
            e10.printStackTrace();
            if (serviceListener != null) {
                serviceListener.a();
            }
        }
    }

    public void i(d serviceListener, Context context) {
        File[] listFiles = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/").listFiles();
        int length = listFiles.length;
        int i10 = 0;
        while (true) {
            FolderManifest folderManifest = null;
            if (i10 >= length) {
                break;
            }
            File file = listFiles[i10];
            if (!file.isDirectory()) {
                String replace = file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/", "");
                if (C16152a.c(file, new File(W7.b.f27306f.f2458a.b(context) + "/Builder/assets/compiled/" + replace), null)) {
                    this.f118603a.h("Failed to copy " + replace + " TO ASSETS FOLDER:/Builder/assets/compiled/" + replace);
                }
            } else if (!file.getName().equals("Files")) {
                File file2 = new File(file, "f.manifest");
                if (file2.exists()) {
                    try {
                        folderManifest = (FolderManifest) X7.a.m().fromJson(X7.a.z(file2.getAbsolutePath(), context), FolderManifest.class);
                    } catch (Error | Exception unused) {
                    }
                    if (folderManifest == null) {
                        d(file, context);
                    } else if (!folderManifest.excludeFromAPK) {
                        d(file, context);
                    }
                } else {
                    d(file, context);
                }
            }
            i10++;
        }
        if (!C16152a.c(new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/Files/")), new File(Tc.b.o(W7.b.f27306f.f2458a.b(context) + "/Builder/assets/compiled/Files/")), null)) {
            if (serviceListener != null) {
                serviceListener.a();
            }
        } else {
            v(context);
            if (serviceListener != null) {
                serviceListener.onSuccess();
            }
        }
    }

    public final void j(Context context) {
        GameSettings gameSettings;
        File file = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/_PROJECT/settings.config"));
        File file2 = new File(Tc.b.o(W7.b.f27306f.f2458a.b(context) + "/Builder/assets/compiled/project_settings.config"));
        if (file.exists()) {
            C16152a.c(file, file2, null);
        }
        if (file2.exists()) {
            String x10 = X7.a.x(file2);
            if (x10 == null || x10.isEmpty()) {
                System.out.println("Failed to load game settings: json is empty");
                gameSettings = new GameSettings();
            } else {
                gameSettings = (GameSettings) X7.a.m().fromJson(x10, GameSettings.class);
            }
            if (gameSettings == null) {
                gameSettings = new GameSettings();
            }
            gameSettings.isFull = C14331a.d();
            gameSettings.buildID = Nc.d.c();
            gameSettings.j(this.f118603a);
            X7.a.h(file2, X7.a.m().toJson(gameSettings));
        }
    }

    public void k(d serviceListener, Context context) {
        File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/JAVARuntime/runtime.zip");
        File file2 = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/JAVARuntime/rtdic.config");
        if (!file.exists() || !file2.exists()) {
            if (serviceListener != null) {
                serviceListener.onSuccess();
                return;
            }
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        C8.a aVar = W7.b.f27306f;
        sb2.append(aVar.f2458a.b(context));
        sb2.append("/Builder/assets/compiled/javaruntime.zip");
        if (!C16152a.c(file, new File(sb2.toString()), null)) {
            if (serviceListener != null) {
                serviceListener.a();
                return;
            }
            return;
        }
        if (C16152a.c(file2, new File(aVar.f2458a.b(context) + "/Builder/assets/compiled/rtdic.config"), null)) {
            if (serviceListener != null) {
                serviceListener.onSuccess();
            }
        } else if (serviceListener != null) {
            serviceListener.a();
        }
    }

    public void l(d serviceListener, Context context) {
        C16273a.c(W7.b.f27306f.f2458a.b(context) + "/Builder/assets/", new C2033a(serviceListener, new int[]{0}));
    }

    public final void m(File file) {
        if (!file.isDirectory()) {
            if (C2633l.b(file.getName(), ".vglsl") || C2633l.b(file.getName(), ".gglsl") || C2633l.b(file.getName(), ".fglsl")) {
                return;
            }
            file.delete();
            return;
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null && file.length() > 0) {
            for (File file2 : listFiles) {
                m(file2);
            }
        }
        File[] listFiles2 = file.listFiles();
        if (listFiles2 == null || listFiles2.length <= 0) {
            file.delete();
        }
    }

    public void n(d serviceListener, Context context) {
        File file = new File(W7.b.f27306f.f2458a.b(context) + "/Builder/assets/compiled/");
        if (!file.exists()) {
            if (serviceListener != null) {
                serviceListener.a();
                return;
            }
            return;
        }
        for (File file2 : file.listFiles()) {
            if (file2.isDirectory()) {
                m(file2);
            }
        }
        if (serviceListener != null) {
            serviceListener.onSuccess();
        }
    }

    public void o(d serviceListener, Context context) {
        String str = W7.b.f27306f.f2458a.b(context) + "/Builder/assets/compiled/";
        File file = new File(str);
        if (!file.exists()) {
            if (serviceListener != null) {
                serviceListener.a();
                return;
            }
            return;
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2 != null) {
                    String t10 = Tc.b.t(file2.getAbsolutePath());
                    if (C2633l.b(t10, ".jks") || C2633l.b(t10, ".obj|.fbx|.gltf|.glb|.stl|.dae|.blend|.3ds|.ply|.3mf") || C2633l.b(t10, ".tga") || C2633l.b(t10, ".tif")) {
                        this.f118603a.h("FILE " + file2.getName() + " DELETED");
                        this.f118603a.c(file2.getAbsolutePath().replace(str, ""));
                        file2.delete();
                    }
                }
            }
        }
        if (serviceListener != null) {
            serviceListener.onSuccess();
        }
    }

    public final void p(File folder) {
        File[] listFiles = folder.listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.isDirectory()) {
                    p(file);
                } else {
                    String[] strArr = this.f118605c;
                    int length = strArr.length;
                    int i10 = 0;
                    while (true) {
                        if (i10 < length) {
                            if (file.getAbsolutePath().endsWith(strArr[i10])) {
                                file.delete();
                                this.f118603a.h("Deleted unnecessary file: " + file.getAbsolutePath());
                                break;
                            }
                            i10++;
                        }
                    }
                }
            }
        }
    }

    public void q(d serviceListener, Context context) {
        w(0, serviceListener, context);
    }

    public void r(d serviceListener, Context context) {
        String y10;
        String y11;
        File file = new File(W7.b.f27306f.f2458a.b(context) + "/Builder/assets/compiled/");
        if (!file.exists()) {
            if (serviceListener != null) {
                serviceListener.a();
                return;
            }
            return;
        }
        C12740h.b bVar = new C12740h.b();
        bVar.f72131a = true;
        bVar.f72132b = false;
        C12740h.c n10 = C12740h.n(context, bVar);
        while (true) {
            HashSet hashSet = new HashSet();
            Iterator<BuildDicFile> it = this.f118603a.g().iterator();
            while (it.hasNext()) {
                String y12 = y(it.next().c());
                if (y12 != null) {
                    hashSet.add(y12);
                }
            }
            LinkedList linkedList = new LinkedList();
            for (BuildDicFile buildDicFile : this.f118603a.g()) {
                String c10 = buildDicFile.c();
                if (c10 != null && !c10.isEmpty() && !c10.equals(this.f118607e) && (y10 = y(c10)) != null && !y10.startsWith("Resources/") && !y10.startsWith("Resources\\")) {
                    List<File> c11 = n10.c(y10, context);
                    int i10 = 0;
                    while (true) {
                        if (i10 < c11.size()) {
                            File file2 = c11.get(i10);
                            if (file2 != null && (y11 = y(com.itsmagic.engine.Core.Components.ProjectController.a.P(file2))) != null && hashSet.contains(y11)) {
                                break;
                            } else {
                                i10++;
                            }
                        } else {
                            linkedList.add(buildDicFile);
                            File file3 = new File(file, buildDicFile.b());
                            if (file3.exists()) {
                                file3.delete();
                                this.f118603a.h("Deleted unused file from dic: " + buildDicFile.c());
                            }
                            if (C2633l.b(buildDicFile.c(), ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm")) {
                                File file4 = new File(file, Tc.b.O(buildDicFile.b()) + ".texture");
                                if (file4.exists()) {
                                    file4.delete();
                                    this.f118603a.h("Deleted unused file from dic: " + buildDicFile.c());
                                }
                                File file5 = new File(file, buildDicFile.b() + ".config");
                                if (file5.exists()) {
                                    file5.delete();
                                    this.f118603a.h("Deleted unused file from dic: " + buildDicFile.c());
                                }
                            } else if (C2633l.b(buildDicFile.c(), ".mp3|.wav|.ogg|.3gp|.m4a|.aac|.ts|.flac|.gsm|.mid|.xmf|.ota|.imy|.rtx|.mkv")) {
                                File file6 = new File(file, Tc.b.O(buildDicFile.b()) + ".sound");
                                if (file6.exists()) {
                                    file6.delete();
                                    this.f118603a.h("Deleted unused file from dic: " + buildDicFile.c());
                                }
                                File file7 = new File(file, buildDicFile.b() + ".config");
                                if (file7.exists()) {
                                    file7.delete();
                                    this.f118603a.h("Deleted unused file from dic: " + buildDicFile.c());
                                }
                            }
                        }
                    }
                }
            }
            if (linkedList.isEmpty()) {
                break;
            } else {
                this.f118603a.j(linkedList);
            }
        }
        if (serviceListener != null) {
            serviceListener.onSuccess();
        }
    }

    public final void s(File file, String path, BuildDictionary buildDictionary) {
        String replace = file.getAbsolutePath().replace(path, "");
        if (replace.equals(this.f118607e) || C2633l.b(Tc.b.t(replace), C2633l.d(".texture", ".sound", ".config", C2633l.f9169o))) {
            return;
        }
        t(file, path, buildDictionary);
    }

    public final boolean t(File file, String masterFolder, BuildDictionary buildDictionary) {
        if (file != null && file.exists()) {
            if (file.isDirectory()) {
                File[] listFiles = file.listFiles();
                if (listFiles != null) {
                    for (File file2 : listFiles) {
                        s(file2, masterFolder, buildDictionary);
                    }
                }
            } else {
                String replace = file.getAbsolutePath().replace(masterFolder, "");
                String str = Tc.b.L() + Tc.b.t(file.getAbsolutePath());
                if (C2633l.b(replace, ".vglsl") || C2633l.b(replace, ".gglsl") || C2633l.b(replace, ".fglsl")) {
                    str = replace;
                }
                buildDictionary.h("CREATING FILE " + replace + " TO " + str);
                buildDictionary.a(new BuildDicFile(replace, str));
            }
        }
        return true;
    }

    public void u(d serviceListener, Context context) {
        String str = W7.b.f27306f.f2458a.b(context) + "/Builder/assets/compiled/";
        File file = new File(str);
        BuildDictionary buildDictionary = new BuildDictionary();
        this.f118603a = buildDictionary;
        buildDictionary.a(new BuildDicFile(this.f118607e, this.f118606d));
        this.f118603a.h("CREATING WORLDZERO FILE " + this.f118607e + " TO " + this.f118606d);
        if (!file.exists()) {
            if (serviceListener != null) {
                serviceListener.a();
                return;
            }
            return;
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    s(file2, str, this.f118603a);
                } else {
                    String name = file2.getName();
                    if (!name.equals("javaruntime.zip") && !name.equals("rtdic.config") && !name.equals("worldzero")) {
                        s(file2, str, this.f118603a);
                    }
                }
            }
        }
        if (serviceListener != null) {
            serviceListener.onSuccess();
        }
    }

    public final void v(Context context) {
        C12740h.b bVar = new C12740h.b();
        bVar.f72131a = true;
        boolean z10 = false;
        bVar.f72132b = false;
        Iterator<String> it = C12740h.e(context, bVar).iterator();
        while (it.hasNext()) {
            String y10 = y(it.next());
            if (y10 != null && C2633l.b(y10, ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm")) {
                C16165b.e(y10);
                if (y10.startsWith("_PROJECT/Gallery/Textures/PBR/")) {
                    z10 = true;
                }
            }
        }
        if (z10) {
            File file = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/_PROJECT/"));
            File file2 = new File(Tc.b.o(W7.b.f27306f.f2458a.b(context) + "/Builder/assets/compiled/_PROJECT/"));
            if (file.exists()) {
                C16152a.c(file, file2, null);
            }
        }
    }

    public final void w(int x10, d serviceListener, Context context) {
        int[] iArr = {0};
        StringBuilder sb2 = new StringBuilder();
        C8.a aVar = W7.b.f27306f;
        sb2.append(aVar.f2458a.b(context));
        sb2.append("/Builder/assets/compiled/");
        p(new File(sb2.toString()));
        String[] strArr = this.f118604b;
        if (strArr == null || strArr.length <= 0) {
            if (serviceListener != null) {
                serviceListener.onSuccess();
                return;
            }
            return;
        }
        if (new File(aVar.f2458a.b(context) + "/Builder/assets/compiled/" + this.f118604b[x10]).exists()) {
            C16273a.c(aVar.f2458a.b(context) + "/Builder/assets/compiled/" + this.f118604b[x10], new c(x10, serviceListener, context, iArr));
            return;
        }
        if (x10 < this.f118604b.length - 1) {
            w(x10 + 1, serviceListener, context);
        } else if (serviceListener != null) {
            serviceListener.onSuccess();
        }
    }

    public void x(d serviceListener, Context context) {
        StringBuilder sb2 = new StringBuilder();
        C8.a aVar = W7.b.f27306f;
        sb2.append(aVar.f2458a.b(context));
        sb2.append("/Builder/assets/compiled/");
        sb2.append(this.f118607e);
        File file = new File(sb2.toString());
        File file2 = new File(aVar.f2458a.b(context) + "/Builder/assets/compiled/" + this.f118606d);
        if (file.exists()) {
            file.renameTo(file2);
        }
        if (serviceListener != null) {
            serviceListener.onSuccess();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0271  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0296  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void z(d serviceListener, Context context) {
        File file = new File(W7.b.f27306f.f2458a.b(context) + "/Builder/assets/compiled/");
        if (!file.exists()) {
            if (serviceListener != null) {
                serviceListener.a();
                return;
            }
            return;
        }
        for (int i10 = 0; i10 < this.f118603a.g().size(); i10++) {
            BuildDicFile buildDicFile = this.f118603a.g().get(i10);
            if (!C2633l.b(buildDicFile.c(), ".vglsl") && !C2633l.b(buildDicFile.c(), ".gglsl") && !C2633l.b(buildDicFile.c(), ".fglsl")) {
                File file2 = new File(file, buildDicFile.c());
                File file3 = new File(file, buildDicFile.b());
                if (!C2633l.b(Tc.b.t(buildDicFile.c()), ".config")) {
                    File file4 = new File(file, buildDicFile.c() + ".config");
                    if (file4.exists()) {
                        File file5 = new File(file, buildDicFile.b() + ".config");
                        boolean renameTo = file4.renameTo(file5);
                        this.f118603a.h("RENAMING CONFIG FILE " + buildDicFile.c() + " TO " + file5.getName() + " r " + renameTo);
                    }
                    if (C2633l.b(Tc.b.t(buildDicFile.c()), ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm")) {
                        File file6 = new File(file, Tc.b.O(buildDicFile.c()) + ".texture");
                        if (file6.exists()) {
                            file6.renameTo(new File(file, Tc.b.O(buildDicFile.b()) + ".texture"));
                            File file7 = new File(file, Tc.b.O(buildDicFile.c()) + C2633l.f9169o);
                            if (file7.exists()) {
                                file7.renameTo(new File(file, Tc.b.O(buildDicFile.b()) + C2633l.f9169o));
                            }
                            if (file2.exists()) {
                                file2.delete();
                            }
                            this.f118603a.h("RENAMING TEXTURE FILE " + buildDicFile.c() + " TO " + buildDicFile.b());
                        }
                        if (file2.exists()) {
                            boolean renameTo2 = file2.exists() ? file2.renameTo(file3) : false;
                            if (renameTo2) {
                                this.f118603a.h("RENAMING FILE " + buildDicFile.c() + " TO " + buildDicFile.b() + " r " + renameTo2);
                            } else {
                                this.f118603a.h("FAILED RENAMING FILE " + buildDicFile.c() + " (Exists?+" + file2.exists() + ") TO " + buildDicFile.b() + " (Exists?+" + file3.exists());
                            }
                        } else {
                            this.f118603a.h("FAILED RENAMING FILE " + buildDicFile.c() + " because it doesn't exist fullpath: " + file2.getAbsolutePath());
                        }
                    } else if (C2633l.b(Tc.b.t(buildDicFile.c()), ".mp3|.wav|.ogg|.3gp|.m4a|.aac|.ts|.flac|.gsm|.mid|.xmf|.ota|.imy|.rtx|.mkv")) {
                        File file8 = new File(file, Tc.b.O(buildDicFile.c()) + ".sound");
                        if (file8.exists()) {
                            file8.renameTo(new File(file, Tc.b.O(buildDicFile.b()) + ".sound"));
                            if (file2.exists()) {
                                file2.delete();
                            }
                            this.f118603a.h("RENAMING SOUND FILE " + buildDicFile.c() + " TO " + buildDicFile.b());
                        }
                        if (file2.exists()) {
                        }
                    } else {
                        if (C2633l.b(Tc.b.t(buildDicFile.c()), ".jks")) {
                            this.f118603a.h("JKS FILE " + buildDicFile.c() + " DELETED");
                            file2.delete();
                        }
                        if (file2.exists()) {
                        }
                    }
                }
            }
        }
        if (serviceListener != null) {
            serviceListener.onSuccess();
        }
    }

    public C15579a(String worldZero, boolean generateVulkanShadersPreCache) {
        this.f118603a = new BuildDictionary();
        this.f118604b = new String[]{"_EDITOR/APP/Settings/Signing"};
        this.f118605c = new String[]{".java", ".class", ".javac", ".dex", "pfile.config", "jmi.config"};
        this.f118606d = "worldzero";
        this.f118607e = worldZero;
        this.f118608f = generateVulkanShadersPreCache;
    }
}
