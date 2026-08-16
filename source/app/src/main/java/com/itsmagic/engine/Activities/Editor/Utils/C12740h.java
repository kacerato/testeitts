package com.itsmagic.engine.Activities.Editor.Utils;

import Ic.C2632k;
import android.content.Context;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeGraph;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Texture.Cubemap.CubemapConfig;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.ShaderGraphData;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.VulkanGraph;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.File;
import java.lang.constant.ConstantDescs;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import wb.C15983e;

public class C12740h {

    public static class b {

        public boolean f72131a = true;

        public boolean f72132b = true;
    }

    public static class c {

        public final String f72133a;

        public final HashMap<String, HashSet<String>> f72134b;

        public final void b(String dependencyIpp, String sourceIpp) {
            String k10 = C12740h.k(dependencyIpp, this.f72133a);
            String j10 = C12740h.j(sourceIpp, this.f72133a);
            if (k10 == null || j10 == null) {
                return;
            }
            HashSet<String> hashSet = this.f72134b.get(k10);
            if (hashSet == null) {
                hashSet = new HashSet<>();
                this.f72134b.put(k10, hashSet);
            }
            hashSet.add(j10);
        }

        public List<File> c(String targetIpp, Context context) {
            String k10 = C12740h.k(targetIpp, this.f72133a);
            if (k10 == null) {
                return new SteppedArrayList();
            }
            HashSet<String> hashSet = this.f72134b.get(k10);
            if (hashSet == null || hashSet.isEmpty()) {
                return new SteppedArrayList();
            }
            SteppedArrayList steppedArrayList = new SteppedArrayList(hashSet.size());
            Iterator<String> it = hashSet.iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next != null && !next.isEmpty()) {
                    File file = new File(next);
                    if (!file.isAbsolute()) {
                        file = new File(this.f72133a + next);
                    }
                    if (file.exists()) {
                        steppedArrayList.add(file);
                    }
                }
            }
            return steppedArrayList;
        }

        public boolean d(File file) {
            return e(file.getAbsolutePath());
        }

        public boolean e(String targetIpp) {
            HashSet<String> hashSet;
            String k10 = C12740h.k(targetIpp, this.f72133a);
            return (k10 == null || (hashSet = this.f72134b.get(k10)) == null || hashSet.isEmpty()) ? false : true;
        }

        public c(String projectRoot) {
            this.f72134b = new HashMap<>();
            String o10 = Tc.b.o(projectRoot == null ? "" : projectRoot);
            if (!o10.isEmpty() && !o10.endsWith("/")) {
                o10 = o10 + "/";
            }
            this.f72133a = o10;
        }
    }

    public static C2632k c(File file, Context context) {
        NoCodeGraph a10;
        String t10 = Tc.b.t(file.getAbsolutePath());
        if (".world".equalsIgnoreCase(t10)) {
            World h10 = World.h(X7.a.z(file.getAbsolutePath(), context));
            if (h10 == null) {
                return null;
            }
            C2632k c2632k = new C2632k();
            for (GameObject gameObject : h10.q()) {
                if (gameObject != null) {
                    gameObject.s1();
                    gameObject.y0(context, c2632k, file);
                }
            }
            return c2632k;
        }
        if (".go".equalsIgnoreCase(t10)) {
            GameObject T10 = GameObject.T(X7.a.z(file.getAbsolutePath(), context), true, false);
            if (T10 == null) {
                return null;
            }
            T10.s1();
            C2632k c2632k2 = new C2632k();
            T10.y0(context, c2632k2, file);
            return c2632k2;
        }
        if (".mat".equalsIgnoreCase(t10)) {
            Material n10 = Material.n(X7.a.z(file.getAbsolutePath(), context));
            if (n10 != null) {
                return n10.getDependencyFiles(null);
            }
            return null;
        }
        if (".cbm".equalsIgnoreCase(t10)) {
            try {
                CubemapConfig g10 = C15983e.g(file);
                if (g10 != null && g10.f() != null && !g10.f().isEmpty()) {
                    C2632k c2632k3 = new C2632k();
                    c2632k3.f9114a.add(g10.f());
                    return c2632k3;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return null;
        }
        if (!".vgs".equalsIgnoreCase(t10)) {
            if (!".ncg".equalsIgnoreCase(t10) || (a10 = NoCodeGraph.a(X7.a.z(file.getAbsolutePath(), context))) == null) {
                return null;
            }
            NoCodeData d10 = a10.d();
            if (d10 == null) {
                d10 = ga.E.c();
                a10.j(d10);
            }
            d10.I();
            return a10.c(null);
        }
        VulkanGraph a11 = VulkanGraph.a(X7.a.z(file.getAbsolutePath(), context));
        if (a11 == null) {
            return null;
        }
        ShaderGraphData d11 = a11.d();
        if (d11 == null) {
            d11 = com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.e();
            a11.j(d11);
        }
        d11.e();
        com.itsmagic.engine.Engines.Graphics.ShaderGraph.A.h(d11);
        return a11.c(null);
    }

    public static List<String> d(File file, Context context, String projectRootPath) {
        C2632k c10;
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (file != null && context != null && file.exists() && !file.isDirectory() && (c10 = c(file, context)) != null && c10.f9114a != null) {
            for (int i10 = 0; i10 < c10.f9114a.size(); i10++) {
                String j10 = j(c10.f9114a.get(i10), projectRootPath);
                if (j10 != null && !j10.trim().isEmpty()) {
                    steppedArrayList.add(j10);
                }
            }
        }
        return steppedArrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static LinkedHashSet<String> e(Context context, b options) {
        List<String> list;
        LinkedHashSet<String> linkedHashSet = new LinkedHashSet<>();
        HashSet hashSet = new HashSet();
        String S10 = com.itsmagic.engine.Core.Components.ProjectController.a.S(context);
        if (context != null && S10 != null && !S10.isEmpty()) {
            File file = new File(S10);
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            f(file, steppedArrayList, options);
            for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
                File file2 = (File) steppedArrayList.get(i10);
                if (file2 != null) {
                    List<String> d10 = d(file2, context, S10);
                    for (int i11 = 0; i11 < d10.size(); i11++) {
                        String str = d10.get(i11);
                        if (str != null && !str.trim().isEmpty() && hashSet.add(str.toLowerCase(Locale.ROOT))) {
                            linkedHashSet.add(str);
                        }
                    }
                }
            }
            try {
                C2632k c10 = K8.a.l().c(null);
                if (c10 != null && (list = c10.f9114a) != null) {
                    Iterator<String> it = list.iterator();
                    while (it.hasNext()) {
                        String j10 = j(it.next(), S10);
                        if (j10 != null && !j10.trim().isEmpty() && hashSet.add(j10.toLowerCase(Locale.ROOT))) {
                            linkedHashSet.add(j10);
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return linkedHashSet;
    }

    public static void f(File folder, List<File> output, b options) {
        File[] listFiles;
        if (folder == null || !folder.exists() || (listFiles = folder.listFiles()) == null) {
            return;
        }
        for (File file : listFiles) {
            if (file.isDirectory()) {
                String name = file.getName();
                if ((options == null || !options.f72132b || !name.startsWith(ConstantDescs.DEFAULT_NAME)) && (options.f72131a || !name.endsWith(".meta"))) {
                    f(file, output, options);
                }
            } else {
                String t10 = Tc.b.t(file.getAbsolutePath());
                if (".world".equalsIgnoreCase(t10) || ".go".equalsIgnoreCase(t10) || ".mat".equalsIgnoreCase(t10) || ".cbm".equalsIgnoreCase(t10) || ".vgs".equalsIgnoreCase(t10) || ".ncg".equalsIgnoreCase(t10)) {
                    output.add(file);
                }
            }
        }
    }

    public static boolean g(String value, String needle) {
        if (value == null || needle == null) {
            return false;
        }
        Locale locale = Locale.ROOT;
        return value.toLowerCase(locale).contains(needle.toLowerCase(locale));
    }

    public static List<File> h(String targetIpp) {
        return i(targetIpp, N7.c.t());
    }

    public static List<File> i(String targetIpp, Context context) {
        return n(context, new b()).c(targetIpp, context);
    }

    public static String j(String path, String projectRootPath) {
        String str;
        if (path == null) {
            return null;
        }
        String trim = path.trim();
        if (trim.isEmpty() || trim.startsWith("@@ASSET@@")) {
            return null;
        }
        String o10 = Tc.b.o(trim);
        if (projectRootPath != null) {
            str = Tc.b.o(projectRootPath);
            if (!str.isEmpty() && !str.endsWith("/")) {
                str = str + "/";
            }
        } else {
            str = "";
        }
        while (!str.isEmpty() && g(o10, str)) {
            if (!o(o10, str)) {
                return null;
            }
            o10 = o10.substring(str.length());
        }
        if (o10.startsWith("/")) {
            o10 = o10.substring(1);
        }
        if (str.isEmpty() || !g(o10, str)) {
            return o10;
        }
        throw new RuntimeException("Invalid normalization of:" + path);
    }

    public static String k(String path, String projectRootPath) {
        String j10 = j(path, projectRootPath);
        if (j10 == null) {
            return null;
        }
        return Tc.b.N(j10).toLowerCase(Locale.ROOT);
    }

    public static LinkedHashSet<String> l(Context context, String projectRootPath, List<String> sourcePaths) {
        String j10;
        String j11;
        LinkedHashSet<String> linkedHashSet = new LinkedHashSet<>();
        if (context != null && sourcePaths != null && !sourcePaths.isEmpty() && projectRootPath != null && !projectRootPath.isEmpty()) {
            ArrayDeque arrayDeque = new ArrayDeque();
            HashSet hashSet = new HashSet();
            HashSet hashSet2 = new HashSet();
            for (int i10 = 0; i10 < sourcePaths.size(); i10++) {
                File p10 = p(sourcePaths.get(i10), projectRootPath);
                if (p10 != null && p10.exists() && !p10.isDirectory()) {
                    arrayDeque.add(p10.getAbsolutePath());
                }
            }
            while (!arrayDeque.isEmpty()) {
                File file = new File((String) arrayDeque.removeFirst());
                if (file.exists() && !file.isDirectory() && (j10 = j(file.getAbsolutePath(), projectRootPath)) != null) {
                    String lowerCase = j10.toLowerCase(Locale.ROOT);
                    if (hashSet.add(lowerCase)) {
                        List<String> d10 = d(file, context, projectRootPath);
                        for (int i11 = 0; i11 < d10.size(); i11++) {
                            File p11 = p(d10.get(i11), projectRootPath);
                            if (p11 != null && p11.exists() && !p11.isDirectory() && (j11 = j(p11.getAbsolutePath(), projectRootPath)) != null) {
                                String lowerCase2 = j11.toLowerCase(Locale.ROOT);
                                if (!lowerCase2.equals(lowerCase)) {
                                    if (hashSet2.add(lowerCase2)) {
                                        linkedHashSet.add(p11.getAbsolutePath());
                                    }
                                    if (!hashSet.contains(lowerCase2)) {
                                        arrayDeque.addLast(p11.getAbsolutePath());
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return linkedHashSet;
    }

    public static LinkedHashSet<String> m(Context context, List<String> sourcePaths) {
        return l(context, com.itsmagic.engine.Core.Components.ProjectController.a.S(context), sourcePaths);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static c n(Context context, b options) {
        List<String> list;
        String j10;
        String S10 = com.itsmagic.engine.Core.Components.ProjectController.a.S(context);
        c cVar = new c(S10);
        if (context != null && S10 != null && !S10.isEmpty()) {
            File file = new File(S10);
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            f(file, steppedArrayList, options);
            for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
                File file2 = (File) steppedArrayList.get(i10);
                if (file2 != null && (j10 = j(file2.getAbsolutePath(), S10)) != null) {
                    List<String> d10 = d(file2, context, S10);
                    for (int i11 = 0; i11 < d10.size(); i11++) {
                        String str = d10.get(i11);
                        if (str != null && !str.trim().isEmpty()) {
                            cVar.b(str, j10);
                        }
                    }
                }
            }
            try {
                C2632k c10 = K8.a.l().c(null);
                if (c10 != null && (list = c10.f9114a) != null) {
                    Iterator<String> it = list.iterator();
                    while (it.hasNext()) {
                        cVar.b(it.next(), "@Project-Settings@");
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return cVar;
    }

    public static boolean o(String value, String prefix) {
        if (value == null || prefix == null || prefix.length() > value.length()) {
            return false;
        }
        return value.regionMatches(true, 0, prefix, 0, prefix.length());
    }

    public static File p(String path, String projectRootPath) {
        String j10 = j(path, projectRootPath);
        if (j10 == null || j10.trim().isEmpty()) {
            return null;
        }
        File file = new File(j10);
        return !file.isAbsolute() ? new File(projectRootPath, j10) : file;
    }
}
