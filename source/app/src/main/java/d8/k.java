package d8;

import Ic.C2633l;
import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.android.dex.DexFormat;
import com.itsmagic.engine.Core.Components.JCompiler.ClassDic;
import com.itsmagic.engine.Core.Components.JCompiler.CompiledDictionary;
import com.itsmagic.engine.Core.Components.JCompiler.ExportedJavaTXT;
import com.itsmagic.engine.Core.Components.JCompiler.JavaMetaInfo;
import com.itsmagic.engine.Core.Components.JCompiler.Libs.JLib;
import com.itsmagic.engine.Core.Components.JCompiler.Libs.LibClass;
import com.itsmagic.engine.Core.Components.JCompiler.TooManyErrorsException;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import q8.C15046a;
import ug.C15608a;
import z8.C16273a;

public class k {
    public static int A(CompiledDictionary compiledDictionary, File folder, File projectRoot, File runtimeFolder, int classCount) {
        File[] fileArr;
        try {
            fileArr = folder.listFiles();
        } catch (Exception e10) {
            e10.printStackTrace();
            fileArr = null;
        }
        if (fileArr != null && fileArr.length > 0) {
            for (File file : fileArr) {
                if (file.isDirectory()) {
                    classCount = A(compiledDictionary, file, projectRoot, runtimeFolder, classCount);
                } else if (C2633l.b(".itjar", file.getAbsolutePath())) {
                    r("ITJAR LIB FOUND " + file.getName());
                    for (t tVar : h(file)) {
                        r("ITJAR LIB CONTENT: " + tVar.f84458a);
                        if (C2633l.b(".dex", tVar.f84458a)) {
                            try {
                                File file2 = new File(runtimeFolder, g(classCount));
                                classCount++;
                                r("Copying jar.dex from (" + tVar.f84458a + ") to (" + file2.getAbsolutePath() + ")");
                                q(file, tVar.f84458a, file2);
                                compiledDictionary.javaScripts.add(new ClassDic(Tc.b.w(tVar.f84458a, true), Tc.b.u(tVar.f84458a), tVar.f84458a));
                            } catch (Exception e11) {
                                e11.printStackTrace();
                                J4.d.E1();
                                J4.d.M1("Failed to load itjar class file " + tVar.f84458a);
                            }
                        }
                    }
                }
            }
        }
        return classCount;
    }

