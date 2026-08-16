package h4;

import Ic.C2633l;
import android.util.Log;
import com.itsmagic.engine.Activities.Editor.Extensions.VCS.FileVersionData;
import com.itsmagic.engine.Activities.Editor.Extensions.VCS.HashData;
import com.itsmagic.engine.Activities.Editor.Utils.C12736d;
import com.itsmagic.engine.Core.Components.Settings.Server.UserSystem.UserController;
import com.itsmagic.engine.Engines.Engine.Modules.UpdateModule;
import com.itsmagic.engine.Engines.Engine.Settings.GameSettings;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import h4.k;
import id.C13696a;
import java.io.File;
import java.lang.constant.ConstantDescs;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Predicate;

public class k {

    public static final int f90235j = 0;

    public static final int f90236k = 1;

    public static final int f90237l = 2;

    public static final int f90238m = 3;

    public static final float f90239n = 30.0f;

    public static k f90241p;

    public final String f90244b;

    public h4.f f90245c;

    public float f90249g;

    public static final List<AbstractC13426c> f90240o = new a();

    public static final List<h4.g> f90242q = new SteppedArrayList();

    public final Object f90243a = new Object();

    public final AtomicBoolean f90246d = new AtomicBoolean();

    public final Set<String> f90247e = new HashSet();

    public float f90248f = 0.0f;

    public final m f90250h = new c();

    public final UpdateModule f90251i = new d();

    public class a extends SteppedArrayList<AbstractC13426c> {
        public a() {
            add(new h4.i(".java"));
            add(new h4.i(".javac"));
            add(new h4.i(".lua"));
            add(new h4.i(".config"));
            add(new h4.i(".txt"));
            add(new h4.i(".json"));
            add(new h4.i(".ipm"));
            add(new h4.h(".mat"));
            add(new h4.h(".go"));
            add(new h4.h(".world"));
            add(new h4.h(".mp4|.3gp|.webm"));
            add(new h4.h(".ivo"));
            add(new h4.h(".itsmbp"));
            add(new h4.h(".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm"));
            add(new h4.h(".mp3|.wav|.ogg|.3gp|.m4a|.aac|.ts|.flac|.gsm|.mid|.xmf|.ota|.imy|.rtx|.mkv"));
        }
    }

    public class b implements x8.b {
        public static boolean d(h4.g gVar) {
            return gVar.b() && gVar.a() == k.f90241p;
        }

        @Override
        public void a() {
            if (k.f90241p != null) {
                k.f90241p.w();
                synchronized (k.f90242q) {
                    k.f90242q.removeIf(new Predicate() {
                        @Override
                        public final boolean test(Object obj) {
                            boolean d10;
                            d10 = k.b.d((g) obj);
                            return d10;
                        }
                    });
                }
                k unused = k.f90241p = null;
            }
            if (com.itsmagic.engine.Core.Components.ProjectController.a.d0()) {
                k unused2 = k.f90241p = k.A(com.itsmagic.engine.Core.Components.ProjectController.a.T());
            }
        }

        @Override
        public void b() {
        }
    }

    public class c implements m {
        public c() {
        }

        @Override
        public boolean a(File file) {
            File k10;
            if (!file.isDirectory()) {
                if (file.getParentFile().getName().endsWith(".meta")) {
                    return (file.getName().equals("thumb.png") || file.getName().equals("jmi.config") || C2633l.b(file.getName(), ".class") || C2633l.b(file.getName(), ".dex") || C2633l.b(file.getName(), ".javac")) ? false : true;
                }
                return true;
            }
            if (file.getParentFile().getAbsolutePath().equals(com.itsmagic.engine.Core.Components.ProjectController.a.Y(k.this.f90244b)) && (file.getName().startsWith(ConstantDescs.DEFAULT_NAME) || file.getName().equals("JAVARuntime"))) {
                return false;
            }
            return (file.getName().endsWith(".meta") && (k10 = Tc.b.k(file)) != null && C2633l.b(k10.getName(), C2633l.d(".java", ".lua"))) ? false : true;
        }

