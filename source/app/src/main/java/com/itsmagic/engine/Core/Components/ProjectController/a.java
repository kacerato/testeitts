package com.itsmagic.engine.Core.Components.ProjectController;

import Bg.j;
import Ic.C2633l;
import JAVARuntime.Runnable;
import Z6.c;
import Z6.i;
import android.content.Context;
import android.net.Uri;
import c4.C4153a;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.itsmagic.engine.Activities.Editor.Utils.C12735c;
import com.itsmagic.engine.Activities.Editor.Utils.y;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.FolderManifest;
import com.itsmagic.engine.Core.Components.ProjectController.PFOptions;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Utils.ProjectFile.PFileSettings;
import ec.EnumC13053a;
import id.C13696a;
import java.io.File;
import java.io.IOException;
import java.lang.constant.ConstantDescs;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import jd.C13822a;
import jd.C13823b;
import nd.e;
import q7.C15045a;
import ug.C15608a;
import w3.g;
import w5.m;
import w9.C15975a;
import x8.C16060a;
import yd.C16181m;
import z8.C16273a;

public class a {

    public static String f72540a = "";

    public static final x8.c f72541b = new x8.c();

    public static A8.a f72542c = new A8.a();

    public static List<C13823b> f72543d = new SteppedArrayList();

    public static final List<x8.b> f72544e = new SteppedArrayList();

    public static List<C16060a> f72545f;

