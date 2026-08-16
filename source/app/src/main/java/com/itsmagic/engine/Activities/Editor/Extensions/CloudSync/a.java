package com.itsmagic.engine.Activities.Editor.Extensions.CloudSync;

import Ic.C2633l;
import Ic.C2636o;
import android.content.ContentResolver;
import android.content.Context;
import android.util.Log;
import ca.InterfaceC4164a;
import cd.C4174a;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.itsmagic.engine.Activities.App;
import com.itsmagic.engine.Activities.Editor.Extensions.CloudSync.Db.InProjectFile;
import com.itsmagic.engine.Activities.Editor.Extensions.CloudSync.Db.LocalDB;
import com.itsmagic.engine.Activities.Editor.Extensions.CloudSync.Db.LocalFile;
import com.itsmagic.engine.Activities.Editor.Extensions.CloudSync.Db.SyncOperation;
import com.itsmagic.engine.Activities.Editor.Extensions.CloudSync.RemoteReport;
import com.itsmagic.engine.Activities.Editor.Utils.C12736d;
import com.itsmagic.engine.Activities.Editor.Utils.C12739g;
import com.itsmagic.engine.Activities.Editor.Utils.q;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Utils.Network.NetworkChangeReceiver;
import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
import w6.C15971b;

@Deprecated
public class a {

    public static final List<a> f70064j = new SteppedArrayList();

    public static final List<a> f70065k = new SteppedArrayList();

    public static final List<a> f70066l = new SteppedArrayList();

    public static a f70067m;

    public Settings f70068a;

    public final String f70069b;

    public final List<E3.a> f70070c = new SteppedArrayList();

    public final List<E3.a> f70071d = new SteppedArrayList();

    public final List<E3.a> f70072e = new SteppedArrayList();

    public final AtomicBoolean f70073f = new AtomicBoolean();

    public LocalDB f70074g;

    public LocalReport f70075h;

    public int f70076i;

    public class RunnableC1048a implements Runnable {
        public RunnableC1048a() {
        }

