package com.itsmagic.engine.Activities.Editor.Extensions.PackageManager;

import JAVARuntime.Runnable;
import M7.c;
import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.a;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.h;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.j;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.n;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Panels.Marketplace.BackendAPI.v2.Package;
import com.itsmagic.engine.Engines.Engine.Modules.UpdateModule;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import java.io.File;
import java.util.List;
import java.util.function.Predicate;
import r4.C15147a;

public class g extends EditorPanel {

    public static final String f70238Z = "PackageDownloader";

    public static o f70242d0;

    public static o f70243e0;

    @SuppressLint({"StaticFieldLeak"})
    public static g f70244f0;

    @SuppressLint({"StaticFieldLeak"})
    public static M7.b f70245g0;

    public RecyclerView f70247X;

    public com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.h f70248Y;

    public static final List<o> f70239a0 = new SteppedArrayList();

    public static final List<o> f70240b0 = new SteppedArrayList();

    public static final List<o> f70241c0 = new SteppedArrayList();

    public static final UpdateModule f70246h0 = new f();

    public class a implements a.p {

        public final o f70249a;

        public class C1056a extends a.j {
            public C1056a() {
            }

            @Override
            public void a() {
                String h10;
                synchronized (g.f70241c0) {
                    try {
                        if (a.this.f70249a != null) {
                            g.f70241c0.add(a.this.f70249a);
                            a.this.f70249a.f70272g = o.b.Failed;
                        }
                    } finally {
                    }
                }
                o oVar = a.this.f70249a;
                if (oVar != null) {
                    String str = "Error";
                    a.l lVar = oVar.f70270e;
                    if (lVar != null && (h10 = lVar.h()) != null && !h10.trim().isEmpty()) {
                        str = h10;
                    }
                    synchronized (a.this.f70249a.f70279n) {
                        for (int i10 = 0; i10 < a.this.f70249a.f70279n.size(); i10++) {
                            try {
                                ((p) a.this.f70249a.f70279n.get(i10)).a(str);
                            } finally {
                            }
                        }
                    }
                }
                synchronized (g.f70240b0) {
                    try {
                        boolean z10 = a.this.f70249a.f70280o;
                        if (g.f70242d0 == a.this.f70249a) {
                            o unused = g.f70242d0 = null;
                        }
                        if (!z10) {
                            g.e2();
                        }
                    } finally {
                    }
                }
            }

            @Override
            public void b(File zipFile) {
                o oVar;
                synchronized (g.f70241c0) {
                    g.f70241c0.add(a.this.f70249a);
                    oVar = a.this.f70249a;
                    oVar.f70272g = o.b.Importing;
                }
                synchronized (oVar.f70279n) {
                    for (int i10 = 0; i10 < a.this.f70249a.f70279n.size(); i10++) {
                        try {
                            ((p) a.this.f70249a.f70279n.get(i10)).e(p.a.Download);
                        } finally {
                        }
                    }
                }
                synchronized (g.f70240b0) {
                    try {
                        boolean z10 = a.this.f70249a.f70280o;
                        if (g.f70242d0 == a.this.f70249a) {
                            o unused = g.f70242d0 = null;
                        }
                        if (!z10) {
                            g.e2();
                        }
                    } finally {
                    }
                }
            }

