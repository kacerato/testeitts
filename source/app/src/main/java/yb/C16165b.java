package yb;

import Ic.C2633l;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions.TextureException;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.File;
import java.util.List;
import ub.e;
import ub.g;
import ub.n;
import ub.p;
import ub.q;
import vb.C15824c;

public class C16165b {

    public static int f130155a = 0;

    public static long f130156b = 0;

    public static final long f130157c = 94371840;

    public static final List<C16166c> f130158d = new SteppedArrayList();

    public static final List<C16166c> f130159e = new SteppedArrayList();

    public static final Object f130160f = new Object();

    public static p f130161g;

    public static p f130162h;

    public static p f130163i;

    public static C15824c f130164j;

    public static p f130165k;

    public static p f130166l;

    public static void a() {
        TextureConfig textureConfig = new TextureConfig();
        textureConfig.w0(0);
        textureConfig.p0(false);
        textureConfig.j0(TextureConfig.c.Nearest);
        textureConfig.Z(true);
        n nVar = new n(1, 1, textureConfig);
        for (int i10 = 0; i10 < nVar.getWidth(); i10++) {
            for (int i11 = 0; i11 < nVar.getHeight(); i11++) {
                nVar.Y(i10, i11, new ColorINT(255, 255, 255));
            }
        }
        nVar.apply();
        f130161g = nVar;
        n nVar2 = new n(1, 1, textureConfig);
        for (int i12 = 0; i12 < nVar2.getWidth(); i12++) {
            for (int i13 = 0; i13 < nVar2.getHeight(); i13++) {
                nVar2.Y(i12, i13, new ColorINT(0, 0, 0, 0));
            }
        }
        nVar2.apply();
        f130162h = nVar2;
        n nVar3 = new n(1, 1, textureConfig);
        for (int i14 = 0; i14 < nVar3.getWidth(); i14++) {
            for (int i15 = 0; i15 < nVar3.getHeight(); i15++) {
                nVar3.Y(i14, i15, new ColorINT(0, 0, 0));
            }
        }
        nVar3.apply();
        f130163i = nVar3;
        f130164j = new C15824c(1, 1, 1);
        n nVar4 = new n(1, 1, textureConfig);
        for (int i16 = 0; i16 < nVar4.getWidth(); i16++) {
            for (int i17 = 0; i17 < nVar4.getHeight(); i17++) {
                nVar4.Y(i16, i17, new ColorINT(255, 0, 255));
            }
        }
        nVar4.apply();
        f130165k = nVar4;
        n nVar5 = new n(1, 1, textureConfig);
        for (int i18 = 0; i18 < nVar5.getWidth(); i18++) {
            for (int i19 = 0; i19 < nVar5.getHeight(); i19++) {
                nVar5.Y(i18, i19, new ColorINT(128, 128, 255));
            }
        }
        nVar5.apply();
        f130166l = nVar5;
    }

    public static void b(g texture) {
        if (texture != null) {
            synchronized (f130160f) {
                f130158d.add(new C16166c(texture, com.itsmagic.engine.Core.Components.ProjectController.a.T()));
            }
        }
    }

    public static void c(String file) {
        String o10 = Tc.b.o(file);
        if (o10 == null || o10.isEmpty()) {
            throw new IllegalArgumentException("File can't be empty or null");
        }
        g d10 = d(o10);
        if (d10 != null) {
            synchronized (f130160f) {
                int i10 = 0;
                while (true) {
                    try {
                        List<C16166c> list = f130158d;
                        if (i10 < list.size()) {
                            C16166c c16166c = list.get(i10);
                            if (c16166c != null && c16166c.a() && c16166c.f130168b.equals(com.itsmagic.engine.Core.Components.ProjectController.a.T()) && c16166c.f130167a.get() == d10) {
                                list.remove(c16166c);
                                break;
                            }
                            i10++;
                        } else {
                            break;
                        }
                    } finally {
                    }
                }
            }
        }
    }

