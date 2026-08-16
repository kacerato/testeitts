package C3;

import android.content.ContentResolver;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.StopOnOrchestrator;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.d;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.h;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.m;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.n;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.q;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.r;
import java.io.File;
import java.lang.constant.ConstantDescs;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.eclipse.jdt.internal.core.JavaElement;
import org.json.JSONObject;
import y3.C16139d;

public class b {

    public static final Pattern f1985a = Pattern.compile("(?i)(?:script|arquivo|file|classe|class)\\s+([\\p{L}\\p{N}_.$/\\\\-]+)");

    public static final String[] f1986b = {".dex", ".class"};

    public static final String[] f1987c = {".java", ".dex", ".class"};

    public class a implements h {

        public final AtomicReference f1988a;

        public final CountDownLatch f1989b;

        public final AtomicReference f1990c;

        public a(final AtomicReference val$responseRef, final CountDownLatch val$latch, final AtomicReference val$errorRef) {
            this.f1988a = val$responseRef;
            this.f1989b = val$latch;
            this.f1990c = val$errorRef;
        }

        @Override
        public void a() {
            this.f1990c.set("Failed to inspect prompt files.");
            this.f1989b.countDown();
        }

        @Override
        public void b(String message) {
            r.v("FilePathContextFillingCase output:" + message);
            this.f1988a.set(message);
            this.f1989b.countDown();
        }

        @Override
        public void c(String partialMessage) {
        }
    }

