package com.itsmagic.engine.Activities.Editor.Extensions.PackageManager;

import Ic.C2633l;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.a;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.i;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.n;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.r;
import com.itsmagic.engine.Activities.Editor.Panels.Marketplace.BackendAPI.Objects.Product;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.constant.ConstantDescs;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;
import org.eclipse.jdt.internal.core.JavaElement;
import ug.C15608a;

public class n {

    public static n f70338c;

    public static final List<com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.d> f70339d = new SteppedArrayList();

    public final Object f70340a = new Object();

    public final String f70341b;

    public class a implements x8.b {
        public static boolean d(com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.d dVar) {
            return dVar.b() && dVar.a() == n.f70338c;
        }

        @Override
        public void a() {
            if (n.f70338c != null) {
                n.f70338c.j();
                synchronized (n.f70339d) {
                    n.f70339d.removeIf(new Predicate() {
                        @Override
                        public final boolean test(Object obj) {
                            boolean d10;
                            d10 = n.a.d((d) obj);
                            return d10;
                        }
                    });
                }
                n unused = n.f70338c = null;
            }
            if (com.itsmagic.engine.Core.Components.ProjectController.a.d0()) {
                n unused2 = n.f70338c = n.o(com.itsmagic.engine.Core.Components.ProjectController.a.T());
            }
        }

        @Override
        public void b() {
        }
    }

    public class b implements Runnable {

        public final a.l f70342b;

        public final i f70343c;

        public class a implements j {

            public int f70345a = -1;

            public class RunnableC1065a implements Runnable {

                public final int f70347b;

                public final int f70348c;

                public final int f70349d;

                public RunnableC1065a(final int val$steps, final int val$count, final int val$p) {
                    this.f70347b = val$steps;
                    this.f70348c = val$count;
                    this.f70349d = val$p;
                }

                @Override
                public void run() {
                    b.this.f70343c.c(this.f70347b, this.f70348c, this.f70349d);
                }
            }

            public a() {
            }

            @Override
            public void a() {
                i iVar = b.this.f70343c;
                Objects.requireNonNull(iVar);
                N7.c.j0(new p(iVar));
            }

            @Override
            public void b(int steps, int count, String zipFile) {
                int i10 = (int) ((steps / count) * 100.0f);
                if (i10 != this.f70345a) {
                    this.f70345a = i10;
                    N7.c.j0(new RunnableC1065a(steps, count, i10));
                }
            }

            @Override
            public void onSuccess() {
                i iVar = b.this.f70343c;
                Objects.requireNonNull(iVar);
                N7.c.j0(new o(iVar));
            }
        }

        public b(final a.l val$pack, final i val$importListener) {
            this.f70342b = val$pack;
            this.f70343c = val$importListener;
        }

        @Override
        public void run() {
            n.this.s(this.f70342b, new a());
        }
    }

    public class c implements Runnable {

        public final a.l f70351b;

        public final i f70352c;

        public class a implements i.k {

            public class RunnableC1066a implements Runnable {

                public final i.C1064i f70355b;

                public class C1067a implements j {

                    public int f70357a = -1;

                    public class RunnableC1068a implements Runnable {

                        public final int f70359b;

                        public final int f70360c;

                        public final int f70361d;

                        public RunnableC1068a(final int val$steps, final int val$count, final int val$p) {
                            this.f70359b = val$steps;
                            this.f70360c = val$count;
                            this.f70361d = val$p;
                        }

                        @Override
                        public void run() {
                            c.this.f70352c.c(this.f70359b, this.f70360c, this.f70361d);
                        }
                    }

                    public C1067a() {
                    }

                    @Override
                    public void a() {
                        i iVar = c.this.f70352c;
                        Objects.requireNonNull(iVar);
                        N7.c.j0(new p(iVar));
                    }

                    @Override
                    public void b(int steps, int count, String zipFile) {
                        int i10 = (int) ((steps / count) * 100.0f);
                        if (i10 != this.f70357a) {
                            this.f70357a = i10;
                            N7.c.j0(new RunnableC1068a(steps, count, i10));
                        }
                    }

