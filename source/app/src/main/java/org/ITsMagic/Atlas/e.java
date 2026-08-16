package org.ITsMagic.Atlas;

import JAVARuntime.Runnable;
import Ug.h;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import java.util.Iterator;
import java.util.List;
import org.ITsMagic.Atlas.XAtlas;
import org.ITsMagic.Atlas.c;
import ub.n;

@Deprecated
public class e {

    public static final boolean f100005h = false;

    public final ModelRenderer f100006a;

    public final BakeOptions f100007b;

    public n f100008c;

    public final float[] f100009d;

    public Vertex f100010e;

    public List<h> f100011f;

    public c f100012g;

    public class a implements Runnable {

        public final c f100013b;

        public final XAtlas f100014c;

        public final boolean f100015d;

        public class RunnableC1903a implements Runnable {

            public class C1904a implements XAtlas.a {
                public C1904a() {
                }

                @Override
                public void a(int executed, int total, float progress, String tda) {
                    a.this.f100013b.a(executed, total, progress, tda);
                }

                @Override
                public void b(String step) {
                    a.this.f100013b.b(step);
                }
            }

            public class b implements c.b {
                public b() {
                }

                @Override
                public void a(int executed, int total, float progress, String tda) {
                    a.this.f100013b.a(executed, total, progress, tda);
                }

                @Override
                public void b(String step) {
                    a.this.f100013b.b(step);
                }
            }

            public class c implements Runnable {
                public c() {
                }

                @Override
                public void run() {
                    e.this.k();
                }
            }

            public RunnableC1903a() {
            }

            @Override
            public void run() {
                try {
                    a aVar = a.this;
                    aVar.f100014c.generate(e.this.f100007b.f99793a, e.this.f100007b.maxChartArea, e.this.f100007b.maxBoundaryLength, e.this.f100007b.normalDeviationWeight, e.this.f100007b.roundnessWeight, e.this.f100007b.straightnessWeight, e.this.f100007b.normalSeamWeight, e.this.f100007b.textureSeamWeight, e.this.f100007b.maxChartSize, e.this.f100007b.padding, 0.0f, e.this.f100007b.bilinear, e.this.f100007b.blockAlign, true, new C1904a());
                    if (a.this.f100014c.getBakeDataList().isEmpty()) {
                        a.this.f100013b.c(null, null);
                        return;
                    }
                    a aVar2 = a.this;
                    e.this.f100010e = aVar2.f100014c.getBakeDataList().get(0).d();
                    if (e.this.f100010e == null) {
                        a.this.f100013b.c(null, null);
                        return;
                    }
                    a aVar3 = a.this;
                    e.this.f100011f = aVar3.f100014c.getBakeDataList().get(0).c();
                    a aVar4 = a.this;
                    if (aVar4.f100015d) {
                        Iterator it = e.this.f100011f.iterator();
                        while (it.hasNext()) {
                            ((h) it.next()).f(null);
                        }
                    }
                    if (e.this.f100007b.texture) {
                        a.this.f100013b.b("Creating atlas texture");
                        e.this.f100008c = new n(a.this.f100014c.getEffectiveResolution(), a.this.f100014c.getEffectiveResolution());
                        e.this.f100008c.apply();
                        a.this.f100013b.b("Starting atlas generation");
                        new org.ITsMagic.Atlas.c().e(e.this.f100008c, e.this.f100010e, e.this.f100011f, e.this.f100007b.padding / 2, "albedo", "albedoTilling", "albedoOffset", true, new b());
                    }
                    K8.a.I(new c());
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public a(final c val$listener, final XAtlas val$atlas, final boolean val$useSimpleWhiteAtlas) {
            this.f100013b = val$listener;
            this.f100014c = val$atlas;
            this.f100015d = val$useSimpleWhiteAtlas;
        }

        @Override
        public void run() {
            this.f100013b.b("Preparing");
            this.f100014c.addInputMesh(e.this.f100006a.getVertex(), e.this.f100006a.f73747F, e.this.f100009d);
            new Thread(new RunnableC1903a()).start();
        }
    }

    public static class b implements c {
        @Override
        public void a(int executed, int total, float progress, String tda) {
        }

        @Override
        public void b(String step) {
        }

        @Override
        public void c(Vertex outputVertex, n atlasTexture) {
        }
    }

    public interface c {
        void a(int executed, int total, float progress, String tda);

        void b(String step);

        void c(Vertex outputVertex, n atlasTexture);
    }

    public e(ModelRenderer inputRenderer, float[] matrix, BakeOptions options) {
        this.f100006a = inputRenderer;
        this.f100007b = options;
        this.f100009d = matrix;
    }

    public static void o(String msg) {
    }

    public final void k() {
        this.f100012g.c(this.f100010e, this.f100008c);
    }

    public void l(boolean useSimpleWhiteAtlas, c listener) {
        this.f100012g = listener;
        K8.a.I(new a(listener, new XAtlas(), useSimpleWhiteAtlas));
    }

    public n m() {
        return this.f100008c;
    }

    public Vertex n() {
        return this.f100010e;
    }
}
