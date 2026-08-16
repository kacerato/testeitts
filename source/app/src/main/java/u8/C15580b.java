package u8;

import Z6.g;
import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.PendingCompilation;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicBoolean;
import ob.b;

public class C15580b {

    public static final int f118628t = 14;

    public static final String f118629u = "b";

    public static final String f118630v = "itsmagic-offline-aab";

    public static final String f118631w = "offline-aab";

    public v f118632a;

    public boolean f118633b;

    public final Object f118634c;

    public String f118635d;

    public String f118636e;

    public final AtomicBoolean f118637f;

    public final AtomicBoolean f118638g;

    public final C15579a f118639h;

    public final String f118640i;

    public final String f118641j;

    public final String f118642k;

    public final File f118643l;

    public final boolean f118644m;

    public final int f118645n;

    public final File f118646o;

    public final String f118647p;

    public final String f118648q;

    public final String f118649r;

    public Z6.g f118650s;

    public class a implements u8.d {
        public a() {
        }

        @Override
        public void a() {
            C15580b.this.e0("7/14 Error");
        }

        @Override
        public void onProgressChange(int count, int max) {
        }

        @Override
        public void onSuccess() {
            C15580b.this.O();
        }
    }

    public class C2038b implements u8.d {
        public C2038b() {
        }

        @Override
        public void a() {
            C15580b.this.e0("8/14 Error");
        }

        @Override
        public void onProgressChange(int count, int max) {
        }

        @Override
        public void onSuccess() {
            C15580b.this.P();
        }
    }

    public class c implements u8.d {
        public c() {
        }

        @Override
        public void a() {
            C15580b.this.e0("8/14 Error");
        }

        @Override
        public void onProgressChange(int count, int max) {
        }

        @Override
        public void onSuccess() {
            C15580b.this.Q();
        }
    }

    public class d implements u8.d {
        public d() {
        }

        @Override
        public void a() {
            C15580b.this.e0("9/14 Error");
        }

        @Override
        public void onProgressChange(int count, int max) {
        }

        @Override
        public void onSuccess() {
            C15580b.this.R();
        }
    }

    public class e implements u8.d {
        public e() {
        }

        @Override
        public void a() {
            C15580b.this.e0("10/14 Error");
        }

        @Override
        public void onProgressChange(int count, int max) {
        }

        @Override
        public void onSuccess() {
            C15580b.this.S();
        }
    }

    public class f implements u8.d {

        public final Context f118656a;

        public class a implements u8.d {
            public a() {
            }

            @Override
            public void a() {
                C15580b.this.e0("11/14 Error");
            }

            @Override
            public void onProgressChange(int count, int max) {
            }

            @Override
            public void onSuccess() {
                C15580b.this.T();
            }
        }

        public f(final Context val$context) {
            this.f118656a = val$context;
        }

        @Override
        public void a() {
            C15580b.this.e0("11/14 Error");
        }

        @Override
        public void onProgressChange(int count, int max) {
        }

        @Override
        public void onSuccess() {
            C15580b.this.f118639h.o(new a(), this.f118656a);
        }
    }