        @Override
        public void run() {
            C2636o.e("UPLOADING", new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(a.this.f70069b) + "/_EDITOR/CloudSync/lock"));
        }
    }

    public class b implements q.d.s {

        public final E3.a f70078a;

        public b(final E3.a val$candidate) {
            this.f70078a = val$candidate;
        }

        @Override
        public void a(String message) {
            synchronized (a.this.f70071d) {
                a.this.f70071d.remove(this.f70078a);
            }
            this.f70078a.k(E3.d.Failed);
            this.f70078a.i(message);
            synchronized (a.this.f70072e) {
                a.this.f70072e.add(this.f70078a);
            }
            a.this.q();
        }

        @Override
        public void b() {
            synchronized (a.this.f70071d) {
                a.this.f70071d.remove(this.f70078a);
            }
            this.f70078a.k(E3.d.Failed);
            this.f70078a.i("No ethernet connection");
            a.this.f70073f.set(false);
        }

        @Override
        public void c(long count, long ma2, int percentage) {
            this.f70078a.j(percentage);
        }

        @Override
        public void onSuccess() {
            synchronized (a.this.f70071d) {
                a.this.f70071d.remove(this.f70078a);
            }
            synchronized (a.this.f70070c) {
                a.this.f70070c.add(this.f70078a);
            }
            this.f70078a.k(E3.d.Done);
            a.this.q();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override
        public void run() {
            C2636o.e("DOWNLOADING", new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(a.this.f70069b) + "/_EDITOR/CloudSync/lock"));
        }
    }

    public class d implements C12739g.d {

        public final E3.a f70081a;

        public class RunnableC1049a implements Runnable {

            public final File f70083b;

            public RunnableC1049a(final File val$file) {
                this.f70083b = val$file;
            }

            @Override
            public void run() {
                a.this.f70074g.c(d.this.f70081a.c(), a.this.M(this.f70083b), d.this.f70081a.g());
                a.this.I();
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override
            public void run() {
                if (d.this.f70081a.b() != null && d.this.f70081a.b().exists()) {
                    d.this.f70081a.b().delete();
                }
                a.this.f70074g.j(d.this.f70081a.c());
                a.this.I();
            }
        }

        public d(final E3.a val$candidate) {
            this.f70081a = val$candidate;
        }

        @Override
        public void a(float p10, int downloadedBytes, int totalBytes) {
            this.f70081a.j((int) (p10 * 100.0f));
        }

        @Override
        public void b(File file) {
            O9.b.d(new RunnableC1049a(file));
            synchronized (a.this.f70071d) {
                a.this.f70071d.remove(this.f70081a);
            }
            synchronized (a.this.f70070c) {
                a.this.f70070c.add(this.f70081a);
            }
            this.f70081a.k(E3.d.Done);
            a.this.q();
        }

        @Override
        public void onError(String msg) {
            synchronized (a.this.f70071d) {
                a.this.f70071d.remove(this.f70081a);
            }
            this.f70081a.k(E3.d.Failed);
            this.f70081a.i("failed to download, a new attempt will happen soon.");
            synchronized (a.this.f70072e) {
                a.this.f70072e.add(this.f70081a);
            }
            O9.b.d(new b());
            a.this.q();
        }
    }

    static {
        ca.c.t(new InterfaceC4164a() {
            @Override
            public final void a() {
                com.itsmagic.engine.Activities.Editor.Extensions.CloudSync.a.F();
            }
        });
    }

    public a(String project) {
        if (project.contains("/")) {
            throw new RuntimeException("Invalid project name");
        }
        this.f70069b = project;
        E();
    }

    public static a A() {
        return B(com.itsmagic.engine.Core.Components.ProjectController.a.T());
    }

    public static a B(String project) {
        return null;
    }

    public static void F() {
    }

    public static void p() {
    }

    public boolean C(E3.a candidate) {
        synchronized (this.f70071d) {
            try {
                if (this.f70071d.contains(candidate)) {
                    return true;
                }
                synchronized (this.f70072e) {
                    try {
                        if (this.f70072e.contains(candidate)) {
                            return true;
                        }
                        synchronized (this.f70070c) {
                            try {
                                return this.f70070c.contains(candidate);
                            } finally {
                            }
                        }
                    } finally {
                    }
                }
            } finally {
            }
        }
    }

    public final void D() {
        if (this.f70074g == null) {
            try {
                this.f70074g = (LocalDB) X7.a.m().fromJson(X7.a.y(com.itsmagic.engine.Core.Components.ProjectController.a.Y(this.f70069b) + "/_EDITOR/CloudSync/db.json"), LocalDB.class);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (this.f70074g == null) {
                this.f70074g = new LocalDB();
            }
        }
    }

    public final void E() {
        try {
            this.f70068a = (Settings) X7.a.m().fromJson(X7.a.y(com.itsmagic.engine.Core.Components.ProjectController.a.Y(this.f70069b) + "/_EDITOR/CloudSync/settings.config"), Settings.class);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (this.f70068a == null) {
            this.f70068a = new Settings();
        }
    }

    public final void G() {
        File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(this.f70069b) + "/_EDITOR/CloudSync/lock");
        if (file.exists()) {
            file.delete();
        }
    }

    public void H() {
        if (this.f70068a.enableCloudSync) {
            f70067m = this;
        }
    }

    public final void I() {
        X7.a.j(com.itsmagic.engine.Core.Components.ProjectController.a.Y(this.f70069b) + "/_EDITOR/CloudSync/db.json", X7.a.m().toJson(this.f70074g));
    }

    public void J() {
        X7.a.j(com.itsmagic.engine.Core.Components.ProjectController.a.Y(this.f70069b) + "/_EDITOR/CloudSync/settings.config", X7.a.m().toJson(this.f70068a));
    }

    public final boolean K() {
        a aVar = f70067m;
        if ((aVar != null && aVar != this) || !Q()) {
            return true;
        }
        if (com.itsmagic.engine.Core.Components.ProjectController.a.d0() && !com.itsmagic.engine.Core.Components.ProjectController.a.T().equals(this.f70069b)) {
            try {
                return N7.c.D().L(C15971b.class) == null;
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return false;
    }

    public final void L() {
        if (!K() && this.f70073f.compareAndSet(false, true)) {
            q();
        }
    }

    public final String M(File file) {
        return C12736d.j(new Date(file.lastModified()));
    }

    public final void N() {
        if (this.f70068a.enableCloudSync) {
            synchronized (this.f70070c) {
                int i10 = 0;
                for (int i11 = 0; i11 < this.f70070c.size(); i11++) {
                    try {
                        this.f70070c.get(i11).f5444h += K8.d.d();
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                while (true) {
                    if (i10 >= this.f70070c.size()) {
                        break;
                    }
                    E3.a aVar = this.f70070c.get(i10);
                    if (aVar.f5444h >= 30.0f) {
                        this.f70070c.remove(aVar);
                        break;
                    }
                    i10++;
                }
            }
        }
    }

    public final void O() {
        if (K() || !this.f70068a.enableCloudSync || this.f70073f.get()) {
            return;
        }
        synchronized (this.f70072e) {
            this.f70072e.clear();
        }
        this.f70075h = new LocalReport();
        D();
        if (C4174a.a(App.f69782c.a()).booleanValue() && NetworkChangeReceiver.f81536a.get()) {
            File x10 = x();
            o(x10);
            s(x10);
            l(x10);
            P();
            this.f70076i = this.f70071d.size();
        }
        I();
        this.f70075h = null;
        L();
    }

    public final void P() {
        if (K()) {
            return;
        }
        try {
            String f10 = q.d.f(this.f70069b, this.f70075h);
            if (q.f72153a) {
                Log.e(q.f72154b, "Result:" + f10);
            }
            JSONObject h10 = hd.c.h(f10);
            if (hd.c.g(h10, "status").equalsIgnoreCase(FirebaseAnalytics.d.f67668H)) {
                RemoteReport remoteReport = (RemoteReport) X7.a.m().fromJson(hd.c.g(hd.c.f(h10, "values"), "report"), RemoteReport.class);
                if (remoteReport != null) {
                    for (int i10 = 0; i10 < remoteReport.reportList.size(); i10++) {
                        RemoteReport.RemoteFileReport remoteFileReport = remoteReport.reportList.get(i10);
                        if (!v(remoteFileReport.ipp)) {
                            File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(this.f70069b) + "/" + remoteFileReport.ipp);
                            if (remoteFileReport.mode.equalsIgnoreCase(ContentResolver.SYNC_EXTRAS_UPLOAD)) {
                                synchronized (this.f70071d) {
                                    this.f70071d.add(new E3.a(file, E3.c.Upload, this.f70069b, remoteFileReport.ipp, remoteFileReport.serverLM));
                                    L();
                                }
                            } else if (remoteFileReport.mode.equalsIgnoreCase(Context.DOWNLOAD_SERVICE)) {
                                synchronized (this.f70071d) {
                                    this.f70071d.add(new E3.a(file, E3.c.Download, this.f70069b, remoteFileReport.ipp, remoteFileReport.serverLM));
                                    L();
                                }
                            } else {
                                continue;
                            }
                        }
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final boolean Q() {
        return x().exists();
    }

    public void k(String ipp) {
        D();
        this.f70074g.a(ipp);
    }

    public final void l(File folder) {
        File[] listFiles = folder.listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (K()) {
                    return;
                }
                if (!u(file)) {
                    if (file.isDirectory()) {
                        l(file);
                    } else {
                        String w10 = w(file);
                        String M10 = M(file);
                        this.f70074g.e(w10, M10);
                        LocalFile d10 = this.f70074g.d(w10);
                        if (d10 == null) {
                            this.f70075h.a(w10, M10);
                        } else if (M10.equals(d10.localLM)) {
                            this.f70075h.a(w10, d10.serverLM);
                        } else {
                            this.f70075h.a(w10, M10);
                        }
                    }
                }
            }
        }
    }

    public E3.a m(int i10) {
        E3.a aVar;
        synchronized (this.f70071d) {
            aVar = this.f70071d.get(i10);
        }
        return aVar;
    }

    public int n() {
        int size;
        synchronized (this.f70071d) {
            size = this.f70071d.size();
        }
        return size;
    }

    public final void o(File projectFolder) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < this.f70074g.i(); i10++) {
            InProjectFile h10 = this.f70074g.h(i10);
            if (!new File(projectFolder, h10.ipp).exists()) {
                this.f70074g.a(h10.ipp);
                steppedArrayList.add(h10);
            }
            if (K()) {
                break;
            }
        }
        this.f70074g.b(steppedArrayList);
    }

    public final void q() {
        if (K()) {
            this.f70073f.set(false);
            return;
        }
        synchronized (this.f70071d) {
            try {
                if (this.f70071d.isEmpty()) {
                    G();
                    this.f70073f.set(false);
                } else {
                    this.f70073f.set(true);
                    E3.a aVar = this.f70071d.get(0);
                    if (aVar.d() == E3.c.Upload) {
                        t(aVar);
                    } else if (aVar.d() == E3.c.Download) {
                        r(aVar);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void r(E3.a candidate) {
        candidate.k(E3.d.Downloading);
        new Thread(new c()).start();
        try {
            q.d.b(candidate.f(), candidate.c(), new d(candidate));
        } catch (Error | Exception e10) {
            e10.printStackTrace();
            synchronized (this.f70071d) {
                this.f70071d.remove(candidate);
            }
            candidate.k(E3.d.Failed);
            candidate.i(e10.getMessage());
            synchronized (this.f70072e) {
                this.f70072e.add(candidate);
            }
            q();
        }
    }

    public final void s(File projectFolder) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < this.f70074g.g(); i10++) {
            SyncOperation f10 = this.f70074g.f(i10);
            if (SyncOperation.f70057a.equals(f10.mode)) {
                try {
                    String c10 = q.d.c(this.f70069b, f10.ipp);
                    if (!q.j.c(c10)) {
                        if (c10.contains("Can't delete!")) {
                            continue;
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            steppedArrayList.add(f10);
            if (K()) {
                break;
            }
        }
        this.f70074g.l(steppedArrayList);
    }

    public final void t(E3.a candidate) {
        candidate.k(E3.d.Uploading);
        new Thread(new RunnableC1048a()).start();
        File b10 = candidate.b();
        try {
            q.d.j(this.f70069b, w(b10), M(b10), b10, new b(candidate));
        } catch (Error | Exception e10) {
            e10.printStackTrace();
            candidate.k(E3.d.Failed);
            candidate.i(e10.getMessage());
            synchronized (this.f70072e) {
                this.f70072e.add(candidate);
            }
            synchronized (this.f70071d) {
                this.f70071d.remove(candidate);
            }
            q();
        }
    }

    public final boolean u(File file) {
        return v(w(file));
    }

    public final boolean v(String ipp) {
        String v10 = Tc.b.v(ipp);
        String B10 = Tc.b.B(ipp);
        if (ipp.startsWith("_PROJECT/Scripts/") || ipp.startsWith("_PROJECT/Gallery/") || ipp.startsWith("_EDITOR/VCS") || ipp.startsWith("_EDITOR/ImportedPackages") || ipp.startsWith("_EDITOR/thumbs") || ipp.startsWith("_EDITOR/axis") || ipp.startsWith("_EDITOR/CloudSync/")) {
            return true;
        }
        if ((ipp.startsWith("_EDITOR/") && C2633l.b(v10, ".mat")) || ipp.startsWith("_EDITOR/pv.config") || ipp.startsWith("Resources/READ-ME.txt") || ipp.startsWith("storage/") || ipp.startsWith("JAVARuntime/") || ipp.startsWith("javaRTImportPack.zip") || C2633l.b(v10, ".class") || C2633l.b(v10, ".dex") || C2633l.b(v10, ".texture") || C2633l.b(v10, ".javac") || v10.equals("jmi.config") || v10.equals("f.manifest")) {
            return true;
        }
        if (v10.equals("thumb.png") && B10.endsWith(".meta")) {
            return true;
        }
        return v10.equals("thumb.png.config") && B10.endsWith(".meta");
    }

    public final String w(File file) {
        return file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.Y(this.f70069b) + "/", "");
    }

    public final File x() {
        return new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(this.f70069b));
    }

    public Settings y() {
        if (this.f70068a == null) {
            E();
        }
        return this.f70068a;
    }

    public int z() {
        return this.f70076i;
    }
}
