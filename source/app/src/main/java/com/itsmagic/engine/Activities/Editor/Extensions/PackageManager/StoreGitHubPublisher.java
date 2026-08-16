package com.itsmagic.engine.Activities.Editor.Extensions.PackageManager;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.provider.Telephony;
import android.util.Base64;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.u;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.tonyodev.fetch2.util.FetchDefaults;
import com.tonyodev.fetch2core.FetchCoreUtils;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import vd.C15833b;
import w2.C15883c;
import yd.C16181m;

public class StoreGitHubPublisher {

    public static final String f70107a = "ITsMagicEngine";

    public static final String f70108b = "https://api.github.com";

    public static final String f70109c = "ITsMagic-Software";

    public static final String f70110d = "Packages-Manifest";

    public static final int f70111e = 1920;

    public static final int f70112f = 1080;

    public static final int f70113g = 1080;

    public static final int f70114h = 1920;

    public static final int f70115i = 1048576;

    public static final Gson f70116j = new GsonBuilder().setPrettyPrinting().create();

    public enum b {
        InvalidToken,
        UserMismatch,
        RepositoryAlreadyExists,
        PullRequestAlreadyExists,
        Network,
        Generic
    }

    public static class c {

        public final String f70117a;

        public c(String token) {
            this.f70117a = token == null ? "" : token.trim();
        }

        public final void a(StringBuilder builder, JsonObject object, String fieldName) {
            if (builder != null && object != null && fieldName != null && object.has(fieldName)) {
                try {
                    JsonElement jsonElement = object.get(fieldName);
                    if (jsonElement != null && !jsonElement.isJsonNull()) {
                        String asString = jsonElement.isJsonPrimitive() ? jsonElement.getAsString() : jsonElement.toString();
                        if (asString != null && !asString.trim().isEmpty()) {
                            if (builder.length() > 0) {
                                builder.append(C15883c.f126249O);
                            }
                            builder.append(fieldName);
                            builder.append('=');
                            builder.append(asString.trim());
                        }
                    }
                } catch (Exception unused) {
                }
            }
        }

        public final String b(String method, String url, int status, String response) {
            String f10 = f(response);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("GitHub API ");
            sb2.append(method);
            sb2.append(" ");
            sb2.append(url);
            sb2.append(" failed with HTTP ");
            sb2.append(status);
            if (f10 != null && !f10.trim().isEmpty()) {
                sb2.append(": ");
                sb2.append(f10.trim());
            }
            return sb2.toString();
        }

        public void c(String owner, String repository, String branch, String sha) throws PublishException {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("ref", "refs/heads/" + branch);
            jsonObject.addProperty("sha", sha);
            p("POST", "https://api.github.com/repos/" + owner + "/" + repository + "/git/refs", jsonObject.toString(), JsonObject.class);
        }

        public i d(String owner, String currentUserName, String repositoryName, String title, String description) throws PublishException {
            String str;
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("name", repositoryName);
            jsonObject.addProperty("description", StoreGitHubPublisher.I(description).isEmpty() ? StoreGitHubPublisher.I(title) : StoreGitHubPublisher.I(description));
            jsonObject.addProperty("private", Boolean.FALSE);
            jsonObject.addProperty("auto_init", Boolean.TRUE);
            String trim = StoreGitHubPublisher.I(owner).trim();
            if (trim.isEmpty() || trim.equalsIgnoreCase(StoreGitHubPublisher.I(currentUserName).trim())) {
                str = "https://api.github.com/user/repos";
            } else {
                str = "https://api.github.com/orgs/" + StoreGitHubPublisher.u(trim) + "/repos";
            }
            return (i) p("POST", str, jsonObject.toString(), i.class);
        }

        public i e(String owner, String repository, String currentUser) throws PublishException {
            i r10 = r(currentUser, repository);
            if (r10 != null && r10.f70128f) {
                return r10;
            }
            p("POST", "https://api.github.com/repos/" + owner + "/" + repository + "/forks", FetchDefaults.EMPTY_JSON_OBJECT_STRING, i.class);
            for (int i10 = 0; i10 < 20; i10++) {
                i r11 = r(currentUser, repository);
                if (r11 != null) {
                    return r11;
                }
                try {
                    Thread.sleep(C15833b.f121488E);
                } catch (InterruptedException e10) {
                    Thread.currentThread().interrupt();
                    throw new PublishException(b.Network, "Interrupted while waiting for fork", e10);
                }
            }
            throw new PublishException(b.Generic, "Failed to create repository fork");
        }