                    @Override
                    public void onSuccess() {
                        i iVar = c.this.f70352c;
                        Objects.requireNonNull(iVar);
                        N7.c.j0(new o(iVar));
                    }
                }

                public RunnableC1066a(final i.C1064i val$data) {
                    this.f70355b = val$data;
                }

                @Override
                public void run() {
                    c cVar = c.this;
                    n.this.t(this.f70355b, cVar.f70351b, new C1067a());
                }
            }

            public a() {
            }

            @Override
            public void a(i.C1064i data) {
                O9.b.d(new RunnableC1066a(data));
            }

            @Override
            public void onCancel() {
                c.this.f70352c.onCancel();
            }
        }

        public c(final a.l val$pack, final i val$importListener) {
            this.f70351b = val$pack;
            this.f70352c = val$importListener;
        }

        @Override
        public void run() {
            com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.i.F1(this.f70351b.j(), this.f70351b.m(), new a());
        }
    }

    public class d implements k {

        public final a.l f70363a;

        public d(final a.l val$pack) {
            this.f70363a = val$pack;
        }

        @Override
        public boolean a(String inZipPath) {
            return !n.z(inZipPath, this.f70363a.o());
        }
    }

    public class e implements l {

        public int f70365a = 0;

        public final j f70366b;

        public final int f70367c;

        public e(final j val$sImportListener, final int val$count) {
            this.f70366b = val$sImportListener;
            this.f70367c = val$count;
        }

        @Override
        public void a(String zipFile) {
            int i10 = this.f70365a + 1;
            this.f70365a = i10;
            this.f70366b.b(i10, this.f70367c, zipFile);
        }
    }

    public class f implements k {

        public final i.C1064i f70369a;

        public f(final i.C1064i val$data) {
            this.f70369a = val$data;
        }

        @Override
        public boolean a(String inZipPath) {
            return this.f70369a.d(inZipPath);
        }
    }

    public class g implements l {

        public int f70371a = 0;

        public final j f70372b;

        public final int f70373c;

        public g(final j val$sImportListener, final int val$count) {
            this.f70372b = val$sImportListener;
            this.f70373c = val$count;
        }

        @Override
        public void a(String zipFile) {
            int i10 = this.f70371a + 1;
            this.f70371a = i10;
            this.f70372b.b(i10, this.f70373c, zipFile);
        }
    }

    public interface h {
        boolean a(String inZipPath);

        boolean b(r.b file);
    }

    public interface i {
        void a();

        void b();

        void c(int steps, int count, int percentage);

        void onCancel();
    }

    public interface j {
        void a();

        void b(int steps, int count, String zipFile);

        void onSuccess();
    }

    public interface k {
        boolean a(String inZipPath);
    }

    public interface l {
        void a(String zipFile);
    }

    static {
        com.itsmagic.engine.Core.Components.ProjectController.a.h(new a());
    }

    public n(String loadedProject) {
        this.f70341b = loadedProject;
    }

