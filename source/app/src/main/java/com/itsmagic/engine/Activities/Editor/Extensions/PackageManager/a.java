package com.itsmagic.engine.Activities.Editor.Extensions.PackageManager;

import android.content.Context;
import androidx.annotation.NonNull;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.a;
import com.itsmagic.engine.Activities.Editor.Panels.Marketplace.BackendAPI.v2.Package;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.tonyodev.fetch2.AbstractFetchListener;
import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2.Error;
import com.tonyodev.fetch2.Fetch;
import com.tonyodev.fetch2.FetchConfiguration;
import com.tonyodev.fetch2.NetworkType;
import com.tonyodev.fetch2.Priority;
import com.tonyodev.fetch2.Request;
import com.tonyodev.fetch2core.DownloadBlock;
import com.tonyodev.fetch2core.Func;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import net.lingala.zip4j.exception.ZipException;
import okhttp3.C;
import okhttp3.E;
import okhttp3.z;
import org.eclipse.jdt.internal.core.JavaElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ug.C15608a;

public class a {

    public static final boolean f70171x = false;

    public static final Object f70172y = new Object();

    public static Fetch f70173z;

    public final String f70175b;

    public final String f70176c;

    public final String f70177d;

    public final boolean f70178e;

    public Thread f70181h;

    public String f70182i;

    public volatile String f70189p;

    public Request f70192s;

    public int f70193t;

    public File f70196w;

    public final String f70174a = Tc.b.L();

    public m f70179f = m.Waiting;

    public n f70180g = n.Undefined;

    public final AtomicInteger f70183j = new AtomicInteger();

    public final AtomicLong f70184k = new AtomicLong();

    public final AtomicLong f70185l = new AtomicLong();

    public final AtomicLong f70186m = new AtomicLong();

    public final AtomicBoolean f70187n = new AtomicBoolean();

    public final AtomicLong f70188o = new AtomicLong(-1);

    public Fetch f70190q = null;

    public AbstractFetchListener f70191r = null;

    public final List<o> f70194u = new SteppedArrayList();

    public final Object f70195v = new Object();

    public class RunnableC1050a implements Runnable {

        public final p f70197b;

        public final l f70198c;

        public RunnableC1050a(final p val$listener, final l val$out) {
            this.f70197b = val$listener;
            this.f70198c = val$out;
        }

        @Override
        public void run() {
            this.f70197b.c(this.f70198c);
        }
    }

    public class b implements Runnable {

        public final File f70199b;

        public final boolean f70200c;

        public final k f70201d;

        public b(final File val$cached, final boolean val$keepRootReadmeOnImport, final k val$listener) {
            this.f70199b = val$cached;
            this.f70200c = val$keepRootReadmeOnImport;
            this.f70201d = val$listener;
        }

        @Override
        public void run() {
            if (a.n0(this.f70199b, this.f70200c)) {
                this.f70201d.b(this.f70199b);
            } else {
                this.f70201d.a();
            }
        }
    }

    public class c implements k {

        public final l f70202a;

        public final p f70203b;

        public final Package f70204c;

        public c(final l val$out, final p val$listener, final Package val$pack) {
            this.f70202a = val$out;
            this.f70203b = val$listener;
            this.f70204c = val$pack;
        }

        @Override
        public void a() {
            a.l0(this.f70202a, T5.b.N(this.f70204c), "Invalid repository url", this.f70203b);
        }

        @Override
        public void b(File cachedZip) {
            l lVar = this.f70202a;
            lVar.f70228d = cachedZip;
            a.G(this.f70203b, lVar);
        }
    }

    public class d implements k {

        public final l f70205a;

        public final p f70206b;

        public final String f70207c;

        public d(final l val$out, final p val$listener, final String val$downloadUrl) {
            this.f70205a = val$out;
            this.f70206b = val$listener;
            this.f70207c = val$downloadUrl;
        }

        @Override
        public void a() {
            a.l0(this.f70205a, this.f70207c, "Invalid download url", this.f70206b);
        }

        @Override
        public void b(File cachedZip) {
            l lVar = this.f70205a;
            lVar.f70228d = cachedZip;
            a.G(this.f70206b, lVar);
        }
    }

    public class e extends j {

        public final l f70208a;