        public final String f(String response) {
            String asString;
            try {
                JsonObject asJsonObject = JsonParser.parseString(response).getAsJsonObject();
                StringBuilder sb2 = new StringBuilder();
                if (asJsonObject.has("message")) {
                    sb2.append(asJsonObject.get("message").getAsString());
                }
                if (asJsonObject.has("errors") && asJsonObject.get("errors").isJsonArray()) {
                    JsonArray asJsonArray = asJsonObject.getAsJsonArray("errors");
                    for (int i10 = 0; i10 < asJsonArray.size(); i10++) {
                        String g10 = g(asJsonArray.get(i10));
                        if (g10 != null && !g10.trim().isEmpty()) {
                            if (sb2.length() > 0) {
                                sb2.append(" | ");
                            }
                            sb2.append(g10.trim());
                        }
                    }
                }
                if (asJsonObject.has("documentation_url") && (asString = asJsonObject.get("documentation_url").getAsString()) != null && !asString.trim().isEmpty()) {
                    if (sb2.length() > 0) {
                        sb2.append(" | ");
                    }
                    sb2.append("docs: ");
                    sb2.append(asString.trim());
                }
                return sb2.length() > 0 ? sb2.toString() : response;
            } catch (Exception unused) {
                return response;
            }
        }

        public final String g(JsonElement element) {
            if (element == null || element.isJsonNull()) {
                return null;
            }
            if (element.isJsonPrimitive()) {
                return element.getAsString();
            }
            if (element.isJsonObject()) {
                JsonObject asJsonObject = element.getAsJsonObject();
                StringBuilder sb2 = new StringBuilder();
                a(sb2, asJsonObject, "resource");
                a(sb2, asJsonObject, "field");
                a(sb2, asJsonObject, "code");
                a(sb2, asJsonObject, "message");
                return sb2.toString();
            }
            if (!element.isJsonArray()) {
                return element.toString();
            }
            JsonArray asJsonArray = element.getAsJsonArray();
            StringBuilder sb3 = new StringBuilder();
            for (int i10 = 0; i10 < asJsonArray.size(); i10++) {
                String g10 = g(asJsonArray.get(i10));
                if (g10 != null && !g10.trim().isEmpty()) {
                    if (sb3.length() > 0) {
                        sb3.append(", ");
                    }
                    sb3.append(g10.trim());
                }
            }
            return sb3.toString();
        }

        public String h(String owner, String repository, String branch) throws PublishException {
            h hVar;
            String str;
            g gVar = (g) p(FetchCoreUtils.GET_REQUEST_METHOD, "https://api.github.com/repos/" + owner + "/" + repository + "/git/ref/heads/" + StoreGitHubPublisher.s(branch), null, g.class);
            if (gVar == null || (hVar = gVar.f70121a) == null || (str = hVar.f70122a) == null || str.trim().isEmpty()) {
                throw new PublishException(b.Generic, "Failed to resolve repository branch");
            }
            return gVar.f70121a.f70122a;
        }

        public l i() throws PublishException {
            return (l) p(FetchCoreUtils.GET_REQUEST_METHOD, "https://api.github.com/user", null, l.class);
        }

        public i j(String owner, String repository) throws PublishException {
            return (i) p(FetchCoreUtils.GET_REQUEST_METHOD, "https://api.github.com/repos/" + owner + "/" + repository, null, i.class);
        }

        public e[] k() throws PublishException {
            return (e[]) p(FetchCoreUtils.GET_REQUEST_METHOD, "https://api.github.com/user/orgs?per_page=100", null, e[].class);
        }

        public final PublishException l(String method, String url, int status, String response) {
            String b10 = b(method, url, status, response);
            if (status == 401) {
                return new PublishException(b.InvalidToken, b10);
            }
            String lowerCase = b10 == null ? "" : b10.toLowerCase(Locale.ROOT);
            if (status == 422 && lowerCase.contains("name already exists")) {
                return new PublishException(b.RepositoryAlreadyExists, b10);
            }
            if (status == 422 && lowerCase.contains("pull request already exists")) {
                return new PublishException(b.PullRequestAlreadyExists, b10);
            }
            b bVar = b.Generic;
            if (b10 == null || b10.trim().isEmpty()) {
                b10 = "GitHub request failed";
            }
            return new PublishException(bVar, b10);
        }

        public f m(String owner, String repository, String title, String body, String head, String base) throws PublishException {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("title", title);
            jsonObject.addProperty(Telephony.TextBasedSmsColumns.BODY, body);
            jsonObject.addProperty("head", head);
            jsonObject.addProperty("base", base);
            return (f) p("POST", "https://api.github.com/repos/" + owner + "/" + repository + "/pulls", jsonObject.toString(), f.class);
        }