            @Override
            public void c(int progress, long etaInMilliSeconds, long downloadedBytesPerSecond) {
                long j10;
                boolean z10;
                a.l lVar;
                int c22 = g.c2(progress);
                o oVar = a.this.f70249a;
                if (oVar == null || (lVar = oVar.f70270e) == null) {
                    j10 = 0;
                    z10 = false;
                } else {
                    j10 = lVar.f();
                    z10 = a.this.f70249a.f70270e.n();
                }
                long j11 = j10;
                synchronized (a.this.f70249a.f70279n) {
                    for (int i10 = 0; i10 < a.this.f70249a.f70279n.size(); i10++) {
                        try {
                            ((p) a.this.f70249a.f70279n.get(i10)).d(c22, etaInMilliSeconds, downloadedBytesPerSecond, j11, z10, p.a.Download);
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
            }
        }

        public a(final o val$activeDownload) {
            this.f70249a = val$activeDownload;
        }

        @Override
        public void a(String error) {
            synchronized (g.f70240b0) {
                try {
                    System.out.println("Download error:" + error);
                    o oVar = this.f70249a;
                    if (oVar != null) {
                        oVar.f70272g = o.b.Failed;
                        oVar.f70276k = error;
                        synchronized (oVar.f70279n) {
                            for (int i10 = 0; i10 < this.f70249a.f70279n.size(); i10++) {
                                try {
                                    ((p) this.f70249a.f70279n.get(i10)).a(error);
                                } finally {
                                }
                            }
                        }
                    }
                    if (g.f70242d0 == this.f70249a) {
                        o unused = g.f70242d0 = null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void b() {
            synchronized (g.f70240b0) {
                try {
                    System.out.println("Download onEthernetFailed");
                    o oVar = this.f70249a;
                    if (oVar != null) {
                        oVar.f70272g = o.b.Failed;
                        synchronized (oVar.f70279n) {
                            for (int i10 = 0; i10 < this.f70249a.f70279n.size(); i10++) {
                                try {
                                    ((p) this.f70249a.f70279n.get(i10)).b();
                                } finally {
                                }
                            }
                        }
                    }
                    if (g.f70242d0 == this.f70249a) {
                        o unused = g.f70242d0 = null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void c(a.l downloadOut) {
            o oVar;
            try {
                o oVar2 = this.f70249a;
                if (oVar2 != null) {
                    oVar2.f70270e = downloadOut;
                    oVar2.f70277l = downloadOut.f70229e;
                    if (downloadOut.e() != a.m.Downloaded) {
                        this.f70249a.f70270e.c(new C1056a());
                        return;
                    }
                    synchronized (g.f70241c0) {
                        g.f70241c0.add(this.f70249a);
                        oVar = this.f70249a;
                        oVar.f70272g = o.b.Importing;
                    }
                    synchronized (oVar.f70279n) {
                        for (int i10 = 0; i10 < this.f70249a.f70279n.size(); i10++) {
                            try {
                                ((p) this.f70249a.f70279n.get(i10)).e(p.a.Download);
                            } finally {
                            }
                        }
                    }
                    synchronized (g.f70240b0) {
                        try {
                            boolean z10 = this.f70249a.f70280o;
                            if (g.f70242d0 == this.f70249a) {
                                o unused = g.f70242d0 = null;
                            }
                            if (!z10) {
                                g.e2();
                            }
                        } finally {
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class b implements n.i {
        @Override
        public void a() {
            synchronized (g.f70240b0) {
                try {
                    if (g.f70243e0 != null) {
                        g.f70243e0.f70272g = o.b.Failed;
                        g.f70243e0.f70276k = "Failed to import";
                        o unused = g.f70243e0 = null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void b() {
            synchronized (g.f70240b0) {
                try {
                    if (g.f70243e0 != null) {
                        g.f70243e0.f70272g = o.b.Finished;
                        if (!g.f70243e0.f70280o) {
                            N7.c.v0("Package imported successfully");
                        }
                        synchronized (g.f70243e0.f70279n) {
                            for (int i10 = 0; i10 < g.f70243e0.f70279n.size(); i10++) {
                                try {
                                    p pVar = (p) g.f70243e0.f70279n.get(i10);
                                    if (pVar != null) {
                                        pVar.e(p.a.Import);
                                    }
                                } finally {
                                }
                            }
                        }
                        d8.j.v0();
                        o unused = g.f70243e0 = null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void c(int steps, int count, int percentage) {
            try {
                synchronized (g.f70240b0) {
                    int c22 = g.c2(percentage);
                    g.f70243e0.f70273h = c22;
                    g.f70243e0.f70274i = steps;
                    g.f70243e0.f70275j = count;
                    synchronized (g.f70243e0.f70279n) {
                        for (int i10 = 0; i10 < g.f70243e0.f70279n.size(); i10++) {
                            try {
                                p pVar = (p) g.f70243e0.f70279n.get(i10);
                                if (pVar != null) {
                                    pVar.c(c22, 0L, 0L, p.a.Import);
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override
        public void onCancel() {
            try {
                synchronized (g.f70240b0) {
                    g.f70243e0.f70272g = o.b.Finished;
                    o unused = g.f70243e0 = null;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class c implements h.e {
        public c() {
        }

        @Override
        public void a(o download) {
            synchronized (g.f70239a0) {
                try {
                    g.f70239a0.remove(download);
                    if (download.k() == o.b.Downloading) {
                        download.m();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public class d implements View.OnClickListener {

        public class a extends SteppedArrayList<C12908b> {

            public class C1057a implements dd.d {

                public class C1058a implements Predicate<o> {
                    public C1058a() {
                    }

                    @Override
                    public boolean test(o download) {
                        return download.k() == o.b.Finished;
                    }
                }

                public C1057a() {
                }

                @Override
                public void onSelected(View v10) {
                    synchronized (g.f70239a0) {
                        g.f70239a0.removeIf(new C1058a());
                    }
                }
            }

            public class b implements dd.d {

                public class C1059a implements Predicate<o> {
                    public C1059a() {
                    }

                    @Override
                    public boolean test(o download) {
                        return download.k() == o.b.Failed;
                    }
                }

                public b() {
                }

                @Override
                public void onSelected(View v10) {
                    synchronized (g.f70239a0) {
                        g.f70239a0.removeIf(new C1059a());
                    }
                }
            }

            public a() {
                add(new C12908b("Remove all finished", new C1057a()));
                add(new C12908b("Remove all failed", new b()));
            }
        }

        public d() {
        }

        @Override
        public void onClick(View v10) {
            Y6.a.F1(v10, C15147a.e.Below, new a());
        }
    }

    public class e implements o4.c {

        public final g f70258a;

        public e(final g val$newPanel) {
            this.f70258a = val$newPanel;
        }

        @Override
        public void a() {
            if (g.f70244f0 == this.f70258a) {
                g unused = g.f70244f0 = null;
            }
        }
    }

    public class f extends UpdateModule {
        @Override
        public void g() {
            g.h2();
        }
    }

    public class C1060g implements M7.a {
        @Override
        public void a(View v10, Context context, M7.b tbButton) {
            g.g2(v10, C15147a.e.Below);
        }
    }

    public class h implements C15147a.f {
        @Override
        public void a(FloatingPanelArea floatingPanelArea) {
            floatingPanelArea.F1(true);
        }
    }

    public class i implements o4.c {
        public i() {
        }

        @Override
        public void a() {
            if (g.f70244f0 == g.this) {
                g unused = g.f70244f0 = null;
            }
        }
    }

    public class j implements Runnable {
        @Override
        public void run() {
            g.f70246h0.a();
        }
    }

    public class k implements Runnable {
        @Override
        public void run() {
            g.f70246h0.a();
        }
    }

    public class l implements Runnable {

        public class a implements Runnable {

            public class C1061a implements Runnable {

                public class RunnableC1062a implements Runnable {
                    public RunnableC1062a() {
                    }

                    @Override
                    public void run() {
                        g.F1();
                    }
                }

                public C1061a() {
                }

                @Override
                public void run() {
                    N7.c.l(0.1f, new RunnableC1062a());
                }
            }

            public a() {
            }

            @Override
            public void run() {
                g.G1(new C1061a());
            }
        }

        @Override
        public void run() {
            N7.c.l(0.1f, new a());
        }
    }

    public class m implements Runnable {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                g.F1();
            }
        }

        @Override
        public void run() {
            N7.c.l(0.1f, new a());
        }
    }

    public class n implements Runnable {

        public final Runnable f70265b;

        public n(final Runnable val$runnable) {
            this.f70265b = val$runnable;
        }

        @Override
        public void run() {
            g.f70245g0.L(g.f70245g0.y(), true);
            Runnable runnable = this.f70265b;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public interface p {

        public enum a {
            Download,
            Import
        }

        void a(String error);

        void b();

        default void c(int progress, long etaInMilliSeconds, long downloadedBytesPerSecond, a updateStep) {
        }

        default void d(int progress, long etaInMilliSeconds, long downloadedBytesPerSecond, long downloadedBytes, boolean indeterminate, a updateStep) {
            c(progress, etaInMilliSeconds, downloadedBytesPerSecond, updateStep);
        }

        void e(a updateStep);
    }

    public g() {
        super(null, "Packages");
        super.e1(false);
    }

    public static void F1() {
        G1(null);
    }

    public static void G1(Runnable runnable) {
        f70245g0.M(Theme.T.PRIMARY_DARK);
        N7.c.l(0.25f, new n(runnable));
    }

    public static o H1(Package pack, String importProject, p listener, boolean silently) {
        return I1(pack, importProject, listener, silently, false);
    }

    public static o I1(Package pack, String importProject, p listener, boolean silently, boolean keepRootReadmeOnImport) {
        o oVar;
        if (!N7.c.N()) {
            throw new IllegalThreadStateException("Call from Main UI Thread!");
        }
        if (importProject == null || importProject.isEmpty()) {
            throw new NullPointerException("importProject can't be empty or null");
        }
        if (pack == null) {
            throw new NullPointerException("package can't be null");
        }
        String N10 = T5.b.N(pack);
        if (N10 == null || N10.isEmpty()) {
            throw new RuntimeException("Invalid repository url");
        }
        String str = pack.f71742id;
        int max = Math.max(1, pack.version);
        String P10 = T5.b.P(pack);
        String str2 = (P10 == null || P10.isEmpty()) ? pack.f71742id : P10;
        List<o> list = f70240b0;
        synchronized (list) {
            try {
                oVar = new o(str, max, str2, N10, importProject);
                oVar.f70280o = silently;
                oVar.f70278m = keepRootReadmeOnImport;
                if (listener != null) {
                    oVar.b(listener);
                }
                list.add(oVar);
                List<o> list2 = f70239a0;
                synchronized (list2) {
                    list2.add(oVar);
                }
                K8.a.I(new k());
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (!silently) {
            d2();
            if (!b2()) {
                f2();
            }
        }
        return oVar;
    }

    public static o J1(String packID, String importProject) {
        return K1(packID, importProject, null);
    }

    public static o K1(String packID, String importProject, p listener) {
        return L1(packID, importProject, listener, false);
    }

    public static o L1(String packID, String importProject, p listener, boolean silently) {
        return M1(packID, importProject, listener, silently, false);
    }

    public static o M1(String packID, String importProject, p listener, boolean silently, boolean keepRootReadmeOnImport) {
        o oVar;
        if (!N7.c.N()) {
            throw new IllegalThreadStateException("Call from Main UI Thread!");
        }
        if (importProject == null || importProject.isEmpty()) {
            throw new NullPointerException("importProject can't be empty or null");
        }
        List<o> list = f70240b0;
        synchronized (list) {
            try {
                oVar = new o(packID, importProject);
                oVar.f70280o = silently;
                oVar.f70278m = keepRootReadmeOnImport;
                if (listener != null) {
                    oVar.b(listener);
                }
                list.add(oVar);
                List<o> list2 = f70239a0;
                synchronized (list2) {
                    list2.add(oVar);
                }
                K8.a.I(new j());
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (!silently) {
            d2();
            if (!b2()) {
                f2();
            }
        }
        return oVar;
    }

    public static o N1(Package pack) {
        return O1(pack, null);
    }

    public static o O1(Package pack, p listener) {
        if (!N7.c.N()) {
            throw new IllegalThreadStateException("Call from Main UI Thread!");
        }
        if (com.itsmagic.engine.Core.Components.ProjectController.a.d0()) {
            return H1(pack, com.itsmagic.engine.Core.Components.ProjectController.a.T(), listener, false);
        }
        throw new NullPointerException("Theres no open project!");
    }

    public static o P1(Package pack, boolean silently, p listener) {
        if (!N7.c.N()) {
            throw new IllegalThreadStateException("Call from Main UI Thread!");
        }
        if (com.itsmagic.engine.Core.Components.ProjectController.a.d0()) {
            return H1(pack, com.itsmagic.engine.Core.Components.ProjectController.a.T(), listener, silently);
        }
        throw new NullPointerException("Theres no open project!");
    }

    public static o Q1(String packID) {
        return R1(packID, null);
    }

    public static o R1(String packID, p listener) {
        if (!N7.c.N()) {
            throw new IllegalThreadStateException("Call from Main UI Thread!");
        }
        if (com.itsmagic.engine.Core.Components.ProjectController.a.d0()) {
            return K1(packID, com.itsmagic.engine.Core.Components.ProjectController.a.T(), listener);
        }
        throw new NullPointerException("Theres no open project!");
    }

    public static o S1(String packID, boolean silently, p listener) {
        if (!N7.c.N()) {
            throw new IllegalThreadStateException("Call from Main UI Thread!");
        }
        if (com.itsmagic.engine.Core.Components.ProjectController.a.d0()) {
            return L1(packID, com.itsmagic.engine.Core.Components.ProjectController.a.T(), listener, silently);
        }
        throw new NullPointerException("Theres no open project!");
    }

    public static o T1(Package pack) {
        return U1(pack, null);
    }

    public static o U1(Package pack, p listener) {
        return V1(pack, false, listener);
    }

    public static o V1(Package pack, boolean keepRootReadmeOnImport, p listener) {
        if (!N7.c.N()) {
            throw new IllegalThreadStateException("Call from Main UI Thread!");
        }
        if (com.itsmagic.engine.Core.Components.ProjectController.a.d0()) {
            return I1(pack, com.itsmagic.engine.Core.Components.ProjectController.a.T(), listener, true, keepRootReadmeOnImport);
        }
        throw new NullPointerException("Theres no open project!");
    }

    public static o W1(String packID) {
        return X1(packID, null);
    }

    public static o X1(String packID, p listener) {
        return Y1(packID, false, listener);
    }

    public static o Y1(String packID, boolean keepRootReadmeOnImport, p listener) {
        if (!N7.c.N()) {
            throw new IllegalThreadStateException("Call from Main UI Thread!");
        }
        if (com.itsmagic.engine.Core.Components.ProjectController.a.d0()) {
            return M1(packID, com.itsmagic.engine.Core.Components.ProjectController.a.T(), listener, true, keepRootReadmeOnImport);
        }
        throw new NullPointerException("Theres no open project!");
    }

    public static int Z1() {
        int size;
        List<o> list = f70240b0;
        synchronized (list) {
            size = list.size();
        }
        return size;
    }

    public static M7.b a2() {
        M7.b bVar = new M7.b(R.drawable.download_v2, new C1060g(), c.b.Right, N7.c.t());
        f70245g0 = bVar;
        return bVar;
    }

    public static boolean b2() {
        return f70244f0 != null;
    }

    public static int c2(int progress) {
        if (progress < 0) {
            return -1;
        }
        if (progress <= 100) {
            return progress;
        }
        return Math.max(0, Math.min(100, progress > 1000 ? progress / 1000 : progress / 100));
    }

    public static void d2() {
        if (f70245g0 != null) {
            i2();
            G1(new m());
        }
    }

    public static void e2() {
        if (f70245g0 != null) {
            i2();
            G1(new l());
        }
    }

    public static g f2() {
        M7.b bVar = f70245g0;
        if (bVar != null) {
            return g2(bVar.e(), C15147a.e.Below);
        }
        throw new RuntimeException("can't inflate package downloader, without anchor if the topbar was not initialized!");
    }

    public static g g2(View anchor, C15147a.e anchorSide) {
        g gVar = f70244f0;
        if (gVar != null) {
            gVar.R0();
            f70244f0 = null;
        }
        g gVar2 = new g();
        C15147a.i(anchor, gVar2, anchorSide, N7.c.g(260), N7.c.f(250), new h());
        gVar2.d1(new i());
        f70244f0 = gVar2;
        return gVar2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x0025, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00dd, code lost:
    
        throw r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void h2() {
        List<o> list = f70240b0;
        synchronized (list) {
            try {
                o oVar = f70242d0;
                if (oVar != null) {
                    if (oVar.k() != o.b.Canceled) {
                        if (f70242d0.k() != o.b.Failed) {
                            if (f70242d0.k() == o.b.Finished) {
                            }
                        }
                    }
                    f70242d0 = null;
                }
                if (f70242d0 == null && !list.isEmpty()) {
                    o remove = list.remove(0);
                    f70242d0 = remove;
                    remove.f70272g = o.b.Downloading;
                    a aVar = new a(f70242d0);
                    o oVar2 = f70242d0;
                    if (oVar2.f70268c) {
                        com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.a.i0(oVar2.f70266a, oVar2.f70267b, oVar2.f70277l, oVar2.f70269d, oVar2.f70278m, aVar);
                    } else {
                        com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.a.g0(oVar2.f70266a, oVar2.f70278m, aVar);
                    }
                }
                o oVar3 = f70243e0;
                if (oVar3 != null && (oVar3.k() == o.b.Canceled || f70243e0.k() == o.b.Failed || f70243e0.k() == o.b.Finished)) {
                    f70242d0 = null;
                }
                if (f70243e0 == null) {
                    List<o> list2 = f70241c0;
                    if (!list2.isEmpty()) {
                        o remove2 = list2.remove(0);
                        f70243e0 = remove2;
                        com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.n.o(remove2.f70271f).q(f70243e0.f70270e, new b(), f70243e0.f70280o);
                    }
                }
                if (list.isEmpty() && f70242d0 == null && f70241c0.isEmpty() && f70243e0 == null) {
                    List<o> list3 = f70239a0;
                    synchronized (list3) {
                        if (list3.isEmpty()) {
                            f70246h0.b();
                        }
                    }
                }
            } finally {
            }
        }
    }

    public static void i2() {
        if (f70245g0 != null) {
            int Z12 = Z1();
            if (Z12 <= 0) {
                f70245g0.c0("");
                return;
            }
            f70245g0.c0(Z12 + "");
        }
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.package_downloader, (ViewGroup) null);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.recycler);
        this.f70247X = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(M()));
        this.f70247X.setItemAnimator(null);
        com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.h hVar = new com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.h(M(), f70239a0, new c());
        this.f70248Y = hVar;
        this.f70247X.setAdapter(hVar);
        inflate.findViewById(R.id.menu).setOnClickListener(new d());
        return inflate;
    }

    @Override
    public EditorPanel k() {
        g gVar = f70244f0;
        if (gVar != null) {
            gVar.R0();
            f70244f0 = null;
        }
        g gVar2 = new g();
        gVar2.d1(new e(gVar2));
        f70244f0 = gVar2;
        return gVar2;
    }

    @Override
    public void o1() {
        super.o1();
        List<o> list = f70239a0;
        synchronized (list) {
            try {
                com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.h hVar = this.f70248Y;
                if (hVar != null) {
                    hVar.l(list);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static class o {

        public String f70266a;

        public int f70267b;

        public boolean f70268c;

        public String f70269d;

        public a.l f70270e;

        public String f70271f;

        public b f70272g;

        public int f70273h;

        public int f70274i;

        public int f70275j;

        public String f70276k;

        public String f70277l;

        public boolean f70278m;

        public final List<p> f70279n;

        public boolean f70280o;

        public class a implements j.a {
            public a() {
            }

            @Override
            public void a(String error) {
            }

            @Override
            public void b() {
            }

            @Override
            public void c(String name) {
                o.this.f70277l = name;
            }
        }

        public enum b {
            Downloading,
            Importing,
            Finished,
            Failed,
            Canceled,
            Waiting
        }

        public o(String packID, String project) {
            this.f70279n = new SteppedArrayList();
            this.f70280o = false;
            this.f70266a = packID;
            this.f70271f = project;
            this.f70272g = b.Waiting;
            this.f70267b = 0;
            this.f70268c = false;
            com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.j.a(packID, new a());
        }

        public void b(p listener) {
            listener.getClass();
            synchronized (this.f70279n) {
                this.f70279n.add(listener);
            }
        }

        public int c() {
            b bVar = this.f70272g;
            if (bVar != b.Downloading) {
                if (bVar == b.Importing) {
                    return g();
                }
                throw new RuntimeException("Invalid status " + ((Object) this.f70272g));
            }
            a.l lVar = this.f70270e;
            if (lVar == null) {
                return 0;
            }
            if (lVar.e() == a.m.Canceled) {
                this.f70272g = b.Canceled;
            }
            if (this.f70270e.e() == a.m.Error) {
                this.f70272g = b.Failed;
            }
            return this.f70270e.k();
        }

        public long d() {
            a.l lVar;
            if (this.f70272g != b.Downloading || (lVar = this.f70270e) == null) {
                return 0L;
            }
            return lVar.d();
        }

        public long e() {
            a.l lVar;
            if (this.f70272g != b.Downloading || (lVar = this.f70270e) == null) {
                return 0L;
            }
            return lVar.g();
        }

        public int f() {
            return this.f70275j;
        }

        public int g() {
            return this.f70273h;
        }

        public int h() {
            return this.f70274i;
        }

        public String i() {
            return this.f70277l;
        }

        public String j() {
            return this.f70271f;
        }

        public b k() {
            return this.f70272g;
        }

        public void l(p listener) {
            listener.getClass();
            synchronized (this.f70279n) {
                this.f70279n.remove(listener);
            }
        }

        public void m() {
            a.l lVar = this.f70270e;
            if (lVar != null) {
                lVar.p();
            }
        }

        public o(String packID, int version, String packageName, String directDownloadUrl, String project) {
            this.f70279n = new SteppedArrayList();
            this.f70280o = false;
            this.f70266a = packID;
            this.f70271f = project;
            this.f70272g = b.Waiting;
            this.f70267b = version;
            this.f70277l = packageName;
            this.f70269d = directDownloadUrl;
            this.f70268c = true;
        }
    }
}
