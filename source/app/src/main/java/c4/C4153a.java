package c4;

import b4.AbstractC3843a;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class C4153a extends AbstractC3843a {

    public static C4153a f34384g;

    public static final Object f34385h = new Object();

    public final List<b> f34386e = new ArrayList();

    public float f34387f;

    public static class b {

        public File f34388a;

        public String f34389b;

        public b() {
        }
    }

    public C4153a(List<File> files, String projectName) {
        if (projectName == null || projectName.isEmpty()) {
            throw new RuntimeException();
        }
        synchronized (f34385h) {
            f34384g = this;
        }
        for (int i10 = 0; i10 < files.size(); i10++) {
            File file = files.get(i10);
            b bVar = new b();
            bVar.f34388a = file;
            bVar.f34389b = projectName;
            synchronized (f34385h) {
                this.f34386e.add(bVar);
            }
        }
    }

    public static void j(File file, String projectName) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(file);
        k(arrayList, projectName);
    }

    public static void k(List<File> files, String projectName) {
        if (projectName == null || projectName.isEmpty()) {
            throw new RuntimeException();
        }
        synchronized (f34385h) {
            try {
                C4153a c4153a = f34384g;
                if (c4153a != null) {
                    c4153a.l(files, projectName);
                } else {
                    new C4153a(files, projectName);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003d, code lost:
    
        r1 = r1 + 1;
        r5 = r5 + r1;
        r7.f34387f = r1 / r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0045, code lost:
    
        r2 = r3.f34388a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0051, code lost:
    
        if (r3.f34389b.equals(com.itsmagic.engine.Core.Components.ProjectController.a.T()) != false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x007d, code lost:
    
        if (r2 == null) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0083, code lost:
    
        if (r2.exists() == false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0085, code lost:
    
        a("Compressing ASTC " + r1 + "/" + r5, Tc.b.v(r2.getAbsolutePath()), r7.f34387f);
        r3 = r2.getParentFile();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b9, code lost:
    
        if (r2.getName().equalsIgnoreCase("thumb.png") == false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00bb, code lost:
    
        if (r3 == null) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00c7, code lost:
    
        if (r3.getName().endsWith(".meta") != false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00c9, code lost:
    
        r3 = com.itsmagic.engine.Core.Components.ProjectController.a.P(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ef, code lost:
    
        if (new java.io.File(Tc.b.O(r2.getAbsolutePath()) + Ic.C2633l.f9169o).exists() != false) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00f7, code lost:
    
        if (Ic.C2633l.b(r3, ".ivo") != false) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00f9, code lost:
    
        com.itsmagic.engine.Engines.Engine.Texture.Utils.b.i(r2, N7.c.t(), new com.itsmagic.engine.Engines.Engine.Texture.Utils.b.C1370b().a(com.itsmagic.engine.Engines.Engine.Texture.Utils.b.c.ONLY_ASTC).b(false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0111, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0112, code lost:
    
        r2.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0053, code lost:
    
        a("Skipping ASTC " + r1 + "/" + r5, Tc.b.v(r2.getAbsolutePath()), r7.f34387f);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x007a, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0117, code lost:
    
        r2.printStackTrace();
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void b() {
        Object obj;
        int i10 = 0;
        while (true) {
            obj = f34385h;
            synchronized (obj) {
                if (this.f34386e.isEmpty()) {
                    break;
                }
                b remove = this.f34386e.remove(0);
                int size = this.f34386e.size();
                if (this.f34386e.isEmpty() && f34384g == this) {
                    f34384g = null;
                }
            }
        }
        synchronized (obj) {
            try {
                if (f34384g == this) {
                    f34384g = null;
                }
            } finally {
            }
        }
    }

    @Override
    public void f() {
    }

    public final void l(List<File> files, String projectName) {
        for (int i10 = 0; i10 < files.size(); i10++) {
            File file = files.get(i10);
            b bVar = new b();
            bVar.f34388a = file;
            bVar.f34389b = projectName;
            synchronized (f34385h) {
                this.f34386e.add(bVar);
            }
        }
    }
}