        public void n(String owner, String repository, String path, byte[] content, String commitMessage, String branch) throws PublishException {
            String str;
            d q10 = q(owner, repository, path, branch);
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("message", commitMessage);
            jsonObject.addProperty("content", Base64.encodeToString(content, 2));
            jsonObject.addProperty("branch", branch);
            if (q10 != null && (str = q10.f70118a) != null && !str.trim().isEmpty()) {
                jsonObject.addProperty("sha", q10.f70118a);
            }
            try {
                p("PUT", "https://api.github.com/repos/" + owner + "/" + repository + "/contents/" + StoreGitHubPublisher.t(path), jsonObject.toString(), JsonObject.class);
            } catch (PublishException e10) {
                throw new PublishException(e10.getReason(), "Failed to upload file '" + path + "' to " + owner + "/" + repository + "@" + branch + ": " + e10.getMessage(), e10);
            }
        }

        public final String o(InputStream inputStream) throws Exception {
            if (inputStream == null) {
                return "";
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            try {
                StringBuilder sb2 = new StringBuilder();
                String readLine = bufferedReader.readLine();
                boolean z10 = true;
                while (readLine != null) {
                    if (!z10) {
                        sb2.append('\n');
                    }
                    sb2.append(readLine);
                    readLine = bufferedReader.readLine();
                    z10 = false;
                }
                String sb3 = sb2.toString();
                bufferedReader.close();
                return sb3;
            } catch (Throwable th2) {
                bufferedReader.close();
                throw th2;
            }
        }

        public final <T> T p(String str, String str2, String str3, Class<T> cls) throws PublishException {
            HttpURLConnection httpURLConnection;
            HttpURLConnection httpURLConnection2 = null;
            try {
                try {
                    httpURLConnection = (HttpURLConnection) new URL(str2).openConnection();
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (PublishException e10) {
                throw e10;
            } catch (Exception e11) {
                e = e11;
            }
            try {
                httpURLConnection.setRequestMethod(str);
                httpURLConnection.setConnectTimeout(20000);
                httpURLConnection.setReadTimeout(20000);
                httpURLConnection.setRequestProperty("User-Agent", StoreGitHubPublisher.f70107a);
                httpURLConnection.setRequestProperty("Accept", "application/vnd.github+json");
                httpURLConnection.setRequestProperty("Authorization", "Bearer " + this.f70117a);
                httpURLConnection.setRequestProperty("X-GitHub-Api-Version", "2022-11-28");
                if (str3 != null) {
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
                    OutputStream outputStream = httpURLConnection.getOutputStream();
                    try {
                        outputStream.write(str3.getBytes(StandardCharsets.UTF_8));
                        outputStream.close();
                    } catch (Throwable th3) {
                        outputStream.close();
                        throw th3;
                    }
                }
                int responseCode = httpURLConnection.getResponseCode();
                String o10 = o((responseCode < 200 || responseCode >= 300) ? httpURLConnection.getErrorStream() : httpURLConnection.getInputStream());
                if (responseCode < 200 || responseCode >= 300) {
                    throw l(str, str2, responseCode, o10);
                }
                if (cls != null && o10 != null && !o10.trim().isEmpty() && cls != Void.class) {
                    T t10 = (T) StoreGitHubPublisher.f70116j.fromJson(o10, (Class) cls);
                    httpURLConnection.disconnect();
                    return t10;
                }
                httpURLConnection.disconnect();
                return null;
            } catch (PublishException e12) {
                throw e12;
            } catch (Exception e13) {
                e = e13;
                throw new PublishException(b.Network, "GitHub request failed", e);
            } catch (Throwable th4) {
                th = th4;
                httpURLConnection2 = httpURLConnection;
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
                throw th;
            }
        }

        public final d q(String owner, String repository, String path, String branch) throws PublishException {
            try {
                return (d) p(FetchCoreUtils.GET_REQUEST_METHOD, "https://api.github.com/repos/" + owner + "/" + repository + "/contents/" + StoreGitHubPublisher.t(path) + "?ref=" + StoreGitHubPublisher.u(branch), null, d.class);
            } catch (PublishException e10) {
                if (e10.getReason() == b.Network || e10.getReason() == b.InvalidToken) {
                    throw e10;
                }
                return null;
            }
        }

        public i r(String owner, String repository) throws PublishException {
            try {
                return j(owner, repository);
            } catch (PublishException e10) {
                if (e10.getReason() == b.Network || e10.getReason() == b.InvalidToken) {
                    throw e10;
                }
                return null;
            }
        }
    }

    public static class d {

        public String f70118a;
    }

    public static class e {

        public String f70119a;
    }

    public static class f {

        public String f70120a;

        public String a() {
            return this.f70120a;
        }
    }

    public static class g {

        public h f70121a;
    }

    public static class h {

        public String f70122a;
    }

    public static class i {

        public String f70123a;

        public String f70124b;

        public String f70125c;

        public String f70126d;

        public k f70127e;

        public boolean f70128f;

        public String a() {
            String str = this.f70124b;
            if (str != null && !str.trim().isEmpty()) {
                return this.f70124b;
            }
            String str2 = this.f70125c;
            return (str2 == null || str2.trim().isEmpty()) ? T5.b.f24045b : this.f70125c;
        }

        public String b() {
            return this.f70126d;
        }

        public String c() {
            k kVar = this.f70127e;
            if (kVar == null) {
                return null;
            }
            return kVar.f70131a;
        }
    }

    public static class j {

        public final String f70129a;

        public final String f70130b;

        public j(String owner, String name) {
            this.f70129a = owner == null ? "" : owner.trim();
            this.f70130b = name != null ? name.trim() : "";
        }
    }

    public static class k {

        public String f70131a;
    }

    public static class l {

        public String f70132a;
    }

    public static class m {

        public String f70133a;

        public String f70134b;

        public String f70135c;

        public int f70136d;

        public String f70137e;

        public boolean f70138f;

        public String f70139g;

        public String f70140h;

        public int f70141i;

        public List<String> f70142j;

        public m() {
            this.f70142j = new SteppedArrayList();
        }
    }

    public static class n {

        public final String f70143a;

        public final byte[] f70144b;

        public n(String fileName, byte[] bytes) {
            this.f70143a = fileName;
            this.f70144b = bytes;
        }
    }

    public interface o {
        void a(p stage, int current, int total);
    }

    public enum p {
        Authenticating,
        CreatingRepository,
        UploadingProjectFiles,
        ForkingManifestRepository,
        UploadingManifestFiles,
        OpeningPullRequest
    }

    public static class q {

        public String f70145a;

        public String f70146b;

        public String f70147c;

        public String f70148d;

        public String f70149e;

        public String f70150f;

        public String f70151g;

        public String f70152h;

        public boolean f70153i;

        public s f70154j;

        public final List<s> f70155k = new SteppedArrayList();

        public u.h f70156l;
    }

    public static class r {

        public String f70157a;

        public String f70158b;

        public String f70159c;

        public String f70160d;
    }

    public static class s {

        public final String f70161a;

        public final File f70162b;

        public s(String originalName, File file) {
            this.f70161a = originalName;
            this.f70162b = file;
        }
    }

    public static class t {

        public final LinkedHashMap<String, byte[]> f70163a;

        public final List<String> f70164b;

        public t() {
            this.f70163a = new LinkedHashMap<>();
            this.f70164b = new SteppedArrayList();
        }
    }

    public static class u {

        public String f70165a;

        public String f70166b;

        public String f70167c;

        public String f70168d;

        public String f70169e;

        public u.h f70170f;
    }

    public static j A(String repositoryUrl) {
        String replace;
        int indexOf;
        if (repositoryUrl == null || repositoryUrl.trim().isEmpty() || (indexOf = (replace = repositoryUrl.trim().replace("https://", "").replace("http://", "")).indexOf("github.com/")) < 0) {
            return null;
        }
        String substring = replace.substring(indexOf + 11);
        while (substring.startsWith("/")) {
            substring = substring.substring(1);
        }
        if (substring.endsWith("/")) {
            substring = substring.substring(0, substring.length() - 1);
        }
        if (substring.endsWith(".git")) {
            substring = substring.substring(0, substring.length() - 4);
        }
        String[] split = substring.split("/");
        if (split.length < 2) {
            return null;
        }
        return new j(split[0], split[1]);
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c1, code lost:
    
        r1 = new com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.StoreGitHubPublisher.n(r11 + ".jpg", r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00d7, code lost:
    
        if (r5 == null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00d9, code lost:
    
        if (r5 == r3) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00df, code lost:
    
        if (r5.isRecycled() != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00e1, code lost:
    
        r5.recycle();
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00e4, code lost:
    
        r3.recycle();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00e7, code lost:
    
        if (r0 == r3) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00ed, code lost:
    
        if (r0.isRecycled() != false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00ef, code lost:
    
        r0.recycle();
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00f2, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0139, code lost:
    
        if (r5 == r3) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x013f, code lost:
    
        if (r5.isRecycled() != false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0141, code lost:
    
        r5.recycle();
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0144, code lost:
    
        r3.recycle();
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0147, code lost:
    
        if (r0 == r3) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x014d, code lost:
    
        if (r0.isRecycled() != false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x014f, code lost:
    
        r0.recycle();
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x016e, code lost:
    
        throw new com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.StoreGitHubPublisher.PublishException(com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.StoreGitHubPublisher.b.Generic, "Failed to resize image to 1 MB: " + r10.f70162b.getAbsolutePath());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static n B(s image, String baseName) throws PublishException {
        File file;
        Bitmap bitmap;
        if (image == null || (file = image.f70162b) == null) {
            throw new PublishException(b.Generic, "Invalid image file");
        }
        Bitmap decodeFile = BitmapFactory.decodeFile(file.getAbsolutePath());
        if (decodeFile == null) {
            byte[] D10 = D(image.f70162b);
            if (D10.length > 1048576) {
                throw new PublishException(b.Generic, "Failed to resize image to 1 MB: " + image.f70162b.getAbsolutePath());
            }
            String x10 = x(image.f70161a);
            if (!"png".equals(x10) && !"jpg".equals(x10)) {
                x10 = "jpg";
            }
            return new n(baseName + "." + x10, D10);
        }
        Bitmap v10 = v(decodeFile);
        try {
            byte[] q10 = q(v10, Bitmap.CompressFormat.PNG, 100, false);
            if (v10.hasAlpha() && q10.length <= 1048576) {
                n nVar = new n(baseName + ".png", q10);
                v10.recycle();
                if (decodeFile != v10 && !decodeFile.isRecycled()) {
                    decodeFile.recycle();
                }
                return nVar;
            }
            float f10 = 1.0f;
            bitmap = v10;
            loop0: while (true) {
                for (int i10 = 92; i10 >= 35; i10 -= 7) {
                    try {
                        try {
                            byte[] q11 = q(bitmap, Bitmap.CompressFormat.JPEG, i10, true);
                            if (q11.length <= 1048576) {
                                break loop0;
                            }
                        } catch (OutOfMemoryError e10) {
                            e = e10;
                            throw new PublishException(b.Generic, "Failed to resize image: " + image.f70162b.getAbsolutePath(), e);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (bitmap != null && bitmap != v10 && !bitmap.isRecycled()) {
                            bitmap.recycle();
                        }
                        v10.recycle();
                        if (decodeFile != v10 && !decodeFile.isRecycled()) {
                            decodeFile.recycle();
                        }
                        throw th;
                    }
                }
                if (bitmap.getWidth() <= 128 || bitmap.getHeight() <= 128) {
                    break;
                }
                f10 *= 0.85f;
                Bitmap createScaledBitmap = Bitmap.createScaledBitmap(v10, Math.max(128, Math.round(v10.getWidth() * f10)), Math.max(128, Math.round(v10.getHeight() * f10)), true);
                if (bitmap != v10 && bitmap != createScaledBitmap) {
                    bitmap.recycle();
                }
                bitmap = createScaledBitmap;
            }
        } catch (OutOfMemoryError e11) {
            e = e11;
            bitmap = v10;
        } catch (Throwable th3) {
            th = th3;
            bitmap = v10;
            if (bitmap != null) {
                bitmap.recycle();
            }
            v10.recycle();
            if (decodeFile != v10) {
                decodeFile.recycle();
            }
            throw th;
        }
    }

    public static r C(Context context, q request, o listener) throws PublishException {
        String str;
        String str2;
        if (context == null || request == null) {
            throw new PublishException(b.Generic, "Invalid publish request");
        }
        c cVar = new c(request.f70145a);
        z(listener, p.Authenticating, 0, 0);
        l i10 = cVar.i();
        if (i10 == null || (str = i10.f70132a) == null || str.trim().isEmpty()) {
            throw new PublishException(b.InvalidToken, "Failed to authenticate GitHub user");
        }
        String trim = i10.f70132a.trim();
        String F10 = F(request, trim);
        z(listener, p.CreatingRepository, 0, 0);
        i d10 = cVar.d(F10, trim, request.f70148d, request.f70147c, request.f70150f);
        String c10 = d10.c();
        if (c10 != null && !c10.trim().isEmpty()) {
            F10 = c10.trim();
        }
        String str3 = F10;
        String a10 = d10.a();
        String b10 = d10.b();
        t n10 = n(request, b10);
        LinkedHashMap<String, byte[]> j10 = j(context, request, n10);
        Iterator<String> it = j10.o().iterator();
        int i11 = 0;
        while (true) {
            str2 = "Add ";
            if (!it.hasNext()) {
                break;
            }
            String next = it.next();
            int i12 = i11 + 1;
            z(listener, p.UploadingProjectFiles, i12, j10.size());
            cVar.n(str3, d10.f70123a, next, j10.get(next), "Add " + next, a10);
            i11 = i12;
            n10 = n10;
            b10 = b10;
        }
        String str4 = b10;
        z(listener, p.ForkingManifestRepository, 0, 0);
        i e10 = cVar.e(f70109c, f70110d, trim);
        String r10 = r(trim, request.f70148d);
        cVar.c(trim, f70110d, r10, cVar.h(trim, f70110d, H(e10.a())));
        LinkedHashMap<String, byte[]> h10 = h(request, str3, n10);
        int i13 = 0;
        for (String str5 : h10.o()) {
            int i14 = i13 + 1;
            z(listener, p.UploadingManifestFiles, i14, h10.size());
            cVar.n(trim, f70110d, str5, h10.get(str5), str2 + str5, r10);
            h10 = h10;
            str2 = str2;
            i13 = i14;
        }
        z(listener, p.OpeningPullRequest, 0, 0);
        String a11 = cVar.j(f70109c, f70110d).a();
        f m10 = cVar.m(f70109c, f70110d, l(str3, request.f70148d), k(request, str4, str3), trim + b3.s.f32937c + r10, H(a11));
        r rVar = new r();
        rVar.f70157a = str3;
        rVar.f70158b = d10.f70123a;
        rVar.f70159c = str4;
        rVar.f70160d = m10.a();
        return rVar;
    }

    public static byte[] D(File file) throws PublishException {
        if (file == null) {
            throw new PublishException(b.Generic, "Invalid file");
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr = new byte[8192];
                for (int read = fileInputStream.read(bArr); read != -1; read = fileInputStream.read(bArr)) {
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                fileInputStream.close();
                byteArrayOutputStream.close();
                return byteArray;
            } catch (Throwable th2) {
                fileInputStream.close();
                byteArrayOutputStream.close();
                throw th2;
            }
        } catch (Exception e10) {
            throw new PublishException(b.Generic, "Failed to read file: " + file.getAbsolutePath(), e10);
        }
    }

    public static String E(String path) {
        if (path == null) {
            return "";
        }
        int lastIndexOf = path.lastIndexOf(46);
        return lastIndexOf <= 0 ? path : path.substring(0, lastIndexOf);
    }

    public static String F(q request, String currentUserName) {
        String trim = request == null ? "" : I(request.f70149e).trim();
        return trim.isEmpty() ? currentUserName : trim;
    }

    public static j G(u request) throws PublishException {
        String trim = I(request.f70167c).trim();
        String trim2 = I(request.f70168d).trim();
        if (!trim.isEmpty() && !trim2.isEmpty()) {
            return new j(trim, trim2);
        }
        j A10 = A(request.f70169e);
        if (A10 != null) {
            return A10;
        }
        throw new PublishException(b.Generic, "Missing GitHub repository information for this project");
    }

    public static String H(String branch) {
        return (branch == null || branch.trim().isEmpty()) ? T5.b.f24045b : branch.trim();
    }

    public static String I(String value) {
        return value == null ? "" : value;
    }

    public static String J(String value) {
        return value == null ? "item" : value.trim().toLowerCase(Locale.ROOT).replaceAll("[^a-z0-9._-]", "-");
    }

    public static r K(Context context, u request, o listener) throws PublishException {
        String str;
        if (context == null || request == null) {
            throw new PublishException(b.Generic, "Invalid update request");
        }
        c cVar = new c(request.f70165a);
        int i10 = 0;
        z(listener, p.Authenticating, 0, 0);
        l i11 = cVar.i();
        if (i11 == null || (str = i11.f70132a) == null || str.trim().isEmpty()) {
            throw new PublishException(b.InvalidToken, "Failed to authenticate GitHub user");
        }
        j G10 = G(request);
        i j10 = cVar.j(G10.f70129a, G10.f70130b);
        String a10 = j10.a();
        LinkedHashMap<String, byte[]> i12 = i(context, request.f70166b, request.f70170f);
        for (String str2 : i12.o()) {
            int i13 = i10 + 1;
            z(listener, p.UploadingProjectFiles, i13, i12.size());
            cVar.n(G10.f70129a, G10.f70130b, str2, i12.get(str2), "Update " + str2, a10);
            i10 = i13;
        }
        r rVar = new r();
        rVar.f70157a = G10.f70129a;
        rVar.f70158b = G10.f70130b;
        rVar.f70159c = j10.b();
        return rVar;
    }

    public static void f(String projectRoot, File file, LinkedHashMap<String, byte[]> out) throws PublishException {
        String y10 = y(projectRoot, file);
        if (y10 == null || y10.trim().isEmpty() || out.containsKey(y10)) {
            return;
        }
        out.put(y10, D(file));
    }

    public static void g(String projectRoot, File file, LinkedHashMap<String, byte[]> out) throws PublishException {
        if (file == null || !file.exists()) {
            return;
        }
        if (!file.isDirectory()) {
            f(projectRoot, file, out);
            return;
        }
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return;
        }
        for (File file2 : listFiles) {
            g(projectRoot, file2, out);
        }
    }

    public static LinkedHashMap<String, byte[]> h(q request, String repositoryOwner, t storeMetadata) {
        LinkedHashMap<String, byte[]> linkedHashMap = new LinkedHashMap<>();
        String str = "packages/" + repositoryOwner + "/" + request.f70148d + "/";
        if (storeMetadata != null) {
            for (String str2 : storeMetadata.f70163a.o()) {
                linkedHashMap.put(str + str2, storeMetadata.f70163a.get(str2));
            }
        }
        return linkedHashMap;
    }

    public static LinkedHashMap<String, byte[]> i(Context context, String projectRootPath, u.h importData) throws PublishException {
        LinkedHashMap<String, byte[]> linkedHashMap = new LinkedHashMap<>();
        if (projectRootPath == null || projectRootPath.trim().isEmpty()) {
            projectRootPath = com.itsmagic.engine.Core.Components.ProjectController.a.S(context);
        }
        if (projectRootPath == null || projectRootPath.trim().isEmpty()) {
            throw new PublishException(b.Generic, "Project root not available");
        }
        p(importData, projectRootPath, linkedHashMap);
        return linkedHashMap;
    }

    public static LinkedHashMap<String, byte[]> j(Context context, q request, t storeMetadata) throws PublishException {
        LinkedHashMap<String, byte[]> linkedHashMap = new LinkedHashMap<>();
        linkedHashMap.putAll(i(context, request.f70146b, request.f70156l));
        linkedHashMap.put("README.md", m(request, storeMetadata).getBytes(StandardCharsets.UTF_8));
        if (storeMetadata != null) {
            for (String str : storeMetadata.f70163a.o()) {
                linkedHashMap.put(".store/" + str, storeMetadata.f70163a.get(str));
            }
        }
        return linkedHashMap;
    }

    public static String k(q request, String repositoryUrl, String repositoryOwner) {
        return "Package path: `packages/" + repositoryOwner + "/" + request.f70148d + "/`\nRepository URL: " + repositoryUrl + "\nImages: " + request.f70155k.size() + "\n\nThis PR was opened automatically using the ITsMagic package submission form.";
    }

    public static String l(String userName, String repositoryName) {
        return "Add package " + userName + "/" + repositoryName;
    }

    public static String m(q request, t storeMetadata) {
        String I10 = I(request.f70147c);
        String I11 = I(request.f70150f);
        String I12 = I(request.f70152h);
        String I13 = I(request.f70151g);
        StringBuilder sb2 = new StringBuilder();
        if (!I10.isEmpty()) {
            sb2.append("# ");
            sb2.append(I10);
            sb2.append("\n\n");
        }
        sb2.append("## Description\n\n");
        if (I11.isEmpty()) {
            I11 = "-";
        }
        sb2.append(I11);
        sb2.append("\n\n");
        sb2.append("## Tags\n\n");
        if (I12.isEmpty()) {
            I12 = "-";
        }
        sb2.append(I12);
        sb2.append("\n\n");
        sb2.append("## License\n\n");
        if (I13.isEmpty()) {
            I13 = "-";
        }
        sb2.append(I13);
        if (storeMetadata != null && !storeMetadata.f70164b.isEmpty()) {
            sb2.append("\n\n## Images\n");
            int i10 = 0;
            while (i10 < storeMetadata.f70164b.size()) {
                String str = storeMetadata.f70164b.get(i10);
                sb2.append("\n");
                sb2.append("![Image ");
                i10++;
                sb2.append(i10);
                sb2.append("](.store/");
                sb2.append(str);
                sb2.append(")\n");
            }
        }
        return sb2.toString();
    }

    public static t n(q request, String repositoryUrl) throws PublishException {
        t tVar = new t();
        n B10 = B(request.f70154j, "thumb");
        String str = B10.f70143a;
        tVar.f70163a.put(str, B10.f70144b);
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        int i10 = 0;
        while (i10 < request.f70155k.size()) {
            s sVar = request.f70155k.get(i10);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("img");
            i10++;
            sb2.append(i10);
            n B11 = B(sVar, sb2.toString());
            steppedArrayList.add(B11.f70143a);
            tVar.f70163a.put(B11.f70143a, B11.f70144b);
        }
        tVar.f70164b.addAll(steppedArrayList);
        m mVar = new m();
        mVar.f70133a = Vc.b.b(request.f70147c);
        mVar.f70134b = Vc.b.b(request.f70150f);
        mVar.f70135c = request.f70152h;
        mVar.f70136d = 1;
        mVar.f70137e = repositoryUrl;
        mVar.f70138f = request.f70153i;
        mVar.f70139g = new SimpleDateFormat("dd/MM/yyyy", Locale.ROOT).format(new Date());
        mVar.f70140h = str;
        mVar.f70141i = 2;
        mVar.f70142j.addAll(steppedArrayList);
        tVar.f70163a.put("manifest.json", f70116j.toJson(mVar).getBytes(StandardCharsets.UTF_8));
        return tVar;
    }

    public static void o(u.i importFile, String projectRoot, LinkedHashMap<String, byte[]> out) throws PublishException {
        if (importFile == null) {
            return;
        }
        if (importFile.g()) {
            for (int i10 = 0; i10 < importFile.c(); i10++) {
                o(importFile.b(i10), projectRoot, out);
            }
            return;
        }
        File file = new File(importFile.e());
        if (!file.exists() || file.isDirectory()) {
            return;
        }
        f(projectRoot, file, out);
        File file2 = new File(E(file.getAbsolutePath()) + ".meta");
        if (file2.exists()) {
            g(projectRoot, file2, out);
        }
        File file3 = new File(file.getAbsolutePath() + ".config");
        if (file3.exists()) {
            f(projectRoot, file3, out);
        }
        File file4 = new File(E(file.getAbsolutePath()) + ".texture");
        if (file4.exists()) {
            f(projectRoot, file4, out);
        }
    }

    public static void p(u.h importData, String projectRoot, LinkedHashMap<String, byte[]> out) throws PublishException {
        if (importData == null || importData.a() == null) {
            return;
        }
        for (int i10 = 0; i10 < importData.a().size(); i10++) {
            o(importData.a().get(i10), projectRoot, out);
        }
    }

    public static byte[] q(Bitmap bitmap, Bitmap.CompressFormat format, int quality, boolean flattenAlpha) throws PublishException {
        Bitmap bitmap2;
        if (flattenAlpha && bitmap.hasAlpha()) {
            bitmap2 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmap2);
            canvas.drawColor(-1);
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        } else {
            bitmap2 = bitmap;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            if (bitmap2.compress(format, quality, byteArrayOutputStream)) {
                return byteArrayOutputStream.toByteArray();
            }
            throw new PublishException(b.Generic, "Failed to compress image");
        } finally {
            if (bitmap2 != bitmap) {
                bitmap2.recycle();
            }
        }
    }

    public static String r(String userName, String repositoryName) {
        return "itsmagic-store-" + J(userName) + "-" + J(repositoryName) + "-" + System.currentTimeMillis();
    }

    public static String s(String value) {
        return value.replace("/", "%2F");
    }

    public static String t(String path) {
        try {
            return URLEncoder.encode(path, "UTF-8").replace("+", "%20").replace("%2F", "/");
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public static String u(String value) {
        try {
            return URLEncoder.encode(value, "UTF-8").replace("+", "%20");
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public static Bitmap v(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width <= 0 || height <= 0) {
            return bitmap;
        }
        int i10 = width >= height ? 1920 : 1080;
        int i11 = width < height ? 1920 : 1080;
        if (width <= i10 && height <= i11) {
            return bitmap;
        }
        float f10 = width;
        float f11 = height;
        float min = Math.min(i10 / f10, i11 / f11);
        return Bitmap.createScaledBitmap(bitmap, Math.max(1, Math.round(f10 * min)), Math.max(1, Math.round(f11 * min)), true);
    }

    public static List<String> w(String token) throws PublishException {
        String str;
        e[] k10 = new c(token).k();
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (k10 == null) {
            return steppedArrayList;
        }
        for (e eVar : k10) {
            if (eVar != null && (str = eVar.f70119a) != null) {
                String trim = str.trim();
                if (!trim.isEmpty() && !steppedArrayList.contains(trim)) {
                    steppedArrayList.add(trim);
                }
            }
        }
        return steppedArrayList;
    }

    public static String x(String name) {
        int lastIndexOf;
        String lowerCase = (name == null || (lastIndexOf = name.lastIndexOf(46)) < 0 || lastIndexOf >= name.length() + (-1)) ? "" : name.substring(lastIndexOf + 1).trim().toLowerCase(Locale.ROOT);
        return "jpeg".equals(lowerCase) ? "jpg" : lowerCase.isEmpty() ? "png" : lowerCase;
    }

    public static String y(String projectRoot, File file) {
        String replace = projectRoot.replace(C16181m.f130232i, "/");
        String replace2 = file.getAbsolutePath().replace(C16181m.f130232i, "/");
        if (!replace.endsWith("/")) {
            replace = replace + "/";
        }
        if (replace2.startsWith(replace)) {
            return replace2.substring(replace.length());
        }
        return null;
    }

    public static void z(o listener, p stage, int current, int total) {
        if (listener != null) {
            listener.a(stage, current, total);
        }
    }

    public static class PublishException extends Exception {
        private final b reason;

        public PublishException(b reason, String message) {
            super(message);
            this.reason = reason;
        }

        public b getReason() {
            return this.reason;
        }

        public PublishException(b reason, String message, Throwable cause) {
            super(message, cause);
            this.reason = reason;
        }
    }
}