        public class RunnableC1051a implements Runnable {
            public RunnableC1051a() {
            }

            @Override
            public void run() {
            }
        }

        public e(final l val$out) {
            this.f70208a = val$out;
        }

        @Override
        public void b(File zipFile) {
            com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.f.f(this.f70208a, new RunnableC1051a());
        }
    }

    public class f implements Runnable {

        public class C1052a extends AbstractFetchListener {

            public class RunnableC1053a implements Runnable {
                public RunnableC1053a() {
                }

                @Override
                public void run() {
                    a.this.Z();
                }
            }

            public class b implements Runnable {

                public final int f70213b;

                public final long f70214c;

                public final long f70215d;

                public b(final int val$progress, final long val$etaInMilliSeconds, final long val$downloadedBytesPerSecond) {
                    this.f70213b = val$progress;
                    this.f70214c = val$etaInMilliSeconds;
                    this.f70215d = val$downloadedBytesPerSecond;
                }

                @Override
                public void run() {
                    synchronized (a.this.f70194u) {
                        for (int i10 = 0; i10 < a.this.f70194u.size(); i10++) {
                            try {
                                o oVar = (o) a.this.f70194u.get(i10);
                                if (oVar != null) {
                                    oVar.c(this.f70213b, this.f70214c, this.f70215d);
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    }
                }
            }

            public class c implements Runnable {

                public final int f70217b;

                public final long f70218c;

                public final long f70219d;

                public c(final int val$progress, final long val$etaInMilliSeconds, final long val$downloadedBytesPerSecond) {
                    this.f70217b = val$progress;
                    this.f70218c = val$etaInMilliSeconds;
                    this.f70219d = val$downloadedBytesPerSecond;
                }

                @Override
                public void run() {
                    synchronized (a.this.f70194u) {
                        for (int i10 = 0; i10 < a.this.f70194u.size(); i10++) {
                            try {
                                o oVar = (o) a.this.f70194u.get(i10);
                                if (oVar != null) {
                                    oVar.c(this.f70217b, this.f70218c, this.f70219d);
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    }
                }
            }

            public C1052a() {
            }

            @Override
            public void onCompleted(@NotNull Download fetchDownload) {
                Request request = a.this.f70192s;
                if (request == null || request.getId() != fetchDownload.getId()) {
                    return;
                }
                a.this.f70183j.set(100);
                O9.b.d(new RunnableC1053a());
            }

            @Override
            public void onDownloadBlockUpdated(@NotNull Download fetchDownload, @NotNull DownloadBlock downloadBlock, int totalBlocks) {
                Request request = a.this.f70192s;
                if (request == null || request.getId() != fetchDownload.getId()) {
                    return;
                }
                long downloaded = fetchDownload.getDownloaded();
                int k02 = a.this.k0(fetchDownload);
                long andSet = a.this.f70186m.getAndSet(downloaded);
                if (a.this.f70183j.get() == k02 && andSet == downloaded) {
                    return;
                }
                a.this.f70183j.set(k02);
                N7.c.j0(new b(k02, a.this.f70184k.get(), a.this.f70185l.get()));
            }

            @Override
            public void onError(@NonNull Download fetchDownload, @NonNull Error error, @Nullable Throwable throwable) {
                Request request = a.this.f70192s;
                if (request == null || request.getId() != fetchDownload.getId()) {
                    return;
                }
                System.out.println("On Error " + fetchDownload.getId() + " " + error.name());
                a.this.f70189p = a.D(error, throwable);
                a.this.Y();
            }

            @Override
            public void onProgress(@NotNull Download fetchDownload, long etaInMilliSeconds, long downloadedBytesPerSecond) {
                Request request = a.this.f70192s;
                if (request == null || request.getId() != fetchDownload.getId()) {
                    return;
                }
                long downloaded = fetchDownload.getDownloaded();
                int k02 = a.this.k0(fetchDownload);
                long andSet = a.this.f70186m.getAndSet(downloaded);
                if (a.this.f70183j.get() == k02 && andSet == downloaded) {
                    return;
                }
                a.this.f70183j.set(k02);
                a.this.f70184k.set(etaInMilliSeconds);
                a.this.f70185l.set(downloadedBytesPerSecond);
                N7.c.j0(new c(k02, etaInMilliSeconds, downloadedBytesPerSecond));
            }

            @Override
            public void onStarted(@NonNull Download fetchDownload, @NonNull List<? extends DownloadBlock> list, int i10) {
                Request request = a.this.f70192s;
                if (request == null || request.getId() != fetchDownload.getId()) {
                    return;
                }
                System.out.println("On Started " + fetchDownload.getId());
                a.this.f70180g = n.Downloading;
            }

            @Override
            public void onWaitingNetwork(@NonNull Download fetchDownload) {
                Request request = a.this.f70192s;
                if (request == null || request.getId() != fetchDownload.getId()) {
                    return;
                }
                System.out.println("On onWaitingNetwork " + fetchDownload.getId());
                a.this.f70180g = n.WaitingNetwork;
            }
        }

        public f() {
        }

        public final void c(Request request) {
            a.this.f70180g = n.Launched;
        }

        public final void d(Error error) {
            a.this.f70189p = "Fetch enqueue error: " + error.name();
            a.this.Y();
        }

        @Override
        public void run() {
            try {
                a.this.f70190q = a.Q(N7.c.t());
                a.this.f70191r = new C1052a();
                a.this.f70190q.addListener(a.this.f70191r);
                String str = a.this.f70177d;
                if (!a.this.f70178e) {
                    Package D10 = T5.b.D(a.this.f70175b);
                    str = D10 != null ? T5.b.N(D10) : null;
                }
                if (str != null && !str.isEmpty()) {
                    long j02 = a.this.j0(str);
                    if (j02 > 0) {
                        a.this.f70188o.set(j02);
                    }
                    String str2 = Tc.b.L() + ".impack";
                    String str3 = W7.b.f27306f.f2458a.f() + "/store_il/";
                    a.this.f70196w = new File(str3 + str2);
                    a.this.f70192s = new Request(str, str3 + str2);
                    a.this.f70192s.setPriority(Priority.HIGH);
                    a.this.f70192s.setNetworkType(NetworkType.ALL);
                    a.this.f70192s.addHeader(F2.d.f6244j, "identity");
                    a aVar = a.this;
                    aVar.f70193t = aVar.f70192s.getId();
                    a.this.f70190q.enqueue(a.this.f70192s, new Func() {
                        @Override
                        public final void call(Object obj) {
                            a.f.this.c((Request) obj);
                        }
                    }, new Func() {
                        @Override
                        public final void call(Object obj) {
                            a.f.this.d((Error) obj);
                        }
                    });
                    return;
                }
                a.this.Y();
            } catch (Exception e10) {
                e10.printStackTrace();
                a.this.f70189p = (e10.getMessage() == null || e10.getMessage().trim().isEmpty()) ? e10.getClass().getSimpleName() : e10.getMessage();
                a.this.Y();
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override
        public void run() {
            synchronized (a.this.f70194u) {
                for (int i10 = 0; i10 < a.this.f70194u.size(); i10++) {
                    try {
                        o oVar = (o) a.this.f70194u.get(i10);
                        if (oVar != null) {
                            oVar.a();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    }

    public class h implements Runnable {

        public class RunnableC1054a implements Runnable {
            public RunnableC1054a() {
            }

            @Override
            public void run() {
                synchronized (a.this.f70194u) {
                    for (int i10 = 0; i10 < a.this.f70194u.size(); i10++) {
                        try {
                            o oVar = (o) a.this.f70194u.get(i10);
                            if (oVar != null) {
                                oVar.b(a.this.f70196w);
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
            }
        }

        public h() {
        }

        @Override
        public void run() {
            a.X(a.this.f70196w);
            N7.c.j0(new RunnableC1054a());
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override
        public void run() {
            synchronized (a.this.f70194u) {
                for (int i10 = 0; i10 < a.this.f70194u.size(); i10++) {
                    try {
                        o oVar = (o) a.this.f70194u.get(i10);
                        if (oVar != null) {
                            oVar.a();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    }

    public static class j implements o {
        @Override
        public void a() {
        }

        @Override
        public void b(File zipFile) {
        }

        @Override
        public void c(int progress, long etaInMilliSeconds, long downloadedBytesPerSecond) {
        }
    }

    public interface k {
        void a();

        void b(File cachedZip);
    }

    public static class l {

        public a f70225a;

        public int f70226b;

        public String f70227c;

        public File f70228d;

        public String f70229e;

        public boolean f70230f;

        public void c(o listener) {
            a aVar = this.f70225a;
            if (aVar != null) {
                aVar.C(listener);
            }
        }

        public long d() {
            a aVar = this.f70225a;
            if (aVar != null) {
                return aVar.I();
            }
            return 0L;
        }

        public m e() {
            a aVar = this.f70225a;
            return aVar != null ? aVar.M() : this.f70228d != null ? m.Downloaded : m.Error;
        }

        public long f() {
            a aVar = this.f70225a;
            if (aVar != null) {
                return aVar.J();
            }
            File file = this.f70228d;
            if (file != null) {
                return file.length();
            }
            return 0L;
        }

        public long g() {
            a aVar = this.f70225a;
            if (aVar != null) {
                return aVar.L();
            }
            return 0L;
        }

        public String h() {
            a aVar = this.f70225a;
            if (aVar != null) {
                return aVar.N();
            }
            return null;
        }

        public String i() {
            return this.f70227c;
        }

        public String j() {
            return this.f70229e;
        }

        public int k() {
            a aVar = this.f70225a;
            if (aVar != null) {
                return aVar.O();
            }
            return 100;
        }

        public int l() {
            return this.f70226b;
        }

        public File m() {
            a aVar = this.f70225a;
            if (aVar != null) {
                return aVar.K();
            }
            File file = this.f70228d;
            if (file != null) {
                return file;
            }
            throw new RuntimeException("File not downloaded!");
        }

        public boolean n() {
            a aVar = this.f70225a;
            if (aVar != null) {
                return aVar.V();
            }
            return false;
        }

        public boolean o() {
            return this.f70230f;
        }

        public void p() {
            a aVar = this.f70225a;
            if (aVar != null) {
                aVar.E();
            }
        }
    }

    public enum m {
        Waiting,
        Downloading,
        Downloaded,
        Error,
        Canceled,
        WaitingNetwork
    }

    public enum n {
        Undefined,
        Waiting,
        Launched,
        Downloading,
        WaitingNetwork
    }

    public interface o {
        void a();

        void b(File zipFile);

        void c(int progress, long etaInMilliSeconds, long downloadedBytesPerSecond);
    }

    public interface p {
        void a(String error);

        void b();

        void c(l downloadOut);
    }

    public a(String serverID, String downloadToken) {
        if (serverID != null) {
            if (downloadToken != null && !downloadToken.isEmpty()) {
                this.f70175b = serverID;
                this.f70176c = downloadToken;
                this.f70177d = null;
                this.f70178e = false;
                H();
                return;
            }
            throw new NullPointerException("downloadToken can't be null or empty");
        }
        throw new NullPointerException("serverID can't be null");
    }

    public static String D(Error error, Throwable throwable) {
        StringBuilder sb2 = new StringBuilder();
        if (error != null) {
            sb2.append("Fetch error: ");
            sb2.append(error.name());
        }
        if (throwable != null && throwable.getMessage() != null && !throwable.getMessage().trim().isEmpty()) {
            if (sb2.length() > 0) {
                sb2.append(" - ");
            }
            sb2.append(throwable.getMessage().trim());
        }
        return sb2.length() == 0 ? "Fetch error" : sb2.toString();
    }

    public static String F(C15608a zip) throws ZipException {
        Iterator<Bg.j> it = zip.R().iterator();
        String str = null;
        while (it.hasNext()) {
            String j10 = it.next().j();
            if (j10 != null && !j10.isEmpty()) {
                int indexOf = j10.indexOf(47);
                if (indexOf <= 0) {
                    return null;
                }
                String substring = j10.substring(0, indexOf);
                if (str == null) {
                    str = substring;
                } else if (!str.equals(substring)) {
                    return null;
                }
            }
        }
        if (str == null) {
            return null;
        }
        return str + "/";
    }

    public static void G(p listener, l out) {
        N7.c.j0(new RunnableC1050a(listener, out));
    }

    public static Fetch Q(Context context) {
        Fetch fetch;
        synchronized (f70172y) {
            try {
                if (f70173z == null) {
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext != null) {
                        context = applicationContext;
                    }
                    f70173z = Fetch.Impl.getInstance(new FetchConfiguration.Builder(context).setDownloadConcurrentLimit(99).build());
                }
                fetch = f70173z;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return fetch;
    }

    public static boolean R(File zipFile, String fileName) {
        if (zipFile != null && zipFile.exists() && fileName != null && !fileName.isEmpty()) {
            try {
                C15608a c15608a = new C15608a(zipFile);
                try {
                    List<Bg.j> R10 = c15608a.R();
                    for (int i10 = 0; i10 < R10.size(); i10++) {
                        String j10 = R10.get(i10).j();
                        if (j10 != null && !j10.isEmpty()) {
                            String trim = j10.replace(JavaElement.JEM_ESCAPE, '/').trim();
                            while (trim.startsWith("/")) {
                                trim = trim.substring(1);
                            }
                            while (trim.endsWith("/")) {
                                trim = trim.substring(0, trim.length() - 1);
                            }
                            if (!trim.contains("/") && fileName.equalsIgnoreCase(trim)) {
                                c15608a.close();
                                return true;
                            }
                        }
                    }
                    c15608a.close();
                } finally {
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static boolean S(File zipFile) {
        return R(zipFile, "README.md");
    }

    public static boolean U(String entryName) {
        if (entryName == null || entryName.isEmpty()) {
            return false;
        }
        String trim = entryName.replace(JavaElement.JEM_ESCAPE, '/').trim();
        while (trim.startsWith("/")) {
            trim = trim.substring(1);
        }
        boolean endsWith = trim.endsWith("/");
        while (trim.endsWith("/")) {
            trim = trim.substring(0, trim.length() - 1);
        }
        if (trim.isEmpty()) {
            return false;
        }
        int indexOf = trim.indexOf(47);
        if (indexOf >= 0) {
            return ".store".equalsIgnoreCase(trim.substring(0, indexOf));
        }
        if (endsWith && ".store".equalsIgnoreCase(trim)) {
            return true;
        }
        if (trim.contains("/")) {
            return false;
        }
        return "manifest.json".equalsIgnoreCase(trim);
    }

    public static boolean W(File zipFile) {
        return (zipFile == null || !zipFile.exists() || r.h(zipFile) == null) ? false : true;
    }

    public static void X(File zipFile) {
        C15608a c15608a;
        if (zipFile == null || !zipFile.exists()) {
            return;
        }
        try {
            c15608a = new C15608a(zipFile);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        try {
            String F10 = F(c15608a);
            if (F10 != null && !F10.isEmpty()) {
                if ("Files/".equals(F10)) {
                    c15608a.close();
                    return;
                }
                File file = new File(zipFile.getParentFile(), zipFile.getName() + ".tmp");
                if (file.exists()) {
                    file.delete();
                }
                C15608a c15608a2 = new C15608a(file);
                Bg.s sVar = new Bg.s();
                sVar.y(Cg.d.DEFLATE);
                sVar.x(Cg.c.NORMAL);
                sVar.J(true);
                for (Bg.j jVar : c15608a.R()) {
                    String m02 = m0(jVar.j(), F10);
                    if (!m02.isEmpty()) {
                        if (jVar.s()) {
                            if (!m02.endsWith("/")) {
                                m02 = m02 + "/";
                            }
                            sVar.G(m02);
                            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(new byte[0]);
                            try {
                                c15608a2.k(byteArrayInputStream, sVar);
                                byteArrayInputStream.close();
                            } finally {
                            }
                        } else {
                            sVar.G(m02);
                            zg.k S10 = c15608a.S(jVar);
                            try {
                                c15608a2.k(S10, sVar);
                                if (S10 != null) {
                                    S10.close();
                                }
                            } finally {
                            }
                        }
                    }
                }
                c15608a.close();
                if (zipFile.delete()) {
                    file.renameTo(zipFile);
                } else {
                    file.delete();
                }
                c15608a.close();
                d0(zipFile);
                e0(zipFile);
                return;
            }
            c15608a.close();
        } finally {
        }
    }

    public static long a0(String value) {
        try {
            return Long.parseLong(value);
        } catch (Exception unused) {
            return -1L;
        }
    }

    public static void d0(File zipFile) {
        if (zipFile == null || !zipFile.exists()) {
            return;
        }
        try {
            C15608a c15608a = new C15608a(zipFile);
            try {
                List<Bg.j> R10 = c15608a.R();
                for (int i10 = 0; i10 < R10.size(); i10++) {
                    String j10 = R10.get(i10).j();
                    if (j10 != null && !j10.isEmpty()) {
                        while (j10.startsWith("/")) {
                            j10 = j10.substring(1);
                        }
                        int indexOf = j10.indexOf(47);
                        if (indexOf >= 0) {
                            j10 = j10.substring(0, indexOf);
                        }
                        if (q.c(j10)) {
                            File file = new File(zipFile.getParentFile(), zipFile.getName() + ".tmp");
                            if (file.exists()) {
                                file.delete();
                            }
                            C15608a c15608a2 = new C15608a(file);
                            Bg.s sVar = new Bg.s();
                            sVar.y(Cg.d.DEFLATE);
                            sVar.x(Cg.c.NORMAL);
                            sVar.J(true);
                            for (int i11 = 0; i11 < R10.size(); i11++) {
                                Bg.j jVar = R10.get(i11);
                                String j11 = jVar.j();
                                if (j11 != null && !j11.isEmpty()) {
                                    String str = j11;
                                    while (str.startsWith("/")) {
                                        str = str.substring(1);
                                    }
                                    int indexOf2 = str.indexOf(47);
                                    if (indexOf2 >= 0) {
                                        str = str.substring(0, indexOf2);
                                    }
                                    if (!q.c(str)) {
                                        if (jVar.s()) {
                                            if (!j11.endsWith("/")) {
                                                j11 = j11 + "/";
                                            }
                                            sVar.G(j11);
                                            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(new byte[0]);
                                            try {
                                                c15608a2.k(byteArrayInputStream, sVar);
                                                byteArrayInputStream.close();
                                            } finally {
                                            }
                                        } else {
                                            sVar.G(j11);
                                            zg.k S10 = c15608a.S(jVar);
                                            try {
                                                c15608a2.k(S10, sVar);
                                                if (S10 != null) {
                                                    S10.close();
                                                }
                                            } finally {
                                            }
                                        }
                                    }
                                }
                            }
                            c15608a.close();
                            if (zipFile.delete()) {
                                file.renameTo(zipFile);
                            } else {
                                file.delete();
                            }
                            c15608a.close();
                            return;
                        }
                    }
                }
                c15608a.close();
            } finally {
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void e0(File zipFile) {
        if (zipFile == null || !zipFile.exists()) {
            return;
        }
        try {
            C15608a c15608a = new C15608a(zipFile);
            try {
                List<Bg.j> R10 = c15608a.R();
                for (int i10 = 0; i10 < R10.size(); i10++) {
                    if (U(R10.get(i10).j())) {
                        File file = new File(zipFile.getParentFile(), zipFile.getName() + ".tmp");
                        if (file.exists()) {
                            file.delete();
                        }
                        C15608a c15608a2 = new C15608a(file);
                        Bg.s sVar = new Bg.s();
                        sVar.y(Cg.d.DEFLATE);
                        sVar.x(Cg.c.NORMAL);
                        sVar.J(true);
                        for (int i11 = 0; i11 < R10.size(); i11++) {
                            Bg.j jVar = R10.get(i11);
                            String j10 = jVar.j();
                            if (!U(j10)) {
                                if (jVar.s()) {
                                    if (!j10.endsWith("/")) {
                                        j10 = j10 + "/";
                                    }
                                    sVar.G(j10);
                                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(new byte[0]);
                                    try {
                                        c15608a2.k(byteArrayInputStream, sVar);
                                        byteArrayInputStream.close();
                                    } finally {
                                    }
                                } else {
                                    sVar.G(j10);
                                    zg.k S10 = c15608a.S(jVar);
                                    try {
                                        c15608a2.k(S10, sVar);
                                        if (S10 != null) {
                                            S10.close();
                                        }
                                    } finally {
                                    }
                                }
                            }
                        }
                        c15608a.close();
                        if (zipFile.delete()) {
                            file.renameTo(zipFile);
                        } else {
                            file.delete();
                        }
                        c15608a.close();
                        return;
                    }
                }
                c15608a.close();
            } finally {
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void f0(String packageServerID, p listener) {
        g0(packageServerID, false, listener);
    }

    public static void g0(String packageServerID, boolean keepRootReadmeOnImport, p listener) {
        l lVar = new l();
        lVar.f70227c = packageServerID;
        lVar.f70230f = keepRootReadmeOnImport;
        Package D10 = T5.b.D(packageServerID);
        if (D10 == null) {
            listener.a("Package not found");
            return;
        }
        lVar.f70226b = D10.version;
        lVar.f70229e = T5.b.P(D10);
        File c10 = com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.f.c(packageServerID, lVar.f70226b);
        if (c10 != null) {
            o0(c10, keepRootReadmeOnImport, new c(lVar, listener, D10));
        } else {
            l0(lVar, T5.b.N(D10), "Invalid repository url", listener);
        }
    }

    public static void h0(String packageServerID, int version, String packageName, String downloadUrl, p listener) {
        i0(packageServerID, version, packageName, downloadUrl, false, listener);
    }

    public static void i0(String packageServerID, int version, String packageName, String downloadUrl, boolean keepRootReadmeOnImport, p listener) {
        l lVar = new l();
        lVar.f70227c = packageServerID;
        lVar.f70226b = version;
        lVar.f70229e = packageName;
        lVar.f70230f = keepRootReadmeOnImport;
        if (downloadUrl == null || downloadUrl.isEmpty()) {
            listener.a("Invalid download url");
            return;
        }
        File c10 = com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.f.c(packageServerID, version);
        if (c10 != null) {
            o0(c10, keepRootReadmeOnImport, new d(lVar, listener, downloadUrl));
        } else {
            l0(lVar, downloadUrl, "Invalid download url", listener);
        }
    }

    public static void l0(l out, String downloadUrl, String invalidUrlMessage, p listener) {
        if (downloadUrl == null || downloadUrl.isEmpty()) {
            listener.a(invalidUrlMessage);
            return;
        }
        out.f70225a = new a(out.f70227c, downloadUrl, true);
        out.f70225a.C(new e(out));
        G(listener, out);
    }

    public static String m0(String entryName, String rootPrefix) {
        return (rootPrefix == null || rootPrefix.isEmpty() || !entryName.startsWith(rootPrefix)) ? entryName : entryName.substring(rootPrefix.length());
    }

    public static boolean n0(File cached, boolean keepRootReadmeOnImport) {
        if (cached == null || !cached.exists()) {
            return false;
        }
        if (r.h(cached) == null) {
            cached.delete();
            return false;
        }
        X(cached);
        if (r.h(cached) == null) {
            cached.delete();
            return false;
        }
        if (!keepRootReadmeOnImport || S(cached)) {
            return true;
        }
        cached.delete();
        return false;
    }

    public static void o0(File cached, boolean keepRootReadmeOnImport, k listener) {
        O9.b.d(new b(cached, keepRootReadmeOnImport, listener));
    }

    public void C(o listener) {
        listener.getClass();
        synchronized (this.f70194u) {
            this.f70194u.add(listener);
        }
    }

    public void E() {
        synchronized (this.f70195v) {
            try {
                Thread thread = this.f70181h;
                if (thread == null) {
                    throw new RuntimeException("Download is not running");
                }
                thread.interrupt();
                Fetch fetch = this.f70190q;
                Request request = this.f70192s;
                if (fetch != null && request != null) {
                    fetch.cancel(request.getId());
                }
                b0();
                this.f70181h = null;
                this.f70179f = m.Canceled;
                this.f70192s = null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void H() {
        synchronized (this.f70195v) {
            try {
                m mVar = this.f70179f;
                m mVar2 = m.Downloading;
                if (mVar != mVar2) {
                    this.f70179f = mVar2;
                    this.f70180g = n.Waiting;
                    Thread thread = new Thread(new f());
                    this.f70181h = thread;
                    thread.setPriority(1);
                    this.f70181h.start();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public long I() {
        return this.f70185l.get();
    }

    public long J() {
        return this.f70186m.get();
    }

    public File K() {
        return this.f70196w;
    }

    public long L() {
        return this.f70184k.get();
    }

    public m M() {
        synchronized (this.f70195v) {
            try {
                m mVar = this.f70179f;
                m mVar2 = m.Downloading;
                if (mVar != mVar2) {
                    return mVar;
                }
                n nVar = this.f70180g;
                if (nVar == n.Downloading) {
                    return mVar2;
                }
                if (nVar == n.Launched) {
                    return m.Waiting;
                }
                if (nVar == n.WaitingNetwork) {
                    return m.WaitingNetwork;
                }
                return m.Waiting;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public String N() {
        return this.f70189p;
    }

    public int O() {
        return this.f70183j.get();
    }

    public String P() {
        return this.f70175b;
    }

    public boolean T() {
        boolean z10;
        synchronized (this.f70195v) {
            z10 = this.f70181h != null;
        }
        return z10;
    }

    public boolean V() {
        return this.f70187n.get();
    }

    public final void Y() {
        synchronized (this.f70195v) {
            try {
                b0();
                this.f70181h = null;
                this.f70179f = m.Error;
                this.f70192s = null;
                if (this.f70189p != null) {
                    if (this.f70189p.trim().isEmpty()) {
                    }
                    N7.c.j0(new i());
                }
                this.f70189p = "Unknown download error";
                N7.c.j0(new i());
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void Z() {
        synchronized (this.f70195v) {
            try {
                b0();
                this.f70181h = null;
                this.f70192s = null;
                if (W(this.f70196w)) {
                    this.f70179f = m.Downloaded;
                    O9.b.d(new h());
                    return;
                }
                File file = this.f70196w;
                if (file != null && file.exists()) {
                    this.f70196w.delete();
                }
                this.f70189p = "Downloaded file is not a valid zip";
                this.f70179f = m.Error;
                N7.c.j0(new g());
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void b0() {
        Fetch fetch = this.f70190q;
        AbstractFetchListener abstractFetchListener = this.f70191r;
        this.f70190q = null;
        this.f70191r = null;
        if (fetch == null || abstractFetchListener == null) {
            return;
        }
        fetch.removeListener(abstractFetchListener);
    }

    public void c0(o listener) {
        listener.getClass();
        synchronized (this.f70194u) {
            this.f70194u.remove(listener);
        }
    }

    public final long j0(String url) {
        E execute;
        long a02;
        int lastIndexOf;
        try {
            execute = new z.b().d().a(new C.a().q(url).a(F2.d.f6168I, "bytes=0-0").a(F2.d.f6244j, "identity").b()).execute();
            try {
                String j10 = execute.j("Content-Range");
                if (j10 != null && (lastIndexOf = j10.lastIndexOf(47)) > 0 && lastIndexOf < j10.length() - 1) {
                    try {
                        long parseLong = Long.parseLong(j10.substring(lastIndexOf + 1).trim());
                        if (parseLong > 0) {
                            execute.close();
                            return parseLong;
                        }
                    } catch (NumberFormatException unused) {
                    }
                }
                a02 = execute.j("Content-Length") != null ? a0(execute.j("Content-Length")) : -1L;
            } finally {
            }
        } catch (Exception unused2) {
        }
        if (a02 > 0) {
            execute.close();
            return a02;
        }
        if (execute.c() != null) {
            long g10 = execute.c().g();
            if (g10 > 0) {
                execute.close();
                return g10;
            }
        }
        execute.close();
        return -1L;
    }

    public final int k0(Download fetchDownload) {
        long total = fetchDownload.getTotal();
        if (total <= 0) {
            total = this.f70188o.get();
        }
        if (total > 0) {
            this.f70187n.set(false);
            return Math.max(0, Math.min(100, (int) Math.min(100L, (fetchDownload.getDownloaded() * 100) / total)));
        }
        this.f70187n.set(true);
        return fetchDownload.getProgress();
    }

    public a(String serverID, String directDownloadUrl, boolean useDirectUrl) {
        if (serverID != null) {
            if (directDownloadUrl != null && !directDownloadUrl.isEmpty()) {
                this.f70175b = serverID;
                this.f70176c = null;
                this.f70177d = directDownloadUrl;
                this.f70178e = useDirectUrl;
                H();
                return;
            }
            throw new NullPointerException("download url can't be null or empty");
        }
        throw new NullPointerException("serverID can't be null");
    }
}
