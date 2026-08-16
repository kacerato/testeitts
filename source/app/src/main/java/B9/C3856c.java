package b9;

import Ic.C2633l;
import Ic.I;
import android.content.Context;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import d8.j;
import d8.r;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import nd.e;
import org.luaj.vm2.Globals;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.lib.jse.CoerceJavaToLua;
import org.luaj.vm2.lib.jse.JsePlatform;
import yd.C16181m;

public class C3856c {

    public static final List<C3857d> f33036a = new SteppedArrayList();

    public static final List<e8.c> f33037b = new SteppedArrayList();

    public static final AtomicBoolean f33038c = new AtomicBoolean();

    public class a implements Runnable {
        @Override
        public void run() {
            C3856c.m();
        }
    }

    public class b implements Runnable {

        public final Context f33039b;

        public class a implements x8.b {
            public a() {
            }

            @Override
            public void a() {
                C3856c.m();
            }

            @Override
            public void b() {
                C3856c.m();
            }
        }

        public b(final Context val$context) {
            this.f33039b = val$context;
        }

        @Override
        public void run() {
            C3856c.e();
            StringBuilder sb2 = new StringBuilder();
            C8.a aVar = W7.b.f27306f;
            sb2.append(aVar.f2458a.g(this.f33039b));
            sb2.append("/java/");
            File file = new File(sb2.toString());
            if (!file.exists()) {
                file.mkdirs();
            }
            String str = aVar.f2458a.g(this.f33039b) + "/java/javaruntimelibraries.zip";
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(this.f33039b.getAssets().open("javaruntimelibraries.zip"));
                File file2 = new File(str);
                if (file2.exists()) {
                    file2.delete();
                }
                file2.createNewFile();
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2));
                byte[] bArr = new byte[8192];
                while (true) {
                    int read = bufferedInputStream.read(bArr, 0, 8192);
                    if (read <= 0) {
                        break;
                    } else {
                        bufferedOutputStream.write(bArr, 0, read);
                    }
                }
                bufferedOutputStream.close();
                bufferedInputStream.close();
            } catch (Exception e10) {
                System.err.println("Error while copying from assets: " + e10.getMessage());
                e10.printStackTrace();
            }
            File file3 = new File(W7.b.f27306f.f2458a.g(this.f33039b) + "/java/classes/");
            if (file3.exists()) {
                try {
                    for (File file4 : file3.listFiles()) {
                        file4.delete();
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            } else {
                file3.mkdirs();
            }
            if (file3.exists()) {
                try {
                    e.n(str, file3.getAbsolutePath());
                    try {
                        for (File file5 : file3.listFiles()) {
                            if (file5 != null && file5.getName() != null && file5.getName().endsWith(".class")) {
                                try {
                                    C3856c.d(new e8.c(Class.forName("JAVARuntime." + file5.getName().replace(".class", ""))));
                                } catch (Exception e12) {
                                    e12.printStackTrace();
                                }
                            }
                        }
                    } catch (Exception e13) {
                        e13.printStackTrace();
                    }
                    new File(str).delete();
                } catch (IOException e14) {
                    e14.printStackTrace();
                }
            }
            com.itsmagic.engine.Core.Components.ProjectController.a.h(new a());
        }
    }

    public class RunnableC0887c implements Runnable {
        @Override
        public void run() {
            synchronized (C3856c.f33038c) {
                C3856c.f33038c.set(true);
            }
            synchronized (C3856c.f33036a) {
                C3856c.f33036a.clear();
            }
            C3856c.q(new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/"));
            synchronized (C3856c.f33036a) {
                try {
                    Iterator it = C3856c.f33036a.iterator();
                    while (it.hasNext()) {
                        com.itsmagic.engine.Engines.Engine.World.a.i(new I(((C3857d) it.next()).d()));
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            synchronized (C3856c.f33038c) {
                C3856c.f33038c.set(false);
            }
        }
    }

    static {
        j.k(new a());
    }

    public static void d(e8.c officialClass) {
        List<e8.c> list = f33037b;
        synchronized (list) {
            try {
                if (!list.contains(officialClass)) {
                    list.add(officialClass);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void e() {
        List<e8.c> list = f33037b;
        synchronized (list) {
            list.clear();
        }
    }

    public static C3857d f(String path) {
        while (true) {
            AtomicBoolean atomicBoolean = f33038c;
            synchronized (atomicBoolean) {
                if (!atomicBoolean.get()) {
                    break;
                }
            }
        }
        synchronized (f33036a) {
            int i10 = 0;
            while (true) {
                try {
                    List<C3857d> list = f33036a;
                    if (i10 >= list.size()) {
                        C3857d c3857d = new C3857d();
                        c3857d.j(path);
                        list.add(c3857d);
                        return c3857d;
                    }
                    C3857d c3857d2 = list.get(i10);
                    if (c3857d2.d().equals(path)) {
                        return c3857d2;
                    }
                    i10++;
                } finally {
                }
            }
        }
    }

    public static Globals g() {
        Globals standardGlobals = JsePlatform.standardGlobals();
        for (int i10 = 0; i10 < l(); i10++) {
            e8.c k10 = k(i10);
            standardGlobals.set(k10.d(), CoerceJavaToLua.coerce(k10.a()));
        }
        for (int i11 = 0; i11 < j.K0(); i11++) {
            r J02 = j.J0(i11);
            standardGlobals.set(J02.f84454c.getSimpleName(), CoerceJavaToLua.coerce(J02.f84454c));
        }
        return standardGlobals;
    }

    public static void h(Context context) {
        new Thread(new b(context)).start();
    }

    public static Object i(String func, Globals globals, Object... parameters) {
        if (parameters == null || parameters.length <= 0) {
            return globals.get(func).call();
        }
        LuaValue[] luaValueArr = new LuaValue[parameters.length];
        for (int i10 = 0; i10 < parameters.length; i10++) {
            luaValueArr[i10] = CoerceJavaToLua.coerce(parameters[i10]);
        }
        return globals.get(func).call(LuaValue.listOf(luaValueArr));
    }

    public static boolean j() {
        boolean z10;
        AtomicBoolean atomicBoolean = f33038c;
        synchronized (atomicBoolean) {
            z10 = atomicBoolean.get();
        }
        return z10;
    }

    public static e8.c k(int idx) {
        e8.c cVar;
        List<e8.c> list = f33037b;
        synchronized (list) {
            cVar = list.get(idx);
        }
        return cVar;
    }

    public static int l() {
        int size;
        List<e8.c> list = f33037b;
        synchronized (list) {
            size = list.size();
        }
        return size;
    }

    public static void m() {
        AtomicBoolean atomicBoolean = f33038c;
        synchronized (atomicBoolean) {
            atomicBoolean.set(true);
        }
        Thread thread = new Thread(new RunnableC0887c());
        thread.setPriority(1);
        thread.setName("Lua-Start");
        thread.start();
    }

    public static void n(String path) {
        synchronized (f33036a) {
            int i10 = 0;
            while (true) {
                try {
                    List<C3857d> list = f33036a;
                    if (i10 < list.size()) {
                        C3857d c3857d = list.get(i10);
                        if (c3857d.d().equals(path)) {
                            c3857d.a();
                        }
                        i10++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static C3857d o(int idx) {
        C3857d c3857d;
        List<C3857d> list = f33036a;
        synchronized (list) {
            c3857d = list.get(idx);
        }
        return c3857d;
    }

    public static int p() {
        int size;
        List<C3857d> list = f33036a;
        synchronized (list) {
            size = list.size();
        }
        return size;
    }

    public static void q(File folder) {
        File[] listFiles = folder.listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                String replace = file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "");
                if (!replace.equals("JAVARuntime") && !replace.equals("_EDITOR") && !replace.equals("_PROJECT")) {
                    if (file.isDirectory()) {
                        q(file);
                    } else if (C2633l.b(file.getAbsolutePath(), ".lua")) {
                        C3857d c3857d = new C3857d();
                        c3857d.j(file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""));
                        String[] split = X7.a.x(file).split("\n");
                        for (int i10 = 0; i10 < split.length; i10++) {
                            String trim = split[i10].trim();
                            if (trim.startsWith(C16181m.f130230g) && trim.contains("# Menu:")) {
                                c3857d.i(trim.replace("# Menu:", ""));
                            }
                        }
                        List<C3857d> list = f33036a;
                        synchronized (list) {
                            list.add(c3857d);
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
    }
}