    public class C1168a implements Runnable {
        @Override
        public void run() {
            synchronized (a.f72544e) {
                for (int i10 = 0; i10 < a.f72544e.size(); i10++) {
                    try {
                        ((x8.b) a.f72544e.get(i10)).b();
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }
        }
    }

    public class b implements g.d {

        public final String f72546a;

        public class RunnableC1169a implements Runnable {

            public final List f72547b;

            public final g.c f72548c;

            public final C15045a f72549d;

            public class RunnableC1170a implements Runnable {

                public final AtomicBoolean f72551b;

                public final CountDownLatch f72552c;

                public class C1171a extends c.h {
                    public C1171a() {
                    }

                    @Override
                    public void a(c.g dialog) {
                        RunnableC1170a.this.f72551b.set(true);
                        RunnableC1170a.this.f72552c.countDown();
                        super.a(dialog);
                    }

                    @Override
                    public void b(c.g dialog) {
                        RunnableC1170a.this.f72551b.set(false);
                        RunnableC1170a.this.f72552c.countDown();
                        super.b(dialog);
                    }
                }

                public RunnableC1170a(final AtomicBoolean val$shouldImport, final CountDownLatch val$latch) {
                    this.f72551b = val$shouldImport;
                    this.f72552c = val$latch;
                }

                @Override
                public void run() {
                    Z6.c.z1("Files exist", "Do you want to replace files?", new C1171a());
                }
            }

            public RunnableC1169a(final List val$files, final g.c val$callback, final C15045a val$progress) {
                this.f72547b = val$files;
                this.f72548c = val$callback;
                this.f72549d = val$progress;
            }

            @Override
            public void run() {
                try {
                    try {
                        String str = a.R() + "/" + b.this.f72546a;
                        String j10 = Tc.b.j(this.f72547b);
                        File file = new File(str);
                        if (!file.exists()) {
                            file.mkdirs();
                        }
                        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
                        int i10 = 0;
                        while (true) {
                            if (i10 >= this.f72547b.size()) {
                                break;
                            }
                            if (new File(str + this.f72548c.b((Uri) this.f72547b.get(i10)).replace(j10, "")).exists()) {
                                CountDownLatch countDownLatch = new CountDownLatch(1);
                                N7.c.j0(new RunnableC1170a(atomicBoolean, countDownLatch));
                                countDownLatch.await();
                                break;
                            }
                            i10++;
                        }
                        if (atomicBoolean.get()) {
                            for (int i11 = 0; i11 < this.f72547b.size(); i11++) {
                                Uri uri = (Uri) this.f72547b.get(i11);
                                if (!this.f72548c.a(uri, new File(str + this.f72548c.b(uri).replace(j10, "")))) {
                                    N7.c.v0("Failed to import file!");
                                }
                            }
                            N7.c.v0("Success");
                        } else {
                            N7.c.v0("Aborted");
                        }
                    } catch (InterruptedException e10) {
                        e10.printStackTrace();
                    }
                    y.c();
                    this.f72549d.p1();
                } catch (Throwable th2) {
                    y.c();
                    this.f72549d.p1();
                    throw th2;
                }
            }
        }

        public b(final String val$finalInProjectPath) {
            this.f72546a = val$finalInProjectPath;
        }

        @Override
        public void a(List<Uri> files, g.c callback) {
            new Thread(new RunnableC1169a(files, callback, C15045a.r1())).start();
        }

        @Override
        public void onCancel() {
        }

        @Override
        public void onError(String error) {
            N7.c.v0("Failed:" + error);
        }
    }

    public class c implements Comparator<C13823b> {
        @Override
        public int compare(C13823b lhs, C13823b rhs) {
            return lhs.f92879b.compareTo(rhs.f92879b);
        }
    }

    public class d implements Runnable {

        public final I5.a f72555b;

        public final String f72556c;

        public d(final I5.a val$fileTable, final String val$projectName) {
            this.f72555b = val$fileTable;
            this.f72556c = val$projectName;
        }

        @Override
        public void run() {
            List l10 = a.l(this.f72555b);
            if (l10.isEmpty()) {
                return;
            }
            C4153a.k(l10, this.f72556c);
        }
    }

    public class e implements C15045a.d {

        public final String f72557a;

        public final f f72558b;

        public class RunnableC1172a implements Runnable {

            public final Context f72559b;

            public final C15045a f72560c;

            public class C1173a implements e.c {

                public final String f72562a;

                public C1173a(final String val$projectFolder) {
                    this.f72562a = val$projectFolder;
                }

                @Override
                public boolean a(File file) {
                    return a.m0(this.f72562a, file);
                }
            }

            public class b implements Runnable {

                public final File f72564b;

                public b(final File val$finalBackupFile1) {
                    this.f72564b = val$finalBackupFile1;
                }

                @Override
                public void run() {
                    f fVar = e.this.f72558b;
                    if (fVar != null) {
                        fVar.b(this.f72564b);
                    }
                }
            }

            public class c implements Runnable {

                public final String f72566b;

                public c(final String val$errorMessage) {
                    this.f72566b = val$errorMessage;
                }

                @Override
                public void run() {
                    f fVar = e.this.f72558b;
                    if (fVar != null) {
                        fVar.onError(this.f72566b);
                    } else {
                        i.y1("Backup failed", this.f72566b);
                    }
                }
            }

            public class d implements Runnable {

                public final String f72568b;

                public d(final String val$errorMessage) {
                    this.f72568b = val$errorMessage;
                }

                @Override
                public void run() {
                    f fVar = e.this.f72558b;
                    if (fVar != null) {
                        fVar.onError(this.f72568b);
                    } else {
                        i.y1("Backup failed", this.f72568b);
                    }
                }
            }

            public RunnableC1172a(final Context val$context, final C15045a val$loading) {
                this.f72559b = val$context;
                this.f72560c = val$loading;
            }

            @Override
            public void run() {
                File file;
                Throwable e10;
                String e11;
                String Z10;
                String str;
                File file2;
                File file3;
                try {
                    e11 = W7.b.f27306f.f2458a.e(this.f72559b);
                    Z10 = a.Z(e.this.f72557a, this.f72559b);
                    str = e.this.f72557a + " " + Wc.a.b() + ".itsmbp";
                    file2 = new File(Z10);
                    file3 = new File(e11);
                    file = new File(file3, str + ".tmp");
                } catch (Error | Exception e12) {
                    file = null;
                    e10 = e12;
                }
                try {
                    File file4 = new File(file3, str);
                    if (!file2.exists() || !file2.isDirectory()) {
                        throw new IOException("Project folder not found for backup: " + Z10);
                    }
                    if (!file3.exists() && !file3.mkdirs()) {
                        throw new IOException("Failed to create backups folder: " + e11);
                    }
                    a.k(file);
                    List m10 = a.m(file2);
                    nd.e.l(Z10, e11, file.getName(), new C1173a(Z10));
                    String r02 = a.r0(e.this.f72557a, file, m10);
                    if (r02 == null) {
                        r02 = a.j0(file, file4);
                    }
                    if (r02 == null) {
                        this.f72560c.p1();
                        N7.c.o().runOnUiThread(new b(file4));
                    } else {
                        a.k(file);
                        this.f72560c.p1();
                        N7.c.j0(new c(r02));
                    }
                } catch (Error e13) {
                    e10 = e13;
                    e10.printStackTrace();
                    a.k(file);
                    this.f72560c.p1();
                    N7.c.j0(new d(a.i(e.this.f72557a, e10)));
                } catch (Exception e14) {
                    e10 = e14;
                    e10.printStackTrace();
                    a.k(file);
                    this.f72560c.p1();
                    N7.c.j0(new d(a.i(e.this.f72557a, e10)));
                }
            }
        }

        public e(final String val$projectName, final f val$listener) {
            this.f72557a = val$projectName;
            this.f72558b = val$listener;
        }

        @Override
        public void a(C15045a loading) {
            new Thread(new RunnableC1172a(N7.c.t(), loading)).start();
        }
    }

    public interface f {
        void b(File backup);

        void onError(String message);
    }

    public static String A(String name, String folderPath) {
        File file = new File(Tc.b.o(R() + "/" + folderPath + "/Terrain/"));
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(Tc.b.o(R() + "/" + folderPath + "/Terrain/" + name));
        if (!file2.exists()) {
            try {
                file2.createNewFile();
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
        C15975a.d().o(file2);
        return folderPath + "/Terrain/" + name;
    }

    public static String B(String name, ColorINT color) {
        Material material = new Material();
        material.f0(D8.a.f4935u);
        material.b0(SerializableShaderEntry.f81153g, color);
        String replace = (R() + "/_EDITOR").replace(R() + "/", "");
        X7.a.d(replace, name + ".mat", material.Z());
        return replace + "/" + name + ".mat";
    }

    public static void C() {
        List<C13823b> list = f72543d;
        if (list != null) {
            list.clear();
        }
        f72540a = "";
    }

    public static String D() {
        String str = R() + "/Files";
        StringBuilder sb2 = new StringBuilder();
        sb2.append("BakeAtlas");
        int i10 = 0;
        sb2.append(0);
        sb2.append(".png");
        String sb3 = sb2.toString();
        while (true) {
            if (!j(sb3, str + "/Bake/")) {
                return sb3;
            }
            i10++;
            sb3 = "BakeAtlas" + i10 + ".png";
        }
    }

    public static String E() {
        String str = R() + "/Files";
        StringBuilder sb2 = new StringBuilder();
        sb2.append("BakeLight");
        int i10 = 0;
        sb2.append(0);
        sb2.append(".jpg");
        String sb3 = sb2.toString();
        while (true) {
            if (!j(sb3, str + "/Bake/")) {
                return sb3;
            }
            i10++;
            sb3 = "BakeLight" + i10 + ".jpg";
        }
    }

    public static String F() {
        String str = R() + "/Files";
        StringBuilder sb2 = new StringBuilder();
        sb2.append("BakeMaterial");
        int i10 = 0;
        sb2.append(0);
        sb2.append(".mat");
        String sb3 = sb2.toString();
        while (true) {
            if (!j(sb3, str + "/Bake/")) {
                return sb3;
            }
            i10++;
            sb3 = "BakeMaterial" + i10 + ".mat";
        }
    }

    public static String G() {
        String str = R() + "/Files";
        StringBuilder sb2 = new StringBuilder();
        sb2.append("BakeVertex");
        int i10 = 0;
        sb2.append(0);
        sb2.append(".mesh");
        String sb3 = sb2.toString();
        while (true) {
            if (!j(sb3, str + "/Bake/")) {
                return sb3;
            }
            i10++;
            sb3 = "BakeVertex" + i10 + ".mesh";
        }
    }

    public static String H() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("DefaultHPOP");
        int i10 = 0;
        sb2.append(0);
        sb2.append(".hpop");
        String sb3 = sb2.toString();
        while (true) {
            if (!j(sb3, "/Files/HPOP/")) {
                return sb3;
            }
            i10++;
            sb3 = "DefaultHPOP" + i10 + ".hpop";
        }
    }

    public static String I() {
        String str = R() + "/Files";
        StringBuilder sb2 = new StringBuilder();
        sb2.append("DefaultMaterial");
        int i10 = 0;
        sb2.append(0);
        sb2.append(".mat");
        String sb3 = sb2.toString();
        while (true) {
            if (!j(sb3, str + "/Materials/")) {
                return sb3;
            }
            i10++;
            sb3 = "DefaultMaterial" + i10 + ".mat";
        }
    }

    public static String J() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("NavMesh_");
        int i10 = 0;
        sb2.append(0);
        sb2.append(".nvmb");
        String sb3 = sb2.toString();
        while (true) {
            if (!j(sb3, "/Files/NavMesh/")) {
                return sb3;
            }
            i10++;
            sb3 = "NavMesh_" + i10 + ".nvmb";
        }
    }

    public static String K() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Terrain.f76979i9);
        int i10 = 0;
        sb2.append(0);
        sb2.append(".tdata");
        String sb3 = sb2.toString();
        while (true) {
            if (!j(sb3, "/Files/Terrain/")) {
                return sb3;
            }
            i10++;
            sb3 = Terrain.f76979i9 + i10 + ".tdata";
        }
    }