        @Override
        public EnumC13424a b(File file, HashData data) {
            for (int i10 = 0; i10 < k.f90240o.size(); i10++) {
                AbstractC13426c abstractC13426c = (AbstractC13426c) k.f90240o.get(i10);
                if (C2633l.b(file.getName(), abstractC13426c.b())) {
                    return abstractC13426c.a(file, data);
                }
            }
            return EnumC13424a.SAVE_NOTIFY;
        }

        @Override
        public void c(File file, String date) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("File created ");
            sb2.append(file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.Y(k.this.f90244b) + "/", ""));
            Log.i("VCS", sb2.toString());
            k.this.H(file, 0, date);
        }

        @Override
        public void d(File file, String date) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("File modified ");
            sb2.append(file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.Y(k.this.f90244b) + "/", ""));
            Log.i("VCS", sb2.toString());
            k.this.H(file, 1, date);
        }

        @Override
        public void e(File file, String date) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("File deleted ");
            sb2.append(file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.Y(k.this.f90244b) + "/", ""));
            Log.i("VCS", sb2.toString());
            k.this.H(file, 2, date);
        }
    }

    public class d extends UpdateModule {
        public d() {
        }

        @Override
        public void g() {
            k.this.x();
        }
    }

    public class e implements Runnable {

        public final String f90254b;

        public e(final String val$loadedProject) {
            this.f90254b = val$loadedProject;
        }

        @Override
        public void run() {
            GameSettings l10 = K8.a.l();
            if (l10 == null || !l10.h().enableVCS) {
                return;
            }
            File[] listFiles = k.this.D().listFiles();
            boolean z10 = listFiles == null || listFiles.length == 0;
            File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(this.f90254b));
            synchronized (k.this.f90243a) {
                k.this.f90245c = new h4.f(z10, new File(k.this.D(), "Table/"), file, com.itsmagic.engine.Core.Components.ProjectController.a.Y(this.f90254b) + "/", k.this.f90250h);
            }
            k.this.s();
            k.this.u();
            k.this.f90251i.a();
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override
        public void run() {
            try {
                try {
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                synchronized (k.this.f90243a) {
                    if (k.this.f90245c == null) {
                        return;
                    }
                    k.this.f90245c.c();
                    k.this.s();
                    k.this.u();
                }
            } finally {
                k.this.f90246d.set(false);
            }
        }
    }

    public class g implements h4.d {

        public final File f90257a;

        public final FileVersionData f90258b;

        public final File f90259c;

        public final String f90260d;

        public class a implements Runnable {

            public final Runnable f90262b;

            public class RunnableC1722a implements Runnable {
                public RunnableC1722a() {
                }

                @Override
                public void run() {
                    a.this.f90262b.run();
                }
            }

            public a(final Runnable val$end) {
                this.f90262b = val$end;
            }

            @Override
            public void run() {
                synchronized (k.this.f90243a) {
                    try {
                        C13696a.a(new File(g.this.f90257a.getAbsolutePath() + "/Data/" + g.this.f90258b.c()), g.this.f90259c);
                        File file = new File(g.this.f90257a.getAbsolutePath() + "/Data/" + Tc.b.O(g.this.f90258b.c()) + ".meta/");
                        if (file.exists()) {
                            C13696a.a(file, new File(Tc.b.O(g.this.f90259c.getAbsolutePath()) + ".meta/"));
                        }
                        g gVar = g.this;
                        k.this.J(gVar.f90259c, gVar.f90260d);
                        N7.c.j0(new RunnableC1722a());
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }

        public g(final File val$commitDir, final FileVersionData val$fileVersionData, final File val$file, final String val$date) {
            this.f90257a = val$commitDir;
            this.f90258b = val$fileVersionData;
            this.f90259c = val$file;
            this.f90260d = val$date;
        }

        @Override
        public long a() {
            return this.f90258b.f();
        }

        @Override
        public void b() {
            k.this.v(this.f90259c, this.f90260d);
        }

        @Override
        public void c(Runnable end) {
            O9.b.d(new a(end));
        }

        @Override
        public File d() {
            return new File(this.f90257a.getAbsolutePath() + "/Data/" + this.f90258b.c());
        }

        @Override
        public String e() {
            return this.f90258b.b();
        }

        @Override
        public String f() {
            File d10 = d();
            if (d10.exists() && C2633l.b(d10.getName(), C2633l.d(".java", ".lua", ".vglsl", ".fglsl", ".gglsl"))) {
                return X7.a.x(d10);
            }
            return null;
        }

        @Override
        public FileVersionData g() {
            return this.f90258b;
        }

        @Override
        public int getMode() {
            return this.f90258b.d();
        }

        @Override
        public String getName() {
            return this.f90258b.c();
        }

        @Override
        public String h() {
            return this.f90258b.e();
        }
    }

    public class h implements h4.d {

        public final File f90265a;

        public final FileVersionData f90266b;

        public final File f90267c;

        public final String f90268d;

        public final File f90269e;

        public class a implements Runnable {

            public final Runnable f90271b;

            public class RunnableC1723a implements Runnable {
                public RunnableC1723a() {
                }

                @Override
                public void run() {
                    a.this.f90271b.run();
                }
            }

            public a(final Runnable val$end) {
                this.f90271b = val$end;
            }

            @Override
            public void run() {
                synchronized (k.this.f90243a) {
                    try {
                        C13696a.a(new File(h.this.f90265a.getAbsolutePath() + "/Data/" + h.this.f90266b.c()), h.this.f90267c);
                        File file = new File(h.this.f90265a.getAbsolutePath() + "/Data/" + Tc.b.O(h.this.f90266b.c()) + ".meta/");
                        if (file.exists()) {
                            C13696a.a(file, new File(Tc.b.O(h.this.f90267c.getAbsolutePath()) + ".meta/"));
                        }
                        h hVar = h.this;
                        k.this.J(hVar.f90267c, hVar.f90268d);
                        N7.c.j0(new RunnableC1723a());
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }

        public h(final File val$commitDir, final FileVersionData val$fileVersionData, final File val$finalFile, final String val$date, final File val$file) {
            this.f90265a = val$commitDir;
            this.f90266b = val$fileVersionData;
            this.f90267c = val$finalFile;
            this.f90268d = val$date;
            this.f90269e = val$file;
        }

        @Override
        public long a() {
            return this.f90266b.f();
        }

        @Override
        public void b() {
            k.this.v(this.f90269e, this.f90268d);
        }

        @Override
        public void c(Runnable end) {
            O9.b.d(new a(end));
        }

        @Override
        public File d() {
            return this.f90267c;
        }

        @Override
        public String e() {
            return this.f90266b.b();
        }

        @Override
        public String f() {
            return null;
        }

        @Override
        public FileVersionData g() {
            return this.f90266b;
        }

        @Override
        public int getMode() {
            return this.f90266b.d();
        }

        @Override
        public String getName() {
            return this.f90266b.c();
        }

        @Override
        public String h() {
            return this.f90266b.e();
        }
    }

    public class i implements Comparator<File> {

        public final SimpleDateFormat f90274b;

        public i(final SimpleDateFormat val$sdfUtc) {
            this.f90274b = val$sdfUtc;
        }

        @Override
        public int compare(File o12, File o22) {
            return k.this.y(o12, this.f90274b).compareTo(k.this.y(o22, this.f90274b));
        }
    }

    public interface j {
        void a(h4.d version);
    }

    public k(String loadedProject) {
        this.f90244b = loadedProject;
        Thread thread = new Thread(new e(loadedProject));
        thread.setName("VCS Start");
        thread.start();
    }

    public static k A(String project) {
        if (project == null || project.isEmpty()) {
            return null;
        }
        List<h4.g> list = f90242q;
        synchronized (list) {
            try {
                list.removeIf(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        boolean E10;
                        E10 = k.E((g) obj);
                        return E10;
                    }
                });
                Iterator<h4.g> it = list.iterator();
                while (it.hasNext()) {
                    k a10 = it.next().a();
                    if (a10.f90244b.equals(project)) {
                        return a10;
                    }
                }
                k kVar = new k(project);
                f90242q.add(new h4.g(kVar));
                return kVar;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static boolean E(h4.g gVar) {
        return !gVar.b();
    }

    public static void K() {
        if (com.itsmagic.engine.Core.Components.ProjectController.a.d0()) {
            z();
        }
        com.itsmagic.engine.Core.Components.ProjectController.a.h(new b());
    }

    public static k z() {
        k kVar = f90241p;
        return kVar != null ? kVar : A(com.itsmagic.engine.Core.Components.ProjectController.a.T());
    }

    public final List<File> B() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        File[] listFiles = D().listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.isDirectory() && file.getName().startsWith("DT_")) {
                    steppedArrayList.add(file);
                }
            }
        }
        Collections.sort(steppedArrayList, new i(new SimpleDateFormat(C12736d.f72115a, Locale.US)));
        return steppedArrayList;
    }

    public float C() {
        return this.f90249g;
    }

    public final File D() {
        File file = new File(new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(this.f90244b)).getAbsolutePath() + "/_EDITOR/VCS/");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public void F(File file, boolean newestFirst, j listener) {
        FileVersionData fileVersionData;
        FileVersionData fileVersionData2;
        GameSettings l10 = K8.a.l();
        if (l10 == null || !l10.h().enableVCS || UserController.P()) {
            return;
        }
        com.itsmagic.engine.Core.Components.ProjectController.a.Y(this.f90244b);
        List<File> B10 = B();
        if (newestFirst) {
            Collections.reverse(B10);
        }
        for (int i10 = 0; i10 < B10.size(); i10++) {
            File file2 = B10.get(i10);
            String substring = file2.getName().substring(3);
            File file3 = new File(file2.getAbsolutePath() + "/" + (file.getName().hashCode() + ".vcsd"));
            if (file3.exists() && (fileVersionData2 = (FileVersionData) X7.a.m().fromJson(X7.a.x(file3), FileVersionData.class)) != null) {
                listener.a(new g(file2, fileVersionData2, file, substring));
            }
            if (C2633l.b(file.getName(), ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm")) {
                String str = Tc.b.O(file.getAbsolutePath()) + ".texture";
                File file4 = new File(file2.getAbsolutePath() + "/" + (Tc.b.v(str).hashCode() + ".vcsd"));
                if (file4.exists() && (fileVersionData = (FileVersionData) X7.a.m().fromJson(X7.a.x(file4), FileVersionData.class)) != null) {
                    listener.a(new h(file2, fileVersionData, new File(str), substring, file));
                }
            }
        }
    }

    public void G(File file, int mode) {
        H(file, mode, C12736d.m());
    }

    public void H(File file, int mode, String date) {
        I(file, mode, date, null);
    }

    public void I(File file, int mode, String date, String revertFromCommit) {
        GameSettings l10 = K8.a.l();
        if (l10 == null || !l10.h().enableVCS || UserController.P()) {
            return;
        }
        String replace = file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.Y(this.f90244b) + "/", "");
        if (mode == 3) {
            synchronized (this.f90247e) {
                this.f90247e.add(replace);
            }
        } else {
            synchronized (this.f90247e) {
                try {
                    if (this.f90247e.remove(replace)) {
                        return;
                    }
                } finally {
                }
            }
        }
        File file2 = new File(D(), "DT_" + date + "/");
        if (!file2.exists()) {
            file2.mkdirs();
        }
        String str = file.getName().hashCode() + ".vcsd";
        File file3 = new File(file2.getAbsolutePath() + "/" + str);
        FileVersionData fileVersionData = new FileVersionData();
        fileVersionData.h(date);
        fileVersionData.g(str);
        fileVersionData.i(replace);
        fileVersionData.l(file.length());
        fileVersionData.j(mode);
        fileVersionData.k(revertFromCommit);
        X7.a.i(file3, X7.a.m().toJson(fileVersionData));
        File file4 = new File(file2, "Data/");
        if (!file4.exists()) {
            file4.mkdirs();
        }
        File file5 = new File(file4.getAbsolutePath() + "/" + replace);
        if (mode != 2) {
            C13696a.a(file, file5);
        }
        File y10 = Tc.b.y(file);
        if (y10.exists()) {
            C13696a.a(y10, new File(file4.getAbsolutePath() + "/" + y10.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.Y(this.f90244b) + "/", "") + "/"));
        }
    }

    public final void J(File file, String fromCommit) {
        I(file, 3, C12736d.m(), fromCommit);
    }

    public final void s() {
        File file;
        File[] listFiles;
        File file2;
        FileVersionData fileVersionData;
        File file3;
        while (true) {
            float j10 = ((float) C13696a.j(D())) / 1048576.0f;
            this.f90249g = j10;
            GameSettings l10 = K8.a.l();
            if (l10 == null || !l10.h().enableVCS || UserController.P() || j10 <= l10.h().maximumVCSDiskUsage) {
                return;
            }
            List<File> B10 = B();
            for (int i10 = 0; i10 < B10.size(); i10++) {
                file = B10.get(i10);
                if (file.isDirectory() && file.getName().startsWith("DT_") && (listFiles = file.listFiles()) != null) {
                    for (int i11 = 0; i11 < listFiles.length; i11++) {
                        file2 = listFiles[i11];
                        if (C2633l.b(file2.getName(), ".vcsd") && (fileVersionData = (FileVersionData) X7.a.m().fromJson(X7.a.x(file2), FileVersionData.class)) != null) {
                            file3 = new File(new File(file, "Data"), fileVersionData.c());
                            if (file3.exists()) {
                                break;
                            }
                        }
                    }
                }
            }
            return;
            file3.delete();
            file2.delete();
            C13696a.i(file);
        }
    }

    public void t() {
        Thread thread = new Thread(new f());
        thread.setPriority(1);
        thread.setName("VCS");
        thread.start();
    }

    public final void u() {
        File[] listFiles;
        List<File> B10 = B();
        for (int i10 = 0; i10 < B10.size(); i10++) {
            File file = B10.get(i10);
            if (file.isDirectory() && file.getName().startsWith("DT_") && (listFiles = file.listFiles()) != null) {
                int i11 = 0;
                while (true) {
                    if (i11 >= listFiles.length) {
                        C13696a.g(file);
                        break;
                    } else if (C2633l.b(listFiles[i11].getName(), ".vcsd")) {
                        break;
                    } else {
                        i11++;
                    }
                }
            }
        }
    }

    public void v(File file, String date) {
        String replace = file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.Y(this.f90244b) + "/", "");
        File file2 = new File(D(), "DT_" + date + "/");
        if (file2.exists()) {
            File file3 = new File(file2.getAbsolutePath() + "/" + (file.getName().hashCode() + ".vcsd"));
            if (file3.exists()) {
                file3.delete();
            }
            File file4 = new File(file2, "Data/");
            if (file4.exists()) {
                File file5 = new File(file4.getAbsolutePath() + "/" + replace);
                if (file5.exists()) {
                    file5.delete();
                }
                C13696a.i(file2);
            }
        }
    }

    public void w() {
        this.f90251i.b();
    }

    public final void x() {
        GameSettings l10 = K8.a.l();
        if (l10 == null || !l10.h().enableVCS || UserController.P() || this.f90246d.get()) {
            return;
        }
        float d10 = this.f90248f + K8.d.d();
        this.f90248f = d10;
        if (d10 >= 30.0f) {
            this.f90246d.set(true);
            this.f90248f = 0.0f;
            t();
        }
    }

    public final Date y(File file, SimpleDateFormat dateFormat) {
        try {
            return dateFormat.parse(file.getName().substring(3));
        } catch (ParseException e10) {
            e10.printStackTrace();
            return new Date();
        }
    }
}
