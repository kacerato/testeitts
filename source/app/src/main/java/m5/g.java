package M5;

import Ic.C2633l;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions.TextureFileNotFoundException;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions.TextureNeedsImport;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.b;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.File;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public class g extends L5.b {

    public final List<File> f14550i = new SteppedArrayList();

    public class a implements Runnable {

        public class RunnableC0412a implements Runnable {

            public final AtomicInteger f14552b;

            public final int f14553c;

            public final List f14554d;

            public final AtomicInteger f14555e;

            public final AtomicInteger f14556f;

            public final AtomicBoolean f14557g;

            public RunnableC0412a(final AtomicInteger val$nextIndex, final int val$total, final List val$importBatch, final AtomicInteger val$completedFiles, final AtomicInteger val$activeWorkers, final AtomicBoolean val$cleanedUp) {
                this.f14552b = val$nextIndex;
                this.f14553c = val$total;
                this.f14554d = val$importBatch;
                this.f14555e = val$completedFiles;
                this.f14556f = val$activeWorkers;
                this.f14557g = val$cleanedUp;
            }

            @Override
            public void run() {
                while (true) {
                    try {
                        int andIncrement = this.f14552b.getAndIncrement();
                        if (andIncrement >= this.f14553c) {
                            break;
                        }
                        try {
                            File file = (File) this.f14554d.get(andIncrement);
                            if (file != null && file.exists()) {
                                File parentFile = file.getParentFile();
                                if (file.getName().equalsIgnoreCase("thumb.png") && parentFile != null && parentFile.getName().endsWith(".meta")) {
                                }
                                String P10 = com.itsmagic.engine.Core.Components.ProjectController.a.P(file);
                                b.d dVar = new b.d();
                                try {
                                    try {
                                        com.itsmagic.engine.Engines.Engine.Texture.Utils.b.n(N7.c.t(), P10, dVar);
                                    } catch (Exception e10) {
                                        e10.printStackTrace();
                                    }
                                } catch (TextureFileNotFoundException e11) {
                                    e11.printStackTrace();
                                } catch (TextureNeedsImport unused) {
                                    if (!C2633l.b(P10, ".ivo")) {
                                        com.itsmagic.engine.Engines.Engine.Texture.Utils.b.g(N7.c.t(), dVar, new b.C1370b().a(b.c.ONLY_TEXTURE).b(true));
                                    }
                                }
                            }
                            int incrementAndGet = this.f14555e.incrementAndGet();
                            g.this.m(incrementAndGet / this.f14553c);
                            g.this.n(incrementAndGet + "/" + this.f14553c);
                        } catch (Throwable th2) {
                            int incrementAndGet2 = this.f14555e.incrementAndGet();
                            g.this.m(incrementAndGet2 / this.f14553c);
                            g.this.n(incrementAndGet2 + "/" + this.f14553c);
                            throw th2;
                        }
                    } catch (Throwable th3) {
                        if (this.f14556f.decrementAndGet() == 0 && this.f14557g.compareAndSet(false, true)) {
                            com.itsmagic.engine.Core.Components.ProjectController.a.l0(null);
                            g.this.m(1.0f);
                            g.this.b();
                        }
                        throw th3;
                    }
                }
                if (this.f14556f.decrementAndGet() == 0 && this.f14557g.compareAndSet(false, true)) {
                    com.itsmagic.engine.Core.Components.ProjectController.a.l0(null);
                    g.this.m(1.0f);
                    g.this.b();
                }
            }
        }

        public a() {
        }

        @Override
        public void run() {
            g.this.s();
            if (g.this.f14550i.isEmpty()) {
                g.this.b();
                return;
            }
            SteppedArrayList steppedArrayList = new SteppedArrayList(g.this.f14550i);
            g.this.f14550i.clear();
            int size = steppedArrayList.size();
            int min = Math.min(O9.b.a() - 1, size);
            AtomicInteger atomicInteger = new AtomicInteger(0);
            AtomicInteger atomicInteger2 = new AtomicInteger(0);
            AtomicInteger atomicInteger3 = new AtomicInteger(min);
            AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            com.itsmagic.engine.Core.Components.ProjectController.a.l0(g.this.f11606b);
            g.this.n(Lang.l(Lang.T.COMPRESSING) + ": 0/" + size);
            g.this.o(Lang.l(Lang.T.IMPORTING_TEXTURES));
            for (int i10 = 0; i10 < min; i10++) {
                O9.b.d(new RunnableC0412a(atomicInteger, size, steppedArrayList, atomicInteger2, atomicInteger3, atomicBoolean));
            }
        }
    }

    public void s() {
        this.f14550i.clear();
        for (String str : ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm".split("\\|")) {
            List<File> a10 = c().a(str);
            for (int i10 = 0; i10 < a10.size(); i10++) {
                File file = a10.get(i10);
                if (file.exists() && (!file.getName().equalsIgnoreCase("thumb.png") || !file.getParentFile().getName().endsWith(".meta"))) {
                    if (!new File(Tc.b.O(file.getAbsolutePath()) + ".texture").exists()) {
                        this.f14550i.add(file);
                    }
                }
            }
        }
    }

    @Override
    public void k() {
        super.k();
        o(Lang.l(Lang.T.LOADING_EDITOR));
        n(Lang.l(Lang.T.CHECKING_TEXTURES));
        new Thread(new a()).start();
    }

    public final void t(File file) {
        for (File file2 : file.listFiles()) {
            if (file2.isDirectory()) {
                t(file2);
            } else {
                if (C2633l.b(file2.getAbsolutePath(), ".texture")) {
                    file2.delete();
                }
                if (C2633l.b(file2.getAbsolutePath(), C2633l.f9169o)) {
                    file2.delete();
                }
            }
        }
    }
}