    public static void k(List<r.b> zipFiles, final boolean keepRootReadme) {
        if (zipFiles == null) {
            return;
        }
        zipFiles.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean w10;
                w10 = n.w(keepRootReadme, (r.b) obj);
                return w10;
            }
        });
        for (int i10 = 0; i10 < zipFiles.size(); i10++) {
            k(zipFiles.get(i10).f70381e, keepRootReadme);
        }
    }

    public static n n() {
        n nVar = f70338c;
        return nVar != null ? nVar : o(com.itsmagic.engine.Core.Components.ProjectController.a.T());
    }

    public static n o(String project) {
        List<com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.d> list = f70339d;
        synchronized (list) {
            try {
                list.removeIf(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        boolean x10;
                        x10 = n.x((d) obj);
                        return x10;
                    }
                });
                Iterator<com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.d> it = list.iterator();
                while (it.hasNext()) {
                    n a10 = it.next().a();
                    if (a10.f70341b.equals(project)) {
                        return a10;
                    }
                }
                n nVar = new n(project);
                f70339d.add(new com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.d(nVar));
                return nVar;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static boolean w(boolean z10, r.b bVar) {
        return z(bVar.i(), z10);
    }

    public static boolean x(com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.d dVar) {
        return !dVar.b();
    }

    public static boolean z(String entryName, boolean keepRootReadme) {
        if (entryName == null || entryName.isEmpty()) {
            return false;
        }
        String trim = entryName.replace(JavaElement.JEM_ESCAPE, '/').trim();
        while (trim.startsWith("/")) {
            trim = trim.substring(1);
        }
        while (trim.endsWith("/")) {
            trim = trim.substring(0, trim.length() - 1);
        }
        if (trim.contains("/")) {
            return ".store".equalsIgnoreCase(trim.substring(0, trim.indexOf(47)));
        }
        if (".store".equalsIgnoreCase(trim) || "manifest.json".equalsIgnoreCase(trim)) {
            return true;
        }
        return !keepRootReadme && "README.md".equalsIgnoreCase(trim);
    }

    public final void A(File zipFile, File destination, k filter, l unzipListener) throws Exception {
        zg.k S10;
        FileOutputStream fileOutputStream;
        if (!zipFile.exists()) {
            throw new FileNotFoundException("Zip not found: " + zipFile.getAbsolutePath());
        }
        try {
            C15608a c15608a = new C15608a(zipFile);
            try {
                String str = "";
                for (Bg.j jVar : c15608a.R()) {
                    String j10 = jVar.j();
                    if (filter.a(j10)) {
                        unzipListener.a(j10);
                        File file = new File(destination, j10);
                        File parentFile = jVar.s() ? file : file.getParentFile();
                        if (!parentFile.exists() && !parentFile.mkdirs()) {
                            throw new FileNotFoundException("Failed to create directory: " + parentFile.getAbsolutePath());
                        }
                        if (!jVar.s()) {
                            try {
                                S10 = c15608a.S(jVar);
                                try {
                                    fileOutputStream = new FileOutputStream(file);
                                } catch (Throwable th2) {
                                    if (S10 != null) {
                                        try {
                                            S10.close();
                                        } catch (Throwable th3) {
                                            th2.addSuppressed(th3);
                                        }
                                    }
                                    throw th2;
                                    break;
                                }
                            } catch (IOException e10) {
                                System.err.println("Erro ao extrair: " + j10 + " (pulado)");
                                e10.printStackTrace();
                            }
                            try {
                                byte[] bArr = new byte[8192];
                                while (true) {
                                    int read = S10.read(bArr);
                                    if (read == -1) {
                                        break;
                                    } else {
                                        fileOutputStream.write(bArr, 0, read);
                                    }
                                }
                                fileOutputStream.close();
                                S10.close();
                                long m10 = jVar.m();
                                if (m10 > 0) {
                                    file.setLastModified(m10);
                                }
                                try {
                                    if (C2633l.b(file.getName(), ".world")) {
                                        World.h(X7.a.x(file));
                                    }
                                } catch (Exception e11) {
                                    e11.printStackTrace();
                                }
                            } catch (Throwable th4) {
                                try {
                                    fileOutputStream.close();
                                } catch (Throwable th5) {
                                    th4.addSuppressed(th5);
                                }
                                throw th4;
                                break;
                            }
                        }
                        str = j10;
                    } else {
                        unzipListener.a(str);
                    }
                }
                c15608a.close();
            } finally {
            }
        } catch (IOException e12) {
            System.err.println("Erro ao processar o ZIP: " + e12.getMessage());
            e12.printStackTrace();
        }
    }

    public final int i(List<r.b> files) {
        int i10 = 0;
        if (files != null) {
            Iterator<r.b> it = files.iterator();
            while (it.hasNext()) {
                i10 = i10 + i(it.next().f70381e) + 1;
            }
        }
        return i10;
    }

    public void j() {
    }

    public ImportedPackage l(String productID) {
        File[] listFiles;
        File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(this.f70341b) + "/_EDITOR/ImportedPackages/");
        if (!file.exists() || (listFiles = file.listFiles()) == null) {
            return null;
        }
        for (File file2 : listFiles) {
            if (file2.getName().endsWith(".ipm")) {
                String x10 = X7.a.x(file2);
                if (x10 == null || x10.isEmpty()) {
                    file2.delete();
                } else {
                    ImportedPackage importedPackage = (ImportedPackage) X7.a.m().fromJson(x10, ImportedPackage.class);
                    if (importedPackage.k().equals(productID)) {
                        return importedPackage;
                    }
                }
            }
        }
        return null;
    }

    public String m() {
        return this.f70341b;
    }

    public void p(a.l pack, i importListener) {
        q(pack, importListener, false);
    }

    public void q(a.l pack, i importListener, boolean silently) {
        if (importListener == null) {
            throw new NullPointerException("Import listener can't be null");
        }
        if (silently) {
            O9.b.d(new b(pack, importListener));
        } else {
            N7.c.j0(new c(pack, importListener));
        }
    }

    public void r(a.l pack, i importListener) {
        q(pack, importListener, true);
    }

    public final void s(a.l pack, j sImportListener) {
        ImportedPackage importedPackage = new ImportedPackage(pack.i(), pack.j(), pack.l());
        importedPackage.m(pack.j());
        importedPackage.n(pack.l());
        File m10 = pack.m();
        List<r.b> h10 = r.h(m10);
        if (h10 == null) {
            m10.delete();
            sImportListener.a();
            return;
        }
        k(h10, pack.o());
        importedPackage.f(h10);
        try {
            A(m10, new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(this.f70341b) + "/"), new d(pack), new e(sImportListener, i(h10)));
            synchronized (this.f70340a) {
                try {
                    File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(this.f70341b) + "/_EDITOR/ImportedPackages/");
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    X7.a.i(new File(file, pack.i() + ".ipm"), X7.a.m().toJson(importedPackage));
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (this.f70341b.equals(com.itsmagic.engine.Core.Components.ProjectController.a.T())) {
                d8.j jVar = W7.b.f27310j;
                d8.j.B0();
                d8.j.v0();
            }
            sImportListener.onSuccess();
        } catch (Exception e10) {
            e10.printStackTrace();
            sImportListener.a();
        }
    }

    public final void t(i.C1064i data, a.l pack, j sImportListener) {
        ImportedPackage importedPackage = new ImportedPackage(pack.i(), pack.j(), pack.l());
        importedPackage.m(pack.j());
        importedPackage.n(pack.l());
        importedPackage.e(data);
        int c10 = data.c();
        try {
            A(pack.m(), new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(this.f70341b) + "/"), new f(data), new g(sImportListener, c10));
            synchronized (this.f70340a) {
                try {
                    File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(this.f70341b) + "/_EDITOR/ImportedPackages/");
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    X7.a.i(new File(file, pack.i() + ConstantDescs.DEFAULT_NAME + pack.l() + ".ipm"), X7.a.m().toJson(importedPackage));
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (this.f70341b.equals(com.itsmagic.engine.Core.Components.ProjectController.a.T())) {
                d8.j jVar = W7.b.f27310j;
                d8.j.B0();
                d8.j.v0();
            }
            sImportListener.onSuccess();
        } catch (Exception e10) {
            e10.printStackTrace();
            sImportListener.a();
        }
    }

    public boolean u(long productID) {
        List<ImportedPackage> y10 = y();
        for (int i10 = 0; i10 < y10.size(); i10++) {
            if (y10.get(i10).k().equals(Long.valueOf(productID))) {
                return true;
            }
        }
        return false;
    }

    public boolean v(Product product) {
        return u(product.j());
    }

    public List<ImportedPackage> y() {
        SteppedArrayList steppedArrayList;
        File[] listFiles;
        synchronized (this.f70340a) {
            try {
                steppedArrayList = new SteppedArrayList();
                File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(this.f70341b) + "/_EDITOR/ImportedPackages/");
                if (file.exists() && (listFiles = file.listFiles()) != null) {
                    for (File file2 : listFiles) {
                        if (file2.getName().endsWith(".ipm")) {
                            String x10 = X7.a.x(file2);
                            if (x10 == null || x10.isEmpty()) {
                                file2.delete();
                            } else {
                                steppedArrayList.add((ImportedPackage) X7.a.m().fromJson(x10, ImportedPackage.class));
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return steppedArrayList;
    }
}
