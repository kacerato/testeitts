package wb;

import com.itsmagic.engine.Engines.Engine.Texture.Cubemap.FileCubemap;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions.TextureException;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.File;
import java.util.List;

public class C15981c {

    public static final List<C15982d> f127389a = new SteppedArrayList();

    public static final List<C15982d> f127390b = new SteppedArrayList();

    public static final Object f127391c = new Object();

    public static void a(FileCubemap texture) {
        if (texture != null) {
            synchronized (f127391c) {
                f127389a.add(new C15982d(texture, com.itsmagic.engine.Core.Components.ProjectController.a.T()));
            }
        }
    }

    public static void b(String file) {
        List<C15982d> list;
        String o10 = Tc.b.o(file);
        if (o10 == null || o10.isEmpty()) {
            throw new IllegalArgumentException("File can't be empty or null");
        }
        synchronized (f127391c) {
            int i10 = 0;
            while (true) {
                try {
                    list = f127389a;
                    if (i10 >= list.size()) {
                        break;
                    }
                    C15982d c15982d = list.get(i10);
                    if (c15982d != null) {
                        if (c15982d.a() && c15982d.f127393b.equals(com.itsmagic.engine.Core.Components.ProjectController.a.T())) {
                            FileCubemap fileCubemap = c15982d.f127392a.get();
                            if (fileCubemap == null) {
                                f127390b.add(c15982d);
                            } else if (fileCubemap.p().equals(o10)) {
                                f127390b.add(c15982d);
                            }
                        } else {
                            f127390b.add(c15982d);
                        }
                    }
                    i10++;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            List<C15982d> list2 = f127390b;
            if (!list2.isEmpty()) {
                list.removeAll(list2);
                list2.clear();
            }
        }
    }

    public static FileCubemap c(String file, int size) {
        String o10 = Tc.b.o(file);
        if (o10 == null || o10.isEmpty()) {
            throw new IllegalArgumentException("File can't be empty or null");
        }
        synchronized (f127391c) {
            int i10 = 0;
            while (true) {
                try {
                    List<C15982d> list = f127389a;
                    if (i10 >= list.size()) {
                        List<C15982d> list2 = f127390b;
                        if (!list2.isEmpty()) {
                            list.removeAll(list2);
                            list2.clear();
                        }
                        return null;
                    }
                    C15982d c15982d = list.get(i10);
                    if (c15982d != null) {
                        if (c15982d.a() && c15982d.f127393b.equals(com.itsmagic.engine.Core.Components.ProjectController.a.T())) {
                            FileCubemap fileCubemap = c15982d.f127392a.get();
                            if (fileCubemap == null) {
                                f127390b.add(c15982d);
                            } else if (fileCubemap.p().equals(o10) && fileCubemap.q() == size) {
                                List<C15982d> list3 = f127390b;
                                if (!list3.isEmpty()) {
                                    list.removeAll(list3);
                                    list3.clear();
                                }
                                return fileCubemap;
                            }
                        } else {
                            f127390b.add(c15982d);
                        }
                    }
                    i10++;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static FileCubemap d(Ac.b file) {
        return h(file.toString(), -1);
    }

    public static FileCubemap e(File file) {
        return f(file, -1);
    }

    public static FileCubemap f(File file, int size) {
        if (file == null) {
            throw new IllegalArgumentException("File can't be null");
        }
        if (!file.exists()) {
            throw new IllegalArgumentException("File not found");
        }
        FileCubemap c10 = c(file.getAbsolutePath(), size);
        if (c10 != null) {
            return c10;
        }
        FileCubemap fileCubemap = new FileCubemap(file, size);
        synchronized (f127391c) {
            f127389a.add(new C15982d(fileCubemap, com.itsmagic.engine.Core.Components.ProjectController.a.T()));
        }
        return fileCubemap;
    }

    public static FileCubemap g(String file) {
        return h(file, -1);
    }

    public static FileCubemap h(String file, int size) {
        String o10 = Tc.b.o(file);
        if (o10 == null || o10.isEmpty()) {
            throw new IllegalArgumentException("File can't be empty or null");
        }
        FileCubemap c10 = c(o10, size);
        if (c10 != null) {
            return c10;
        }
        FileCubemap fileCubemap = new FileCubemap(o10, size);
        synchronized (f127391c) {
            f127389a.add(new C15982d(fileCubemap, com.itsmagic.engine.Core.Components.ProjectController.a.T()));
        }
        return fileCubemap;
    }

    public static void i() {
        synchronized (f127391c) {
            f127389a.clear();
            f127390b.clear();
        }
    }

    public static void j() {
    }

    public static FileCubemap k(Ac.b file) {
        try {
            return d(file);
        } catch (TextureException unused) {
            return null;
        }
    }

    public static FileCubemap l(File file) {
        try {
            return e(file);
        } catch (TextureException unused) {
            return null;
        }
    }

    public static FileCubemap m(String file) {
        if (file != null && !file.isEmpty()) {
            try {
                return g(file);
            } catch (TextureException unused) {
            }
        }
        return null;
    }

    public static FileCubemap n(String file, int size) {
        if (file != null && !file.isEmpty()) {
            try {
                return h(file, size);
            } catch (TextureException unused) {
            }
        }
        return null;
    }
}