    public static int B(CompiledDictionary compiledDictionary, int classCount) {
        File file;
        int i10;
        File file2 = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + "/JAVARuntime/runtime/");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()));
        sb2.append("/");
        String sb3 = sb2.toString();
        File file3 = new File(sb3);
        File[] listFiles = file3.listFiles();
        int i11 = classCount;
        if (listFiles != null) {
            for (File file4 : listFiles) {
                if (file4.isDirectory() && !file4.getName().equalsIgnoreCase("_EDITOR") && !file4.getName().equalsIgnoreCase("_PROJECT") && !file4.getName().equalsIgnoreCase("JAVARuntime")) {
                    i11 = A(compiledDictionary, file4, file3, file2, i11);
                }
            }
        }
        int i12 = 0;
        while (true) {
            C15046a c15046a = j.f84407j;
            if (i12 >= c15046a.e()) {
                return i11;
            }
            JLib d10 = c15046a.d(i12);
            int i13 = 0;
            while (i13 < d10.c()) {
                String str = Tc.b.O(d10.b(i13).b()) + ".dex";
                r("JAVA JAR LIB CONTENT: " + str);
                File file5 = new File(file2, g(i11));
                File file6 = new File(sb3 + "/JAVARuntime/" + j.f84413p + "/" + str);
                int i14 = i11 + 1;
                StringBuilder sb4 = new StringBuilder();
                sb4.append("Copying jar.dex from (");
                sb4.append(str);
                sb4.append(") to (");
                sb4.append(file5.getAbsolutePath());
                sb4.append(")");
                r(sb4.toString());
                if (file6.exists()) {
                    file = file2;
                    i10 = i14;
                } else {
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("Failed to find compiled .dex file at ");
                    file = file2;
                    sb5.append(file6.getAbsolutePath());
                    r(sb5.toString());
                    String w10 = Tc.b.w(str, false);
                    i10 = i14;
                    File file7 = new File(sb3 + "/JAVARuntime/" + j.f84413p + "/" + (str.endsWith(".dex") ? Tc.b.O(str) + ".class" : str) + "/" + w10);
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append("Trying fix1: ");
                    sb6.append(file7.getAbsolutePath());
                    r(sb6.toString());
                    if (file7.exists()) {
                        r("Fix1 worked!");
                        file6 = file7;
                    }
                }
                if (file6.exists()) {
                    try {
                        j.v(file6, file5);
                        compiledDictionary.javaScripts.add(new ClassDic(Tc.b.w(str, true), Tc.b.u(str), str));
                    } catch (IOException e10) {
                        e10.printStackTrace();
                    }
                } else {
                    r("Failed to find compiled .dex file at " + file6.getAbsolutePath());
                }
                i13++;
                i11 = i10;
                file2 = file;
            }
            i12++;
        }
    }

    public static boolean a(String pack) {
        return (Tc.b.b0(pack, "com/itsmagic/") || Tc.b.b0(pack, "org/ITsMagic/") || Tc.b.b0(pack, "org/bulletphysics/") || Tc.b.b0(pack, "JAVARuntimeOverrides/") || Tc.b.b0(pack, "org/apache/commons/io/") || Tc.b.b0(pack, "net/lingala/zip4j/")) ? false : true;
    }

    public static void b() {
        File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + "/", "JAVARuntime/");
        File file2 = new File(file, j.f84413p);
        if (file2.exists()) {
            r("DELETING JAR DEXES FOLDER " + file2.getAbsolutePath());
            C16273a.d(file2);
        } else {
            r("JAR DEXES FOLDER DOESNT EXIST " + file2.getAbsolutePath());
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file3 : listFiles) {
                String name = file3.getName();
                if (file3.isDirectory()) {
                    if (name.equals(j.f84413p) || name.equals("NOTICES") || name.equals("META-INF")) {
                        r("DELETING FILE DUE FILTER " + file3.getAbsolutePath());
                        C16273a.d(file3);
                    }
                } else if (!name.equals("f.manifest") && !name.equals("rtdic.config") && !name.equals("runtime.zip")) {
                    file3.delete();
                }
            }
        }
        int i10 = 0;
        while (true) {
            C15046a c15046a = j.f84407j;
            if (i10 >= c15046a.e()) {
                c15046a.b();
                return;
            }
            JLib d10 = c15046a.d(i10);
            for (int i11 = 0; i11 < d10.c(); i11++) {
                LibClass b10 = d10.b(i11);
                File file4 = new File(file, b10.b());
                if (file4.exists()) {
                    r("Deleting lib file:" + file4.getAbsolutePath());
                    file4.delete();
                }
                File file5 = new File(file, "_LIBS/" + b10.b());
                if (file5.exists()) {
                    r("Deleting lib file:" + file5.getAbsolutePath());
                    file5.delete();
                }
            }
            i10++;
        }
    }

    public static void c() {
        File[] listFiles = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + "/", "JAVARuntime/").listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (!file.isDirectory()) {
                    String name = file.getName();
                    if (!name.equals("f.manifest") && !name.equals("rtdic.config") && !name.equals("runtime.zip")) {
                        file.delete();
                    }
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x006f, code lost:
    
        r6 = r4.S(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0073, code lost:
    
        r("Copying compiled dex from (" + r1.j() + ") to (" + r7.getAbsolutePath() + ")");
        d8.j.w(r6, r7, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x009f, code lost:
    
        r7 = 1;
        r7 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00a0, code lost:
    
        if (r6 == null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a2, code lost:
    
        r6.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00a8, code lost:
    
        r6 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00bd, code lost:
    
        r6.printStackTrace();
        s(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c3, code lost:
    
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00aa, code lost:
    
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00bc, code lost:
    
        throw r7;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0102 A[Catch: Exception -> 0x0106, TRY_LEAVE, TryCatch #12 {Exception -> 0x0106, blocks: (B:7:0x00f7, B:9:0x0102), top: B:6:0x00f7 }] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean d(String str, File file, String str2, File file2) {
        File file3;
        C15608a c15608a;
        ?? r72;
        File file4;
        String str3 = Tc.b.O(file.getAbsolutePath()) + ".zip";
        r("calling DEX and dexifying the class");
        ?? r02 = false;
        try {
            C12885b.a(str, new String[]{"--dex", "--output=" + str3, str2});
            if (new File(str3).exists()) {
                try {
                    try {
                        c15608a = new C15608a(str3);
                    } catch (IOException e10) {
                        e = e10;
                        file2 = null;
                        e.printStackTrace();
                        s(e);
                        file3 = file2;
                        r02 = file3;
                        file4 = new File(str3);
                        if (file4.exists()) {
                        }
                        return r02;
                    }
                } catch (IOException e11) {
                    e = e11;
                    e.printStackTrace();
                    s(e);
                    file3 = file2;
                    r02 = file3;
                    file4 = new File(str3);
                    if (file4.exists()) {
                    }
                    return r02;
                }
                try {
                    Iterator<Bg.j> it = c15608a.R().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        Bg.j next = it.next();
                        if (!next.s()) {
                            try {
                                if (DexFormat.DEX_IN_JAR_NAME.equals(next.j())) {
                                    try {
                                        break;
                                    } catch (IOException e12) {
                                        e = e12;
                                    }
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                try {
                                    c15608a.close();
                                } catch (Throwable th3) {
                                    th.addSuppressed(th3);
                                }
                                throw th;
                            }
                        }
                    }
                    c15608a.close();
                    file3 = r72;
                    r02 = file3;
                } catch (Throwable th4) {
                    th = th4;
                }
            } else {
                r("The file was not compiled: " + str2);
            }
            try {
                file4 = new File(str3);
                if (file4.exists()) {
                    file4.delete();
                }
            } catch (Exception e13) {
                e13.printStackTrace();
                s(e13);
            }
            return r02;
        } catch (TooManyErrorsException e14) {
            e14.printStackTrace();
            s(e14);
            return false;
        } catch (Error e15) {
            e = e15;
            e.printStackTrace();
            s(e);
            return false;
        } catch (Exception e16) {
            e = e16;
            e.printStackTrace();
            s(e);
            return false;
        }
    }

    public static void e(File src, File dst) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(src);
        try {
            if (dst.exists()) {
                dst.delete();
            }
            dst.createNewFile();
            FileOutputStream fileOutputStream = new FileOutputStream(dst);
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = fileInputStream.read(bArr);
                    if (read <= 0) {
                        fileInputStream.close();
                        return;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
            } finally {
                fileOutputStream.close();
            }
        } catch (Throwable th2) {
            fileInputStream.close();
            throw th2;
        }
    }

    public static void f() {
        File[] listFiles = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + "/", "JAVARuntime/").listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (!file.isDirectory()) {
                    String name = file.getName();
                    if (!name.equals("f.manifest") && !name.equals("rtdic.config") && !name.equals("runtime.zip")) {
                        file.delete();
                    }
                }
            }
        }
    }

    public static String g(int id2) {
        if (id2 <= 1) {
            return "classes.dex";
        }
        return "classes" + id2 + ".dex";
    }

    public static List<t> h(File zipFile) {
        LinkedList linkedList = new LinkedList();
        try {
            C15608a c15608a = new C15608a(zipFile);
            try {
                for (Bg.j jVar : c15608a.R()) {
                    if (!jVar.s()) {
                        linkedList.add(new t(jVar.j(), zipFile.getAbsolutePath() + "/" + jVar.j()));
                    }
                }
                c15608a.close();
            } catch (Throwable th2) {
                try {
                    c15608a.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        return linkedList;
    }

    public static void i() {
        File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + "/");
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isDirectory() && !file2.getName().equalsIgnoreCase("Files") && !file2.getName().equalsIgnoreCase("_EDITOR") && !file2.getName().equalsIgnoreCase("_PROJECT") && !file2.getName().equalsIgnoreCase("_JAVA") && !file2.getName().equalsIgnoreCase("JAVARuntime")) {
                    v(file2, file);
                }
            }
        }
    }

    public static boolean j(String java2) {
        return l(java2);
    }

    public static boolean k(Class<?> outerClass, Class<?> innerClass) {
        for (Class<?> enclosingClass = innerClass.getEnclosingClass(); enclosingClass != null; enclosingClass = enclosingClass.getEnclosingClass()) {
            if (enclosingClass.equals(outerClass)) {
                return true;
            }
        }
        return false;
    }

    public static boolean l(String javaFile) {
        try {
            X7.a aVar = W7.b.f27305e;
            ExportedJavaTXT exportedJavaTXT = (ExportedJavaTXT) X7.a.m().fromJson(javaFile, ExportedJavaTXT.class);
            if (exportedJavaTXT != null) {
                return ExportedJavaTXT.f72510b.equals(exportedJavaTXT.validateString);
            }
            return false;
        } catch (Error | Exception unused) {
            return false;
        }
    }

    public static boolean m(Method method) {
        return method.getReturnType() == Void.TYPE || method.getReturnType() == Void.class;
    }

    public static boolean n(Class classType) {
        return classType == Void.TYPE || classType == Void.class;
    }

    public static void o(DexClassLoader cl2, File folder, File projectRoot) {
        File[] fileArr;
        try {
            fileArr = folder.listFiles();
        } catch (Exception e10) {
            e10.printStackTrace();
            fileArr = null;
        }
        File[] fileArr2 = fileArr;
        if (fileArr2 == null || fileArr2.length <= 0) {
            return;
        }
        for (File file : fileArr2) {
            if (file.isDirectory()) {
                o(cl2, file, projectRoot);
            } else if (C2633l.b(".itjar", file.getAbsolutePath())) {
                r("LIB FOUND " + file.getName());
                List<t> h10 = h(file);
                for (int i10 = 0; i10 < h10.size(); i10++) {
                    t tVar = h10.get(i10);
                    r("LIB CONTENT: " + tVar.f84458a);
                    if (C2633l.b(".dex", tVar.f84458a)) {
                        String w10 = Tc.b.w(tVar.f84458a, true);
                        r("instantiating DexClassLoader and loading class");
                        try {
                            Class<?> loadClass = cl2.loadClass("JAVARuntime." + w10);
                            String v10 = Tc.b.v(tVar.f84458a);
                            String u10 = Tc.b.u(tVar.f84459b.replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + "/", ""));
                            if (u10.endsWith("/")) {
                                try {
                                    u10 = u10.substring(0, u10.length() - 1);
                                } catch (Exception e11) {
                                    e = e11;
                                    r("Error while instanciating class: " + e.getMessage());
                                    e.printStackTrace();
                                }
                            }
                            if (u10.endsWith(".meta")) {
                                u10 = Tc.b.u(u10);
                            }
                            String replace = (u10 + "/" + Tc.b.w(tVar.f84458a, true) + ".java").replace("//", "/");
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(Tc.b.O(replace));
                            sb2.append(".meta");
                            j.n(new r(new JavaMetaInfo(replace, sb2.toString(), v10, true), w10, loadClass));
                        } catch (Exception e12) {
                            e = e12;
                        }
                    }
                }
            }
        }
    }

    public static void p(DexClassLoader cl2) {
        File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(N7.c.t()) + "/");
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isDirectory() && !file2.getName().equalsIgnoreCase("Files/") && !file2.getName().equalsIgnoreCase("_EDITOR/") && !file2.getName().equalsIgnoreCase("_PROJECT/") && !file2.getName().equalsIgnoreCase("JAVARuntime/")) {
                    o(cl2, file2, file);
                }
            }
        }
        int i10 = 0;
        while (true) {
            C15046a c15046a = j.f84407j;
            if (i10 >= c15046a.e()) {
                return;
            }
            JLib d10 = c15046a.d(i10);
            for (int i11 = 0; i11 < d10.c(); i11++) {
                LibClass b10 = d10.b(i11);
                String replace = Tc.b.O(b10.b()).replace("/", ".");
                r("instantiating DexClassLoader and loading class from jar (" + replace + ") at lib " + i10 + " of class index " + i11);
                try {
                    Class<?> loadClass = cl2.loadClass(replace);
                    String w10 = Tc.b.w(b10.b(), true);
                    j.n(new r(new JavaMetaInfo(null, null, w10, true), w10, loadClass));
                } catch (ClassNotFoundException e10) {
                    r("ClassNotFoundException(" + e10.getMessage() + ")");
                } catch (Exception e11) {
                    r("Error while instanciating class");
                    e11.printStackTrace();
                }
            }
            i10++;
        }
    }

    public static void q(File zipFile, String file, File dest) {
        try {
            C15608a c15608a = new C15608a(zipFile);
            try {
                Bg.j Q10 = c15608a.Q(file);
                if (Q10 != null && !Q10.s()) {
                    try {
                        zg.k S10 = c15608a.S(Q10);
                        try {
                            FileOutputStream fileOutputStream = new FileOutputStream(dest);
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
                            } catch (Throwable th2) {
                                try {
                                    fileOutputStream.close();
                                } catch (Throwable th3) {
                                    th2.addSuppressed(th3);
                                }
                                throw th2;
                            }
                        } catch (Throwable th4) {
                            if (S10 != null) {
                                try {
                                    S10.close();
                                } catch (Throwable th5) {
                                    th4.addSuppressed(th5);
                                }
                            }
                            throw th4;
                        }
                    } catch (IOException e10) {
                        e10.printStackTrace();
                    }
                }
                c15608a.close();
            } catch (Throwable th6) {
                try {
                    c15608a.close();
                } catch (Throwable th7) {
                    th6.addSuppressed(th7);
                }
                throw th6;
            }
        } catch (IOException e11) {
            e11.printStackTrace();
        }
    }

    public static void r(String message) {
        if (j.f84398a) {
            Log.d(j.f84408k, message);
        }
    }

    public static void s(Throwable e10) {
        if (j.f84398a) {
            J4.d.V1(e10);
        }
    }

    public static void t(File projectRoot, File dexDestinations, JLib lib, String libMeta, File metaFolder, File file) {
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                t(projectRoot, dexDestinations, lib, libMeta, metaFolder, file2);
            }
            return;
        }
        String replace = file.getAbsolutePath().replace(libMeta + "", "");
        String w10 = Tc.b.w(replace, true);
        String u10 = Tc.b.u(replace);
        File file3 = new File(metaFolder, Tc.b.O(replace) + ".dex");
        File file4 = new File(metaFolder, Tc.b.O(replace) + ".class");
        if (file3.exists() && file4.exists()) {
            r("Using cached dex file " + file3.getAbsolutePath());
            try {
                File file5 = new File(dexDestinations, u10 + "/");
                if (!file5.exists()) {
                    file5.mkdirs();
                }
                j.v(file3, new File(file5, w10 + ".dex"));
            } catch (IOException e10) {
                e10.printStackTrace();
            }
            r("Using cached class file " + file4.getAbsolutePath());
            File file6 = new File(projectRoot, "JAVARuntime/" + replace);
            lib.a(new LibClass(replace));
            if (file6.exists()) {
                file6.delete();
            }
            try {
                j.v(file4, file6);
            } catch (IOException e11) {
                e11.printStackTrace();
            }
        }
    }

    public static Class u(String name) {
        if (name != null && !name.isEmpty()) {
            for (int i10 = 0; i10 < j.k0(); i10++) {
                e8.c j02 = j.j0(i10);
                if (j02 != null) {
                    if (!j02.b().equals(name) && !j02.d().equals(name)) {
                        if (!name.equals("JAVARuntime." + j02.d())) {
                            continue;
                        }
                    }
                    try {
                        return Class.forName("JAVARuntime." + ((Object) j02));
                    } catch (ClassNotFoundException e10) {
                        e10.printStackTrace();
                    }
                }
            }
            for (int i11 = 0; i11 < j.K0(); i11++) {
                r J02 = j.J0(i11);
                if (J02 != null && (J02.f84453b.equals(name) || J02.f84454c.getName().equals(name))) {
                    return J02.f84454c;
                }
            }
            Class z10 = z(name);
            if (z10 != null) {
                return z10;
            }
        }
        return null;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:(3:108|109|110)|(4:111|112|(1:114)|115)|116|117|118|119|120|(1:122)|123|124|125) */
    /* JADX WARN: Can't wrap try/catch for region: R(13:108|109|110|(4:111|112|(1:114)|115)|116|117|118|119|120|(1:122)|123|124|125) */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x046c, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0489, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0486, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0487, code lost:
    
        r11 = r23;
     */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0490  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x040c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0468 A[Catch: IOException -> 0x046c, TryCatch #10 {IOException -> 0x046c, blocks: (B:120:0x045f, B:122:0x0468, B:123:0x046e), top: B:119:0x045f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void v(File folder, File projectRoot) {
        File[] fileArr;
        File[] fileArr2;
        int i10;
        List<t> list;
        int i11;
        File[] fileArr3;
        int i12;
        JLib jLib;
        File file;
        File file2;
        File file3;
        File file4;
        File file5;
        File file6;
        File file7;
        String str = projectRoot.getAbsolutePath() + "/";
        File file8 = new File(projectRoot, "JAVARuntime/_LIBS/");
        file8.mkdirs();
        if (folder == null || !folder.isDirectory()) {
            return;
        }
        try {
            fileArr = folder.listFiles();
        } catch (Exception e10) {
            e10.printStackTrace();
            fileArr = null;
        }
        File[] fileArr4 = fileArr;
        if (fileArr4 == null || fileArr4.length <= 0) {
            return;
        }
        int i13 = 0;
        while (i13 < fileArr4.length) {
            File file9 = fileArr4[i13];
            if (file9.isDirectory()) {
                fileArr2 = fileArr4;
                i10 = i13;
                v(file9, projectRoot);
            } else {
                if (C2633l.b(".itjar", file9.getAbsolutePath())) {
                    r("ITJAR LIB FOUND " + file9.getName());
                    List<t> h10 = h(file9);
                    for (int i14 = 0; i14 < h10.size(); i14++) {
                        t tVar = h10.get(i14);
                        r("ITJAR LIB CONTENT: " + tVar.f84458a);
                        if (C2633l.b(".class", tVar.f84458a)) {
                            File file10 = new File(projectRoot, "JAVARuntime/JAVARuntime/" + Tc.b.v(tVar.f84458a));
                            if (file10.exists()) {
                                file10.delete();
                            }
                            try {
                                file10.createNewFile();
                            } catch (IOException e11) {
                                e11.printStackTrace();
                            }
                            r("Copying from itjar " + tVar.f84458a + " to " + file10.getAbsolutePath());
                            q(file9, tVar.f84458a, file10);
                        }
                    }
                } else if (C2633l.b(".jar", file9.getAbsolutePath())) {
                    r("JAVA JAR LIB FOUND " + file9.getName());
                    c();
                    JLib jLib2 = new JLib(file9.getName());
                    j.f84407j.a(jLib2);
                    String str2 = Tc.b.O(file9.getAbsolutePath()) + ".meta";
                    File file11 = new File(str2);
                    if (file11.exists()) {
                        File[] listFiles = file11.listFiles();
                        if (listFiles != null && listFiles.length > 0) {
                            int i15 = 0;
                            while (i15 < listFiles.length) {
                                t(projectRoot, file8, jLib2, str2, file11, listFiles[i15]);
                                i15++;
                                listFiles = listFiles;
                            }
                        }
                    } else {
                        file11.mkdirs();
                        List<t> h11 = h(file9);
                        int i16 = 0;
                        while (i16 < h11.size()) {
                            t tVar2 = h11.get(i16);
                            r("JAVA JAR LIB CONTENT: " + tVar2.f84458a);
                            if (!C2633l.b(".class", tVar2.f84458a)) {
                                list = h11;
                                i11 = i16;
                                fileArr3 = fileArr4;
                                i12 = i13;
                                jLib = jLib2;
                                file = file11;
                                file2 = file9;
                            } else if (a(tVar2.f84458a)) {
                                String str3 = tVar2.f84458a;
                                list = h11;
                                String w10 = Tc.b.w(str3, true);
                                fileArr3 = fileArr4;
                                String u10 = Tc.b.u(tVar2.f84458a);
                                i12 = i13;
                                StringBuilder sb2 = new StringBuilder();
                                i11 = i16;
                                sb2.append(Tc.b.O(str3));
                                sb2.append(".dex");
                                File file12 = new File(file11, sb2.toString());
                                String str4 = str;
                                StringBuilder sb3 = new StringBuilder();
                                File file13 = file9;
                                sb3.append(Tc.b.O(str3));
                                sb3.append(".class");
                                File file14 = new File(file11, sb3.toString());
                                if (file12.exists() && file14.exists()) {
                                    r("Using cached dex file " + file12.getAbsolutePath());
                                    try {
                                        File file15 = new File(file8, u10 + "/");
                                        if (!file15.exists()) {
                                            file15.mkdirs();
                                        }
                                        j.v(file12, new File(file15, w10 + ".dex"));
                                    } catch (IOException e12) {
                                        e12.printStackTrace();
                                    }
                                    r("Using cached class file " + file14.getAbsolutePath());
                                    File file16 = new File(projectRoot, "JAVARuntime/" + str3);
                                    jLib2.a(new LibClass(str3));
                                    if (file16.exists()) {
                                        file16.delete();
                                    }
                                    try {
                                        j.v(file14, file16);
                                    } catch (IOException e13) {
                                        e13.printStackTrace();
                                    }
                                    jLib = jLib2;
                                    file = file11;
                                    str = str4;
                                    file2 = file13;
                                } else {
                                    File file17 = new File(projectRoot, "JAVARuntime//" + u10);
                                    if (!file17.exists()) {
                                        file17.mkdirs();
                                    }
                                    r("Creating JavaJar file folder from " + tVar2.f84458a + " to " + file17.getAbsolutePath());
                                    StringBuilder sb4 = new StringBuilder();
                                    sb4.append("JAVARuntime/");
                                    sb4.append(str3);
                                    File file18 = new File(projectRoot, sb4.toString());
                                    jLib2.a(new LibClass(str3));
                                    if (file18.exists()) {
                                        file18.delete();
                                    }
                                    try {
                                        file18.createNewFile();
                                    } catch (IOException e14) {
                                        e14.printStackTrace();
                                    }
                                    StringBuilder sb5 = new StringBuilder();
                                    sb5.append("Copying from java jar ");
                                    jLib = jLib2;
                                    sb5.append(tVar2.f84458a);
                                    sb5.append(" to ");
                                    sb5.append(file18.getAbsolutePath());
                                    r(sb5.toString());
                                    file2 = file13;
                                    q(file2, tVar2.f84458a, file18);
                                    try {
                                        file3 = file8;
                                        try {
                                            file7 = new File(file11, u10 + "/");
                                            if (!file7.exists()) {
                                                file7.mkdirs();
                                            }
                                            file4 = file11;
                                        } catch (IOException e15) {
                                            e = e15;
                                            file4 = file11;
                                            e.printStackTrace();
                                            File file19 = new File(projectRoot, "JAVARuntime/" + w10 + ".class");
                                            r("Copying from java jar " + tVar2.f84458a + " to " + file19.getAbsolutePath());
                                            q(file2, tVar2.f84458a, file19);
                                            r("Compiling java jar class to dex");
                                            file5 = new File(projectRoot, "JAVARuntime/" + w10 + ".dex");
                                            str = str4;
                                            d(str, file19, projectRoot.getAbsolutePath() + "/JAVARuntime//./" + str3, file5);
                                            if (file5.exists()) {
                                            }
                                            i16 = i11 + 1;
                                            file11 = file;
                                            file9 = file2;
                                            h11 = list;
                                            fileArr4 = fileArr3;
                                            i13 = i12;
                                            jLib2 = jLib;
                                        }
                                    } catch (IOException e16) {
                                        e = e16;
                                        file3 = file8;
                                    }
                                    try {
                                        j.v(file18, new File(file7, w10 + ".class"));
                                    } catch (IOException e17) {
                                        e = e17;
                                        e.printStackTrace();
                                        File file192 = new File(projectRoot, "JAVARuntime/" + w10 + ".class");
                                        r("Copying from java jar " + tVar2.f84458a + " to " + file192.getAbsolutePath());
                                        q(file2, tVar2.f84458a, file192);
                                        r("Compiling java jar class to dex");
                                        file5 = new File(projectRoot, "JAVARuntime/" + w10 + ".dex");
                                        str = str4;
                                        d(str, file192, projectRoot.getAbsolutePath() + "/JAVARuntime//./" + str3, file5);
                                        if (file5.exists()) {
                                        }
                                        i16 = i11 + 1;
                                        file11 = file;
                                        file9 = file2;
                                        h11 = list;
                                        fileArr4 = fileArr3;
                                        i13 = i12;
                                        jLib2 = jLib;
                                    }
                                    File file1922 = new File(projectRoot, "JAVARuntime/" + w10 + ".class");
                                    r("Copying from java jar " + tVar2.f84458a + " to " + file1922.getAbsolutePath());
                                    q(file2, tVar2.f84458a, file1922);
                                    r("Compiling java jar class to dex");
                                    file5 = new File(projectRoot, "JAVARuntime/" + w10 + ".dex");
                                    str = str4;
                                    d(str, file1922, projectRoot.getAbsolutePath() + "/JAVARuntime//./" + str3, file5);
                                    if (file5.exists()) {
                                        try {
                                            file8 = file3;
                                        } catch (IOException e18) {
                                            e = e18;
                                            file8 = file3;
                                        }
                                        try {
                                            File file20 = new File(file8, u10 + "/");
                                            if (!file20.exists()) {
                                                file20.mkdirs();
                                            }
                                            j.v(file5, new File(file20, w10 + ".dex"));
                                        } catch (IOException e19) {
                                            e = e19;
                                            e.printStackTrace();
                                            file = file4;
                                            file6 = new File(file, u10 + "/");
                                            if (!file6.exists()) {
                                            }
                                            j.v(file5, new File(file6, w10 + ".dex"));
                                            file5.delete();
                                            i16 = i11 + 1;
                                            file11 = file;
                                            file9 = file2;
                                            h11 = list;
                                            fileArr4 = fileArr3;
                                            i13 = i12;
                                            jLib2 = jLib;
                                        }
                                        file = file4;
                                        file6 = new File(file, u10 + "/");
                                        if (!file6.exists()) {
                                            file6.mkdirs();
                                        }
                                        j.v(file5, new File(file6, w10 + ".dex"));
                                        file5.delete();
                                    } else {
                                        file8 = file3;
                                        file = file4;
                                        r("Compiling java jar class to dex failed, the final file was not found");
                                    }
                                }
                            } else {
                                list = h11;
                                i11 = i16;
                                fileArr3 = fileArr4;
                                i12 = i13;
                                jLib = jLib2;
                                file = file11;
                                file2 = file9;
                                if (j.f84398a) {
                                    r("Ignoring fatal file package: " + tVar2.f84458a);
                                }
                            }
                            i16 = i11 + 1;
                            file11 = file;
                            file9 = file2;
                            h11 = list;
                            fileArr4 = fileArr3;
                            i13 = i12;
                            jLib2 = jLib;
                        }
                    }
                }
                fileArr2 = fileArr4;
                i10 = i13;
            }
            i13 = i10 + 1;
            fileArr4 = fileArr2;
        }
    }

    public static JavaMetaInfo w(Class cls) {
        for (int i10 = 0; i10 < j.K0(); i10++) {
            r J02 = j.J0(i10);
            if (J02 != null && J02.f84454c == cls) {
                return J02.f84452a;
            }
        }
        return null;
    }

    public static JavaMetaInfo x(String name) {
        for (int i10 = 0; i10 < j.K0(); i10++) {
            r J02 = j.J0(i10);
            if (J02 != null && J02.f84453b.equals(name)) {
                return J02.f84452a;
            }
        }
        return null;
    }

    public static e8.c y(String name) {
        if (name != null && !name.isEmpty()) {
            for (int i10 = 0; i10 < j.k0(); i10++) {
                e8.c j02 = j.j0(i10);
                if (j02 != null) {
                    if (!j02.d().equals(name)) {
                        if (name.equals("JAVARuntime." + j02.d())) {
                        }
                    }
                    return j02;
                }
            }
        }
        return null;
    }

    public static Class z(String name) {
        if (name.equals(TypedValues.Custom.S_FLOAT)) {
            return Float.TYPE;
        }
        if (name.equals("int")) {
            return Integer.TYPE;
        }
        if (name.equals("long")) {
            return Long.TYPE;
        }
        if (name.equals("double")) {
            return Double.TYPE;
        }
        if (name.equals("char")) {
            return Character.TYPE;
        }
        if (name.equals("byte")) {
            return Byte.TYPE;
        }
        if (name.equals(TypedValues.Custom.S_BOOLEAN)) {
            return Boolean.TYPE;
        }
        if (name.equals(SerializableShaderEntry.f81157k)) {
            return String.class;
        }
        if (name.equals(SerializableShaderEntry.f81148b)) {
            return Float.valueOf(0.0f).getClass();
        }
        if (name.equals("Integer")) {
            Integer num = 0;
            return num.getClass();
        }
        if (name.equals("Long")) {
            Long l10 = 0L;
            return l10.getClass();
        }
        if (name.equals("Double")) {
            return Double.valueOf(0.0d).getClass();
        }
        if (name.equals("Character")) {
            Character ch2 = (char) 0;
            return ch2.getClass();
        }
        if (name.equals("Byte")) {
            Byte b10 = (byte) 0;
            return b10.getClass();
        }
        if (name.equals("Boolean")) {
            return Boolean.FALSE.getClass();
        }
        return null;
    }
}