    public class g implements u8.d {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                C15580b.this.U();
            }
        }

        public g() {
        }

        @Override
        public void a() {
            C15580b.this.e0("12/14 Error");
        }

        @Override
        public void onProgressChange(int count, int max) {
            C15580b.this.i0("12/14 Shader " + count + " / " + max);
        }

        @Override
        public void onSuccess() {
            C15580b.this.i0("12/14 Done");
            C15580b.this.g0("BuilderService-Zip", new a());
        }
    }

    public class h implements u8.d {
        public h() {
        }

        @Override
        public void a() {
            C15580b.this.e0("13/14 Error");
        }

        @Override
        public void onProgressChange(int count, int max) {
            C15580b.this.i0("13/14 Copying " + count + " / " + max);
        }

        @Override
        public void onSuccess() {
            C15580b.this.i0("13/14 Done");
            C15580b.this.G();
        }
    }

    public class i implements u8.d {
        public i() {
        }

        @Override
        public void a() {
            C15580b.this.i0("13/14 Error!");
            W7.b.f27307g.f118685a.status = 2;
            C15580b.this.W();
        }

        @Override
        public void onProgressChange(int count, int max) {
        }

        @Override
        public void onSuccess() {
            W7.b.f27307g.f118685a.status = 2;
            C15580b.this.W();
        }
    }

    public class j implements Runnable {

        public class a implements Runnable {

            public final File f118664b;

            public a(final File val$outputFile) {
                this.f118664b = val$outputFile;
            }

            @Override
            public void run() {
                N7.c.v0("Finish");
                C15580b.this.f118632a.b(this.f118664b);
            }
        }

        public j() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:46:0x02fa A[Catch: all -> 0x0292, TryCatch #2 {all -> 0x0292, blocks: (B:31:0x0260, B:44:0x02da, B:46:0x02fa, B:49:0x0305, B:50:0x0319, B:37:0x029a, B:40:0x02a6), top: B:8:0x0118 }] */
        /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r2v1 */
        /* JADX WARN: Type inference failed for: r2v10 */
        /* JADX WARN: Type inference failed for: r2v11 */
        /* JADX WARN: Type inference failed for: r2v12 */
        /* JADX WARN: Type inference failed for: r2v13 */
        /* JADX WARN: Type inference failed for: r2v14 */
        /* JADX WARN: Type inference failed for: r2v15 */
        /* JADX WARN: Type inference failed for: r2v16, types: [java.io.File] */
        /* JADX WARN: Type inference failed for: r2v19, types: [java.io.File] */
        /* JADX WARN: Type inference failed for: r2v2 */
        /* JADX WARN: Type inference failed for: r2v24 */
        /* JADX WARN: Type inference failed for: r2v3, types: [java.io.File] */
        /* JADX WARN: Type inference failed for: r2v5, types: [java.io.File] */
        /* JADX WARN: Type inference failed for: r2v8 */
        /* JADX WARN: Type inference failed for: r2v9 */
        /* JADX WARN: Type inference failed for: r7v10, types: [java.io.File] */
        /* JADX WARN: Type inference failed for: r7v11, types: [java.io.File] */
        /* JADX WARN: Type inference failed for: r7v12 */
        /* JADX WARN: Type inference failed for: r7v13 */
        /* JADX WARN: Type inference failed for: r7v14 */
        /* JADX WARN: Type inference failed for: r7v15 */
        /* JADX WARN: Type inference failed for: r7v16 */
        /* JADX WARN: Type inference failed for: r7v17 */
        /* JADX WARN: Type inference failed for: r7v18 */
        /* JADX WARN: Type inference failed for: r7v19 */
        /* JADX WARN: Type inference failed for: r7v20, types: [java.io.File] */
        /* JADX WARN: Type inference failed for: r7v21, types: [java.io.File] */
        /* JADX WARN: Type inference failed for: r7v22 */
        /* JADX WARN: Type inference failed for: r7v7, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r7v8 */
        /* JADX WARN: Type inference failed for: r7v9 */
        /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r8v1 */
        /* JADX WARN: Type inference failed for: r8v12, types: [java.io.File] */
        /* JADX WARN: Type inference failed for: r8v2 */
        /* JADX WARN: Type inference failed for: r8v3, types: [java.io.File] */
        /* JADX WARN: Type inference failed for: r8v4, types: [java.io.File] */
        /* JADX WARN: Type inference failed for: r8v5 */
        /* JADX WARN: Type inference failed for: r8v6 */
        /* JADX WARN: Type inference failed for: r8v7 */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            File file;
            String str;
            String message;
            String str2;
            File file2;
            File file3;
            String str3;
            File file4;
            ?? r22 = " Build Error";
            boolean c02 = C15580b.this.c0();
            String a02 = C15580b.this.a0();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(a02);
            ?? r82 = " Build";
            sb2.append(" Build");
            C15580b.this.j0("Building " + a02, sb2.toString());
            StringBuilder sb3 = new StringBuilder();
            C8.a aVar = W7.b.f27306f;
            sb3.append(aVar.f2458a.b(N7.c.t()));
            sb3.append("/Builder/");
            sb3.append(c02 ? "aab.aab" : "apk.apk");
            File file5 = new File(sb3.toString());
            File file6 = new File(aVar.f2458a.b(N7.c.t()) + "/Builder/keystore.jks");
            File file7 = new File(aVar.f2458a.b(N7.c.t()) + "/Builder/key0.cer");
            File file8 = new File(aVar.f2458a.b(N7.c.t()) + "/Builder/key0.p8");
            StringBuilder sb4 = new StringBuilder();
            sb4.append(aVar.f2458a.b(N7.c.t()));
            sb4.append("/Builder/offline_");
            sb4.append(c02 ? "aab.aab" : "apk.apk");
            File file9 = new File(sb4.toString());
            ?? r72 = aVar.f2458a.b(N7.c.t()) + "/Builder/assets.zip";
            File file10 = new File((String) r72);
            try {
                try {
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e10) {
                e = e10;
                str = " Build Error";
                file = file10;
                r82 = file9;
                r72 = file8;
                r22 = file7;
            } catch (Throwable th3) {
                th = th3;
                file = file10;
                r82 = file9;
                r72 = file8;
                r22 = file7;
            }
            if (C15580b.Y(N7.c.t(), c02 ? "Editor/Builder/aab_release.zip" : "Editor/Builder/app_release.zip", file5)) {
                try {
                    try {
                        if (c02) {
                            try {
                                u f02 = C15580b.this.f0();
                                file = file10;
                                file3 = file9;
                                r72 = file8;
                                str3 = " Build Error";
                                r22 = file7;
                                w3.d.m(file10, file5, file9, f02.f118679a, f02.f118680b, f02.f118681c, f02.f118682d, "compiled/", C15580b.this.f118641j, C15580b.this.f118642k, C15580b.this.f118643l);
                            } catch (Exception e11) {
                                e = e11;
                                str3 = " Build Error";
                                file = file10;
                                file3 = file9;
                                r72 = file8;
                                r22 = file7;
                                r82 = file3;
                                str = str3;
                                e.printStackTrace();
                                C15580b.this.f118638g.set(true);
                                message = e.getMessage();
                                C15580b c15580b = C15580b.this;
                                StringBuilder sb5 = new StringBuilder();
                                sb5.append(a02);
                                sb5.append(str);
                                if (message != null) {
                                }
                                str2 = "";
                                sb5.append(str2);
                                c15580b.i0(sb5.toString());
                                C15580b.this.f118637f.set(true);
                                file5.delete();
                                file.delete();
                                file6.delete();
                                r22.delete();
                                r72.delete();
                                file2 = new File(r82.getAbsolutePath() + ".idsig");
                                file2.delete();
                                return;
                            } catch (Throwable th4) {
                                th = th4;
                                file = file10;
                                file3 = file9;
                                r72 = file8;
                                r22 = file7;
                                r82 = file3;
                                file5.delete();
                                file.delete();
                                file6.delete();
                                r22.delete();
                                r72.delete();
                                new File(r82.getAbsolutePath() + ".idsig").delete();
                                throw th;
                            }
                        } else {
                            str3 = " Build Error";
                            file = file10;
                            file3 = file9;
                            r72 = file8;
                            r22 = file7;
                            if (C15580b.Y(N7.c.t(), "Editor/Builder/apkReleaseKeystore.jks", file6) && C15580b.Y(N7.c.t(), "Editor/Builder/key0.cer", r22) && C15580b.Y(N7.c.t(), "Editor/Builder/key0.p8", r72)) {
                                w3.h.b(file, file5, file3, file6, r72, r22, "123456789", "key0", "123456789", "compiled/", C15580b.this.f118641j, C15580b.this.f118642k, C15580b.this.f118643l);
                                r22 = r22;
                                r72 = r72;
                            } else {
                                r82 = file3;
                                C15580b c15580b2 = C15580b.this;
                                StringBuilder sb6 = new StringBuilder();
                                sb6.append(a02);
                                str = str3;
                                try {
                                    sb6.append(str);
                                    c15580b2.e0(sb6.toString());
                                    file5.delete();
                                    file.delete();
                                    file6.delete();
                                    r22.delete();
                                    r72.delete();
                                    file4 = new File(r82.getAbsolutePath() + ".idsig");
                                } catch (Exception e12) {
                                    e = e12;
                                    e.printStackTrace();
                                    C15580b.this.f118638g.set(true);
                                    message = e.getMessage();
                                    C15580b c15580b3 = C15580b.this;
                                    StringBuilder sb52 = new StringBuilder();
                                    sb52.append(a02);
                                    sb52.append(str);
                                    if (message != null && !message.trim().isEmpty()) {
                                        str2 = ": " + message;
                                        sb52.append(str2);
                                        c15580b3.i0(sb52.toString());
                                        C15580b.this.f118637f.set(true);
                                        file5.delete();
                                        file.delete();
                                        file6.delete();
                                        r22.delete();
                                        r72.delete();
                                        file2 = new File(r82.getAbsolutePath() + ".idsig");
                                        file2.delete();
                                        return;
                                    }
                                    str2 = "";
                                    sb52.append(str2);
                                    c15580b3.i0(sb52.toString());
                                    C15580b.this.f118637f.set(true);
                                    file5.delete();
                                    file.delete();
                                    file6.delete();
                                    r22.delete();
                                    r72.delete();
                                    file2 = new File(r82.getAbsolutePath() + ".idsig");
                                    file2.delete();
                                    return;
                                }
                            }
                        }
                        C15580b.this.j0("Done", a02 + " Build");
                        W7.b.f27307g.f118685a.status = 3;
                        C15580b.this.f118637f.set(true);
                        File file11 = file3;
                        N7.c.j0(new a(file11));
                        file5.delete();
                        file.delete();
                        file6.delete();
                        r22.delete();
                        r72.delete();
                        file2 = new File(file11.getAbsolutePath() + ".idsig");
                    } catch (Exception e13) {
                        e = e13;
                        str = str3;
                        e.printStackTrace();
                        C15580b.this.f118638g.set(true);
                        message = e.getMessage();
                        C15580b c15580b32 = C15580b.this;
                        StringBuilder sb522 = new StringBuilder();
                        sb522.append(a02);
                        sb522.append(str);
                        if (message != null) {
                            str2 = ": " + message;
                            sb522.append(str2);
                            c15580b32.i0(sb522.toString());
                            C15580b.this.f118637f.set(true);
                            file5.delete();
                            file.delete();
                            file6.delete();
                            r22.delete();
                            r72.delete();
                            file2 = new File(r82.getAbsolutePath() + ".idsig");
                            file2.delete();
                            return;
                        }
                        str2 = "";
                        sb522.append(str2);
                        c15580b32.i0(sb522.toString());
                        C15580b.this.f118637f.set(true);
                        file5.delete();
                        file.delete();
                        file6.delete();
                        r22.delete();
                        r72.delete();
                        file2 = new File(r82.getAbsolutePath() + ".idsig");
                        file2.delete();
                        return;
                    }
                } catch (Exception e14) {
                    e = e14;
                } catch (Throwable th5) {
                    th = th5;
                }
                file2.delete();
                return;
            }
            C15580b.this.e0(a02 + " Build Error");
            file5.delete();
            file10.delete();
            file6.delete();
            file7.delete();
            file8.delete();
            file4 = new File(file9.getAbsolutePath() + ".idsig");
            file4.delete();
        }
    }

    public class k implements g.c {
        public k() {
        }

        @Override
        public void a(Z6.g popup, FloatingPanelArea area) {
            C15580b.this.f118650s = popup;
            C15580b.this.h0();
        }
    }

    public class l implements u8.d {

        public int f118667a = -1;

        public l() {
        }

        @Override
        public void a() {
            W7.b.f27307g.f118685a.status = -1;
            C15580b.this.e0("Error uploading game files.");
        }

        @Override
        public void onProgressChange(int count, int max) {
            int i10 = (int) ((count / max) * 100.0f);
            if (i10 > this.f118667a) {
                C15580b.this.j0("Uploading asssets " + count + "/" + max + " MB - " + i10 + ve.j.f121589a, "Cloud build - " + W7.b.f27307g.f118685a.localProjectName);
                this.f118667a = i10;
            }
        }

        @Override
        public void onSuccess() {
            W7.b.f27307g.f118685a.status = 3;
            C15580b.this.j0("Sent! we will notify you when the process is over.", "you can check progress on app.");
            C4.b.w1();
            C15580b.this.f118637f.set(true);
        }
    }

    public class m implements g.c {
        public m() {
        }

        @Override
        public void a(Z6.g popup, FloatingPanelArea area) {
            C15580b.this.f118650s = popup;
            C15580b.this.h0();
        }
    }

    public class n implements b.a {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                if (C15580b.this.b0() == null) {
                    C15580b.this.f118650s.f1(C15580b.this.Z());
                    return;
                }
                C15580b.this.f118650s.f1(C15580b.this.Z() + "\n" + C15580b.this.b0());
            }
        }

        public class RunnableC2039b implements Runnable {
            public RunnableC2039b() {
            }

            @Override
            public void run() {
                C15580b.this.f118650s.R0();
                if (C15580b.this.f118638g.get()) {
                    Z6.i.y1("Ops!", C15580b.this.Z());
                }
            }
        }

        public n() {
        }

        @Override
        public boolean run() {
            N7.c.j0(new a());
            if (!C15580b.this.d0()) {
                return true;
            }
            N7.c.j0(new RunnableC2039b());
            return false;
        }
    }

    public class o implements Runnable {
        public o() {
        }

        @Override
        public void run() {
            PendingCompilation pendingCompilation = W7.b.f27307g.f118685a;
            if (pendingCompilation == null || pendingCompilation.status != 2) {
                C15580b.this.V();
            } else {
                C15580b.this.W();
            }
        }
    }

    public class p implements u8.d {
        public p() {
        }

        @Override
        public void a() {
            C15580b.this.H();
        }

        @Override
        public void onProgressChange(int count, int max) {
            C15580b.this.i0("Preparing " + count + " files");
        }

        @Override
        public void onSuccess() {
            C15580b.this.H();
        }
    }

    public class q implements u8.d {
        public q() {
        }

        @Override
        public void a() {
            C15580b.this.e0("3/14 Error");
        }

        @Override
        public void onProgressChange(int count, int max) {
            C15580b.this.i0("3/14 Copying " + count);
        }

        @Override
        public void onSuccess() {
            C15580b.this.K();
        }
    }

    public class r implements u8.d {
        public r() {
        }

        @Override
        public void a() {
            C15580b.this.e0("4/14 Error");
        }

        @Override
        public void onProgressChange(int count, int max) {
            C15580b.this.i0("4/14 Deleting " + count + " / " + max);
        }

        @Override
        public void onSuccess() {
            C15580b.this.L();
        }
    }

    public class s implements u8.d {
        public s() {
        }

        @Override
        public void a() {
            C15580b.this.e0("5/14 Error");
        }

        @Override
        public void onProgressChange(int count, int max) {
        }

        @Override
        public void onSuccess() {
            C15580b.this.M();
        }
    }

    public class t implements u8.d {
        public t() {
        }

        @Override
        public void a() {
            C15580b.this.e0("6/14 Error");
        }

        @Override
        public void onProgressChange(int count, int max) {
        }

        @Override
        public void onSuccess() {
            C15580b.this.N();
        }
    }

    public static final class u {

        public final File f118679a;

        public final String f118680b;

        public final String f118681c;

        public final String f118682d;

        public u(File file, String str, String str2, String str3, k kVar) {
            this(file, str, str2, str3);
        }

        public u(File keyStoreFile, String keyStorePassword, String keyAlias, String keyPassword) {
            this.f118679a = keyStoreFile;
            this.f118680b = keyStorePassword;
            this.f118681c = keyAlias;
            this.f118682d = keyPassword;
        }
    }

    public interface v {
        void b(File outputFile);
    }

    public C15580b(String worldZero) {
        this.f118633b = false;
        this.f118634c = new Object();
        this.f118637f = new AtomicBoolean();
        this.f118638g = new AtomicBoolean();
        N7.c.h0();
        this.f118640i = worldZero;
        this.f118641j = null;
        this.f118642k = null;
        this.f118643l = null;
        this.f118644m = true;
        this.f118645n = 0;
        this.f118646o = null;
        this.f118647p = null;
        this.f118648q = null;
        this.f118649r = null;
        this.f118639h = new C15579a(worldZero, true);
        Z6.g.s1("Building project", new k());
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0070 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x006b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean Y(Context context, String assetFileName, File outFile) {
        FileOutputStream fileOutputStream;
        if (outFile.exists()) {
            outFile.delete();
        }
        InputStream inputStream = null;
        try {
            InputStream open = context.getAssets().open(assetFileName);
            try {
                File parentFile = outFile.getParentFile();
                if (parentFile != null && !parentFile.exists()) {
                    parentFile.mkdirs();
                }
                FileOutputStream fileOutputStream2 = new FileOutputStream(outFile);
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int read = open.read(bArr);
                        if (read <= 0) {
                            break;
                        }
                        fileOutputStream2.write(bArr, 0, read);
                    }
                    fileOutputStream2.flush();
                    try {
                        open.close();
                    } catch (IOException unused) {
                    }
                    try {
                        fileOutputStream2.close();
                        return true;
                    } catch (IOException unused2) {
                        return true;
                    }
                } catch (Exception e10) {
                    inputStream = open;
                    fileOutputStream = fileOutputStream2;
                    e = e10;
                    try {
                        e.printStackTrace();
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException unused3) {
                            }
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused4) {
                            }
                        }
                        return false;
                    } catch (Throwable th2) {
                        th = th2;
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException unused5) {
                            }
                        }
                        if (fileOutputStream != null) {
                            throw th;
                        }
                        try {
                            fileOutputStream.close();
                            throw th;
                        } catch (IOException unused6) {
                            throw th;
                        }
                    }
                } catch (Throwable th3) {
                    inputStream = open;
                    fileOutputStream = fileOutputStream2;
                    th = th3;
                    if (inputStream != null) {
                    }
                    if (fileOutputStream != null) {
                    }
                }
            } catch (Exception e11) {
                e = e11;
                inputStream = open;
                fileOutputStream = null;
            } catch (Throwable th4) {
                th = th4;
                inputStream = open;
                fileOutputStream = null;
            }
        } catch (Exception e12) {
            e = e12;
            fileOutputStream = null;
        } catch (Throwable th5) {
            th = th5;
            fileOutputStream = null;
        }
    }

    public final void G() {
        Context t10 = N7.c.t();
        i0("14/14 Deleting builder files");
        this.f118639h.l(new i(), t10);
    }

    public final void H() {
        I();
    }

    public final void I() {
        J();
    }

    public final void J() {
        i0("3/14 Copy project files");
        this.f118639h.i(new q(), N7.c.t());
    }

    public final void K() {
        i0("4/14 Deleting unecessary");
        this.f118639h.q(new r(), N7.c.t());
    }

    public final void L() {
        i0("5/14 Preparing world zero");
        this.f118639h.x(new s(), N7.c.t());
    }

    public final void M() {
        i0("6/14 Constructing dictionary");
        this.f118639h.u(new t(), N7.c.t());
    }

    public final void N() {
        i0("7/14 Renaming files");
        this.f118639h.z(new a(), N7.c.t());
    }

    public final void O() {
        i0("8/14 Renaming usages");
        this.f118639h.g(new C2038b(), N7.c.t());
    }

    public final void P() {
        i0("8/14 Copying java runtime");
        this.f118639h.k(new c(), N7.c.t());
    }

    public final void Q() {
        i0("9/14 Building resources");
        this.f118639h.e(new d(), N7.c.t());
    }

    public final void R() {
        i0("10/14 Deleting Folders");
        this.f118639h.n(new e(), N7.c.t());
    }

    public final void S() {
        Context t10 = N7.c.t();
        i0("11/14 Deleting unused filed");
        this.f118639h.r(new f(t10), N7.c.t());
    }

    public final void T() {
        if (this.f118644m) {
            i0("12/14 Building shaders");
        } else {
            i0("12/14 Skipping shader pre-cache");
        }
        this.f118639h.f(new g(), N7.c.t());
    }

    public final void U() {
        i0("13/14 Preparing " + a0());
        this.f118639h.h(new h(), N7.c.t());
    }

    public final void V() {
        i0("Deleting builder files");
        u8.c cVar = W7.b.f27307g;
        cVar.f118685a.localProjectName = com.itsmagic.engine.Core.Components.ProjectController.a.T();
        cVar.f118685a.worldZero = this.f118640i;
        this.f118639h.l(new p(), N7.c.t());
    }

    public final void W() {
        if (this.f118633b) {
            g0("BuilderService-OfflinePackage", new j());
            return;
        }
        Context t10 = N7.c.t();
        u8.c cVar = W7.b.f27307g;
        if (cVar.f118685a == null) {
            this.f118637f.set(true);
        } else {
            j0("Uploading assets", "Cloud build");
            cVar.e(cVar.f118685a, new l(), t10);
        }
    }

    public final void X() {
        if (this.f118646o == null) {
            return;
        }
        try {
            String canonicalPath = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t())).getCanonicalPath();
            String canonicalPath2 = this.f118646o.getCanonicalPath();
            String str = File.separator;
            if (!canonicalPath.endsWith(str)) {
                canonicalPath = canonicalPath + str;
            }
            if (canonicalPath2.startsWith(canonicalPath)) {
                this.f118639h.c(canonicalPath2.substring(canonicalPath.length()));
            }
        } catch (IOException e10) {
            throw new IllegalArgumentException("Unable to resolve AAB signing keystore path", e10);
        }
    }

    public String Z() {
        String str;
        synchronized (this.f118634c) {
            str = this.f118635d;
        }
        return str;
    }

    public final String a0() {
        return c0() ? "AAB" : "APK";
    }

    public String b0() {
        String str;
        synchronized (this.f118634c) {
            str = this.f118636e;
        }
        return str;
    }

    public final boolean c0() {
        return this.f118633b && this.f118645n != 0;
    }

    public boolean d0() {
        return this.f118637f.get();
    }

    public final void e0(String text) {
        synchronized (this.f118634c) {
            this.f118635d = text;
            this.f118636e = null;
        }
        this.f118638g.set(true);
        this.f118637f.set(true);
    }

    public final u f0() throws Exception {
        File file = this.f118646o;
        if (file != null) {
            return new u(file, this.f118647p, this.f118648q, this.f118649r, null);
        }
        File file2 = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + "/_EDITOR/APP/Settings/Signing/offline-aab-signing.p12");
        w3.d.i(file2, f118630v, f118631w, f118630v);
        return new u(file2, f118630v, f118631w, f118630v, null);
    }

    public final void g0(String threadName, Runnable runnable) {
        new Thread(runnable, threadName).start();
    }

    public final void h0() {
        K8.a.J(new ob.b(new n()));
        g0("BuilderService-Start", new o());
    }

    public final void i0(String text) {
        synchronized (this.f118634c) {
            this.f118635d = text;
            this.f118636e = null;
        }
    }

    public final void j0(String text, String sub) {
        synchronized (this.f118634c) {
            this.f118635d = text;
            this.f118636e = sub;
        }
    }

    public C15580b(String worldZero, String offlineAppTitle, String offlinePackageId, boolean generateVulkanShadersPreCache, v offlineCallback) {
        this(worldZero, offlineAppTitle, offlinePackageId, generateVulkanShadersPreCache, 0, offlineCallback);
    }

    public C15580b(String worldZero, String offlineAppTitle, String offlinePackageId, boolean generateVulkanShadersPreCache, int offlineBuildType, v offlineCallback) {
        this(worldZero, offlineAppTitle, offlinePackageId, generateVulkanShadersPreCache, offlineBuildType, null, null, null, null, offlineCallback);
    }

    public C15580b(String worldZero, String offlineAppTitle, String offlinePackageId, boolean generateVulkanShadersPreCache, int offlineBuildType, File offlineSigningKeyStore, String offlineSigningKeyStorePassword, String offlineSigningKeyAlias, String offlineSigningKeyPassword, v offlineCallback) {
        this.f118633b = false;
        this.f118634c = new Object();
        this.f118637f = new AtomicBoolean();
        this.f118638g = new AtomicBoolean();
        N7.c.h0();
        this.f118640i = worldZero;
        this.f118641j = offlineAppTitle;
        this.f118642k = offlinePackageId;
        this.f118643l = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + "/_EDITOR/APP/Settings/Icon/512x.png");
        this.f118644m = generateVulkanShadersPreCache;
        this.f118645n = offlineBuildType;
        this.f118646o = offlineSigningKeyStore;
        this.f118647p = offlineSigningKeyStorePassword;
        this.f118648q = offlineSigningKeyAlias;
        this.f118649r = offlineSigningKeyPassword;
        this.f118632a = offlineCallback;
        this.f118633b = true;
        this.f118639h = new C15579a(worldZero, generateVulkanShadersPreCache);
        X();
        Z6.g.s1("Building project", new m());
    }
}
