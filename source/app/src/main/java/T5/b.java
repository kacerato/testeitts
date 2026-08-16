package T5;

import Ic.C2635n;
import Ic.C2636o;
import android.content.Context;
import com.google.gson.Gson;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.a;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.r;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Panels.Marketplace.BackendAPI.v2.Database;
import com.itsmagic.engine.Activities.Editor.Panels.Marketplace.BackendAPI.v2.Package;
import com.itsmagic.engine.Activities.Editor.Utils.C12739g;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.tonyodev.fetch2core.FetchCoreUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Predicate;
import yd.C16181m;

public class b {

    public static final String f24044a = "https://github.com/ITsMagic-Software/Packages-Manifest";

    public static final String f24045b = "main";

    public static final String f24046c = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36";

    public static final long f24049f = 600000;

    public static final Object f24047d = new Object();

    public static final AtomicBoolean f24048e = new AtomicBoolean();

    public static volatile long f24050g = 0;

    public class a implements Runnable {

        public class C0572a implements C12739g.d {

            public final String f24051a;

            public final File f24052b;

            public C0572a(final String val$finalRemoteVersion, final File val$versionFile) {
                this.f24051a = val$finalRemoteVersion;
                this.f24052b = val$versionFile;
            }

            @Override
            public void a(float p10, int downloadedBytes, int totalBytes) {
            }

            @Override
            public void b(File file) {
                C2636o.e(this.f24051a, this.f24052b);
                b.m0(false);
            }

            @Override
            public void onError(String msg) {
                b.m0(false);
            }
        }

        @Override
        public void run() {
            Context t10 = N7.c.t();
            if (t10 == null) {
                b.m0(false);
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            C8.a aVar = W7.b.f27306f;
            sb2.append(aVar.f2458a.g(t10));
            sb2.append("/packagemanager/version.txt");
            File file = new File(sb2.toString());
            File file2 = new File(aVar.f2458a.g(t10) + "/packagemanager/database.json");
            String v10 = b.v(b.c());
            if (v10 == null) {
                b.m0(false);
                return;
            }
            String g10 = C2636o.g(file);
            boolean z10 = g10 != null && g10.equals(v10);
            boolean z11 = file2.exists() && file2.length() > 0;
            if (z10 && z11) {
                b.m0(false);
                return;
            }
            try {
                b.u(b.e(), file2.getParentFile(), file2.getName(), new C0572a(v10, file));
            } catch (Exception e10) {
                e10.printStackTrace();
                b.m0(false);
            }
        }
    }

    public class C0573b implements C12739g.d {

        public final C12739g.d f24054a;

        public final List f24055b;

        public final int f24056c;

        public final File f24057d;

        public final String f24058e;

        public C0573b(final C12739g.d val$listener, final List val$urls, final int val$index, final File val$destinationFolder, final String val$fileName) {
            this.f24054a = val$listener;
            this.f24055b = val$urls;
            this.f24056c = val$index;
            this.f24057d = val$destinationFolder;
            this.f24058e = val$fileName;
        }

        @Override
        public void a(float p10, int downloadedBytes, int totalBytes) {
            this.f24054a.a(p10, downloadedBytes, totalBytes);
        }

        @Override
        public void b(File file) {
            this.f24054a.b(file);
        }

        @Override
        public void onError(String msg) {
            try {
                b.t(this.f24055b, this.f24056c + 1, this.f24057d, this.f24058e, this.f24054a, msg);
            } catch (IOException e10) {
                this.f24054a.onError(e10.getMessage());
            }
        }
    }

    public class c implements Runnable {

        public final Package f24059b;

        public final l f24060c;

        public c(final Package val$pack, final l val$listener) {
            this.f24059b = val$pack;
            this.f24060c = val$listener;
        }

        @Override
        public void run() {
            b.X(this.f24059b, this.f24060c);
        }
    }

    public class d implements a.p {

        public final l f24061a;

        public class a implements a.o {
            public a() {
            }

            @Override
            public void a() {
                d.this.f24061a.a("Failed to download repository");
            }

            @Override
            public void b(File zipFile) {
                b.h0(zipFile, d.this.f24061a);
            }

            @Override
            public void c(int progress, long etaInMilliSeconds, long downloadedBytesPerSecond) {
            }
        }

        public d(final l val$listener) {
            this.f24061a = val$listener;
        }