    public static g d(String file) {
        String o10 = Tc.b.o(file);
        if (o10 == null || o10.isEmpty()) {
            throw new IllegalArgumentException("File can't be empty or null");
        }
        synchronized (f130160f) {
            int i10 = 0;
            while (true) {
                try {
                    List<C16166c> list = f130158d;
                    if (i10 >= list.size()) {
                        List<C16166c> list2 = f130159e;
                        if (!list2.isEmpty()) {
                            list.removeAll(list2);
                            list2.clear();
                        }
                        return null;
                    }
                    C16166c c16166c = list.get(i10);
                    if (c16166c != null) {
                        if (c16166c.a() && c16166c.f130168b.equals(com.itsmagic.engine.Core.Components.ProjectController.a.T())) {
                            g gVar = c16166c.f130167a.get();
                            if (gVar == null) {
                                f130159e.add(c16166c);
                            } else if (!gVar.getFile().equals(o10)) {
                                continue;
                            } else {
                                if (!gVar.isGarbage()) {
                                    List<C16166c> list3 = f130159e;
                                    if (!list3.isEmpty()) {
                                        list.removeAll(list3);
                                        list3.clear();
                                    }
                                    return gVar;
                                }
                                f130159e.add(c16166c);
                            }
                        } else {
                            f130159e.add(c16166c);
                        }
                    }
                    i10++;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static void e(String file) {
        if (file.startsWith("_PROJECT/Gallery/Textures/PBR/")) {
            if (new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + file).exists()) {
                return;
            }
            String substring = file.substring(30);
            String v10 = Tc.b.v(substring);
            boolean z10 = false;
            String substring2 = substring.substring(0, substring.indexOf(v10));
            String[] strArr = {"BaseColor.jpg", "Color.jpg", "Albedo.jpg", "color.jpg"};
            int i10 = 0;
            while (true) {
                if (i10 >= 4) {
                    break;
                }
                if (strArr[i10].equalsIgnoreCase(v10)) {
                    z10 = true;
                    break;
                }
                i10++;
            }
            H3.g.H1(substring2, z10, v10);
        }
    }

    public static void f(String file, boolean isGammaCorrectionEnabled) {
        if (file.startsWith("_PROJECT/Gallery/Textures/PBR/")) {
            if (new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + file).exists()) {
                return;
            }
            String substring = file.substring(30);
            String v10 = Tc.b.v(substring);
            H3.g.H1(substring.substring(0, substring.indexOf(v10)), isGammaCorrectionEnabled, v10);
        }
    }

    public static g g(Ac.b file) {
        return i(file.toString());
    }

    public static g h(File file) {
        if (file == null) {
            throw new IllegalArgumentException("File can't be null");
        }
        if (!file.exists()) {
            throw new IllegalArgumentException("File not found");
        }
        g d10 = d(file.getAbsolutePath());
        if (d10 != null) {
            return d10;
        }
        if (C2633l.a(file, ".rte")) {
            e eVar = new e(file, (TextureConfig) null);
            synchronized (f130160f) {
                f130158d.add(new C16166c(eVar, com.itsmagic.engine.Core.Components.ProjectController.a.T()));
            }
            eVar.Z(false);
            return eVar;
        }
        if (C2633l.a(file, ".ivo")) {
            q qVar = new q(file, (TextureConfig) null);
            synchronized (f130160f) {
                f130158d.add(new C16166c(qVar, com.itsmagic.engine.Core.Components.ProjectController.a.T()));
            }
            qVar.Z(false);
            return qVar;
        }
        e(file.getAbsolutePath());
        g gVar = new g(file, (TextureConfig) null);
        synchronized (f130160f) {
            f130158d.add(new C16166c(gVar, com.itsmagic.engine.Core.Components.ProjectController.a.T()));
        }
        gVar.Z(false);
        return gVar;
    }

    public static g i(String file) {
        return j(file, null);
    }

    public static g j(String file, TextureConfig config) {
        return k(file, config, true);
    }

    public static g k(String file, TextureConfig config, boolean applyOGL) {
        String o10 = Tc.b.o(file);
        if (o10 == null || o10.isEmpty()) {
            throw new IllegalArgumentException("File can't be empty or null");
        }
        g d10 = d(o10);
        if (d10 != null) {
            return d10;
        }
        if (C2633l.b(o10, ".rte")) {
            e eVar = new e(o10, config, applyOGL);
            synchronized (f130160f) {
                f130158d.add(new C16166c(eVar, com.itsmagic.engine.Core.Components.ProjectController.a.T()));
            }
            eVar.Z(false);
            return eVar;
        }
        if (C2633l.b(o10, ".ivo")) {
            q qVar = new q(o10, config, applyOGL);
            synchronized (f130160f) {
                f130158d.add(new C16166c(qVar, com.itsmagic.engine.Core.Components.ProjectController.a.T()));
            }
            qVar.Z(false);
            return qVar;
        }
        e(o10);
        g gVar = new g(o10, config, applyOGL);
        synchronized (f130160f) {
            f130158d.add(new C16166c(gVar, com.itsmagic.engine.Core.Components.ProjectController.a.T()));
        }
        gVar.Z(false);
        return gVar;
    }

    public static g l(File file) {
        if (file == null) {
            throw new IllegalArgumentException("File can't be null");
        }
        if (!file.exists()) {
            throw new IllegalArgumentException("File not found");
        }
        g d10 = d(file.getAbsolutePath());
        if (d10 != null) {
            return d10;
        }
        if (C2633l.a(file, ".rte")) {
            e eVar = new e(file, (TextureConfig) null, true, true);
            synchronized (f130160f) {
                f130158d.add(new C16166c(eVar, com.itsmagic.engine.Core.Components.ProjectController.a.T()));
            }
            eVar.Z(false);
            return eVar;
        }
        if (C2633l.a(file, ".ivo")) {
            q qVar = new q(file, (TextureConfig) null, true, true);
            synchronized (f130160f) {
                f130158d.add(new C16166c(qVar, com.itsmagic.engine.Core.Components.ProjectController.a.T()));
            }
            qVar.Z(false);
            return qVar;
        }
        e(file.getAbsolutePath());
        g gVar = new g(file, (TextureConfig) null, true, true);
        synchronized (f130160f) {
            f130158d.add(new C16166c(gVar, com.itsmagic.engine.Core.Components.ProjectController.a.T()));
        }
        gVar.Z(false);
        return gVar;
    }

    public static g m(String file) {
        return n(file, null);
    }

    public static g n(String file, TextureConfig config) {
        return o(file, config, true);
    }

    public static g o(String file, TextureConfig config, boolean applyOGL) {
        String o10 = Tc.b.o(file);
        if (o10 == null || o10.isEmpty()) {
            throw new IllegalArgumentException("File can't be empty or null");
        }
        g d10 = d(o10);
        if (d10 != null) {
            return d10;
        }
        if (C2633l.b(o10, ".rte")) {
            e eVar = new e(o10, config, applyOGL, true);
            synchronized (f130160f) {
                f130158d.add(new C16166c(eVar, com.itsmagic.engine.Core.Components.ProjectController.a.T()));
            }
            eVar.Z(false);
            return eVar;
        }
        if (C2633l.b(o10, ".ivo")) {
            q qVar = new q(o10, config, applyOGL, true);
            synchronized (f130160f) {
                f130158d.add(new C16166c(qVar, com.itsmagic.engine.Core.Components.ProjectController.a.T()));
            }
            qVar.Z(false);
            return qVar;
        }
        e(o10);
        g gVar = new g(o10, config, applyOGL, true);
        synchronized (f130160f) {
            f130158d.add(new C16166c(gVar, com.itsmagic.engine.Core.Components.ProjectController.a.T()));
        }
        gVar.Z(false);
        return gVar;
    }

    public static void p() {
        synchronized (f130160f) {
            f130158d.clear();
            f130159e.clear();
        }
    }

    public static void q() {
        f130155a = 4096;
        System.out.println("MAX_TEXTURE_SIZE " + f130155a);
    }

    public static void r() {
        g gVar;
        synchronized (f130160f) {
            int i10 = 0;
            while (true) {
                try {
                    List<C16166c> list = f130158d;
                    if (i10 < list.size()) {
                        C16166c c16166c = list.get(i10);
                        if (c16166c != null && c16166c.a() && c16166c.f130168b.equals(com.itsmagic.engine.Core.Components.ProjectController.a.T()) && (gVar = c16166c.f130167a.get()) != null && gVar.J() && gVar.N() && gVar.F()) {
                            f130159e.add(c16166c);
                        }
                        i10++;
                    } else {
                        List<C16166c> list2 = f130159e;
                        list.removeAll(list2);
                        list2.clear();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static g s(Ac.b file) {
        try {
            return g(file);
        } catch (TextureException unused) {
            return null;
        }
    }

    public static g t(File file) {
        try {
            return h(file);
        } catch (TextureException unused) {
            return null;
        }
    }

    public static g u(String file) {
        if (file != null && !file.isEmpty()) {
            try {
                return i(file);
            } catch (TextureException unused) {
            }
        }
        return null;
    }

    public static g v(String file, TextureConfig config) {
        try {
            return j(file, config);
        } catch (TextureException unused) {
            return null;
        }
    }

    public static g w(File file) {
        if (file != null && file.exists()) {
            try {
                return l(file);
            } catch (TextureException unused) {
            }
        }
        return null;
    }

    public static g x(String file) {
        if (file != null && !file.isEmpty()) {
            try {
                return m(file);
            } catch (TextureException unused) {
            }
        }
        return null;
    }

    public static g y(String file) {
        if (file != null && !file.isEmpty()) {
            try {
                return k(file, null, false);
            } catch (TextureException unused) {
            }
        }
        return null;
    }
}
