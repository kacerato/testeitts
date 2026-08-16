package com.itsmagic.engine.Activities.Editor.Extensions.PackageManager;

import Ic.C2634m;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import net.lingala.zip4j.exception.ZipException;
import org.eclipse.jdt.internal.core.JavaElement;
import ug.C15608a;

public class r {

    public interface a {
        boolean b(b file);
    }

    public static int b(b file) {
        int i10 = 1;
        for (int i11 = 0; i11 < file.h(); i11++) {
            i10 += b(file.f(i11));
        }
        return i10;
    }

    public static int c(b file, a filter) {
        int i10 = 1;
        for (int i11 = 0; i11 < file.h(); i11++) {
            if (filter.b(file)) {
                i10 += b(file.f(i11));
            }
        }
        return i10;
    }

    public static int d(List<b> files) {
        int i10 = 0;
        for (int i11 = 0; i11 < files.size(); i11++) {
            i10 += b(files.get(i11));
        }
        return i10;
    }

    public static int e(List<b> files, a filter) {
        int i10 = 0;
        for (int i11 = 0; i11 < files.size(); i11++) {
            b bVar = files.get(i11);
            if (filter.b(bVar)) {
                i10 += b(bVar);
            }
        }
        return i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void f(String path, boolean isDir, Map<String, b> fileMap, List<b> out, Set<String> rootSet) {
        b bVar;
        String[] split = path.split("/");
        SteppedArrayList steppedArrayList = new SteppedArrayList(split.length);
        for (String str : split) {
            if (str != null && !str.isEmpty()) {
                steppedArrayList.add(str);
            }
        }
        if (steppedArrayList.isEmpty()) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        b bVar2 = null;
        int i10 = 0;
        while (i10 < steppedArrayList.size()) {
            if (sb2.length() > 0) {
                sb2.append('/');
            }
            sb2.append((String) steppedArrayList.get(i10));
            String sb3 = sb2.toString();
            boolean z10 = i10 < steppedArrayList.size() - 1 || isDir;
            b bVar3 = fileMap.get(sb3);
            if (bVar3 == null) {
                b bVar4 = new b(sb3, z10);
                fileMap.put(sb3, bVar4);
                bVar = bVar4;
            } else if (!z10 || bVar3.f70380d) {
                bVar = bVar3;
            } else {
                bVar = new b(sb3, true);
                bVar.f70381e.addAll(bVar3.f70381e);
                bVar.f70382g.addAll(bVar3.f70382g);
                fileMap.put(sb3, bVar);
            }
            if (bVar2 != null) {
                bVar2.e(bVar);
            } else if (rootSet.add(sb3)) {
                out.add(bVar);
            }
            i10++;
            bVar2 = bVar;
        }
    }

    public static String g(String filePath) {
        if (filePath == null || !filePath.contains("/")) {
            return filePath;
        }
        try {
            return filePath.substring(filePath.lastIndexOf("/") + 1);
        } catch (Exception unused) {
            return filePath;
        }
    }

    public static List<b> h(File zipFile) {
        if (!zipFile.exists()) {
            throw new RuntimeException("File not found: " + zipFile.getAbsolutePath());
        }
        HashMap hashMap = new HashMap();
        HashSet hashSet = new HashSet();
        try {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            C15608a c15608a = new C15608a(zipFile);
            try {
                Iterator<Bg.j> it = c15608a.R().iterator();
                while (it.hasNext()) {
                    k(it.next(), hashMap, steppedArrayList, hashSet);
                }
                c15608a.close();
                return steppedArrayList;
            } catch (Throwable th2) {
                try {
                    c15608a.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (ZipException e10) {
            System.out.println("Invalid zip file: " + zipFile.getAbsolutePath());
            e10.printStackTrace();
            return null;
        } catch (IOException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static List<b> i(InputStream zipFile) throws IOException {
        if (zipFile == null) {
            throw new IllegalArgumentException("InputStream cannot be null!");
        }
        File createTempFile = File.createTempFile("tempZipFile", ".zip");
        FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
        try {
            byte[] bArr = new byte[8192];
            while (true) {
                int read = zipFile.read(bArr);
                if (read == -1) {
                    break;
                }
                fileOutputStream.write(bArr, 0, read);
            }
            fileOutputStream.close();
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            HashMap hashMap = new HashMap();
            HashSet hashSet = new HashSet();
            C15608a c15608a = new C15608a(createTempFile);
            try {
                Iterator<Bg.j> it = c15608a.R().iterator();
                while (it.hasNext()) {
                    k(it.next(), hashMap, steppedArrayList, hashSet);
                }
                c15608a.close();
                createTempFile.delete();
                return steppedArrayList;
            } catch (Throwable th2) {
                try {
                    c15608a.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (Throwable th4) {
            try {
                fileOutputStream.close();
            } catch (Throwable th5) {
                th4.addSuppressed(th5);
            }
            throw th4;
        }
    }

    public static String j(String rawPath) {
        if (rawPath == null) {
            return "";
        }
        String trim = rawPath.replace(JavaElement.JEM_ESCAPE, '/').trim();
        while (trim.startsWith("/")) {
            trim = trim.substring(1);
        }
        while (trim.endsWith("/")) {
            trim = trim.substring(0, trim.length() - 1);
        }
        return trim;
    }

    public static void k(Bg.j header, Map<String, b> fileMap, List<b> out, Set<String> rootSet) {
        String j10 = j(header.j());
        if (j10.isEmpty()) {
            return;
        }
        f(j10, header.s(), fileMap, out, rootSet);
    }

    public static class b extends C2634m {

        public final String f70378b;

        public final String f70379c;

        public final boolean f70380d;

        public final List<b> f70381e;

        public final Set<b> f70382g;

        public Object f70383i;

        public b(String path) {
            this.f70381e = new SteppedArrayList();
            this.f70382g = new HashSet();
            this.f70378b = path;
            this.f70380d = false;
            String g10 = r.g(path);
            this.f70379c = g10.startsWith("/") ? g10.substring(1) : g10;
        }

        public void e(b file) {
            if (this.f70382g.contains(file)) {
                return;
            }
            this.f70381e.add(file);
            this.f70382g.add(file);
        }

        public b f(int i10) {
            return this.f70381e.get(i10);
        }

        public String getName() {
            return this.f70379c;
        }

        public Object getUserPointer() {
            return this.f70383i;
        }

        public int h() {
            return this.f70381e.size();
        }

        public String i() {
            return this.f70378b;
        }

        public boolean j() {
            return this.f70380d;
        }

        public void setUserPointer(Object userPointer) {
            this.f70383i = userPointer;
        }

        public b(String path, boolean directory) {
            this.f70381e = new SteppedArrayList();
            this.f70382g = new HashSet();
            this.f70378b = path;
            this.f70380d = directory;
            String g10 = r.g(path);
            this.f70379c = g10.startsWith("/") ? g10.substring(1) : g10;
        }
    }
}