        @Override
        public void a(String error) {
            this.f24061a.a(error);
        }

        @Override
        public void b() {
            this.f24061a.b();
        }

        @Override
        public void c(a.l downloadOut) {
            if (downloadOut.e() == a.m.Downloaded) {
                b.h0(downloadOut.m(), this.f24061a);
            } else {
                downloadOut.c(new a());
            }
        }
    }

    public class e implements Runnable {

        public final File f24063b;

        public final l f24064c;

        public class a implements Runnable {

            public final List f24065b;

            public a(final List val$files) {
                this.f24065b = val$files;
            }

            @Override
            public void run() {
                List<r.b> list = this.f24065b;
                if (list == null) {
                    e.this.f24064c.a("Invalid zip file");
                } else {
                    e.this.f24064c.onSuccess(list);
                }
            }
        }

        public e(final File val$zipFile, final l val$listener) {
            this.f24063b = val$zipFile;
            this.f24064c = val$listener;
        }

        @Override
        public void run() {
            N7.c.j0(new a(r.h(this.f24063b)));
        }
    }

    public class f implements Runnable {

        public final h f24067b;

        public final Runnable f24068c;

        public final l f24069d;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                f.this.f24069d.a("Failed to load repository");
            }
        }

        public class RunnableC0574b implements Runnable {

            public final List f24071b;

            public RunnableC0574b(final List val$files) {
                this.f24071b = val$files;
            }

            @Override
            public void run() {
                List<r.b> list = this.f24071b;
                if (list == null) {
                    f.this.f24069d.a("Failed to load repository");
                } else {
                    f.this.f24069d.onSuccess(list);
                }
            }
        }

        public f(final h val$info, final Runnable val$fallback, final l val$listener) {
            this.f24067b = val$info;
            this.f24068c = val$fallback;
            this.f24069d = val$listener;
        }

