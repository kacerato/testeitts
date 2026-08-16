package K3;

import android.content.Context;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.itsmagic.engine.Engines.Engine.World.a;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.File;
import java.util.List;

public class e {

    public static final List<K3.c> f10796a = new SteppedArrayList();

    public static final Object f10797b = new Object();

    public static final f f10798c = new a();

    public class a implements f {
        @Override
        public void a(String project, BuildDictionary buildDictionary, File parent) {
            e.f(project, buildDictionary, parent, true, null);
        }
    }

    public class b extends SteppedArrayList<L3.a> {

        public final File f10799b;

        public final File f10800c;

        public b(final File val$file, final File val$destination) {
            this.f10799b = val$file;
            this.f10800c = val$destination;
            add(new L3.a(val$file, val$destination));
        }
    }

    public class c extends SteppedArrayList<L3.a> {

        public final File f10801b;

        public final File f10802c;

        public c(final File val$file, final File val$destination) {
            this.f10801b = val$file;
            this.f10802c = val$destination;
            add(new L3.a(val$file, val$destination));
        }
    }

    public class d implements a.k {

        public final String f10803a;

        public d(final String val$finalWorldPath) {
            this.f10803a = val$finalWorldPath;
        }

        @Override
        public World onFailed() {
            N7.c.v0("Failed to load the world [" + this.f10803a + "] after rename");
            return null;
        }

        @Override
        public void onSuccess() {
        }
    }

    public interface InterfaceC0348e {
        void a(File file);
    }

    public static void a(String projectPath, BuildDictionary buildDictionary, File parent, InterfaceC0348e listener) {
        File[] listFiles;
        Context t10 = N7.c.t();
        if (!parent.isDirectory() || (listFiles = parent.listFiles()) == null) {
            return;
        }
        for (File file : listFiles) {
            String replace = file.getAbsolutePath().replace(projectPath, "");
            if (!file.isDirectory()) {
                String t11 = Tc.b.t(file.getName());
                if (t11.equals(".world")) {
                    buildDictionary.h("WORLD FOUND " + file.getAbsolutePath().replace(projectPath, ""));
                    if (listener != null) {
                        listener.a(file);
                    }
                    World h10 = World.h(X7.a.x(file));
                    if (h10 != null) {
                        h10.w(buildDictionary);
                        buildDictionary.h("WORLD SAVE " + com.itsmagic.engine.Engines.Engine.World.a.T(h10, file, t10));
                    }
                } else if (t11.equals(".go")) {
                    buildDictionary.h("OBJECT FOUND " + file.getAbsolutePath().replace(projectPath, ""));
                    if (listener != null) {
                        listener.a(file);
                    }
                    GameObject T10 = GameObject.T(X7.a.x(file), true, false);
                    if (T10 != null) {
                        T10.reloadFilesPaths(buildDictionary);
                        X7.a.i(file, T10.x1().toString());
                    }
                } else if (t11.equals(".mat")) {
                    buildDictionary.h("MATERIAL FOUND " + file.getAbsolutePath().replace(projectPath, ""));
                    if (listener != null) {
                        listener.a(file);
                    }
                    Material n10 = Material.n(X7.a.x(file));
                    if (n10 != null) {
                        n10.reloadFilesPaths(buildDictionary);
                        X7.a.i(file, n10.a0(t10));
                    }
                }
            } else if (!replace.startsWith("JAVARuntime") && !replace.startsWith("_EDITOR")) {
                a(projectPath, buildDictionary, file, listener);
            }
        }
    }

    public static void b(File file, File destination, K3.a callback) {
        c(new c(file, destination), callback);
    }

    public static void c(List<L3.a> moveList, K3.a callback) {
        moveList.getClass();
        callback.getClass();
        String str = com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/";
        synchronized (f10797b) {
            f10796a.add(new K3.b(callback, str, moveList));
        }
    }

    public static int d() {
        int size;
        synchronized (f10797b) {
            size = f10796a.size();
        }
        return size;
    }

    public static void e(File file, String newName, K3.a callback) {
        c(new b(file, new File(file.getParentFile(), newName)), callback);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void f(String projectPath, BuildDictionary buildDictionary, File parent, boolean considerOpenWorld, InterfaceC0348e listener) {
        boolean z10;
        String str;
        File file;
        File file2;
        if (considerOpenWorld && com.itsmagic.engine.Engines.Engine.World.a.f80030c != null) {
            BuildDicFile f10 = buildDictionary.f(Tc.b.o(com.itsmagic.engine.Engines.Engine.World.a.f80030c.folder + "/" + com.itsmagic.engine.Engines.Engine.World.a.f80030c.fileName));
            if (f10 != null) {
                str = f10.b();
                z10 = true;
                file = new File(projectPath + "_EDITOR/currentScene.scn");
                if (file.exists()) {
                    buildDictionary.h("WORLD FOUND " + file.getAbsolutePath().replace(projectPath, ""));
                    if (listener != null) {
                        listener.a(file);
                    }
                    World h10 = World.h(X7.a.x(file));
                    if (h10 != null) {
                        h10.w(buildDictionary);
                        buildDictionary.h("WORLD SAVE " + com.itsmagic.engine.Engines.Engine.World.a.T(h10, file, N7.c.t()));
                    }
                }
                file2 = new File(projectPath + "_EDITOR/tsc.scn");
                if (file2.exists()) {
                    buildDictionary.h("WORLD FOUND " + file2.getAbsolutePath().replace(projectPath, ""));
                    if (listener != null) {
                        listener.a(file2);
                    }
                    World h11 = World.h(X7.a.x(file2));
                    if (h11 != null) {
                        h11.w(buildDictionary);
                        buildDictionary.h("WORLD SAVE " + com.itsmagic.engine.Engines.Engine.World.a.T(h11, file2, N7.c.t()));
                    }
                }
                a(projectPath, buildDictionary, parent, listener);
                if (z10) {
                    return;
                }
                com.itsmagic.engine.Engines.Engine.World.a.H(str, true, new d(str));
                return;
            }
            com.itsmagic.engine.Engines.Engine.World.a.f80030c.w(buildDictionary);
            boolean T10 = com.itsmagic.engine.Engines.Engine.World.a.T(com.itsmagic.engine.Engines.Engine.World.a.f80030c, new File(projectPath + com.itsmagic.engine.Engines.Engine.World.a.f80030c.folder + "/" + com.itsmagic.engine.Engines.Engine.World.a.f80030c.fileName), N7.c.t());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("WORLD SAVE ");
            sb2.append(T10);
            buildDictionary.h(sb2.toString());
        }
        z10 = false;
        str = null;
        file = new File(projectPath + "_EDITOR/currentScene.scn");
        if (file.exists()) {
        }
        file2 = new File(projectPath + "_EDITOR/tsc.scn");
        if (file2.exists()) {
        }
        a(projectPath, buildDictionary, parent, listener);
        if (z10) {
        }
    }

    public static void g() {
        synchronized (f10797b) {
            try {
                List<K3.c> list = f10796a;
                if (!list.isEmpty()) {
                    final K3.c cVar = list.get(0);
                    cVar.f10792c = f10798c;
                    if (cVar.f10790a) {
                        cVar.f();
                    } else {
                        cVar.d();
                        O9.b.d(new Runnable() {
                            @Override
                            public final void run() {
                                c.this.e();
                            }
                        });
                        cVar.f10790a = true;
                    }
                    if (cVar.c()) {
                        list.remove(cVar);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