    public static String L() {
        return "/Files";
    }

    public static List<C13823b> M(String folder) {
        File[] listFiles;
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        try {
            if (folder.endsWith("/")) {
                folder = folder.substring(0, folder.length() - 1);
            }
            if (folder.startsWith("/")) {
                folder = folder.substring(1);
            }
            File file = new File(R() + "/" + folder);
            if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
                for (File file2 : listFiles) {
                    if (file2 != null) {
                        if (file2.isDirectory()) {
                            steppedArrayList.add(new C13823b(file2.getPath(), file2.getName(), C13823b.a.Directory));
                        } else {
                            C13823b c13823b = new C13823b(file2.getPath(), file2.getName());
                            c13823b.p();
                            steppedArrayList.add(c13823b);
                        }
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return steppedArrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x014c, code lost:
    
        if (r27.showHide == false) goto L55;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0118 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00d9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static List<C13823b> N(File folder, Context context, int depth, PFOptions options) {
        boolean z10;
        File[] fileArr;
        boolean z11;
        PFileSettings pFileSettings;
        String replace;
        FolderManifest folderManifest;
        LinkedList<C13823b> linkedList = new LinkedList();
        if (folder != null && folder.exists()) {
            File[] listFiles = folder.listFiles();
            int length = listFiles.length;
            boolean z12 = false;
            int i10 = 0;
            while (i10 < length) {
                File file = listFiles[i10];
                if (options == null) {
                    z10 = true;
                } else if (options.showHide) {
                    Iterator<String> it = m.a().iterator();
                    z10 = true;
                    while (it.hasNext()) {
                        if (file.getName().endsWith(it.next())) {
                            z10 = z12;
                        }
                    }
                } else if (file.getName().startsWith(ConstantDescs.DEFAULT_NAME)) {
                    z10 = z12;
                } else {
                    Iterator<String> it2 = m.b().iterator();
                    z10 = true;
                    while (it2.hasNext()) {
                        if (file.getName().endsWith(it2.next())) {
                            z10 = z12;
                        }
                    }
                    if (z10) {
                        Iterator<String> it3 = m.a().iterator();
                        while (it3.hasNext()) {
                            if (file.getName().endsWith(it3.next())) {
                                z10 = z12;
                            }
                        }
                    }
                }
                if (z10) {
                    if (file.isDirectory()) {
                        if (context != null) {
                            try {
                                Gson gson = new Gson();
                                X7.a aVar = W7.b.f27305e;
                                pFileSettings = (PFileSettings) gson.fromJson(X7.a.B(file.getAbsolutePath() + "/", "PFile.config", context), PFileSettings.class);
                            } catch (Exception unused) {
                            }
                            if (pFileSettings != null) {
                                pFileSettings = new PFileSettings(depth, z12);
                            } else {
                                pFileSettings.f81541b = depth;
                            }
                            C13823b c13823b = new C13823b(file.getAbsolutePath(), file.getName(), N(file, context, depth + 1, options), pFileSettings, true);
                            replace = file.getAbsolutePath().replace(S(context) + "/", "");
                            if (!replace.startsWith("Files")) {
                                try {
                                    X7.a aVar2 = W7.b.f27305e;
                                    folderManifest = (FolderManifest) X7.a.m().fromJson(X7.a.s(replace + "/f.manifest", context), FolderManifest.class);
                                } catch (JsonSyntaxException unused2) {
                                    folderManifest = null;
                                }
                                if (folderManifest != null) {
                                    if (!folderManifest.forceHide) {
                                        if (folderManifest.hide) {
                                            try {
                                            } catch (Exception e10) {
                                                e10.printStackTrace();
                                            }
                                        }
                                        if (folderManifest.excludeFromAPK) {
                                            if (c13823b.f92884g == null) {
                                                c13823b.f92884g = new SteppedArrayList<>();
                                            }
                                            fileArr = listFiles;
                                            c13823b.f92884g.add(new C13822a("Folder excluded from APK build has defined on 'f.manifest', this applies to sub files!", true));
                                            if (z10) {
                                                if (!replace.startsWith("Files") && !replace.contains("/")) {
                                                    if (c13823b.f92884g == null) {
                                                        c13823b.f92884g = new SteppedArrayList<>();
                                                    }
                                                    c13823b.f92884g.add(new C13822a("Package outside Files/ folder, files inside will keep their original structure and names in APK build, you can ignore this message.", false));
                                                }
                                                linkedList.add(c13823b);
                                            }
                                        }
                                    }
                                    z10 = false;
                                    if (folderManifest.excludeFromAPK) {
                                    }
                                }
                            }
                            fileArr = listFiles;
                            if (z10) {
                            }
                        }
                        pFileSettings = null;
                        if (pFileSettings != null) {
                        }
                        C13823b c13823b2 = new C13823b(file.getAbsolutePath(), file.getName(), N(file, context, depth + 1, options), pFileSettings, true);
                        replace = file.getAbsolutePath().replace(S(context) + "/", "");
                        if (!replace.startsWith("Files")) {
                        }
                        fileArr = listFiles;
                        if (z10) {
                        }
                    } else {
                        fileArr = listFiles;
                        if (options == null || !options.foldersOnly) {
                            String name = file.getName();
                            if (file.getName().contains(".")) {
                                name = file.getName().substring(0, file.getName().lastIndexOf("."));
                            }
                            String name2 = file.getName();
                            if (options != null && !options.showExtensions) {
                                name2 = name;
                            }
                            File file2 = new File(folder, name + ".meta");
                            if (file2.exists()) {
                                linkedList.add(new C13823b(file.getAbsolutePath(), name2, N(file2, context, depth + 1, options), new PFileSettings(depth, false), false));
                            } else {
                                z11 = false;
                                linkedList.add(new C13823b(file.getAbsolutePath(), name2, new PFileSettings(depth, false)));
                            }
                        }
                    }
                    z11 = false;
                } else {
                    fileArr = listFiles;
                    z11 = z12;
                }
                i10++;
                z12 = z11;
                listFiles = fileArr;
            }
        }
        if (options != null) {
            PFOptions.a aVar3 = options.orderBy;
            if (aVar3 == PFOptions.a.CreationDate) {
                if (options.inverse) {
                    Collections.reverse(linkedList);
                }
            } else if (aVar3 == PFOptions.a.Alphabetical) {
                Collections.sort(linkedList, new c());
                if (options.inverse) {
                    Collections.reverse(linkedList);
                }
            }
        }
        if (options == null || !options.foldersOnTop) {
            return linkedList;
        }
        LinkedList linkedList2 = new LinkedList();
        for (C13823b c13823b3 : linkedList) {
            if (c13823b3.f92880c == C13823b.a.Directory) {
                linkedList2.add(c13823b3);
            }
        }
        linkedList.removeAll(linkedList2);
        linkedList2.addAll(linkedList);
        return linkedList2;
    }

    public static List<C16060a> O(Context context) {
        List<C16060a> list = f72545f;
        if (list == null) {
            f72545f = new LinkedList();
        } else {
            list.clear();
        }
        File file = new File(W7.b.f27306f.f2458a.m());
        List<String> X10 = X();
        if (X10 != null && X10.size() > 0) {
            for (String str : X10) {
                if (str != null && !str.isEmpty()) {
                    f72545f.add(new C16060a(str, 0, 0L, new File(file, str), null));
                }
            }
        }
        return f72545f;
    }

    public static String P(File gameObjectFile) {
        return gameObjectFile.getAbsolutePath().replace(R() + "/", "");
    }

    public static String Q(String fullpath) {
        return fullpath.replace(R() + "/", "");
    }

    public static String R() {
        return S(N7.c.t());
    }

    public static String S(Context context) {
        String str = f72540a;
        if (str == null || str.isEmpty()) {
            return "";
        }
        if (f72540a.equals("@compiled@")) {
            return "@@ASSET@@/compiled";
        }
        return W7.b.f27306f.f2458a.n(context) + "/" + f72540a + "";
    }

    public static String T() {
        return f72540a;
    }

    public static List<C13823b> U(Context context, PFOptions options) {
        File file = new File(S(context) + "/");
        if (f72543d == null) {
            LinkedList linkedList = new LinkedList();
            f72543d = linkedList;
            try {
                if (options == null) {
                    linkedList.addAll(N(file, context, 0, options));
                } else if (options.showHide) {
                    linkedList.addAll(N(file, context, 0, options));
                } else if (!file.getName().startsWith(ConstantDescs.DEFAULT_NAME)) {
                    f72543d.addAll(N(file, context, 0, options));
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return f72543d;
    }

    public static List<C13823b> V(Context context, String projectName, PFOptions options) {
        File file = new File(Z(projectName, context) + "/");
        LinkedList linkedList = new LinkedList();
        if (options == null) {
            linkedList.addAll(N(file, context, 0, options));
        } else if (options.showHide) {
            linkedList.addAll(N(file, context, 0, options));
        } else if (!file.getName().startsWith(ConstantDescs.DEFAULT_NAME)) {
            linkedList.addAll(N(file, context, 0, options));
        }
        return linkedList;
    }

    public static List<C13823b> W(Context context, String projectName, PFOptions options, int depthOffset) {
        File file = new File(Z(projectName, context) + "/");
        LinkedList linkedList = new LinkedList();
        if (options.showHide) {
            linkedList.addAll(N(file, context, depthOffset, options));
        } else if (!file.getName().startsWith(ConstantDescs.DEFAULT_NAME)) {
            linkedList.addAll(N(file, context, depthOffset, options));
        }
        return linkedList;
    }

    public static List<String> X() {
        LinkedList linkedList = new LinkedList();
        File[] listFiles = new File(W7.b.f27306f.f2458a.m()).listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.exists() && file.isDirectory() && !file.getName().startsWith(ConstantDescs.DEFAULT_NAME) && !file.getName().equals("JAVARuntime") && !file.getName().equals("Files")) {
                    linkedList.add(file.getName());
                }
            }
        }
        return linkedList;
    }

    public static String Y(String projectName) {
        return Z(projectName, N7.c.t());
    }

    public static String Z(String projectName, Context context) {
        if (projectName == null || projectName.isEmpty()) {
            return "";
        }
        return W7.b.f27306f.f2458a.n(context) + "/" + projectName + "";
    }

    public static String a0(String projectName, Context context) {
        if (projectName == null || projectName.isEmpty()) {
            return "";
        }
        return W7.b.f27306f.f2458a.o(context) + "/" + projectName + "";
    }

    public static String b0(String projectRootPath, File file) {
        if (file == null) {
            return "";
        }
        if (projectRootPath == null || projectRootPath.trim().isEmpty()) {
            return file.getAbsolutePath().replace(C16181m.f130232i, "/");
        }
        String replace = projectRootPath.replace(C16181m.f130232i, "/");
        String replace2 = file.getAbsolutePath().replace(C16181m.f130232i, "/");
        if (replace2.equals(replace)) {
            return "";
        }
        if (!replace.endsWith("/")) {
            replace = replace + "/";
        }
        return replace2.startsWith(replace) ? replace2.substring(replace.length()) : replace2;
    }

    public static x8.c c0() {
        return f72541b;
    }

    public static boolean d0() {
        return (T() == null || T().isEmpty()) ? false : true;
    }

    public static void e0() {
        f72540a = "@compiled@";
    }

    public static boolean f0(Context context, String name) {
        int i10 = 0;
        if (name != null && !name.isEmpty()) {
            File file = new File(W7.b.f27306f.f2458a.n(context) + "/" + name);
            if (file.exists()) {
                C12735c.a("LOAD_PROJECT");
                String str = f72540a;
                boolean z10 = str == null || str.isEmpty() || !name.equalsIgnoreCase(f72540a);
                f72543d = null;
                f72540a = name;
                X7.a.j(S(context) + "/_EDITOR/f.manifest", X7.a.m().toJson(new FolderManifest(true)));
                C16273a.d(new File(S(context) + "/_EDITOR/Cache/"));
                C16273a.d(new File(S(context) + "/@@ASSET@@Engine/"));
                K8.a.O();
                f72541b.b(name, context);
                synchronized (f72544e) {
                    if (z10) {
                        while (true) {
                            List<x8.b> list = f72544e;
                            if (i10 >= list.size()) {
                                break;
                            }
                            try {
                                list.get(i10).a();
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                            i10++;
                        }
                    }
                }
                File file2 = new File(file, Context.STORAGE_SERVICE);
                if (file2.exists()) {
                    C13696a.g(file2);
                }
                return true;
            }
            f72540a = "";
            f72543d = null;
        }
        return false;
    }

    public static void g0(String projectName, f listener) {
        C15045a.u1(true, new e(projectName, listener));
    }

    public static void h(x8.b callbacks) {
        if (callbacks == null) {
            throw new NullPointerException("callback can't be null");
        }
        List<x8.b> list = f72544e;
        synchronized (list) {
            list.add(callbacks);
        }
    }

    public static String h0(String entryName) {
        if (entryName == null) {
            return "";
        }
        String replace = entryName.replace(C16181m.f130232i, "/");
        while (replace.startsWith("/")) {
            replace = replace.substring(1);
        }
        return replace;
    }

    public static String i(String project, Throwable throwable) {
        if (throwable == null) {
            return "Unknown error while creating backup.";
        }
        String message = throwable.getMessage();
        Throwable cause = throwable.getCause();
        while (true) {
            if ((message == null || message.trim().isEmpty()) && cause != null) {
                message = cause.getMessage();
                cause = cause.getCause();
            }
        }
        if (message == null || message.trim().isEmpty()) {
            return "Unexpected error while creating backup.";
        }
        String trim = message.trim();
        if (!trim.contains(Y(project))) {
            return trim;
        }
        return trim.replace(Y(project) + "/", "");
    }

    public static void i0(String inProjectPath) {
        if (!inProjectPath.endsWith("/")) {
            inProjectPath = inProjectPath + "/";
        }
        g.d(new b(inProjectPath));
    }

    public static boolean j(String fileName, String folderPath) {
        return new File(folderPath + fileName).exists();
    }

    public static String j0(File tempBackupFile, File finalBackupFile) {
        if (tempBackupFile == null || finalBackupFile == null || !tempBackupFile.exists()) {
            return "Temporary backup file was not found after compression.";
        }
        if (finalBackupFile.exists()) {
            return "A backup with the same name already exists. Try again in a few seconds.";
        }
        if (tempBackupFile.renameTo(finalBackupFile)) {
            return null;
        }
        if (C13696a.a(tempBackupFile, finalBackupFile)) {
            k(tempBackupFile);
            return null;
        }
        k(finalBackupFile);
        return "Failed to publish the backup file to the backups folder.";
    }

    public static void k(File file) {
        if (file == null || !file.exists()) {
            return;
        }
        if (!file.delete() && file.exists()) {
            C13696a.g(file);
        }
        if (file.exists()) {
            file.deleteOnExit();
        }
    }

    public static void k0(x8.b callbacks) {
        if (callbacks == null) {
            throw new NullPointerException("callback can't be null");
        }
        List<x8.b> list = f72544e;
        synchronized (list) {
            list.remove(callbacks);
        }
    }

    public static List<File> l(I5.a fileTable) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (String str : ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm".split("\\|")) {
            List<File> a10 = fileTable.a(str);
            for (int i10 = 0; i10 < a10.size(); i10++) {
                File file = a10.get(i10);
                if (file.exists() && (!file.getName().equalsIgnoreCase("thumb.png") || !file.getParentFile().getName().endsWith(".meta"))) {
                    if (!new File(Tc.b.O(file.getAbsolutePath()) + C2633l.f9169o).exists()) {
                        steppedArrayList.add(file);
                    }
                }
            }
        }
        return steppedArrayList;
    }

    public static void l0(String loadedProjectName) {
        if (loadedProjectName == null) {
            loadedProjectName = "";
        }
        f72540a = loadedProjectName;
    }

    public static List<String> m(File projectFolderFile) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        File parentFile = projectFolderFile.getParentFile();
        n(projectFolderFile, projectFolderFile.getAbsolutePath(), parentFile != null ? parentFile.getAbsolutePath() : projectFolderFile.getAbsolutePath(), steppedArrayList);
        Collections.sort(steppedArrayList);
        return steppedArrayList;
    }

    public static boolean m0(String projectRootPath, File file) {
        if (file == null) {
            return false;
        }
        String b02 = b0(projectRootPath, file);
        if (file.isDirectory()) {
            return (b02.startsWith("_EDITOR/VCS") || b02.startsWith("_EDITOR/thumbs") || b02.startsWith("_PROJECT/Gallery") || b02.startsWith("_VULKAN")) ? false : true;
        }
        if (C2633l.a(file, ".sound") || C2633l.a(file, ".mwf")) {
            return false;
        }
        if (file.getName().equals("thumb.png") && file.getParentFile() != null && file.getParentFile().getName().endsWith(".meta")) {
            return false;
        }
        if (file.getName().equals("thumb_manifest.json") && file.getParentFile() != null && file.getParentFile().getName().endsWith(".meta")) {
            return false;
        }
        return !file.getName().equals("f.manifest");
    }

    public static void n(File file, String projectRootPath, String basePath, List<String> output) {
        if (file != null && file.exists() && m0(projectRootPath, file)) {
            if (!file.isDirectory()) {
                String absolutePath = file.getAbsolutePath();
                if (absolutePath.startsWith(basePath)) {
                    String h02 = h0(absolutePath.substring(basePath.length()));
                    if (h02.isEmpty()) {
                        return;
                    }
                    output.add(h02);
                    return;
                }
                return;
            }
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                return;
            }
            for (File file2 : listFiles) {
                n(file2, projectRootPath, basePath, output);
            }
        }
    }

    public static boolean n0(String projectRootPath, File file) {
        if (!m0(projectRootPath, file)) {
            return false;
        }
        if (file == null || file.isDirectory()) {
            return true;
        }
        if (C2633l.a(file, ".class")) {
            return false;
        }
        return true ^ C2633l.a(file, ".dex");
    }

    public static String o(String name, ColorINT color) {
        Material material = new Material();
        material.f0("SelfIlumin/DIF");
        material.b0(SerializableShaderEntry.f81153g, color);
        String replace = (R() + "/_EDITOR").replace(R() + "/", "");
        X7.a.d(replace, name + ".mat", material.Z());
        return replace + "/" + name + ".mat";
    }

    public static void o0(String projectName, I5.a fileTable) {
        O9.b.d(new d(fileTable, projectName));
    }

    public static String p(String name, String texture) {
        Material material = new Material();
        material.f0("SelfIlumin/DIF");
        material.b0(SerializableShaderEntry.f81153g, ColorINT.h0());
        material.i0("albedo", texture);
        String replace = (R() + "/_EDITOR").replace(R() + "/", "");
        X7.a.d(replace, name + ".mat", material.Z());
        return replace + "/" + name + ".mat";
    }

    public static void p0() {
        f72540a = "";
        f72543d = null;
    }

    public static String q() {
        return u(I(), "/Files");
    }

    public static void q0() {
        K8.a.I(new C1168a());
    }

    public static String r(ColorINT color) {
        return v(I(), "/Files", color);
    }

    public static String r0(String project, File zipFile, List<String> expectedEntries) {
        if (zipFile == null || !zipFile.exists() || zipFile.length() <= 0) {
            return "The generated backup file is empty or was not created.";
        }
        try {
            C15608a c15608a = new C15608a(zipFile);
            try {
                List<j> R10 = c15608a.R();
                HashSet hashSet = new HashSet();
                for (int i10 = 0; i10 < R10.size(); i10++) {
                    j jVar = R10.get(i10);
                    if (jVar != null && !jVar.s()) {
                        String h02 = h0(jVar.j());
                        if (!h02.isEmpty()) {
                            hashSet.add(h02);
                        }
                    }
                }
                if (hashSet.size() == expectedEntries.size()) {
                    if (hashSet.containsAll(expectedEntries)) {
                        c15608a.close();
                        return null;
                    }
                }
                c15608a.close();
                return "Backup validation failed because the generated zip is missing project files.";
            } finally {
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            return i(project, e10);
        }
    }

    public static String s(ColorINT color, String texture) {
        return w(I(), "/Files", color, texture);
    }

    public static String t(String texture) {
        return w(I(), "/Files", new ColorINT(), texture);
    }

    public static String u(String name, String folderPath) {
        String str = folderPath + "/Materials/";
        X7.a.d(str, name, new Material().Z());
        return str + name;
    }

    public static String v(String name, String folderPath, ColorINT color) {
        String str = folderPath + "/Materials/";
        Material material = new Material();
        material.o0();
        material.b0(SerializableShaderEntry.f81153g, color);
        X7.a.d(str, name, material.Z());
        return str + "/" + name;
    }

    public static String w(String name, String folderPath, ColorINT color, String texture) {
        String str = folderPath + "/Materials/";
        Material material = new Material();
        material.o0();
        material.i0(SerializableShaderEntry.f81152f, texture);
        material.b0(SerializableShaderEntry.f81153g, color);
        X7.a.d(str, name, material.Z());
        return str + "/" + name;
    }

    public static String x(String name, String folderPath, EnumC13053a blendingMode) {
        String str = folderPath + "/Materials/";
        Material material = new Material();
        material.setString("blendingMode", blendingMode.name());
        X7.a.d(str, name, material.Z());
        return str + name;
    }

    public static String y(String name, String folderPath, String albedoTexture) {
        String str = folderPath + "/Materials/";
        Material material = new Material();
        material.o0();
        material.i0(SerializableShaderEntry.f81152f, albedoTexture);
        X7.a.d(str, name, material.Z());
        return str + "/" + name;
    }

    public static String z(String name, String folderPath) {
        File file = new File(Tc.b.o(R() + "/" + folderPath + "/NavMesh/"));
        if (!file.exists()) {
            file.mkdirs();
        }
        return folderPath + "/NavMesh/" + name;
    }
}