        @Override
        public void run() {
            List<i> list;
            h hVar = this.f24067b;
            j C10 = b.C(hVar.f24073a, hVar.f24074b, hVar.f24075c);
            if (C10 == null) {
                h hVar2 = this.f24067b;
                if (!hVar2.f24077e) {
                    C10 = b.C(hVar2.f24073a, hVar2.f24074b, b.f24045b);
                }
            }
            if (C10 != null && (list = C10.f24080a) != null) {
                N7.c.j0(new RunnableC0574b(b.n(list, this.f24067b.f24076d)));
                return;
            }
            Runnable runnable = this.f24068c;
            if (runnable != null) {
                N7.c.j0(runnable);
            } else {
                N7.c.j0(new a());
            }
        }
    }

    public class g implements Predicate<Package> {
        @Override
        public boolean test(Package aPackage) {
            return aPackage.appMajorVersion != 2;
        }
    }

    public static class h {

        public final String f24073a;

        public final String f24074b;

        public final String f24075c;

        public final String f24076d;

        public final boolean f24077e;

        public h(String owner, String repo, String branch, String path, boolean branchExplicit) {
            this.f24073a = owner;
            this.f24074b = repo;
            this.f24075c = branch;
            this.f24076d = path;
            this.f24077e = branchExplicit;
        }
    }

    public static class i {

        public String f24078a;

        public String f24079b;
    }

    public static class j {

        public List<i> f24080a;

        public boolean f24081b;
    }

    public enum k {
        DonotMatter,
        IsTemplate,
        NotTemplate
    }

    public interface l {
        void a(String error);

        void b();

        void onSuccess(List<r.b> files);
    }

    public static void A(String path, boolean isDir, Map<String, r.b> map, List<r.b> roots, Set<String> rootSet) {
        String[] split = path.split("/");
        StringBuilder sb2 = new StringBuilder();
        r.b bVar = null;
        int i10 = 0;
        while (i10 < split.length) {
            String str = split[i10];
            if (str != null && !str.isEmpty()) {
                if (sb2.length() > 0) {
                    sb2.append("/");
                }
                sb2.append(str);
                String sb3 = sb2.toString();
                boolean z10 = i10 < split.length - 1 || isDir;
                r.b bVar2 = map.get(sb3);
                if (bVar2 == null) {
                    bVar2 = new r.b(sb3, z10);
                    map.put(sb3, bVar2);
                    if (bVar != null) {
                        bVar.e(bVar2);
                    } else if (!rootSet.contains(sb3)) {
                        roots.add(bVar2);
                        rootSet.add(sb3);
                    }
                } else if (z10 && !bVar2.j()) {
                    r.b bVar3 = new r.b(sb3, true);
                    for (int i11 = 0; i11 < bVar2.h(); i11++) {
                        bVar3.e(bVar2.f(i11));
                    }
                    map.put(sb3, bVar3);
                    if (bVar != null) {
                        bVar.e(bVar3);
                    } else if (!rootSet.contains(sb3)) {
                        roots.add(bVar3);
                        rootSet.add(sb3);
                    }
                    bVar2 = bVar3;
                }
                bVar = bVar2;
            }
            i10++;
        }
    }

    public static String B(String url) {
        if (url.endsWith("/")) {
            return url;
        }
        return url + "/";
    }

    public static j C(String owner, String repo, String branch) {
        if (owner != null && repo != null && branch != null) {
            try {
                String x10 = x("https://api.github.com/repos/" + owner + "/" + repo + "/git/trees/" + branch + "?recursive=1");
                if (x10 != null && !x10.trim().isEmpty()) {
                    return (j) new Gson().fromJson(x10, j.class);
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static Package D(String packageId) {
        Database Y10;
        if (packageId != null && (Y10 = Y()) != null && Y10.a() != null) {
            List<Package> a10 = Y10.a();
            for (int i10 = 0; i10 < a10.size(); i10++) {
                Package r32 = a10.get(i10);
                if (r32 != null && r32.f71742id.equals(packageId)) {
                    return r32;
                }
            }
        }
        return null;
    }

    public static String E() {
        String str = EditorSettings.a() != null ? EditorSettings.a().packagesDatabasePath : null;
        String trim = str == null ? "" : str.trim();
        if (trim.isEmpty()) {
            trim = EditorSettings.f70496c;
        }
        while (trim.startsWith("/")) {
            trim = trim.substring(1);
        }
        return trim;
    }

    public static String F() {
        return L() + E();
    }

    public static List<String> G() {
        return l(M(), E());
    }

    public static String H(Package pack) {
        if (pack == null) {
            return null;
        }
        return s(pack.descriptionB64);
    }

    public static String I(Package pack, String img) {
        return img;
    }

    public static String J(String packageID, int imageIndex) {
        Database Y10;
        String str;
        if (packageID != null && !packageID.isEmpty() && (Y10 = Y()) != null && Y10.a() != null) {
            List<Package> a10 = Y10.a();
            for (int i10 = 0; i10 < a10.size(); i10++) {
                Package r32 = a10.get(i10);
                if (r32 != null && (str = r32.f71742id) != null && str.equals(packageID)) {
                    List<String> list = r32.images;
                    if (list == null || imageIndex < 0 || imageIndex >= list.size()) {
                        return null;
                    }
                    return I(r32, r32.images.get(imageIndex));
                }
            }
        }
        return null;
    }

    public static String K(Package pack) {
        if (pack == null) {
            return null;
        }
        return s(pack.licenseB64);
    }

    public static String L() {
        return m(M());
    }

    public static String M() {
        return d0(EditorSettings.a() != null ? EditorSettings.a().packagesRepositoryUrl : null);
    }

    public static String N(Package pack) {
        if (pack == null) {
            return null;
        }
        return O(pack.repositoryURL);
    }

    public static String O(String repositoryURL) {
        String str;
        if (repositoryURL == null || repositoryURL.trim().isEmpty()) {
            return null;
        }
        String trim = repositoryURL.trim();
        if (trim.endsWith(".zip") || trim.contains("codeload.github.com/") || !trim.contains("github.com/")) {
            return trim;
        }
        if (trim.endsWith("/")) {
            trim = trim.substring(0, trim.length() - 1);
        }
        boolean contains = trim.contains("/tree/");
        String str2 = f24045b;
        if (contains) {
            String[] split = trim.split("/tree/");
            String str3 = split[0];
            if (split.length > 1 && (str = split[1]) != null && !str.isEmpty()) {
                str2 = split[1];
                if (str2.contains("?")) {
                    str2 = str2.substring(0, str2.indexOf("?"));
                }
            }
            trim = str3;
        }
        String replace = trim.replace("https://github.com/", "").replace("http://github.com/", "");
        while (replace.startsWith("/")) {
            replace = replace.substring(1);
        }
        if (replace.endsWith(".git")) {
            replace = replace.substring(0, replace.length() - 4);
        }
        return "https://codeload.github.com/" + replace + "/zip/refs/heads/" + str2;
    }

    public static String P(Package pack) {
        if (pack == null) {
            return null;
        }
        return s(pack.titleB64);
    }

    public static String Q() {
        String str = EditorSettings.a() != null ? EditorSettings.a().packagesVersionPath : null;
        String trim = str == null ? "" : str.trim();
        if (trim.isEmpty()) {
            trim = EditorSettings.f70497d;
        }
        while (trim.startsWith("/")) {
            trim = trim.substring(1);
        }
        return trim;
    }

    public static String R() {
        return L() + Q();
    }

    public static List<String> S() {
        return l(M(), Q());
    }

    public static boolean T(Package pack, String tag) {
        if (pack != null && tag != null && !tag.trim().isEmpty()) {
            List<String> n02 = n0(pack.tags);
            String lowerCase = tag.trim().toLowerCase(Locale.ROOT);
            for (int i10 = 0; i10 < n02.size(); i10++) {
                if (lowerCase.equals(n02.get(i10))) {
                    return true;
                }
            }
        }
        return false;
    }

    public static int U(Package r22, Package r32) {
        return Long.compare(g0(r32), g0(r22));
    }

    public static void V(Package pack, l listener) {
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
        if (pack == null) {
            listener.a("Package not found");
            return;
        }
        h f02 = f0(pack.repositoryURL);
        if (f02 != null) {
            W(f02, listener, new c(pack, listener));
        } else {
            X(pack, listener);
        }
    }

    public static void W(h info, l listener, Runnable fallback) {
        new Thread(new f(info, fallback, listener)).start();
    }

    public static void X(Package pack, l listener) {
        String N10 = N(pack);
        if (N10 == null || N10.trim().isEmpty()) {
            listener.a("Invalid repository url");
            return;
        }
        com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.a.h0(pack.f71742id, pack.version, P(pack), N10, new d(listener));
    }

    public static Database Y() {
        return Z(true);
    }

    public static Database Z(boolean allowRetry) {
        y();
        q0();
        Context t10 = N7.c.t();
        if (t10 == null) {
            return null;
        }
        byte[] j02 = j0(new File(W7.b.f27306f.f2458a.g(t10) + "/packagemanager/database.json"));
        if (j02 == null || j02.length == 0) {
            return i0(allowRetry);
        }
        try {
            String c10 = C2635n.c(j02);
            if (c10 == null || c10.trim().isEmpty()) {
                return i0(allowRetry);
            }
            try {
                Database database = (Database) new Gson().fromJson(c10, Database.class);
                database.a().removeIf(new g());
                return database;
            } catch (Exception e10) {
                e10.printStackTrace();
                return i0(allowRetry);
            }
        } catch (RuntimeException e11) {
            e11.printStackTrace();
            return i0(allowRetry);
        }
    }

    public static boolean a0(Package pack, String searchText) {
        if (pack == null) {
            return false;
        }
        String k02 = k0(s(pack.titleB64));
        String k03 = k0(s(pack.descriptionB64));
        String k04 = k0(pack.tags);
        String k05 = k0(pack.userName);
        String k06 = k0(pack.f71742id);
        if (k02 != null && k02.contains(searchText)) {
            return true;
        }
        if (k03 != null && k03.contains(searchText)) {
            return true;
        }
        if (k04 != null && k04.contains(searchText)) {
            return true;
        }
        if (k05 == null || !k05.contains(searchText)) {
            return k06 != null && k06.contains(searchText);
        }
        return true;
    }

    public static String b0(String branch) {
        String trim = branch == null ? "" : branch.trim();
        if (trim.isEmpty()) {
            return f24045b;
        }
        if (trim.startsWith("refs/heads/")) {
            trim = trim.substring(11);
        }
        while (trim.startsWith("/")) {
            trim = trim.substring(1);
        }
        return trim.isEmpty() ? f24045b : trim;
    }

    public static List c() {
        return S();
    }

    public static String c0(String path) {
        String trim = path == null ? "" : path.trim();
        while (trim.startsWith("/")) {
            trim = trim.substring(1);
        }
        return trim;
    }

    public static String d0(String value) {
        String trim = value == null ? "" : value.trim();
        if (trim.isEmpty()) {
            trim = "https://github.com/ITsMagic-Software/Packages-Manifest";
        }
        if (trim.contains("://")) {
            return trim;
        }
        return "https://" + trim;
    }

    public static List e() {
        return G();
    }

    public static long e0(String value, String pattern) {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern, Locale.US);
            simpleDateFormat.setLenient(false);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            Date parse = simpleDateFormat.parse(value);
            if (parse != null) {
                return parse.getTime();
            }
            return 0L;
        } catch (Exception unused) {
            return 0L;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x011e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x011f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static h f0(String repositoryUrl) {
        String replace;
        int indexOf;
        String str;
        boolean z10;
        String[] split;
        String str2;
        if (repositoryUrl == null || repositoryUrl.trim().isEmpty()) {
            return null;
        }
        String trim = repositoryUrl.trim();
        String str3 = "";
        if (trim.contains("raw.githubusercontent.com/")) {
            String p02 = p0(trim);
            int indexOf2 = p02.indexOf("raw.githubusercontent.com/");
            if (indexOf2 < 0) {
                return null;
            }
            String substring = p02.substring(indexOf2 + 26);
            while (substring.startsWith("/")) {
                substring = substring.substring(1);
            }
            String[] split2 = substring.split("/");
            int i10 = 3;
            if (split2.length < 3) {
                return null;
            }
            String str4 = split2[0];
            String str5 = split2[1];
            if (split2.length >= 5 && "refs".equals(split2[2]) && "heads".equals(split2[3])) {
                str2 = split2[4];
                i10 = 5;
            } else {
                str2 = split2[2];
            }
            if (split2.length > i10) {
                StringBuilder sb2 = new StringBuilder();
                while (i10 < split2.length) {
                    if (sb2.length() > 0) {
                        sb2.append("/");
                    }
                    sb2.append(split2[i10]);
                    i10++;
                }
                str3 = sb2.toString();
            }
            return new h(str4, str5, str2, str3, true);
        }
        if (!trim.contains("github.com/") || (indexOf = (replace = p0(trim).replace("https://", "").replace("http://", "")).indexOf("github.com/")) < 0) {
            return null;
        }
        String substring2 = replace.substring(indexOf + 11);
        while (substring2.startsWith("/")) {
            substring2 = substring2.substring(1);
        }
        boolean contains = substring2.contains("/tree/");
        String str6 = f24045b;
        if (contains) {
            String[] split3 = substring2.split("/tree/");
            String str7 = split3[0];
            if (split3.length > 1) {
                String str8 = split3[1];
                int indexOf3 = str8.indexOf("/");
                if (indexOf3 >= 0) {
                    str6 = str8.substring(0, indexOf3);
                    str3 = str8.substring(indexOf3 + 1);
                } else {
                    str6 = str8;
                }
                substring2 = str7;
                str = str3;
                z10 = true;
                String str9 = str6;
                if (substring2.endsWith("/")) {
                    substring2 = substring2.substring(0, substring2.length() - 1);
                }
                if (substring2.endsWith(".git")) {
                    substring2 = substring2.substring(0, substring2.length() - 4);
                }
                split = substring2.split("/");
                if (split.length >= 2) {
                    return null;
                }
                return new h(split[0], split[1], str9, str, z10);
            }
            substring2 = str7;
        }
        str = "";
        z10 = false;
        String str92 = str6;
        if (substring2.endsWith("/")) {
        }
        if (substring2.endsWith(".git")) {
        }
        split = substring2.split("/");
        if (split.length >= 2) {
        }
    }

    public static long g0(Package pack) {
        String str;
        if (pack == null || (str = pack.date) == null) {
            return 0L;
        }
        String trim = str.trim();
        if (trim.isEmpty()) {
            return 0L;
        }
        long e02 = e0(trim, "dd/MM/yyyy");
        return e02 != 0 ? e02 : e0(trim, "yyyy-MM-dd");
    }

    public static void h0(File zipFile, l listener) {
        if (zipFile == null) {
            listener.a("Invalid zip file");
        } else {
            new Thread(new e(zipFile, listener)).start();
        }
    }

    public static Database i0(boolean allowRetry) {
        if (!allowRetry) {
            return null;
        }
        p();
        z(true);
        q0();
        return Z(false);
    }

    public static byte[] j0(File file) {
        if (file != null && file.exists() && file.length() > 0) {
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    int length = (int) file.length();
                    byte[] bArr = new byte[length];
                    int i10 = 0;
                    while (i10 < length) {
                        int read = fileInputStream.read(bArr, i10, length - i10);
                        if (read < 0) {
                            break;
                        }
                        i10 += read;
                    }
                    if (i10 != length) {
                        bArr = Arrays.copyOf(bArr, Math.max(i10, 0));
                    }
                    fileInputStream.close();
                    return bArr;
                } finally {
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    public static String k0(String value) {
        if (value == null) {
            return null;
        }
        return value.toLowerCase(Locale.ROOT);
    }

    public static List<String> l(String repositoryUrl, String relativePath) {
        String c02 = c0(relativePath);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        h f02 = f0(repositoryUrl);
        if (f02 != null) {
            String b02 = b0(f02.f24075c);
            String q10 = q(f02.f24076d, c02);
            linkedHashSet.add("https://raw.githubusercontent.com/" + f02.f24073a + "/" + f02.f24074b + "/" + b02 + "/" + q10);
            linkedHashSet.add("https://cdn.jsdelivr.net/gh/" + f02.f24073a + "/" + f02.f24074b + "@" + b02 + "/" + q10);
        } else {
            linkedHashSet.add(m(repositoryUrl) + c02);
        }
        return new SteppedArrayList(linkedHashSet);
    }

    public static List<Package> l0(String text, String onlyUsername, String onlyWithAnyOfTags, k isTemplate) {
        String k02;
        Database Y10 = Y();
        if (Y10 == null || Y10.a() == null) {
            throw new RuntimeException("Failed to load packages database!");
        }
        String k03 = k0(text);
        String k04 = k0(onlyUsername);
        if (k03 != null && k03.startsWith("@") && k03.endsWith("@") && k03.length() > 2) {
            if (k04 == null || k04.isEmpty()) {
                k04 = k03.substring(1, k03.length() - 1).toLowerCase(Locale.ROOT);
            }
            k03 = "";
        }
        List<String> n02 = n0(onlyWithAnyOfTags);
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        List<Package> a10 = Y10.a();
        for (int i10 = 0; i10 < a10.size(); i10++) {
            Package r32 = a10.get(i10);
            if (r32 != null && ((isTemplate != k.IsTemplate || r32.isTemplate) && ((isTemplate != k.NotTemplate || !r32.isTemplate) && ((k04 == null || k04.isEmpty() || ((k02 = k0(r32.userName)) != null && k02.equals(k04))) && ((n02.isEmpty() || r(r32, n02)) && (k03 == null || k03.isEmpty() || a0(r32, k03))))))) {
                steppedArrayList.add(r32);
            }
        }
        steppedArrayList.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int U10;
                U10 = b.U((Package) obj, (Package) obj2);
                return U10;
            }
        });
        return steppedArrayList;
    }

    public static String m(String repositoryUrl) {
        String p02 = p0(d0(repositoryUrl));
        if (!p02.contains("raw.githubusercontent.com") && p02.contains("github.com/")) {
            String str = "";
            String replace = p02.replace("https://", "").replace("http://", "");
            int indexOf = replace.indexOf("github.com/");
            if (indexOf >= 0) {
                replace = replace.substring(indexOf + 11);
            }
            while (replace.startsWith("/")) {
                replace = replace.substring(1);
            }
            boolean contains = replace.contains("/tree/");
            String str2 = f24045b;
            if (contains) {
                String[] split = replace.split("/tree/");
                String str3 = split[0];
                if (split.length > 1) {
                    String str4 = split[1];
                    int indexOf2 = str4.indexOf("/");
                    str2 = indexOf2 >= 0 ? str4.substring(0, indexOf2) : str4;
                    if (indexOf2 >= 0) {
                        str = str4.substring(indexOf2 + 1);
                    }
                }
                replace = str3;
            }
            if (replace.endsWith("/")) {
                replace = replace.substring(0, replace.length() - 1);
            }
            if (replace.endsWith(".git")) {
                replace = replace.substring(0, replace.length() - 4);
            }
            String str5 = "https://raw.githubusercontent.com/" + replace + "/" + b0(str2) + "/";
            if (str.isEmpty()) {
                return str5;
            }
            return str5 + c0(str) + "/";
        }
        return B(o0(p02));
    }

    public static void m0(boolean inProgress) {
        Object obj = f24047d;
        synchronized (obj) {
            try {
                f24048e.set(inProgress);
                if (!inProgress) {
                    obj.notifyAll();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static List<r.b> n(List<i> entries, String basePath) {
        String str;
        if (entries == null) {
            return null;
        }
        String trim = basePath == null ? "" : basePath.trim();
        while (trim.startsWith("/")) {
            trim = trim.substring(1);
        }
        while (trim.endsWith("/")) {
            trim = trim.substring(0, trim.length() - 1);
        }
        boolean isEmpty = trim.isEmpty();
        HashMap hashMap = new HashMap();
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        HashSet hashSet = new HashSet();
        for (i iVar : entries) {
            if (iVar != null && (str = iVar.f24078a) != null && !str.trim().isEmpty()) {
                String str2 = iVar.f24078a;
                if (!isEmpty) {
                    if (!str2.equals(trim)) {
                        if (str2.startsWith(trim + "/")) {
                            str2 = str2.substring(trim.length() + 1);
                        }
                    }
                }
                if (!str2.isEmpty()) {
                    A(str2, "tree".equalsIgnoreCase(iVar.f24079b), hashMap, steppedArrayList, hashSet);
                }
            }
        }
        return steppedArrayList;
    }

    public static List<String> n0(String tags) {
        if (tags == null) {
            return Collections.emptyList();
        }
        String trim = tags.trim();
        if (trim.isEmpty()) {
            return Collections.emptyList();
        }
        String[] split = trim.split("[,;]");
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (String str : split) {
            String lowerCase = str.trim().toLowerCase(Locale.ROOT);
            if (!lowerCase.isEmpty()) {
                steppedArrayList.add(lowerCase);
            }
        }
        return steppedArrayList;
    }

    public static void o() {
        if (f24048e.get()) {
            return;
        }
        m0(true);
        new Thread(new a()).start();
    }

    public static String o0(String url) {
        int lastIndexOf = url.lastIndexOf(47);
        if (lastIndexOf <= 0) {
            return url;
        }
        int i10 = lastIndexOf + 1;
        return url.substring(i10).contains(".") ? url.substring(0, i10) : url;
    }

    public static void p() {
        Context t10 = N7.c.t();
        if (t10 == null) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        C8.a aVar = W7.b.f27306f;
        sb2.append(aVar.f2458a.g(t10));
        sb2.append("/packagemanager/version.txt");
        File file = new File(sb2.toString());
        if (file.exists()) {
            file.delete();
        }
        File file2 = new File(aVar.f2458a.g(t10) + "/packagemanager/database.json");
        if (file2.exists()) {
            file2.delete();
        }
    }

    public static String p0(String url) {
        int indexOf = url.indexOf("?");
        if (indexOf >= 0) {
            url = url.substring(0, indexOf);
        }
        int indexOf2 = url.indexOf(C16181m.f130230g);
        return indexOf2 >= 0 ? url.substring(0, indexOf2) : url;
    }

    public static String q(String base, String leaf) {
        String c02 = c0(base);
        String c03 = c0(leaf);
        if (c02.isEmpty()) {
            return c03;
        }
        if (c03.isEmpty()) {
            return c02;
        }
        return c02 + "/" + c03;
    }

    public static void q0() {
        synchronized (f24047d) {
            while (f24048e.get()) {
                try {
                    f24047d.wait(200L);
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    public static boolean r(Package pack, List<String> requiredTags) {
        if (pack != null && requiredTags != null && !requiredTags.isEmpty()) {
            List<String> n02 = n0(pack.tags);
            if (n02.isEmpty()) {
                return false;
            }
            for (int i10 = 0; i10 < requiredTags.size(); i10++) {
                String str = requiredTags.get(i10);
                if (str != null && !str.isEmpty()) {
                    for (int i11 = 0; i11 < n02.size(); i11++) {
                        if (str.equals(n02.get(i11))) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public static String s(String value) {
        if (value == null || value.isEmpty()) {
            return value;
        }
        int i10 = 0;
        String str = value;
        while (str.startsWith("base64@") && i10 < 3) {
            try {
                str = Vc.b.a(str.replace("base64@", ""));
                i10++;
            } catch (Exception unused) {
                return value;
            }
        }
        if (i10 > 0) {
            return str;
        }
        try {
            return Vc.b.a(str);
        } catch (Exception unused2) {
            return value;
        }
    }

    public static void t(List<String> urls, int index, File destinationFolder, String fileName, C12739g.d listener, String lastError) throws IOException {
        if (listener == null) {
            return;
        }
        if (urls == null || index >= urls.size()) {
            if (lastError == null) {
                lastError = "Failed to download file";
            }
            listener.onError(lastError);
            return;
        }
        String str = urls.get(index);
        if (str == null || str.trim().isEmpty()) {
            t(urls, index + 1, destinationFolder, fileName, listener, lastError);
            return;
        }
        File file = new File(destinationFolder, fileName);
        if (!file.exists() || file.delete()) {
            C12739g.a(str, destinationFolder, fileName, new C0573b(listener, urls, index, destinationFolder, fileName));
        } else {
            listener.onError("Failed to prepare destination file");
        }
    }

    public static void u(List<String> urls, File destinationFolder, String fileName, C12739g.d listener) throws IOException {
        t(urls, 0, destinationFolder, fileName, listener, null);
    }

    public static String v(List<String> urls) {
        if (urls != null && !urls.isEmpty()) {
            for (int i10 = 0; i10 < urls.size(); i10++) {
                String str = urls.get(i10);
                if (str != null && !str.trim().isEmpty()) {
                    try {
                        String w10 = w(str);
                        if (w10 != null) {
                            return w10;
                        }
                    } catch (Exception unused) {
                        continue;
                    }
                }
            }
        }
        return null;
    }

    public static String w(String url) throws Exception {
        Throwable th2;
        HttpURLConnection httpURLConnection;
        try {
            httpURLConnection = (HttpURLConnection) new URL(url).openConnection();
        } catch (Throwable th3) {
            th2 = th3;
            httpURLConnection = null;
        }
        try {
            httpURLConnection.setRequestMethod(FetchCoreUtils.GET_REQUEST_METHOD);
            httpURLConnection.setConnectTimeout(15000);
            httpURLConnection.setReadTimeout(15000);
            httpURLConnection.setRequestProperty("User-Agent", f24046c);
            InputStream inputStream = httpURLConnection.getInputStream();
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                try {
                    StringBuilder sb2 = new StringBuilder();
                    String readLine = bufferedReader.readLine();
                    int i10 = 0;
                    while (readLine != null) {
                        if (i10 > 0) {
                            sb2.append("\n");
                        }
                        sb2.append(readLine);
                        readLine = bufferedReader.readLine();
                        i10++;
                    }
                    String sb3 = sb2.toString();
                    bufferedReader.close();
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    httpURLConnection.disconnect();
                    return sb3;
                } finally {
                }
            } finally {
            }
        } catch (Throwable th4) {
            th2 = th4;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            throw th2;
        }
    }

    public static String x(String url) throws Exception {
        Throwable th2;
        HttpURLConnection httpURLConnection;
        try {
            httpURLConnection = (HttpURLConnection) new URL(url).openConnection();
            try {
                httpURLConnection.setRequestMethod(FetchCoreUtils.GET_REQUEST_METHOD);
                httpURLConnection.setConnectTimeout(15000);
                httpURLConnection.setReadTimeout(15000);
                httpURLConnection.setRequestProperty("User-Agent", f24046c);
                httpURLConnection.setRequestProperty("Accept", "application/vnd.github+json");
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode >= 200 && responseCode < 300) {
                    InputStream inputStream = httpURLConnection.getInputStream();
                    try {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                        try {
                            StringBuilder sb2 = new StringBuilder();
                            String readLine = bufferedReader.readLine();
                            int i10 = 0;
                            while (readLine != null) {
                                if (i10 > 0) {
                                    sb2.append("\n");
                                }
                                sb2.append(readLine);
                                readLine = bufferedReader.readLine();
                                i10++;
                            }
                            String sb3 = sb2.toString();
                            bufferedReader.close();
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            httpURLConnection.disconnect();
                            return sb3;
                        } finally {
                        }
                    } finally {
                    }
                }
                httpURLConnection.disconnect();
                return null;
            } catch (Throwable th3) {
                th2 = th3;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th2;
            }
        } catch (Throwable th4) {
            th2 = th4;
            httpURLConnection = null;
        }
    }

    public static void y() {
        z(false);
    }

    public static void z(boolean force) {
        long currentTimeMillis = System.currentTimeMillis();
        if (!force) {
            long j10 = currentTimeMillis - f24050g;
            if (f24050g > 0 && j10 >= 0 && j10 < 600000) {
                return;
            }
        }
        f24050g = currentTimeMillis;
        o();
    }
}
