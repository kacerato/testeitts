package da;

import JAVARuntime.Runnable;
import android.content.Context;
import android.util.Log;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import pc.C14955g;

public class C12894h {

    public static final List<C12895i> f84465a;

    public static final Map<String, C12895i> f84466b;

    public static final List<C12895i> f84467c;

    public static float f84468d;

    public class a implements x8.b {
        @Override
        public void a() {
            synchronized (C12894h.f84465a) {
                C12894h.f84465a.clear();
                C12894h.f84466b.clear();
            }
            synchronized (C12894h.f84467c) {
                C12894h.f84467c.clear();
            }
        }

        @Override
        public void b() {
            synchronized (C12894h.f84465a) {
                C12894h.f84465a.clear();
                C12894h.f84466b.clear();
            }
            synchronized (C12894h.f84467c) {
                C12894h.f84467c.clear();
            }
        }
    }

    public class b implements Runnable {

        public final dc.k f84469b;

        public b(final dc.k val$buildedMaterialShader) {
            this.f84469b = val$buildedMaterialShader;
        }

        @Override
        public void run() {
            this.f84469b.a();
        }
    }

    public class c implements Runnable {
        @Override
        public void run() {
            synchronized (C12894h.f84465a) {
                for (int i10 = 0; i10 < C12894h.f84465a.size(); i10++) {
                    try {
                        C12895i c12895i = (C12895i) C12894h.f84465a.get(i10);
                        if (c12895i != null && c12895i.i()) {
                            c12895i.f();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    }

    static {
        com.itsmagic.engine.Core.Components.ProjectController.a.h(new a());
        f84465a = new SteppedArrayList();
        f84466b = new HashMap();
        f84467c = new SteppedArrayList();
    }

    public static Material d(Material mat) {
        if (mat == null) {
            throw new NullPointerException("Material can't be null!");
        }
        String str = mat.f78885e;
        if (str == null || str.isEmpty()) {
            throw new NullPointerException("Material file can't be null or empty!");
        }
        mat.f78885e = Tc.b.o(mat.f78885e);
        synchronized (f84465a) {
            try {
                Material i10 = i(mat.f78885e);
                if (i10 != null) {
                    return i10;
                }
                e(mat);
                mat.f78896r = true;
                return mat;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void e(Material material) {
        if (material == null) {
            throw new NullPointerException("Material can't be null!");
        }
        String str = material.f78885e;
        if (str == null || str.isEmpty()) {
            throw new NullPointerException("Material file can't be null or empty!");
        }
        String o10 = Tc.b.o(material.f78885e);
        material.f78885e = o10;
        Map<String, C12895i> map = f84466b;
        boolean containsKey = map.containsKey(o10);
        int i10 = 0;
        if (containsKey) {
            C12895i c12895i = map.get(material.f78885e);
            containsKey = c12895i != null && c12895i.i();
        }
        if (containsKey) {
            throw new RuntimeException("Duplicated material found: " + material.f78885e);
        }
        while (true) {
            List<C12895i> list = f84465a;
            if (i10 >= list.size()) {
                C12895i c12895i2 = new C12895i(material);
                list.add(c12895i2);
                Map<String, C12895i> map2 = f84466b;
                map2.put(c12895i2.getFile(), c12895i2);
                if (map2.containsKey(material.f78885e)) {
                    return;
                }
                throw new RuntimeException("Failed to register material to map: " + material.f78885e);
            }
            if (list.get(i10).f() == material) {
                throw new RuntimeException("Duplicated material found: " + material.f78885e + " map contains? " + f84466b.containsKey(material.f78885e));
            }
            i10++;
        }
    }

    public static void f(String file) {
        String o10 = Tc.b.o(file);
        List<C12895i> list = f84465a;
        synchronized (list) {
            try {
                Map<String, C12895i> map = f84466b;
                C12895i c12895i = map.get(o10);
                if (c12895i != null && c12895i.i()) {
                    c12895i.h();
                    map.remove(o10);
                    list.remove(c12895i);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void g(C12888b event) {
        Material f10;
        if (event instanceof C14955g) {
            Vb.a.M();
        }
        synchronized (f84465a) {
            int i10 = 0;
            while (true) {
                try {
                    List<C12895i> list = f84465a;
                    if (i10 < list.size()) {
                        C12895i c12895i = list.get(i10);
                        if (c12895i != null && c12895i.i() && (f10 = c12895i.f()) != null) {
                            f10.o(event);
                        }
                        i10++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static boolean h(Material mat) {
        Material f10;
        String str = mat.f78885e;
        if (str != null && !str.isEmpty()) {
            mat.f78885e = Tc.b.o(mat.f78885e);
            synchronized (f84465a) {
                int i10 = 0;
                while (true) {
                    try {
                        List<C12895i> list = f84465a;
                        if (i10 < list.size()) {
                            C12895i c12895i = list.get(i10);
                            if (c12895i != null && c12895i.i() && (f10 = c12895i.f()) != null && f10 == mat) {
                                return true;
                            }
                            i10++;
                        }
                    } finally {
                    }
                }
            }
        }
        return false;
    }

    public static Material i(String file) {
        String o10 = Tc.b.o(file);
        synchronized (f84465a) {
            try {
                C12895i c12895i = f84466b.get(o10);
                if (c12895i == null || !c12895i.i()) {
                    return null;
                }
                return c12895i.f();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0025 A[Catch: all -> 0x0014, TryCatch #0 {all -> 0x0014, blocks: (B:4:0x0003, B:6:0x000d, B:10:0x001d, B:12:0x0025, B:14:0x002d, B:16:0x0033, B:20:0x003b, B:24:0x003d, B:29:0x0040, B:31:0x004a, B:33:0x0054, B:35:0x005a, B:36:0x005e, B:38:0x0060, B:39:0x0066, B:41:0x0016), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0040 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Material j(Material mat) {
        int i10;
        List<C12895i> list;
        C12895i c12895i;
        Material f10;
        synchronized (f84465a) {
            try {
                String o10 = Tc.b.o(mat.f78885e);
                mat.f78885e = o10;
                if (o10 != null) {
                    if (o10.isEmpty()) {
                    }
                    i10 = 0;
                    while (true) {
                        list = f84465a;
                        if (i10 < list.size()) {
                            Map<String, C12895i> map = f84466b;
                            if (map.containsKey(mat.f78885e) && (c12895i = map.get(mat.f78885e)) != null && c12895i.i()) {
                                return c12895i.f();
                            }
                            e(mat);
                            mat.f78896r = true;
                            return mat;
                        }
                        C12895i c12895i2 = list.get(i10);
                        if (c12895i2 != null && c12895i2.i() && (f10 = c12895i2.f()) != null && f10 == mat) {
                            return mat;
                        }
                        i10++;
                    }
                }
                mat.f78885e = Tc.b.L();
                i10 = 0;
                while (true) {
                    list = f84465a;
                    if (i10 < list.size()) {
                    }
                    i10++;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static List<C12895i> k() {
        return f84465a;
    }

    public static Material l(String file) {
        if (file == null || file.trim().isEmpty()) {
            throw new NullPointerException("Path can't be empty or null");
        }
        if (file.startsWith(Context.STORAGE_SERVICE) || file.startsWith("/storage")) {
            Log.e("STORAGE DETECTED", "Storage path detected on class exporter line 139:" + file);
            throw new RuntimeException("Invalid path");
        }
        synchronized (f84465a) {
            try {
                String o10 = Tc.b.o(file);
                Material i10 = i(o10);
                if (i10 != null) {
                    return i10;
                }
                String s10 = X7.a.s(o10, N7.c.t());
                if (s10 == null || s10.isEmpty()) {
                    throw new RuntimeException("Failed to load material " + o10);
                }
                Material n10 = Material.n(s10);
                if (n10 == null) {
                    throw new RuntimeException("Failed to load material " + o10);
                }
                n10.f78885e = o10;
                n10.f78886g = true;
                n10.S();
                e(n10);
                n10.f78896r = true;
                return n10;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void m() {
        List<C12895i> list = f84465a;
        synchronized (list) {
            list.clear();
            f84466b.clear();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:85:0x00ac, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x00b4, code lost:
    
        throw r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x004c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void n() {
        int size;
        C12895i c12895i;
        Exception e10;
        Throwable th2;
        List<C12895i> list = f84465a;
        synchronized (list) {
            size = list.size();
        }
        for (int i10 = 0; i10 < size; i10++) {
            try {
                List<C12895i> list2 = f84465a;
                synchronized (list2) {
                    try {
                        c12895i = list2.get(i10);
                        try {
                        } catch (Throwable th3) {
                            th2 = th3;
                            try {
                                throw th2;
                                break;
                            } catch (Exception e11) {
                                e10 = e11;
                                e10.printStackTrace();
                                if (c12895i != null) {
                                }
                            }
                        }
                    } catch (Throwable th4) {
                        c12895i = null;
                        th2 = th4;
                    }
                }
            } catch (Exception e12) {
                c12895i = null;
                e10 = e12;
            }
            if (c12895i != null) {
                Material f10 = c12895i.f();
                if (f10 == null) {
                    dc.k kVar = c12895i.f84472d;
                    if (kVar != null) {
                        K8.a.I(new b(kVar));
                    }
                    f84467c.add(c12895i);
                } else {
                    c12895i.f84472d = f10.y();
                    f10.O();
                }
            }
        }
        synchronized (f84467c) {
            int i11 = 0;
            while (true) {
                try {
                    List<C12895i> list3 = f84467c;
                    if (i11 < list3.size()) {
                        C12895i c12895i2 = list3.get(i11);
                        List<C12895i> list4 = f84465a;
                        synchronized (list4) {
                            list4.remove(c12895i2);
                            f84466b.remove(c12895i2.getFile());
                            int i12 = 0;
                            while (true) {
                                List<C12895i> list5 = f84465a;
                                if (i12 >= list5.size()) {
                                    break;
                                }
                                C12895i c12895i3 = list5.get(i12);
                                if (c12895i3 != null && c12895i3 != c12895i2 && c12895i3.validate() && c12895i3.getFile().equals(c12895i2.getFile())) {
                                    f84466b.put(c12895i2.getFile(), c12895i3);
                                    break;
                                }
                                i12++;
                            }
                        }
                        i11++;
                    } else {
                        list3.clear();
                    }
                } finally {
                }
            }
        }
    }

    public static int o() {
        int size;
        List<C12895i> list = f84465a;
        synchronized (list) {
            size = list.size();
        }
        return size;
    }

    public static void p() {
        synchronized (f84465a) {
            try {
                SteppedArrayList steppedArrayList = new SteppedArrayList();
                int i10 = 0;
                while (true) {
                    List<C12895i> list = f84465a;
                    if (i10 < list.size()) {
                        C12895i c12895i = list.get(i10);
                        if (c12895i != null && c12895i.i()) {
                            Material f10 = c12895i.f();
                            if (!f10.f78885e.startsWith("@") && !f10.f78885e.startsWith("_EDITOR") && f10.G()) {
                                steppedArrayList.add(c12895i);
                                f84466b.remove(c12895i.getFile());
                            }
                        }
                        i10++;
                    } else {
                        list.removeAll(steppedArrayList);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void q() {
        K8.a.I(new c());
    }

    public static void r() {
        List<C12895i> list = f84465a;
        synchronized (list) {
            list.clear();
            f84466b.clear();
        }
    }

    public static void s() {
        Material f10;
        synchronized (f84465a) {
            int i10 = 0;
            while (true) {
                try {
                    List<C12895i> list = f84465a;
                    if (i10 < list.size()) {
                        C12895i c12895i = list.get(i10);
                        if (c12895i != null && c12895i.i() && (f10 = c12895i.f()) != null && f10.f78886g && f10.H() && !f10.f78885e.startsWith("/storage/emulated/0")) {
                            try {
                                if (X7.a.b(f10.f78885e, f10.a0(N7.c.t()), N7.c.t())) {
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append(Tc.b.O(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + f10.f78885e)));
                                    sb2.append(".meta/");
                                    File file = new File(sb2.toString() + "thumb.png");
                                    if (file.exists()) {
                                        file.delete();
                                    }
                                    f10.Q();
                                } else {
                                    System.out.println("FAILED TO SAVE MATERIAL " + f10.f78885e);
                                }
                            } catch (Exception e10) {
                                System.out.println("FAILED TO SAVE MATERIAL " + f10.f78885e);
                                e10.printStackTrace();
                            }
                        }
                        i10++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
                throw th2;
            }
        }
    }

    public static Material t(String file) {
        try {
            return l(file);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static void u() {
        Material f10;
        f84468d += K8.d.b();
        int i10 = 0;
        while (true) {
            List<C12895i> list = f84465a;
            if (i10 >= list.size()) {
                return;
            }
            C12895i c12895i = list.get(i10);
            if (c12895i != null && c12895i.i() && (f10 = c12895i.f()) != null) {
                f10.n0();
            }
            i10++;
        }
    }
}