    public static void a(JSONObject fileMap, String mentionedName) {
        if (mentionedName == null || mentionedName.trim().isEmpty()) {
            return;
        }
        String trim = mentionedName.trim();
        try {
            List<File> b10 = D3.a.b(trim, true, false);
            if (b10.isEmpty()) {
                b10 = D3.a.b(trim, true, true);
            }
            for (File file : b10) {
                if (!h(file)) {
                    String o10 = o(fileMap, n(file.getName()));
                    String n10 = D3.a.n(file);
                    if (!n10.startsWith(ConstantDescs.DEFAULT_NAME) && !n10.startsWith("JAVARuntime")) {
                        fileMap.put(o10, n10);
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    public static String b(String prompt, JSONObject fileMap) {
        if (prompt == null) {
            prompt = "";
        }
        StringBuilder sb2 = new StringBuilder(prompt);
        LinkedHashSet<String> linkedHashSet = new LinkedHashSet();
        Iterator<String> keys = fileMap.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String trim = fileMap.optString(next, "").trim();
            String c10 = c(trim);
            if (c10.isEmpty()) {
                c10 = next == null ? "" : next.trim();
            }
            if (!c10.isEmpty() && !trim.isEmpty()) {
                linkedHashSet.add("Project context: " + c10 + " its a file at " + trim);
            }
        }
        if (linkedHashSet.isEmpty()) {
            return sb2.toString();
        }
        boolean z10 = true;
        if (sb2.length() > 0 && sb2.charAt(sb2.length() - 1) != '\n') {
            sb2.append('\n');
        }
        for (String str : linkedHashSet) {
            if (!z10) {
                sb2.append('\n');
            }
            sb2.append(str);
            z10 = false;
        }
        return sb2.toString();
    }

    public static String c(String path) {
        if (path == null || path.trim().isEmpty()) {
            return "";
        }
        String replace = path.trim().replace(JavaElement.JEM_ESCAPE, '/');
        int lastIndexOf = replace.lastIndexOf(47);
        if (lastIndexOf >= 0) {
            replace = replace.substring(lastIndexOf + 1);
        }
        return n(replace);
    }

    public static boolean d(String path, String[] formats) {
        if (path != null && formats != null) {
            for (String str : formats) {
                if (str != null && !str.trim().isEmpty() && path.endsWith(str.trim().toLowerCase(Locale.ROOT))) {
                    return true;
                }
            }
        }
        return false;
    }

    public static String e(String prompt, long timeout, q toChat) {
        JSONObject j10 = j(g(prompt));
        if (j10.length() > 0) {
            toChat.a(new m(n.CONTEXT, j10.toString(), 1));
            return prompt;
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        AtomicReference atomicReference = new AtomicReference();
        AtomicReference atomicReference2 = new AtomicReference();
        d.u("Find project file references in the user prompt.\nReturn only a JSON object: {\"mentionedName\":\"project/path/File.ext\"}.\nDo not use placeholder keys like FileName.\nIf the prompt has a script, file, class, or asset name without a full path, call io.find with that name.\nIf no project file is mentioned, return {}.", "User prompt: " + prompt, new a(atomicReference, countDownLatch, atomicReference2), new C16139d());
        try {
            if (!countDownLatch.await(timeout, TimeUnit.MILLISECONDS)) {
                throw new StopOnOrchestrator("Failed to inspect prompt files: timeout.");
            }
            if (atomicReference2.get() != null) {
                throw new StopOnOrchestrator((String) atomicReference2.get());
            }
            JSONObject k10 = k((String) atomicReference.get());
            m(k10);
            f(k10);
            JSONObject j11 = j(k10);
            if (j11.length() == 0) {
                return prompt;
            }
            toChat.a(new m(n.CONTEXT, j11.toString(), 1));
            return prompt;
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new StopOnOrchestrator("Failed to inspect prompt files: interrupted.");
        }
    }

    public static void f(JSONObject fileMap) {
        if (fileMap == null || fileMap.length() == 0) {
            return;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<String> keys = fileMap.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String trim = fileMap.optString(next, "").trim();
            if (trim.isEmpty() || !l(trim) || i(trim) || trim.startsWith(ConstantDescs.DEFAULT_NAME) || trim.startsWith("JAVARuntime")) {
                linkedHashSet.add(next);
            }
        }
        Iterator<E> it = linkedHashSet.iterator();
        while (it.hasNext()) {
            fileMap.remove((String) it.next());
        }
    }

    public static JSONObject g(String prompt) {
        JSONObject jSONObject = new JSONObject();
        if (prompt != null && !prompt.trim().isEmpty()) {
            Matcher matcher = f1985a.matcher(prompt);
            while (matcher.find()) {
                a(jSONObject, matcher.group(1));
            }
        }
        return jSONObject;
    }

    public static boolean h(File file) {
        return file != null && i(file.getName());
    }

    public static boolean i(String path) {
        if (path == null) {
            return true;
        }
        String lowerCase = path.trim().toLowerCase(Locale.ROOT);
        if (d(lowerCase, f1986b)) {
            return true;
        }
        if (lowerCase.endsWith(".meta")) {
            return d(lowerCase.substring(0, lowerCase.length() - 5), f1987c);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static JSONObject j(JSONObject fileMap) {
        JSONObject jSONObject = new JSONObject();
        if (fileMap != null && fileMap.length() != 0) {
            Iterator<String> keys = fileMap.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                String trim = fileMap.optString(next, "").trim();
                if (!trim.isEmpty()) {
                    String c10 = c(trim);
                    if (c10.isEmpty()) {
                        c10 = next != null ? next.trim() : "";
                    }
                    if (!c10.isEmpty()) {
                        try {
                            jSONObject.put(o(jSONObject, c10), trim);
                        } catch (Exception unused) {
                        }
                    }
                    while (keys.hasNext()) {
                    }
                }
            }
        }
        return jSONObject;
    }

    public static JSONObject k(String response) {
        if (response == null || response.trim().isEmpty()) {
            throw new StopOnOrchestrator("Failed to inspect prompt files: empty response.");
        }
        try {
            return new JSONObject(c.a(response));
        } catch (Exception unused) {
            throw new StopOnOrchestrator("Failed to inspect prompt files: invalid response.");
        }
    }

    public static boolean l(String path) {
        try {
            File k10 = D3.a.k(path);
            if (k10.exists()) {
                return k10.isFile();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void m(JSONObject fileMap) {
        if (fileMap == null || fileMap.length() == 0) {
            return;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        JSONObject jSONObject = new JSONObject();
        Iterator<String> keys = fileMap.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (next != null) {
                String trim = next.trim();
                if ("FileName".equalsIgnoreCase(trim) || ContentResolver.SCHEME_FILE.equalsIgnoreCase(trim)) {
                    String trim2 = fileMap.optString(next, "").trim();
                    if (l(trim2)) {
                        try {
                            jSONObject.put(o(fileMap, n(new File(trim2).getName())), trim2);
                        } catch (Exception unused) {
                        }
                    }
                    linkedHashSet.add(next);
                }
            }
        }
        Iterator<E> it = linkedHashSet.iterator();
        while (it.hasNext()) {
            fileMap.remove((String) it.next());
        }
        Iterator<String> keys2 = jSONObject.keys();
        while (keys2.hasNext()) {
            String next2 = keys2.next();
            try {
                fileMap.put(next2, jSONObject.optString(next2, ""));
            } catch (Exception unused2) {
            }
        }
    }

    public static String n(String value) {
        if (value == null) {
            return "";
        }
        int lastIndexOf = value.lastIndexOf(46);
        return (lastIndexOf <= 0 || lastIndexOf == value.length() + (-1)) ? value : value.substring(0, lastIndexOf);
    }

    public static String o(JSONObject fileMap, String key) {
        if (key == null || key.trim().isEmpty()) {
            key = ContentResolver.SCHEME_FILE;
        }
        String trim = key.trim();
        int i10 = 2;
        String str = trim;
        while (fileMap.has(str)) {
            str = trim + ConstantDescs.DEFAULT_NAME + i10;
            i10++;
        }
        return str;
    }
}
